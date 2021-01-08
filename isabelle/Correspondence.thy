theory Correspondence
  imports Invariants Summaries
begin

(* Corollary: Coincidence of Invariants and Summaries
   proof via soundness and completeness of the approaches *)
corollary coincidence:
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> R. summary_correct P t B R Q)"
  by (metis (lifting) invariant_correct invariant_correct_complete summary_correct summary_complete)

(* Proposition 1: Lifting of Summaries to Invariants *)
proposition lift_summary:
  assumes "summary_correct   P t B R Q"
  shows   "invariant_correct P (\<lambda> s0 s. P s0 \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  using assms by blast

(* Proposition 2: Lifting of Postconditions to Summaries *)
proposition lift_post:
  assumes "invariant_correct P I t B Q"
  shows   "summary_correct   P t B (\<lambda> s sn. \<forall> s0. I s0 s \<longrightarrow> Q sn) Q"
  using assms by blast

(* Corollary 2: Coincidence of Invariants and Summaries
   proof using the constructure translation *)
corollary coincidence':
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> R. summary_correct P t B R Q)"
  by (metis (lifting) lift_summary lift_post)

(* Soundness of a "stronger" formulation that includes preconditions and invariants in the conditions for summaries,
   all in one large set of proof obligations. *)
inductive combined :: "'a cond \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
combinedI[intro!]:
"\<lbrakk>\<And> s0.         \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0 s0;
  \<And> s0 s s'.    \<lbrakk>P s0; I s0 s; t s; B s (Some (Ok    s'))\<rbrakk> \<Longrightarrow> I s0 s';
 
  \<And> s0 s.       \<lbrakk>P s0; I s0 s; t s; B s None\<rbrakk> \<Longrightarrow> False;
  
  \<And> s0 s.       \<lbrakk>P s0; I s0 s; \<not> t s\<rbrakk> \<Longrightarrow> R s s;
  \<And> s0 s s'.    \<lbrakk>P s0; I s0 s; t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> R s s';
  \<And> s0 s s' sn. \<lbrakk>P s0; I s0 s; t s; R s' sn; B s (Some (Ok s'))\<rbrakk> \<Longrightarrow> R s sn;

  \<And> s0 sn.   \<lbrakk>P s0; R s0 sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> combined P I t B R Q"

inductive_cases combinedE[elim!]: "combined P I t B R Q"

(* Soundness of the combined approach, direct proof *)

lemma combined_invariant_safe:
  assumes "combined P I t B R Q"
  shows   "invariant_safe P (\<lambda> s0 s. P s0 \<and> I s0 s) t B"
  using assms by blast

lemma combined_summary_correct:
  assumes "combined P I t B R Q"
  shows   "summary_correct P t B (\<lambda> s sn. \<forall> s0. P s0 \<and> I s0 s \<longrightarrow> R s sn) Q"
  using assms by blast

end