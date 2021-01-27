theory Summaries
  imports Hoare
begin

(* Definition 4: Loop Summaries *)
inductive summary_correct :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
summary_correctI[intro!]:
"\<lbrakk>\<And> s.       \<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> R s s;
  \<And> s s'.    \<lbrakk>t s; B s (Brk s')\<rbrakk> \<Longrightarrow> R s s';
  \<And> s s' sn. \<lbrakk>t s; R s' sn; B s (Ok s')\<rbrakk> \<Longrightarrow> R s sn;
  \<And> s0 sn.   \<lbrakk>P s0; R s0 sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> summary_correct P t B R Q"

inductive_cases summary_correctE[elim!]: "summary_correct P t B R Q"

lemma summary_post:
  assumes "while t B s r"
  assumes "r = Ok s'"
  assumes "summary_correct P t B R Q"
  assumes "P s"
  shows   "Q s'"
proof -
  from assms(1-3) have "R s s'"
    by induction blast+
  with assms(3,4) show ?thesis
    by blast
qed

(* Theorem 3: Soundness of Loop Summaries *)
theorem summary_correct:
  assumes "summary_correct P t B R Q"
  shows   "correct P (while t B) Q"
  by rule (metis assms summary_post)

(* Loop suffix characterization R* *)
inductive suffix :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel" where
suffix_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> suffix t B s s" |
suffix_breakI[intro]:
  "\<lbrakk>t s; B s (Brk s')\<rbrakk> \<Longrightarrow> suffix t B s s'" |
suffix_stepI[intro]:
  "\<lbrakk>t s; B s (Ok s'); suffix t B s' s''\<rbrakk> \<Longrightarrow> suffix t B s s''"

lemma suffix_while[simp]:
"suffix t B s s' = while t B s (Ok s')"
proof
  assume "suffix t B s s'"
  then show "while t B s (Ok s')"
    by induction auto
next
  assume "while t B s (Ok s')"
  then obtain r where "while t B s r" "r = Ok s'"
    by simp
  then show "suffix t B s s'"
    by induction auto
qed

(* Theorem 4: Completeness of Loop Summaries wrt. Safe Invariants *)
theorem summary_complete:
  assumes "correct P (while t B) Q"
  obtains R where "summary_correct P t B R Q"
proof -
  have "summary_correct P t B (suffix t B) Q"
    using assms by auto
  then show ?thesis ..
qed


end