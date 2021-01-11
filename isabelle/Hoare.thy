theory Hoare
  imports Main
begin

(* result of executing a loop body,
   runtime errors are represented as None *)
datatype 'a res
  = Ok 'a
  | Break 'a

(* TODO: get rid of option, to have working seq for both body and prog *)

type_synonym 'a cond = "'a \<Rightarrow> bool"
type_synonym 'a rel  = "'a \<Rightarrow> 'a \<Rightarrow> bool"
type_synonym 'a body = "'a \<Rightarrow> ('a res) option \<Rightarrow> bool"
type_synonym 'a prog = "'a \<Rightarrow> 'a option \<Rightarrow> bool"

inductive breaks :: "'a body \<Rightarrow> bool" where
breaksI[intro!]:
  "c s (Some (Break s'))
    \<Longrightarrow> breaks c"

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

(* Definition 2: Validity of Hoare-Triples (partial correctness *)
inductive hoare :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
hoareI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Some s' \<and> Q s'\<rbrakk>
  \<Longrightarrow> hoare P c Q"

lemma hoareE[elim]:
  assumes "hoare P c Q"
  assumes "P s" "c s r"
  obtains s' where "r = Some s'" "Q s'"
  using assms by (blast elim: hoare.cases)

(* Only safety of Hoare Triples *)

inductive safe :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> bool" where
safeI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Some s'\<rbrakk>
  \<Longrightarrow> safe P c"

lemma safeE[elim]:
  assumes "safe P c"
  assumes "P s" "c s r"
  obtains s' where "r = Some s'"
  using assms by (blast elim: safe.cases)

(* Weak variant of Hoare-Triples where runtime errors are not considered *)

inductive correct :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
correctI[intro!]:
"\<lbrakk>\<And> s s'. P s \<Longrightarrow> c s (Some s' ) \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> correct P c Q"

lemma correctE[elim]:
  assumes "correct P c Q"
  assumes "P s" "c s (Some s' )"
  shows "Q s'"
  using assms by (blast elim: correct.cases)

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
    from 2 c obtain s' where r: "r = Some s'" by blast (* need to make this explicit for Isabelle *)
    from 2 c r show "\<exists>s'. r = Some s' \<and> Q s'"
      by auto
  qed
qed

end