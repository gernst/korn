theory Relational
  imports Main
begin

type_synonym 'a cond = "'a \<Rightarrow> bool"
type_synonym 'a rel  = "'a \<Rightarrow> 'a \<Rightarrow> bool"
type_synonym 'a prog = "'a \<Rightarrow> 'a \<Rightarrow> bool"

(* Definition 1: Semantics of Loops *)
inductive while :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a prog" where
while_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> while t B s s" |
while_stepI[intro]:
  "\<lbrakk>t s; B s s'; while t B s' s''\<rbrakk> \<Longrightarrow> while t B s s''"

inductive prefix :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a prog" where
prefix_baseI[intro]:
  "prefix t B s s" |
prefix_stepI[intro]:
  "\<lbrakk>t s; B s s'; prefix t B s' s''\<rbrakk> \<Longrightarrow> prefix t B s s''"

lemma prefix_while[intro]:
  assumes "prefix t B s s'" "\<not> t s'"
  shows  "while t B s s'"
  using assms
  by induction auto

lemma prefix_step[intro]:
  assumes "prefix t B s s'" "t s'" "B s' s''"
  shows   "prefix t B s s''"
  using assms
  by induction auto

(* Definition 2: Validity of Hoare-Triples (partial correctness *)
inductive hoare :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
hoareI[intro!]:
"\<lbrakk>\<And> s s'. P s \<Longrightarrow> c s s' \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> hoare P c Q"

lemma hoareE[elim]:
  assumes "hoare P c Q"
  assumes "P s" "c s s'"
  obtains "Q s'"
  using assms by (blast elim: hoare.cases)

inductive invariant :: "'a cond \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
invariantI[intro!]:
"\<lbrakk>\<And> s0.      \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0 s0;
  \<And> s0 s s'. \<lbrakk>I s0 s; t s; B s s'\<rbrakk> \<Longrightarrow> I s0 s';
  \<And> s0 sn.   \<lbrakk>I s0 sn; \<not> t sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> invariant P I t B Q"

inductive_cases invariantE[elim]: "invariant P I t B Q"

lemma invariant_last:
  assumes "while t B s s'"
  assumes "invariant P I t B Q"
  assumes "I s0 s"
  shows   "\<not> t s'" "I s0 s'"
  using assms
  by induction auto

lemma invariant_correct:
  assumes "while t B s s'"
  assumes "invariant P I t B Q"
  assumes "I s0 s"
  shows   "Q s'"
  using assms
  by induction auto

corollary invariant_sound:
  assumes "invariant P I t B Q"
  shows   "hoare P (while t B) Q"
proof
  fix s s'
  assume "P s"
  with assms have "I s s"
    by blast
  moreover assume "while t B s s'"
  ultimately show "Q s'"
    using assms by (metis invariant_correct)
qed

lemma invariant_complete:
  assumes "hoare P (while t B) Q"
  shows   "invariant P (\<lambda> s0 s. P s0 \<and> prefix t B s0 s) t B Q"
  using assms by blast

lemma invariant_unary:
  assumes "invariant P I t B Q"
  shows   "invariant P (\<lambda> _ s. \<exists> s0. P s0 \<and> I s0 s) t B Q"
  using assms by blast

inductive summary :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
summaryI[intro!]:
"\<lbrakk>\<And> s0 sn.     \<lbrakk>P s0; \<not> t sn; R s0 sn\<rbrakk> \<Longrightarrow> Q sn;
  \<And> s s' sn.   \<lbrakk>t s; B s s'; R s' sn\<rbrakk> \<Longrightarrow> R s sn;
  \<And> sn.        \<lbrakk>\<not> t sn\<rbrakk> \<Longrightarrow> R sn sn\<rbrakk>
  \<Longrightarrow> summary P t B R Q"

inductive_cases summaryE[elim]: "summary P t R B Q"

lemma summary_correct:
  assumes "while t B s s'"
  assumes "summary P t B R Q"
  shows   "R s  s'"
  using assms
  by induction auto

lemma while_last[elim]:
  assumes "while t B s s'"
  shows   "\<not> t s'"
  using assms
  by induction auto

lemma summary_sound:
  assumes "summary P t B R Q"
  shows   "hoare P (while t B) Q"
proof
  fix s s'
  assume w: "while t B s s'"
  then have t: "\<not> t s'" ..
  with assms have R': "R s' s'"
    by blast
  with assms w have "R s s'"
    by (metis summary_correct)
  moreover assume "P s"
  ultimately show "Q s'"
    using assms t by blast
qed

lemma summary_complete:
  assumes "hoare P (while t B) Q"
  shows   "summary P t B (while t B) Q"
  using assms by blast

lemma lift_summary:
  assumes "summary   P t B R Q"
  shows   "invariant P (\<lambda> s0 s. P s0 \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  using assms by blast

lemma lift_invariant:
  assumes "invariant P I t B Q"
  shows   "summary   P t B (\<lambda> s sn. \<not> t sn \<and> (\<forall> s0. I s0 s \<longrightarrow> I s0 sn)) Q"
  using assms by blast

lemma lift_invariant':
  assumes "invariant P I t B Q"
  shows   "summary   P t B (\<lambda> s sn. \<forall> s0. I s0 s \<longrightarrow> Q sn) Q"
  using assms by blast

(* nice and straight-forward simplification *)
lemma functional_invariant:
  shows "   (P s0 \<and> (\<forall> sn. sn = f s \<longrightarrow> sn = f s0))
        \<longleftrightarrow> (P s0 \<and> f s = f s0)"
  by simp

(* we cannot simplify this further, at least not unconditionally *)
lemma functional_summary:
  assumes "\<And> sn. \<not> t sn \<Longrightarrow> f sn = sn"
  (* assumes "\<And> s s'. t s  \<Longrightarrow> B s s' \<Longrightarrow> f s' = f s" *)
  shows  "   (P s0 \<and> f s = f s0 \<longrightarrow> \<not> t s' \<and> P s0 \<and> f s' = f s0)
         \<longleftrightarrow> (P s0 \<and> f s = f s0 \<longrightarrow> \<not> t s' \<and> s' = f s)"
  using assms by auto

lemma weaken_summary:
  assumes "\<And> sn.   \<not> t sn \<Longrightarrow> f sn = sn"
  assumes "\<And> s s'.   t s  \<Longrightarrow> B s s' \<Longrightarrow> f s' = f s"
  assumes "summary   P t B (\<lambda> s sn. (\<exists> s0. P s0 \<and> f s = f s0) \<longrightarrow> (\<exists> s0. P s0 \<and> \<not> t sn \<and> f sn = f s0)) Q"
  shows   "summary   P t B (\<lambda> s sn. sn = f s) Q"
proof (rule, goal_cases)
  case (1 s0 sn)
  (* Isabelle has trouble correctly switching between f sn and sn,
     so we do it explicitly first: *)
  from 1(2,3) assms(1) have "f sn = f s0"
    by auto
  with 1(1,2) assms(3) show ?case
    by auto
next
  case (2 s s' sn)
  then show ?case
    using assms(2) by auto
next
  case (3 sn)
  then show ?case
    using assms(1) by auto
qed

lemma strengthen_summary: (* sanity check only *)
  assumes "\<And> sn.   \<not> t sn \<Longrightarrow> f sn = sn"
  assumes "\<And> s s'.   t s  \<Longrightarrow> B s s' \<Longrightarrow> f s' = f s"
  assumes "summary   P t B (\<lambda> s sn. sn = f s) Q"
  shows   "summary   P t B (\<lambda> s sn. \<forall> s0. P s0 \<and> f s = f s0 \<longrightarrow> P s0 \<and> \<not> t sn \<and> f sn = f s0) Q"
proof (rule, goal_cases)
  case (1 s0 sn)
  with assms(1) have "sn = f s0"
    by auto
  with 1(1,2) assms(3) show ?case
    by auto
next
  case (2 s s' sn)
  then show ?case
    using assms(2) by auto
next
  case (3 sn)
  then show ?case
    using assms(1) by auto
qed

lemma strengthen_summary_from_nonrelational_invariant: (* another sanity check *)
  assumes "\<And> sn.   \<not> t sn \<Longrightarrow> f sn = sn"
  assumes "\<And> s s'.   t s  \<Longrightarrow> B s s' \<Longrightarrow> f s' = f s"
  assumes "summary   P t B (\<lambda> s sn. sn = f s) Q"
  shows   "summary   P t B (\<lambda> s sn. (\<exists> s0. P s0 \<and> f s = f s0) \<longrightarrow> (\<exists> s0. P s0 \<and> \<not> t sn \<and> f sn = f s0)) Q"
proof (rule, goal_cases)
  case (1 s0 sn)
  from 1(1,2) have "\<exists>sa. P sa \<and> f s0 = f sa" (* where sa := s0 *)
    by auto
  from 1(3) this obtain sb where "P sb" "\<not> t sn" "f sn = f sb"
    by auto
  (* note we refer to two different initial states s0 and sb
     but the proof still works out, we do not rely on specifics of s0 *)
  with assms(1) have "sn = f sb"
    by auto
  from `P sb` `\<not> t sn` `sn = f sb` assms(3) have "Q sn"
    by blast
  with 1(1,2) assms(3) show ?case
    by auto
next
  case (2 s s' sn)
  then show ?case
    using assms(2) by auto
next
  case (3 sn)
  then show ?case
    using assms(1) by auto
qed

inductive functional :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> ('a \<Rightarrow> 'a) \<Rightarrow> bool" where
"\<lbrakk>\<And> s sn. while t B s sn = (sn = f s)\<rbrakk>
  \<Longrightarrow> functional t B f"

inductive_cases functionalE[elim]: "functional t B f"

lemma functional_confluence:
  assumes "functional t B f"
  assumes "while t B s  sn"
  assumes "while t B s' sn"
  shows   "f s = f s'"
  using assms by auto

lemma functional_exit[simp]:
  assumes "functional t B f"
  assumes "\<not> t sn"
  shows   "f sn = sn"
  using assms
  by (metis functionalE while_baseI)

lemma functional_step[simp]:
  assumes "functional t B f"
  assumes "t s" "B s s'"
  shows   "f s = f s'"
proof -
  from assms(1)   have w': "while t B s' (f s')" by blast
  with assms(2,3) have w:  "while t B s  (f s')" by rule
  from assms(1) w w'
  show ?thesis
    by (rule functional_confluence) (* or directly by auto *)
qed

lemma functional_correspondence:
  assumes "functional t B f"
  shows   "invariant P (\<lambda> s0 s. P s0 \<and> f s = f s0) t B Q \<longleftrightarrow> summary P t B (\<lambda> s sn. \<not> t sn \<and> sn = f s) Q"
proof (rule, goal_cases)
  case 1
  note I = 1
  show ?case
  proof (rule, goal_cases)
    case (1 s0 sn)
    from I have I: "P s0 \<Longrightarrow> f sn = f s0 \<Longrightarrow> \<not> t sn \<Longrightarrow> Q sn"
      by blast
    from assms `\<not> t sn` have "f sn = sn"
      by simp
    with 1 I show ?case
      by auto
  next
    case (2 s s' sn)
    then show ?case
      using assms I by blast
  next
    case (3 sn)
    then show ?case
      using assms I by blast
  qed
next
  case 2
  then show ?case
    using assms by auto
qed

end