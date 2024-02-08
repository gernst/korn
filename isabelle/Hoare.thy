theory Hoare
  imports Preliminaries
begin

(* We formalize the results of Sec 6 without
   referring to syntactic formulas/variables,
   i.e., remain a little more abstract here. *)

fun break where
"break s r = (r = Brk s)"

fun skip :: "'S prog" where
"skip s r = (r = Ok s)"

fun spec :: "'S cond \<Rightarrow> 'S rel \<Rightarrow> 'S prog" where
"spec P Q s r = (if P s then \<exists> s'. r = Ok s' \<and> Q s s' else r = Err)"

fun assm where
"assm P s r = (P s \<and> r = Ok s)"

fun assrt where
"assrt P s r = (if P s then r = Ok s else r = Err)"

fun choice where
"choice c1 c2 s r = (c1 s r \<or> c2 s r)"

inductive seq :: "'S prog \<Rightarrow> 'S prog \<Rightarrow> 'S prog" where
seq_Err[intro]: "c1 s Err \<Longrightarrow> seq c1 c2 s Err" |
seq_Brk[intro]: "c1 s (Brk s') \<Longrightarrow> seq c1 c2 s (Brk s')" |
seq_Ok[intro]:  "c1 s (Ok  s') \<Longrightarrow> c2 s' r \<Longrightarrow> seq c1 c2 s r"

inductive_cases seqE: "seq c1 c2 s r"

lemma hoare_seqE:
  assumes "hoare P (seq c1 c2) Q"
  assumes "P s" "c1 s (Ok s')"
  shows   "\<And> s''. c2 s' (Ok s'') \<Longrightarrow> Q s''"
  using assms by (auto elim!: hoareE seqE)

(* Rule SPEC *)
lemma hoare_spec:
  "hoare P (spec P Q) (\<lambda> s. \<exists> s0. Q s0 s)"
  by rule auto

(* Stronger variant that keeps information about the pre-state *)
lemma hoare_spec':
  "hoare P (spec P Q) (\<lambda> s. \<exists> s0. P s0 \<and> Q s0 s)"
  by rule auto


lemma hoare_loop_invariant:
  assumes "\<And> s. P s \<Longrightarrow> I s"
  assumes "hoare (\<lambda> s. t s \<and> I s) B I"
  assumes "\<And> s. I s \<Longrightarrow> \<not> t s \<Longrightarrow> Q s"
  shows "hoare P (while t B) Q"
proof (rule, goal_cases)
  case (1 s r)
  from 1(1) assms(1) have "I s"
    by blast
  from 1(2) this assms(2,3) show ?case
    by induction auto
qed

lemma hoare_loop_contract:
  assumes "hoare P (spec I R) Q"
  assumes "\<And> sn. hoare (\<lambda> s. I s \<and> \<not> t s \<and> s = sn) skip (\<lambda> s. R sn s)"
  assumes "\<And> si. hoare (\<lambda> s. I s \<and>   t s \<and> s = si) (seq B (spec I R)) (\<lambda> s. R si s)"
  assumes "\<And> s s'. \<not> B s (Brk s')" (* assume absence of breaks *)
  shows   "hoare P (while t B) Q"
proof (rule, goal_cases)
  case (1 s r)
  from 1(1) assms(1) have I: "I s"
    by auto
  from 1(2) I assms(2,3,4) have "\<exists> s'. r = Ok s' \<and> R s s'"
  proof (induction)
    case (while_baseI t s B)
    from this(1,2,3) show ?case
      by auto
  next
    case (while_errI t s B)
    from this(1,2,3,5) show ?case
      by auto
  next
    case (while_breakI t s B s')
    from this(2,6) show ?case
      by simp
  next
    case (while_stepI t s B s' r)
    (* Taking apart the sequential composition
       in the premise is somewhat annoying,
       we didn't bother to automate this better here. *)
    note t = while_stepI(1,2,5)
    note B = while_stepI(7)
    note H = while_stepI(6,7,8)
    from t B[of s]
    have I': "I s'" by (auto elim!: hoareE seqE)
    from while_stepI.IH[OF this H]
    obtain sn where r: "r = Ok sn" and R': "R s' sn" by blast
    from t B[of s] I' R' have "R s sn"
      by (auto elim!: hoare_seqE)
    with r show ?case
      by simp
  qed
  with 1(1) I assms(1) show ?case
    by (auto elim!: hoareE)
qed

end