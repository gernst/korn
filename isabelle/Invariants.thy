theory Invariants
  imports Preliminaries
begin

(* Definition 4: Loop Invariants
   
   Note, inductiveness of invariants
   is specified as part of both predicates
   and not as yet another property as it is done in the paper.
   This is just to simplify the mechanization.
*)

inductive invariant_safe :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> bool" where
invariant_safeI[intro!]:
"\<lbrakk>\<And> s0.   \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0;
  \<And> s s'. \<lbrakk>I s; t s; B s (Ok s')\<rbrakk> \<Longrightarrow> I s';
  \<And> s.    \<lbrakk>I s; t s; B s Err\<rbrakk> \<Longrightarrow> False\<rbrakk>
  \<Longrightarrow> invariant_safe P I t B"

inductive invariant_correct :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
invariant_correctI[intro!]:
"\<lbrakk>\<And> s0.   \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0;
  \<And> s s'. \<lbrakk>I s; t s; B s (Ok s')\<rbrakk> \<Longrightarrow> I s';
  \<And> s.    \<lbrakk>I s; \<not> t s\<rbrakk> \<Longrightarrow> Q s;
  \<And> s s'. \<lbrakk>I s; t s; B s (Brk s')\<rbrakk> \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> invariant_correct P I t B Q"

inductive_cases invariant_safeE[elim!]:      "invariant_safe      P I t B"
inductive_cases invariant_correctE[elim!]:   "invariant_correct   P I t B Q"

(* Theorem 1: Soundness of Loop Invariants

   In both cases, we prove the inductive statement
   as stated in the paper, and then derive the two claims. *)

lemma invariant_no_error:
  assumes "while t B s r"
  assumes "I s"
  assumes "invariant_safe P I t B"
  obtains s' where "r = Ok s'"
  using assms by induction blast+

theorem invariant_safe:
  assumes "invariant_safe P I t B"
  shows   "safe P (while t B)"
proof
  fix s r
  assume P: "P s"
  with assms have I: "I s" by blast
  assume w: "while t B s r"
  from w I assms
  obtain s' where "r = Ok s'"
    by (rule invariant_no_error)
  then show "\<exists>s'. r = Ok s'" ..
qed

lemma invariant_post:
  assumes "while t B s r"
  assumes "r = Ok s'"
  assumes "I s"
  assumes "invariant_correct P I t B Q"
  shows   "Q s'"
  using assms by induction blast+

theorem invariant_correct:
  assumes "invariant_correct P I t B Q"
  shows   "correct P (while t B) Q"
proof
  fix s s'
  assume P: "P s"
  with assms have I: "I s" by blast
  assume w: "while t B s (Ok s')"
  from w I assms
  show "Q s'"
    by (metis invariant_post)
qed

(* This conclusion is obvious but makes
   the remark right before Theorem 1 explicit *)
corollary invariant_sound:
  assumes "invariant_safe P I t B"
  assumes "invariant_correct P I t B Q"
  shows   "hoare P (while t B) Q"
  by (meson assms hoare_split invariant_correct invariant_safe)

(* Loop prefix characterization I* *)
inductive prefix :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel" where
prefix_baseI[intro]:
  "prefix t B s s" |
prefix_stepI[intro]:
  "\<lbrakk>t s; B s (Ok s'); prefix t B s' s''\<rbrakk> \<Longrightarrow> prefix t B s s''"

(* Technical lemmas relating loop prefix to while loops,
   omitted in the paper *)
lemma prefix_while_base[intro]:
  assumes "prefix t B s s'" "\<not> t s'"
  shows   "while t B s (Ok s')"
  using assms by induction auto

lemma prefix_while_err[intro]:
  assumes "prefix t B s0 s" "t s" "B s Err"
  shows   "while t B s0 Err"
  using assms by induction auto

lemma prefix_while_break[intro]:
  assumes "prefix t B s0 s" "t s" "B s (Brk s')"
  shows "while t B s0 (Ok s')"
  using assms by induction auto

lemma prefix_prefix_step[intro]:
  assumes "prefix t B s0 s" "t s" "B s (Ok s')"
  shows   "prefix t B s0 s'"
  using assms by induction auto

(* Theorem 2: Completeness of Loop Invariants

   The three claims are proved individually below. *)

lemma invariant_safe_complete:
  assumes "safe P (while t B)"
  shows   "invariant_safe P (\<lambda> s. \<exists> s0. P s0 \<and> prefix t B s0 s) t B"
  using assms by auto

lemma invariant_correct_complete:
  assumes "correct P (while t B) Q"
  shows   "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> prefix t B s0 s) t B Q"
  using assms by auto

theorem invariant_complete:
  assumes "hoare P (while t B) Q"
  obtains I where
    "invariant_safe    P I t B"
    "invariant_correct P I t B Q"
  using assms by (meson hoare_split invariant_safe_complete invariant_correct_complete)

end