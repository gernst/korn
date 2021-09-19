theory Unary
  imports Summaries
begin

inductive usummary_correct :: "'a cond \<Rightarrow> 'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> 'a cond \<Rightarrow> bool" where
usummary_correctI[intro!]:
"\<lbrakk>\<And> s s'. \<lbrakk>P s; R s\<rbrakk> \<Longrightarrow> Q s';
  \<And> s.    \<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> R s;
  \<And> s.    \<lbrakk>  t s; B s Err\<rbrakk> \<Longrightarrow> R s;
  \<And> s s'. \<lbrakk>  t s; B s (Brk s')\<rbrakk> \<Longrightarrow> R s;
  \<And> s s'. \<lbrakk>  t s; B s (Ok  s'); R s'\<rbrakk> \<Longrightarrow> R s\<rbrakk>
  \<Longrightarrow> usummary_correct P t B R Q"

inductive_cases usummary_correctE[elim]: "usummary_correct P t B Q R"

lemma usummary_post:
  assumes "while t B s r"
  assumes "r = Ok s'"
  assumes "usummary_correct P t B R Q"
  assumes "P s"
  shows   "Q s'"
proof -
  from assms(1-3) have "R s"
    by induction blast+
  with assms(3,4) show ?thesis
    by blast
qed

theorem usummary_complete:
  assumes "correct P (while t B) Q"
  obtains R where "usummary_correct P t B R Q"
proof -
  have "usummary_correct P t B (\<lambda> s. Q s \<and> (\<forall> s'. suffix t B s s' \<longrightarrow> Q s')) Q"
  proof (rule, goal_cases)
    case (1 s s')
    then show ?case
      using assms
      sorry
  next
    case (2 s)
    then show ?case
      using assms try
      sorry
  next
    case (3 s)
    then show ?case sorry
  next
    case (4 s s')
    then show ?case sorry
  next
    case (5 s s')
    then show ?case sorry
  qed
  then show ?thesis ..
qed

theorem summary_unary:
  assumes "summary_correct  P t B R Q"
  shows   "usummary_correct P t B (\<lambda> s. \<forall> sn. R s sn) Q"
proof (rule, goal_cases)
  case (1 s s')
  then show ?case
    using assms by blast
next
  case (2 s)
  then show ?case
    using assms sorry
next
  case (3 s)
  then show ?case sorry
next
  case (4 s s')
  then show ?case sorry
next
  case (5 s s')
  then show ?case sorry
qed

end