theory Rules
  imports Correspondence
begin

lemma hoare_conseq:
  assumes "hoare P' c Q'"
  assumes "\<And> s. P  s \<Longrightarrow> P' s"
  assumes "\<And> s. Q' s \<Longrightarrow> Q  s"
  shows   "hoare P  c Q"
  using assms by blast

lemma hoare_spec:
  shows   "hoare P (spec P R) (\<lambda> s. \<exists> s0. P s0 \<and> R s0 s)"
  by rule auto

lemma spec_conseq:
  assumes "hoare P (spec I R) Q"
  shows   "\<And> s. P s \<Longrightarrow> I s"
          "\<And> s0 s. P s0 \<and> R s0 s \<Longrightarrow> Q s"
proof -
  fix s
  assume P: "P s"
  from assms show "I s"
  proof (elim hoareE)
    from P show "P s" .
  next
    show "spec I R s (Ok s)"
      apply simp



lemma hoare_seq:
  assumes "hoare P c1 Q"
  assumes "hoare Q c2 R"
  shows   "hoare P (seq c1 c2) R"
  using assms by (auto elim!: seqE)

(* Definition 2: Validity of Hoare-Triples (partial correctness *)
inductive hoare' :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> bool" where
hoare'I[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> (\<exists> s'. r = Brk s' \<and> B s') \<or> (\<exists> s'. r = Ok s' \<and> Q s')\<rbrakk>
  \<Longrightarrow> hoare' P c B Q"

inductive_cases hoare'E[elim!]: "hoare' P c B Q"

lemma hoare':
  "hoare' P c (\<lambda> s. False) Q \<longleftrightarrow> hoare P c Q"
  by blast


lemma hoare_invariant:
  assumes "hoare P skip I"
  assumes "hoare  (\<lambda> s. \<not> t s \<and> I s) skip Q"
  assumes "hoare' (\<lambda> s. t s \<and> I s) B Q I"
  shows   "hoare P (while t B) Q"
  apply (rule invariant_sound[where ?I = "I"])
  sorry
  

lemma hoare_contract:
  assumes "hoare P (spec I R) Q"
  assumes "\<And> sn. hoare  (\<lambda> s. \<not> t s \<and> I s \<and> sn = s) skip (\<lambda> s. R sn s)"
  assumes "\<And> si. hoare  (\<lambda> s.   t s \<and> I s \<and> si = s) (seq B (spec I R)) (\<lambda> s. R si s)"
  shows   "hoare P (while t B) Q"
  apply (rule combined_sound[where ?I = "I" and ?R = "R"])
proof (rule, goal_cases)
  case (1 s0)
  then show ?case
    using assms(1) by auto
next
  case (2 s s')
  then show ?case
    using assms(3)[of s] by (auto elim!: hoareE)
next
  case (3 s)
  then show ?case
    using assms(3)[of s] by (auto elim!: hoareE)
next
  case (4 s)
  then show ?case
    using assms(2)[of s] by (auto elim!: hoareE)
next
  case (5 s s')
  then show ?case
    using assms(3)[of s] by (auto elim!: hoareE)
next
  case (6 s s' sn)
  then have "I s'"
    using assms(3)[of s] by (auto elim!: hoareE)
  with 6 show ?case
    using assms(3)[of s] by (auto elim!: hoareE intro!: seq_Ok)
next
  case (7 s0 sn)
  from 7 have "I s0"
    using assms(1) by auto
  with 7 show ?case
    using assms(1) by (auto elim!: hoareE)
qed

end