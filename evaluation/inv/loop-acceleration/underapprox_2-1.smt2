(set-logic HORN)

(declare-fun $__VERIFIER_assert_if510 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv120 (Int Int) Bool)
(declare-fun $main_sum120 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13077 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13077))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if510 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13078 Int))
    (=> (and ($__VERIFIER_assert_if510 cond13078))
        (__VERIFIER_assert cond13078))))

; loop entry $main_inv120
(assert
  (forall (($x437 Int) ($y438 Int))
    (=> (and (= $y438 1)
             (= $x437 0))
        ($main_inv120 $x437 $y438))))

; loop term $main_sum120
(assert
  (forall (($x43713079 Int) ($y43813080 Int))
    (=> (and (not (< $x43713079 6))
             ($main_inv120 $x43713079 $y43813080))
        ($main_sum120 $x43713079 $y43813080))))

; forwards $main_inv120
(assert
  (forall (($x43713079 Int) ($y43813080 Int))
    (=> (and (< $x43713079 6)
             ($main_inv120 $x43713079 $y43813080))
        ($main_inv120 (+ $x43713079 1) (* $y43813080 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43713081 Int) ($y43813082 Int))
    (=> (and ($main_sum120 $x43713081 $y43813082))
        ($__VERIFIER_assert_pre (ite (not (= $x43713081 6)) 1 0)))))

(check-sat)
