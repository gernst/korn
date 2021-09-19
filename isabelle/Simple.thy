theory Simple
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

inductive invariant :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
invariantI[intro!]:
"\<lbrakk>\<And> s.    \<lbrakk>P s\<rbrakk> \<Longrightarrow> I s;
  \<And> s s'. \<lbrakk>I s; t s; B s s'\<rbrakk> \<Longrightarrow> I s';
  \<And> s.    \<lbrakk>I s; \<not> t s\<rbrakk> \<Longrightarrow> Q s\<rbrakk>
  \<Longrightarrow> invariant P I t B Q"

inductive_cases invariantE[elim]: "invariant P I t B Q"

lemma invariant_last:
  assumes "while t B s s'"
  assumes "invariant P I t B Q"
  assumes "I s"
  shows   "\<not> t s'" "I s'"
  using assms
  by induction auto

lemma invariant_correct:
  assumes "while t B s s'"
  assumes "invariant P I t B Q"
  assumes "I s"
  shows   "Q s'"
  using assms
  by induction auto

corollary invariant_sound:
  assumes "invariant P I t B Q"
  shows   "hoare P (while t B) Q"
proof
  fix s s'
  assume "P s"
  with assms have "I s"
    by blast
  moreover assume "while t B s s'"
  ultimately show "Q s'"
    using assms by (metis invariant_correct)
qed

lemma invariant_complete:
  assumes "hoare P (while t B) Q"
  shows   "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> prefix t B s0 s) t B Q"
  using assms by blast

inductive summary :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
summaryI[intro!]:
"\<lbrakk>\<And> s s'.     \<lbrakk>P s; \<not> t s'; R s s'\<rbrakk> \<Longrightarrow> Q s';
  \<And> s s' s''. \<lbrakk>t s; B s s'; R s' s''\<rbrakk> \<Longrightarrow> R s s'';
  \<And> s.        \<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> R s s\<rbrakk>
  \<Longrightarrow> summary P t B R Q"

inductive_cases summaryE[elim]: "summary P t R B Q"

lemma summary_correct:
  assumes "while t B s s'"
  assumes "summary P t B R Q"
  assumes "R s' s'"
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
  using assms by blast+

lemma lift_summary:
  assumes "summary   P t B R Q"
  shows   "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  using assms by blast+

lemma lift_invariant:
  assumes "invariant P I t B Q"
  shows   "summary   P t B (\<lambda> s s'. I s \<longrightarrow> \<not> t s' \<and> I s') Q"
  using assms by auto

lemma lift_invariant':
  assumes "invariant P I t B Q"
  shows   "summary   P t B (\<lambda> s s'. I s \<longrightarrow> Q s') Q"
  using assms by auto

lemma strengthen_invariant:
  assumes "invariant P I t B Q"
  shows   "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> I s) t B Q"
  using assms by blast

inductive functional :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> ('a \<Rightarrow> 'a) \<Rightarrow> bool" where
"\<lbrakk>\<And> s sn. while t B s sn = (sn = f s)\<rbrakk>
  \<Longrightarrow> functional t B f"

inductive_cases functionalE[elim]: "functional t B f"

lemma functional_correct:
  assumes "functional t B f"
  assumes "\<And> s. P s \<Longrightarrow> Q (f s)"
  shows   "hoare P (while t B) Q"
  using assms by auto

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

lemma functional_invariant:
  assumes "functional t B f"
  assumes "\<And> s. P s \<Longrightarrow> Q (f s)"
  shows   "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> f s = f s0) t B Q"
  using assms by auto

lemma functional_summary:
  assumes "functional t B f"
  assumes "\<And> s. P s \<Longrightarrow> Q (f s)"
  shows   "summary P t B  (\<lambda> s sn. \<not> t sn \<and> sn = f s) Q"
  using assms by auto

lemma functional_correspondence:
  assumes "functional t B f"
  shows   "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> f s = f s0) t B Q
       \<longleftrightarrow> summary P t B (\<lambda> s sn. \<not> t sn \<and> f sn = f s) Q"
  using assms by auto

fun ack :: "[nat,nat] \<Rightarrow> nat" where
  "ack 0 n             = Suc n"
| "ack (Suc m) 0       = ack m 1"
| "ack (Suc m) (Suc n) = ack m (ack (Suc m) n)"

fun acklist :: "nat list \<Rightarrow> nat" where
  "acklist (n#m#L) = acklist (ack m n # L)"
| "acklist [m] = m"

inductive TEST :: "nat list \<Rightarrow> bool" where
"TEST (n#m#L)"

lemma not_TEST[simp]: "(\<not> TEST L) = (L = [] \<or> (\<exists> n. L = [n]))"
  unfolding TEST.simps
  apply auto
  apply (case_tac L)
  apply simp_all
  apply (case_tac list)
  by simp_all

inductive STEP :: "nat list \<Rightarrow> nat list \<Rightarrow> bool" where
"STEP (n#0#L)          (Suc n#L)" |
"STEP (0#Suc m#L)      (1#m#L)" |
"STEP (Suc n# Suc m#L) (n#Suc m#m#L)"

lemma STEPs:
  assumes "TEST L"
  shows   "\<exists>! L'. STEP L L'"
  using assms
  apply (elim TEST.cases)
  apply (simp add: STEP.simps)
  apply (case_tac "m")
  apply auto
  apply (case_tac "n")
   apply auto
  done

definition "ACK \<equiv> while TEST STEP"
definition "INV s0 s \<equiv> s \<noteq> [] \<and> acklist s0 = acklist s"

(* "ackloop_dom (ack m n # L) \<Longrightarrow> ackloop_dom (n # m # L)" *)

definition "SM s s'  \<equiv> s \<noteq> [] \<longrightarrow> s' = [acklist s]"

lemma ACK_INV:
  "hoare (\<lambda> s. s = [n,m]) ACK (\<lambda> s'. s' = [ack m n])"
  unfolding ACK_def
proof (rule invariant_sound)
  show "invariant (\<lambda>s. s = [n, m]) (INV [n, m]) TEST STEP (\<lambda>s'. s' = [ack m n])"
  proof (rule, goal_cases)
    case (1 s)
    then show ?case
      unfolding INV_def by simp
  next
    case (2 s s')
    then show ?case
      unfolding INV_def
      by (auto elim!: STEP.cases)
  next
    case (3 s)
    then show ?case
      unfolding INV_def by auto
  qed
qed

lemma ACK_SM:
  "hoare (\<lambda> s. s = [n,m]) ACK (\<lambda> s'. s' = [ack m n])"
  unfolding ACK_def
proof (rule summary_sound)
  show "summary (\<lambda>s. s = [n, m]) TEST STEP SM (\<lambda>s'. s' = [ack m n])"
  proof (rule, goal_cases)
    case (1 s s')
    then show ?case
      unfolding SM_def by auto
  next
    case (2 s s' s'')
    then show ?case
      unfolding SM_def
      by (auto elim!: STEP.cases)
  next
    case (3 s)
    then show ?case
      unfolding SM_def by auto
  qed
qed


inductive test :: "('a * 'b) cond \<Rightarrow> ('a * 'b) prog \<Rightarrow> ('a * 'b \<Rightarrow> 'a) \<Rightarrow> bool" where
"(\<And> x y x' y'. while t B (x,y) (x',y') \<Longrightarrow> x' = f(x,y))
  \<Longrightarrow> test t B f"

inductive_cases testE[elim]: "test t B f"

lemma test_exit[simp]:
  assumes "test t B f"
  assumes "\<not> t (x,y)"
  shows   "f (x,y) = x"
  using assms
  by (metis testE while_baseI)

lemma test_step[simp]:
  assumes "test t B f"
  assumes "t (x,y)" "B (x,y) (x',y')" "while t B (x',y') (x'',y'')"
  shows   "f (x,y) = f (x',y')"
proof -

end