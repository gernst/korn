(set-logic HORN)

(declare-fun $main_sum201 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if596 (Int Int) Bool)
(declare-fun $main_sum203 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv202 (Int Int Int Int) Bool)
(declare-fun $main_inv201 (Int Int Int Int) Bool)
(declare-fun $main_sum202 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv203 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14957 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14957))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if596 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14958 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if596 cond cond14958))
        (__VERIFIER_assert cond14958))))

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
  (forall (($x57414959 Int) ($y57514960 Int) ($z57614961 Int) ($w57714962 Int))
    (=> (and (not (< $x57414959 268435455)))
        ($main_sum201 $x57414959 $y57514960 $z57614961 $w57714962 $x57414959 $y57514960 $z57614961 $w57714962))))

; loop entry $main_inv202
(assert
  (forall (($x57414959 Int) ($z57614961 Int) ($w57714962 Int) ($y57514960 Int))
    (=> (and (< $x57414959 268435455)
             ($main_inv201 $x57414959 $y57514960 $z57614961 $w57714962))
        ($main_inv202 $x57414959 0 $z57614961 $w57714962))))

; loop term $main_sum202
(assert
  (forall (($x57414963 Int) ($y57514964 Int) ($z57614965 Int) ($w57714966 Int))
    (=> (and (not (< $y57514964 268435455)))
        ($main_sum202 $x57414963 $y57514964 $z57614965 $w57714966 $x57414963 $y57514964 $z57614965 $w57714966))))

; loop entry $main_inv203
(assert
  (forall (($x57414963 Int) ($y57514964 Int) ($w57714966 Int) ($z57614965 Int))
    (=> (and (< $y57514964 268435455)
             ($main_inv202 $x57414963 $y57514964 $z57614965 $w57714966))
        ($main_inv203 $x57414963 $y57514964 0 $w57714966))))

; loop term $main_sum203
(assert
  (forall (($x57414967 Int) ($y57514968 Int) ($z57614969 Int) ($w57714970 Int))
    (=> (and (not (< $z57614969 268435455)))
        ($main_sum203 $x57414967 $y57514968 $z57614969 $w57714970 $x57414967 $y57514968 $z57614969 $w57714970))))

; forwards $main_inv203
(assert
  (forall (($x57414967 Int) ($y57514968 Int) ($z57614969 Int) ($w57714970 Int))
    (=> (and (< $z57614969 268435455)
             ($main_inv203 $x57414967 $y57514968 $z57614969 $w57714970))
        ($main_inv203 $x57414967 $y57514968 (+ $z57614969 1) $w57714970))))

; backwards $main_sum203
(assert
  (forall (($w57714974 Int) ($x57414971 Int) ($y57514972 Int) ($w57714970 Int) ($z57614973 Int) ($x57414967 Int) ($y57514968 Int) ($z57614969 Int))
    (=> (and ($main_sum203 $x57414967 $y57514968 (+ $z57614969 1) $w57714970 $x57414971 $y57514972 $z57614973 $w57714974)
             (< $z57614969 268435455))
        ($main_sum203 $x57414967 $y57514968 $z57614969 $w57714970 $x57414971 $y57514972 $z57614973 $w57714974))))

; __VERIFIER_assert precondition
(assert
  (forall (($z57614965 Int) ($w57714966 Int) ($x57414975 Int) ($z57614977 Int) ($x57414963 Int) ($w57714978 Int) ($y57514976 Int) ($y57514964 Int))
    (=> (and ($main_sum203 $x57414963 $y57514964 0 $w57714966 $x57414975 $y57514976 $z57614977 $w57714978)
             (< $y57514964 268435455)
             ($main_inv202 $x57414963 $y57514964 $z57614965 $w57714966))
        ($__VERIFIER_assert_pre (mod $z57614977 4)))))

; forwards $main_inv202
(assert
  (forall (($z57614965 Int) ($w57714966 Int) ($x57414975 Int) ($z57614977 Int) ($x57414963 Int) ($w57714978 Int) ($y57514976 Int) ($y57514964 Int))
    (=> (and (__VERIFIER_assert (mod $z57614977 4))
             ($main_sum203 $x57414963 $y57514964 0 $w57714966 $x57414975 $y57514976 $z57614977 $w57714978)
             (< $y57514964 268435455)
             ($main_inv202 $x57414963 $y57514964 $z57614965 $w57714966))
        ($main_inv202 $x57414975 (+ $y57514976 1) $z57614977 $w57714978))))

; backwards $main_sum202
(assert
  (forall (($z57614965 Int) ($w57714982 Int) ($x57414975 Int) ($z57614977 Int) ($x57414963 Int) ($w57714978 Int) ($y57514976 Int) ($y57514980 Int) ($w57714966 Int) ($z57614981 Int) ($y57514964 Int) ($x57414979 Int))
    (=> (and ($main_sum202 $x57414975 (+ $y57514976 1) $z57614977 $w57714978 $x57414979 $y57514980 $z57614981 $w57714982)
             (__VERIFIER_assert (mod $z57614977 4))
             ($main_sum203 $x57414963 $y57514964 0 $w57714966 $x57414975 $y57514976 $z57614977 $w57714978)
             (< $y57514964 268435455))
        ($main_sum202 $x57414963 $y57514964 $z57614965 $w57714966 $x57414979 $y57514980 $z57614981 $w57714982))))

; __VERIFIER_assert precondition
(assert
  (forall (($w57714986 Int) ($z57614961 Int) ($x57414959 Int) ($z57614985 Int) ($w57714962 Int) ($y57514984 Int) ($y57514960 Int) ($x57414983 Int))
    (=> (and ($main_sum202 $x57414959 0 $z57614961 $w57714962 $x57414983 $y57514984 $z57614985 $w57714986)
             (< $x57414959 268435455)
             ($main_inv201 $x57414959 $y57514960 $z57614961 $w57714962))
        ($__VERIFIER_assert_pre (mod $y57514984 2)))))

; forwards $main_inv201
(assert
  (forall (($w57714986 Int) ($z57614961 Int) ($x57414959 Int) ($z57614985 Int) ($w57714962 Int) ($y57514984 Int) ($y57514960 Int) ($x57414983 Int))
    (=> (and (__VERIFIER_assert (mod $y57514984 2))
             ($main_sum202 $x57414959 0 $z57614961 $w57714962 $x57414983 $y57514984 $z57614985 $w57714986)
             (< $x57414959 268435455)
             ($main_inv201 $x57414959 $y57514960 $z57614961 $w57714962))
        ($main_inv201 (+ $x57414983 1) $y57514984 $z57614985 $w57714986))))

; backwards $main_sum201
(assert
  (forall (($w57714990 Int) ($w57714986 Int) ($x57414987 Int) ($z57614961 Int) ($x57414959 Int) ($z57614985 Int) ($y57514988 Int) ($w57714962 Int) ($y57514984 Int) ($y57514960 Int) ($x57414983 Int) ($z57614989 Int))
    (=> (and ($main_sum201 (+ $x57414983 1) $y57514984 $z57614985 $w57714986 $x57414987 $y57514988 $z57614989 $w57714990)
             (__VERIFIER_assert (mod $y57514984 2))
             ($main_sum202 $x57414959 0 $z57614961 $w57714962 $x57414983 $y57514984 $z57614985 $w57714986)
             (< $x57414959 268435455))
        ($main_sum201 $x57414959 $y57514960 $z57614961 $w57714962 $x57414987 $y57514988 $z57614989 $w57714990))))

; __VERIFIER_assert precondition
(assert
  (forall (($w57714994 Int) ($z576 Int) ($x574 Int) ($z57614993 Int) ($w577 Int) ($y575 Int) ($y57514992 Int) ($x57414991 Int))
    (=> (and ($main_sum201 $x574 $y575 $z576 $w577 $x57414991 $y57514992 $z57614993 $w57714994)
             (= $w577 0)
             (= $z576 0)
             (= $y575 0)
             (= $x574 0))
        ($__VERIFIER_assert_pre (mod $x57414991 2)))))

(check-sat)
