theory Combined
  imports Correspondence
begin

(* Soundness of a "stronger" formulation that includes preconditions and invariants in the conditions for summaries,
   all in one large set of proof obligations.

   For demonstration purposes, we employ a relational invariant here,
   which shows also how the precondition P can be maintained throughout
   the proof of the loop.
*)
inductive combined :: "'a cond \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
combinedI[intro!]:
"\<lbrakk>\<And> s0.         \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0 s0;
  \<And> s0 s s'.    \<lbrakk>P s0; I s0 s; t s; B s (Ok s')\<rbrakk> \<Longrightarrow> I s0 s';
 
  \<And> s0 s.       \<lbrakk>P s0; I s0 s; t s; B s Err\<rbrakk> \<Longrightarrow> False;
  
  \<And> s0 s.       \<lbrakk>P s0; I s0 s; \<not> t s\<rbrakk> \<Longrightarrow> R s s;
  \<And> s0 s s'.    \<lbrakk>P s0; I s0 s; t s; B s (Brk s')\<rbrakk> \<Longrightarrow> R s s';
  \<And> s0 s s' sn. \<lbrakk>P s0; I s0 s; t s; R s' sn; B s (Ok s')\<rbrakk> \<Longrightarrow> R s sn;

  \<And> s0 sn.      \<lbrakk>P s0; R s0 sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> combined P I t B R Q"

inductive_cases combinedE[elim!]: "combined P I t B R Q"

(* Soundness of the combined approach,
   via safe invariants, and one of either correct invariants or correct summaries.

   Note that the verification conditions form the definition
   give access to additional information, such that I,R
   are not invariants resp. summaries in the strict sense,
   but slightly "weaker" (i.e. may depend on contextual assumptions),
    *)

lemma combined_invariant_safe:
  assumes "combined P I t B R Q"
  shows   "invariant_safe P (\<lambda> s. \<exists> s0. P s0 \<and> I s0 s) t B"
  using assms
  apply (elim combinedE)
  apply (intro invariant_safeI)
  by meson+

lemma combined_invariant_correct:
  assumes "combined P I t B R Q"
  shows   "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> I s0 s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  using assms
  apply (elim combinedE)
  apply (intro invariant_correctI)
  by meson+

lemma combined_summary_correct:
  assumes "combined P I t B R Q"
  shows   "summary_correct P t B (\<lambda> s sn. \<forall> s0. P s0 \<and> I s0 s \<longrightarrow> R s sn) Q"
  using assms by blast

lemma combined_sound:
  assumes "combined P I t B R Q"
  shows   "hoare P (while t B) Q"
  unfolding hoare_split
proof
  show "correct P (while t B) Q"
    apply (rule summary_correct)
    apply (rule combined_summary_correct)
    by (rule assms)
next
  show "safe P (while t B)"
    apply (rule invariant_safe)
    apply (rule combined_invariant_safe)
    by (rule assms)
qed

end