theory Correspondence
  imports Invariants Summaries
begin

(* Not explicitly stated in the paper
   but mirrors Corollary 1 below. *)
corollary invariant_adequate:
  "hoare P (while t B) Q
     \<longleftrightarrow> (\<exists> I.   invariant_safe P I t B
               \<and> invariant_correct P I t B Q)"
  by (meson invariant_complete invariant_sound)

(* Definition 5: (Correct) Loop Contracts *)
definition contract_correct :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool"
  where
"contract_correct P I t B R Q
  \<equiv>   invariant_safe P I t B
    \<and> summary_correct P t B R Q"

(* Corollary 1: Adequacy of Loop Contracts *)
corollary contract_adequate:
  "hoare P (while t B) Q
    \<longleftrightarrow> (\<exists> I R. contract_correct P I t B R Q)"
  by (meson contract_correct_def hoare_split invariant_safe invariant_adequate summary_complete summary_correct)

(* Corollary 2: Coincidence of Invariants and Summaries

   Proof via soundness and completeness of the approaches,
   check coincidence' below for a proof using the syntactic translations.

   Note, we do not bother here to add safe invariants
   (i.e., formulate the corollary with contracts)
   as it is plain obvious. *)
corollary coincidence:
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> R. summary_correct P t B R Q)"
  by (metis (lifting) invariant_correct invariant_correct_complete summary_correct summary_complete)

(* Proposition 1: Invariants from Contracts

   We prove two versions, one for just correctness,
   and one that includes safety as well (which is shown in the paper) *)
proposition lift_summary:
  assumes "summary_correct   P t B R Q"
  shows   "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  using assms by rule blast

proposition lift_contract:
  assumes "contract_correct  P J t B R Q"
  shows   "invariant_safe    P (\<lambda> s. \<exists> s0. P s0 \<and> J s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B"
    and   "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> J s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
proof -
  show "invariant_safe    P (\<lambda> s. \<exists> s0. P s0 \<and> J s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B"
  proof (rule, goal_cases)
    case (1 s0)
    then show ?case
      using assms unfolding contract_correct_def by blast
  next
    case (2 s s')
    (* The automatic proof tactics (blast, ...)
       choke on the existential quantifier
       and on propagating J from s to s' *)
    from 2(1) obtain s0 where "P s0" "J s" "\<And> sn. R s sn \<Longrightarrow> R s0 sn"
      by blast
    with 2(2,3) have "P s0 \<and> J s' \<and> (\<forall>sn. R s' sn \<longrightarrow> R s0 sn)"
      using assms unfolding contract_correct_def by blast
    then show ?case ..
  next
    case (3 s)
    then show ?case
      using assms unfolding contract_correct_def by blast
  qed
next
  show "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> J s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
  proof (rule, goal_cases)
    case (1 s0)
    then show ?case
      using assms unfolding contract_correct_def by blast
  next
    case (2 s s') (* same as above *)
    from 2(1) obtain s0 where "P s0" "J s" "\<And> sn. R s sn \<Longrightarrow> R s0 sn"
      by blast
    with 2(2,3) have "P s0 \<and> J s' \<and> (\<forall>sn. R s' sn \<longrightarrow> R s0 sn)"
      using assms unfolding contract_correct_def by blast
    then show ?case ..
  next
    case (3 s)
    then show ?case
      using assms unfolding contract_correct_def by blast
  next
    case (4 s s')
    then show ?case
      using assms unfolding contract_correct_def by blast
  qed
qed

(* Proposition 2: Contracts from Invariants

   Again, we prove a simple version for correctness,
   and one for full contracts, for the formulation with break.

   See Simple.thy for a variant without breaks/runtime errors. *)
proposition lift_invariant:
  assumes "invariant_correct P I t B Q"
  shows   "summary_correct   P t B (\<lambda> s sn. I s \<longrightarrow> Q sn) Q"
  using assms by blast

proposition lift_invariant':
  assumes "invariant_safe    P I t B"
  assumes "invariant_correct P I t B Q"
  shows   "contract_correct  P I t B (\<lambda> s sn. I s \<longrightarrow> Q sn) Q"
  using assms unfolding contract_correct_def by blast

(* Corollary 2: Coincidence of Invariants and Summaries
   proof using the constructive translation *)
corollary coincidence':
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> R. summary_correct P t B R Q)"
  by (metis (lifting) lift_summary lift_invariant)


end