theory Invariants
  imports Hoare
begin

(* Definition 3: Loop Invariants *)

inductive invariant_safe :: "'a cond \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> bool" where
invariant_safeI[intro!]:
"\<lbrakk>\<And> s0.      \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0 s0;
  \<And> s0 s s'. \<lbrakk>I s0 s; t s; B s (Some (Ok    s'))\<rbrakk> \<Longrightarrow> I s0 s';
  \<And> s0 s.    \<lbrakk>I s0 s; t s; B s None\<rbrakk> \<Longrightarrow> False\<rbrakk>
  \<Longrightarrow> invariant_safe P I t B"

inductive invariant_correct :: "'a cond \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> 'a cond \<Rightarrow> bool" where
invariant_correctI[intro!]:
"\<lbrakk>\<And> s0.      \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0 s0;
  \<And> s0 s s'. \<lbrakk>I s0 s; t s; B s (Some (Ok    s'))\<rbrakk> \<Longrightarrow> I s0 s';
  \<And> s0 s.    \<lbrakk>I s0 s; \<not> t s\<rbrakk> \<Longrightarrow> Q s;
  \<And> s0 s s'. \<lbrakk>I s0 s; t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> invariant_correct P I t B Q"

inductive_cases invariant_safeE[elim!]:      "invariant_safe      P I t B"
inductive_cases invariant_correctE[elim!]:   "invariant_correct   P I t B Q"

lemma invariant_no_error:
  assumes "while t B s r"
  assumes "I s0 s"
  assumes "invariant_safe P I t B"
  obtains s' where "r = Some s'"
  using assms by induction blast+

theorem invariant_safe:
  assumes "invariant_safe P I t B"
  shows   "safe P (while t B)"
proof
  fix s r
  assume P: "P s"
  with assms have I: "I s s" by blast
  assume w: "while t B s r"
  from w I assms
  obtain s' where "r = Some s'"
    by (rule invariant_no_error)
  then show "\<exists>s'. r = Some s'" ..
qed

lemma invariant_post:
  assumes "while t B s r"
  assumes "r = Some s'"
  assumes "I s0 s"
  assumes "invariant_correct P I t B Q"
  shows   "Q s'"
  using assms by induction blast+

theorem invariant_correct:
  assumes "invariant_correct P I t B Q"
  shows   "correct P (while t B) Q"
proof
  fix s s'
  assume P: "P s"
  with assms have I: "I s s" by blast
  assume w: "while t B s (Some s')"
  from w I assms
  show "Q s'"
    by (metis invariant_post)
qed

(* Loop prefix characterization I* *)
inductive prefix :: "'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel" where
prefix_baseI[intro]:
  "prefix t B s s" |
prefix_stepI[intro]:
  "\<lbrakk>t s; B s (Some (Ok s')); prefix t B s' s''\<rbrakk> \<Longrightarrow> prefix t B s s''"

lemma prefix_while_base[intro]:
  assumes "prefix t B s s'" "\<not> t s'"
  shows   "while t B s (Some s')"
  using assms by induction auto

lemma prefix_while_err[intro]:
  assumes "prefix t B s0 s" "t s" "B s None"
  shows   "while t B s0 None"
  using assms by induction auto

lemma prefix_while_break[intro]:
  assumes "prefix t B s0 s" "t s" "B s (Some (Break s'))"
  shows "while t B s0 (Some s')"
  using assms by induction auto

lemma prefix_prefix_step[intro]:
  assumes "prefix t B s0 s" "t s" "B s (Some (Ok s'))"
  shows   "prefix t B s0 s'"
  using assms by induction auto

(* Theorem 2: Completeness of Loop Invariants *)

lemma invariant_safe_complete:
  assumes "safe P (while t B)"
  shows   "invariant_safe P (\<lambda> s0 s. P s0 \<and> prefix t B s0 s) t B"
  using assms by auto

lemma invariant_correct_complete:
  assumes "correct P (while t B) Q"
  shows   "invariant_correct P (\<lambda> s0 s. P s0 \<and> prefix t B s0 s) t B Q"
  using assms by auto

theorem invariant_complete:
  assumes "hoare P (while t B) Q"
  obtains I where
    "invariant_safe    P I t B"
    "invariant_correct P I t B Q"
  using assms by (meson hoare_split invariant_safe_complete invariant_correct_complete)

end