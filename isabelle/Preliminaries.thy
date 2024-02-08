theory Preliminaries
  imports Main
begin

(* Type \hat S for the result of executing a loop body,
   where type variable 'S corresponds to S *)
datatype 'S res
  = Ok  'S
  | Brk 'S
  | Err

type_synonym 'S cond = "'S \<Rightarrow> bool"
type_synonym 'S rel  = "'S \<Rightarrow> 'S \<Rightarrow> bool"
type_synonym 'S prog = "'S \<Rightarrow> 'S res \<Rightarrow> bool"

(* Definition 1: Validity of Hoare-Triples (partial correctness *)
inductive hoare :: "'S cond \<Rightarrow> 'S prog \<Rightarrow> 'S cond \<Rightarrow> bool" where
hoareI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Ok s' \<and> Q s'\<rbrakk>
  \<Longrightarrow> hoare P c Q"

(* Definition 2: Safety and Correctness of Hoare-Triples *)

inductive safe :: "'S cond \<Rightarrow> 'S prog \<Rightarrow> bool" where
safeI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Ok s'\<rbrakk>
  \<Longrightarrow> safe P c"

inductive correct :: "'S cond \<Rightarrow> 'S prog \<Rightarrow> 'S cond \<Rightarrow> bool" where
correctI[intro!]:
"\<lbrakk>\<And> s s'. P s \<Longrightarrow> c s (Ok s' ) \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> correct P c Q"

lemma hoareE[elim]:
  assumes "hoare P c Q"
  assumes "P s" "c s r"
  obtains s' where "r = Ok s'" "Q s'"
  using assms by (blast elim: hoare.cases)

lemma safeE[elim]:
  assumes "safe P c"
  assumes "P s" "c s r"
  obtains s' where "r = Ok s'"
  using assms by (blast elim: safe.cases)

lemma correctE[elim]:
  assumes "correct P c Q"
  assumes "P s" "c s (Ok s' )"
  shows "Q s'"
  using assms by (blast elim: correct.cases)

(* Eq. (5) *)
lemma hoare_split:
  "hoare P c Q \<longleftrightarrow> correct P c Q \<and> safe P c"
proof (rule, goal_cases)
  case 1
  then show ?case by auto
next
  case 2
  show ?case proof (rule hoareI)
    fix s r
    assume c: "P s" "c s r"
    from 2 c obtain s' where r: "r = Ok s'" by blast (* need to make this explicit for Isabelle *)
    from 2 c r show "\<exists>s'. r = Ok s' \<and> Q s'"
      by auto
  qed
qed

(* Definition 3: Semantics of Loops *)
inductive while :: "'S cond \<Rightarrow> 'S prog \<Rightarrow> 'S prog" where
while_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> while t B s (Ok s)" |
while_errI[intro]:
  "\<lbrakk>t s; B s Err\<rbrakk> \<Longrightarrow> while t B s Err" |
while_breakI[intro]:
  "\<lbrakk>t s; B s (Brk s')\<rbrakk> \<Longrightarrow> while t B s (Ok s')" |
while_stepI[intro]:
  "\<lbrakk>t s; B s (Ok s'); while t B s' s''\<rbrakk> \<Longrightarrow> while t B s s''"

inductive ite :: "'S cond  \<Rightarrow> 'S prog \<Rightarrow> 'S prog \<Rightarrow> 'S prog" where
ite_leftI[intro]:
  "\<lbrakk>  t s; c1 s r\<rbrakk> \<Longrightarrow> ite t c1 c2 s r" |
ite_rightI[intro]:
  "\<lbrakk>\<not> t s; c2 s r\<rbrakk> \<Longrightarrow> ite t c1 c2 s r"

inductive_cases iteE[elim]: "ite t c1 c2 s r"

end