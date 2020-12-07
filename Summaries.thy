theory Summaries
  imports Main
begin

(* result of executing a loop body,
   runtime errors are represented as None *)
datatype 'a res
  = Ok 'a
  | Break 'a

type_synonym 'a cond = "'a \<Rightarrow> bool"
type_synonym 'a rel  = "'a \<Rightarrow> 'a \<Rightarrow> bool"
type_synonym 'a body = "'a \<Rightarrow> ('a res) option \<Rightarrow> bool"
type_synonym 'a prog = "'a \<Rightarrow> 'a option \<Rightarrow> bool"

(* Definition 1: Semantics of Loops *)
inductive while :: "'a cond \<Rightarrow> 'a body \<Rightarrow> 'a prog" where
while_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> while t B s (Some s)" |
while_errI[intro]:
  "\<lbrakk>t s; B s None\<rbrakk> \<Longrightarrow> while t B s None" |
while_breakI[intro]:
  "\<lbrakk>t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> while t B s (Some s')" |
while_stepI[intro]:
  "\<lbrakk>t s; B s (Some (Ok s')); while t B s' s''\<rbrakk> \<Longrightarrow> while t B s s''"

(* Definition 2: Validity of Hoare-Triples *)
inductive hoare :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
hoareI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Some s' \<and> Q s'\<rbrakk>
  \<Longrightarrow> hoare P c Q"

lemma hoareE[elim]:
  assumes "hoare P c Q"
  assumes "P s" "c s r"
  obtains s' where "r = Some s'" "Q s'"
  using assms by (blast elim: hoare.cases)

(* Definition 3: Loop Invariant *)
inductive invariant :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> bool" where
invariantI[intro!]:
"\<lbrakk>\<And> s0.   \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0;
  \<And> s s'. \<lbrakk>I s; t s; B s (Some (Ok    s'))\<rbrakk> \<Longrightarrow> I s'\<rbrakk>
  \<Longrightarrow> invariant P I t B"

inductive invariant_safe ::"'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> bool" where
invariant_safeI[intro!]:
"\<lbrakk>invariant P I t B;
  \<And> s.    \<lbrakk>I s; t s; B s None\<rbrakk> \<Longrightarrow> False\<rbrakk>
  \<Longrightarrow> invariant_safe P I t B"

inductive invariant_correct ::"'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> 'a cond \<Rightarrow> bool" where
invariant_correctI[intro!]:
"\<lbrakk>invariant_safe P I t B;
  \<And> s.    \<lbrakk>I s; \<not> t s\<rbrakk> \<Longrightarrow> Q s;
  \<And> s s'. \<lbrakk>I s; t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> invariant_correct P I t B Q"

inductive_cases invariantE[elim!]:         "invariant         P I t B"
inductive_cases invariant_safeE[elim!]:    "invariant_safe    P I t B"
inductive_cases invariant_correctE[elim!]: "invariant_correct P I t B Q"

(* Theorem 1: Soundness of Loop Invariants *)
theorem invariant_sound:
  assumes "invariant_correct P I t B Q"
  shows   "hoare P (while t B) Q"
proof (rule hoareI)
  fix s r
  assume "P s"
  with assms have I: "I s"
    by blast
  assume "while t B s r"
  then obtain s' where "r = Some s'" "Q s'"
    using I assms by induction blast+
  then show "\<exists>s'. r = Some s' \<and> Q s'"
    by blast
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
theorem invariant_complete:
  assumes "hoare P (while t B) Q"
  obtains I where "invariant_correct P I t B Q"
proof -
  have "invariant_correct P (\<lambda> s. \<exists> s0. P s0 \<and> prefix t B s0 s) t B Q"
    using assms by auto
  with that show ?thesis
    by auto
qed

(* Definition 4: Loop Summary *)
inductive summary :: "'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel \<Rightarrow> bool" where
summaryI[intro!]:
"\<lbrakk>\<And> s.       \<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> R s s;
  \<And> s s'.    \<lbrakk>t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> R s s';
  \<And> s s' sn. \<lbrakk>t s; R s' sn; B s (Some (Ok s'))\<rbrakk> \<Longrightarrow> R s sn\<rbrakk>
  \<Longrightarrow> summary t B R"

inductive summary_correct :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
summary_correctI[intro!]:
"\<lbrakk>summary t B R;
  \<And> s0 sn.   \<lbrakk>P s0; R s0 sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> summary_correct P t B R Q"

inductive_cases summaryE[elim!]:         "summary         t B R"
inductive_cases summary_correctE[elim!]: "summary_correct P t B R Q"

(* Theorem 3: Soundness of Loop Summaries *)
theorem summary_sound:
  assumes "invariant_safe  P I t B"
  assumes "summary_correct P t B R Q"
  shows   "hoare P (while t B) Q"
proof (rule hoareI)
  fix s r
  assume P: "P s"
  with assms have I: "I s"
    by blast
  assume "while t B s r"
  then obtain s' where "r = Some s'" "R s s'"
    using I assms by induction blast+
  then show "\<exists>s'. r = Some s' \<and> Q s'"
    using P assms by blast
qed

(* Loop suffix characterization R* *)
inductive suffix :: "'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel" where
suffix_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> suffix t B s s" |
suffix_breakI[intro]:
  "\<lbrakk>t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> suffix t B s s'" |
suffix_stepI[intro]:
  "\<lbrakk>t s; B s (Some (Ok s')); suffix t B s' s''\<rbrakk> \<Longrightarrow> suffix t B s s''"

lemma suffix_while[intro]:
  assumes "suffix t B s s'"
  shows   "while t B s (Some s')"
  using assms by induction auto

(* Theorem 4: Completeness of Loop Summaries wrt. Safe Invariants *)
theorem summary_complete:
  (* assumes "invariant_safe P I t B" *)
  assumes "hoare P (while t B) Q"
  obtains I R
  where "invariant_safe  P I t B"
    and "summary_correct P t B R Q"
proof -
  have "invariant_safe P (\<lambda> s. \<exists> s0. P s0 \<and> prefix t B s0 s) t B"
    using assms by auto
  moreover have "summary_correct P t B (\<lambda> s s'. suffix t B s s') Q"
    using assms by blast
  ultimately show ?thesis ..
qed

(* Corollary 2: Coincidence of Invariants and Summaries
   proof via soundness and completeness of the approaches *)
corollary coincidence:
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> J R.  invariant_safe P J t B
               \<and> summary_correct P t B R Q)"
  by (meson invariant_sound invariant_complete summary_sound summary_complete)

(* Proposition 1: Lifting of Summaries to Invariants *)
proposition lift_summary:
  assumes "summary_correct P t B R Q"
  assumes "invariant_safe  P I t B"
  shows   "invariant_correct  P (\<lambda> s. \<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B Q"
(* The proof spells out all the different cases explicitly,
   but is in fact rather straight-forward. *)
proof (rule invariant_correctI)
  have "invariant P (\<lambda> s. \<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B"
  proof (rule invariantI)
    fix s0
    assume "P s0"
    then show "\<exists>s0a. P s0a \<and> I s0 \<and> (\<forall>sn. R s0 sn \<longrightarrow> R s0a sn)"
      using assms by auto
  next
    fix s s'
    assume "\<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)"
    then obtain s0 where P: "P s0" and I: "I s" and R: "\<forall>sn. R s sn \<longrightarrow> R s0 sn"
      by blast
    assume "t s" "B s (Some (Ok s'))"
    then have "I s'" "P s0" "\<forall>sn. R s' sn \<longrightarrow> R s0 sn"
      using P I R assms by blast+
    then show "\<exists>s0. P s0 \<and> I s' \<and> (\<forall>sn. R s' sn \<longrightarrow> R s0 sn)"
      by blast
  qed
  moreover have "\<And>s. (\<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) \<Longrightarrow> t s \<Longrightarrow> B s None \<Longrightarrow> False"
    using assms(2) by blast
  ultimately show "invariant_safe P (\<lambda>s. \<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)) t B"
    by (rule invariant_safeI)
  next
    fix s
    assume "\<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)"
    moreover assume "\<not> t s"
    ultimately show "Q s"
      using assms(1) by blast
  next
    fix s s'
    assume "\<exists> s0. P s0 \<and> I s \<and> (\<forall> sn. R s sn \<longrightarrow> R s0 sn)"
    moreover assume "t s" "B s (Some (Break s'))"
    ultimately show "Q s'"
      using assms(1) by blast
qed

(* Proposition 2: Lifting of Postconditions to Summaries *)
proposition lift_post:
  "invariant_correct P I t B Q
    \<longleftrightarrow>   invariant_safe P I t B
        \<and> summary_correct P t B (\<lambda> s0 s. I s0 \<longrightarrow> Q s) Q"
  by blast

(* Corollary 2: Coincidence of Invariants and Summaries
   proof using the constructure translation *)
corollary coincidence':
  "(\<exists> I. invariant_correct P I t B Q)
    \<longleftrightarrow> (\<exists> J R.  invariant_safe P J t B
               \<and> summary_correct P t B R Q)"
  using lift_summary lift_post by (metis (mono_tags, lifting))

(* Soundness of a "stronger" formulation that includes invariants in the conditions for summaries,
   all in one large set of proof obligations,  note the additional assumption I s for the backwards propagation conditions. *)
inductive combined :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a body \<Rightarrow> 'a rel \<Rightarrow> 'a cond \<Rightarrow> bool" where
combinedI[intro!]:
"\<lbrakk>\<And> s0.      \<lbrakk>P s0\<rbrakk> \<Longrightarrow> I s0;
  \<And> s s'.    \<lbrakk>I s; t s; B s (Some (Ok    s'))\<rbrakk> \<Longrightarrow> I s';
 
  \<And> s.       \<lbrakk>I s; t s; B s None\<rbrakk> \<Longrightarrow> False;
  
  \<And> s.       \<lbrakk>I s; \<not> t s\<rbrakk> \<Longrightarrow> R s s;
  \<And> s s'.    \<lbrakk>I s; t s; B s (Some (Break s'))\<rbrakk> \<Longrightarrow> R s s';
  \<And> s s' sn. \<lbrakk>I s; t s; R s' sn; B s (Some (Ok s'))\<rbrakk> \<Longrightarrow> R s sn;

  \<And> s0 sn.   \<lbrakk>P s0; R s0 sn\<rbrakk> \<Longrightarrow> Q sn\<rbrakk>
  \<Longrightarrow> combined P I t B R Q"

inductive_cases combinedE[elim!]: "combined P I t B R Q"

(* Soundness of the combined approach, direct proof *)
theorem combined_sound:
  assumes "combined P I t B R Q"
  shows   "hoare P (while t B) Q"
proof (rule hoareI)
  fix s r
  assume P: "P s"
  with assms have I: "I s"
    by blast
  assume "while t B s r"
  then obtain s' where "r = Some s'" "R s s'"
    using I assms by induction blast+
  then show "\<exists>s'. r = Some s' \<and> Q s'"
    using P assms by blast
qed

(* Proposition 3: Coincidence of the Combined Approach *)
lemma
  "combined P I t B R Q
    \<longleftrightarrow> invariant_safe P I t B \<and>
        summary_correct P t B (\<lambda> s sn. I s \<longrightarrow> R s sn) Q"
  by blast

end