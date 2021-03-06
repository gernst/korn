theory Hoare
  imports Main
begin

(* result of executing a loop body,
   runtime errors are represented as None *)
datatype 'a res
  = Ok  'a
  | Brk 'a
  | Err

type_synonym 'a cond = "'a \<Rightarrow> bool"
type_synonym 'a rel  = "'a \<Rightarrow> 'a \<Rightarrow> bool"
type_synonym 'a prog = "'a \<Rightarrow> 'a res \<Rightarrow> bool"

(* Definition 1: Semantics of Loops *)
inductive while :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a prog" where
while_baseI[intro]:
  "\<lbrakk>\<not> t s\<rbrakk> \<Longrightarrow> while t B s (Ok s)" |
while_errI[intro]:
  "\<lbrakk>t s; B s Err\<rbrakk> \<Longrightarrow> while t B s Err" |
while_breakI[intro]:
  "\<lbrakk>t s; B s (Brk s')\<rbrakk> \<Longrightarrow> while t B s (Ok s')" |
while_stepI[intro]:
  "\<lbrakk>t s; B s (Ok s'); while t B s' s''\<rbrakk> \<Longrightarrow> while t B s s''"

(* Definition 2: Validity of Hoare-Triples (partial correctness *)
inductive hoare :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
hoareI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Ok s' \<and> Q s'\<rbrakk>
  \<Longrightarrow> hoare P c Q"

lemma hoareE[elim]:
  assumes "hoare P c Q"
  assumes "P s" "c s r"
  obtains s' where "r = Ok s'" "Q s'"
  using assms by (blast elim: hoare.cases)

(* Only safety of Hoare Triples *)

inductive safe :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> bool" where
safeI[intro!]:
"\<lbrakk>\<And> s r. P s \<Longrightarrow> c s r \<Longrightarrow> \<exists> s'. r = Ok s'\<rbrakk>
  \<Longrightarrow> safe P c"

lemma safeE[elim]:
  assumes "safe P c"
  assumes "P s" "c s r"
  obtains s' where "r = Ok s'"
  using assms by (blast elim: safe.cases)

(* Weak variant of Hoare-Triples where runtime errors are not considered *)

inductive correct :: "'a cond \<Rightarrow> 'a prog \<Rightarrow> 'a cond \<Rightarrow> bool" where
correctI[intro!]:
"\<lbrakk>\<And> s s'. P s \<Longrightarrow> c s (Ok s' ) \<Longrightarrow> Q s'\<rbrakk>
  \<Longrightarrow> correct P c Q"

lemma correctE[elim]:
  assumes "correct P c Q"
  assumes "P s" "c s (Ok s' )"
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
    from 2 c obtain s' where r: "r = Ok s'" by blast (* need to make this explicit for Isabelle *)
    from 2 c r show "\<exists>s'. r = Ok s' \<and> Q s'"
      by auto
  qed
qed

end