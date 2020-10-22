(set-logic HORN)

(declare-fun $__VERIFIER_assert_if596 (Int) Bool)
(declare-fun $main_sum201 (Int Int Int Int) Bool)
(declare-fun $main_sum203 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv202 (Int Int Int Int) Bool)
(declare-fun $main_inv201 (Int Int Int Int) Bool)
(declare-fun $main_sum202 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv203 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13866 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13866))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if596 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13867 Int))
    (=> (and ($__VERIFIER_assert_if596 cond13867))
        (__VERIFIER_assert cond13867))))

; loop entry $main_inv201
(assert
  (forall (($x574 Int) ($y575 Int) ($z576 Int) ($w577 Int))
    (=> (and (= $w577 0)
             (= $z576 0)
             (= $y575 0)
             (= $x574 0))
        ($main_inv201 $x574 $y575 $z576 $w577))))

; loop term $main_sum201
(assert
  (forall (($x57413868 Int) ($y57513869 Int) ($z57613870 Int) ($w57713871 Int))
    (=> (and (not (< $x57413868 268435455))
             ($main_inv201 $x57413868 $y57513869 $z57613870 $w57713871))
        ($main_sum201 $x57413868 $y57513869 $z57613870 $w57713871))))

; loop entry $main_inv202
(assert
  (forall (($x57413868 Int) ($z57613870 Int) ($w57713871 Int) ($y57513869 Int))
    (=> (and (< $x57413868 268435455)
             ($main_inv201 $x57413868 $y57513869 $z57613870 $w57713871))
        ($main_inv202 $x57413868 0 $z57613870 $w57713871))))

; loop term $main_sum202
(assert
  (forall (($x57413872 Int) ($y57513873 Int) ($z57613874 Int) ($w57713875 Int))
    (=> (and (not (< $y57513873 268435455))
             ($main_inv202 $x57413872 $y57513873 $z57613874 $w57713875))
        ($main_sum202 $x57413872 $y57513873 $z57613874 $w57713875))))

; loop entry $main_inv203
(assert
  (forall (($x57413872 Int) ($y57513873 Int) ($w57713875 Int) ($z57613874 Int))
    (=> (and (< $y57513873 268435455)
             ($main_inv202 $x57413872 $y57513873 $z57613874 $w57713875))
        ($main_inv203 $x57413872 $y57513873 0 $w57713875))))

; loop term $main_sum203
(assert
  (forall (($x57413876 Int) ($y57513877 Int) ($z57613878 Int) ($w57713879 Int))
    (=> (and (not (< $z57613878 268435455))
             ($main_inv203 $x57413876 $y57513877 $z57613878 $w57713879))
        ($main_sum203 $x57413876 $y57513877 $z57613878 $w57713879))))

; forwards $main_inv203
(assert
  (forall (($x57413876 Int) ($y57513877 Int) ($z57613878 Int) ($w57713879 Int))
    (=> (and (< $z57613878 268435455)
             ($main_inv203 $x57413876 $y57513877 $z57613878 $w57713879))
        ($main_inv203 $x57413876 $y57513877 (+ $z57613878 1) $w57713879))))

; __VERIFIER_assert precondition
(assert
  (forall (($z57613882 Int) ($x57413880 Int) ($y57513881 Int) ($w57713883 Int))
    (=> (and ($main_sum203 $x57413880 $y57513881 $z57613882 $w57713883))
        ($__VERIFIER_assert_pre (mod $z57613882 4)))))

; forwards $main_inv202
(assert
  (forall (($x57413880 Int) ($y57513881 Int) ($z57613882 Int) ($w57713883 Int))
    (=> (and (__VERIFIER_assert (mod $z57613882 4))
             ($main_sum203 $x57413880 $y57513881 $z57613882 $w57713883))
        ($main_inv202 $x57413880 (+ $y57513881 1) $z57613882 $w57713883))))

; __VERIFIER_assert precondition
(assert
  (forall (($y57513885 Int) ($x57413884 Int) ($z57613886 Int) ($w57713887 Int))
    (=> (and ($main_sum202 $x57413884 $y57513885 $z57613886 $w57713887))
        ($__VERIFIER_assert_pre (mod $y57513885 2)))))

; forwards $main_inv201
(assert
  (forall (($x57413884 Int) ($y57513885 Int) ($z57613886 Int) ($w57713887 Int))
    (=> (and (__VERIFIER_assert (mod $y57513885 2))
             ($main_sum202 $x57413884 $y57513885 $z57613886 $w57713887))
        ($main_inv201 (+ $x57413884 1) $y57513885 $z57613886 $w57713887))))

; __VERIFIER_assert precondition
(assert
  (forall (($x57413888 Int) ($y57513889 Int) ($z57613890 Int) ($w57713891 Int))
    (=> (and ($main_sum201 $x57413888 $y57513889 $z57613890 $w57713891))
        ($__VERIFIER_assert_pre (mod $x57413888 2)))))

(check-sat)
