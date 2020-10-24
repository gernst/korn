(set-logic HORN)

(declare-fun $__VERIFIER_assert_if122 (Int) Bool)
(declare-fun $main_inv385 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv383 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum384 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum383 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum385 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv384 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5030 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5030))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if122 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5031 Int))
    (=> (and ($__VERIFIER_assert_if122 cond5031))
        (__VERIFIER_assert cond5031))))

; loop entry $main_inv383
(assert
  (forall (($a464 (Array Int Int)) ($b465 (Array Int Int)) ($i466 Int) ($j467 Int))
    (=> (and (= $j467 0)
             (= $i466 0))
        ($main_inv383 $a464 $b465 $i466 $j467))))

; loop term $main_sum383
(assert
  (forall (($a4645032 (Array Int Int)) ($b4655033 (Array Int Int)) ($i4665034 Int) ($j4675035 Int))
    (=> (and (not (< $i4665034 10000))
             ($main_inv383 $a4645032 $b4655033 $i4665034 $j4675035))
        ($main_sum383 $a4645032 $b4655033 $i4665034 $j4675035))))

; forwards $main_inv383
(assert
  (forall (($j4675035 Int) ($a4645032 (Array Int Int)) ($b4655033 (Array Int Int)) ($int5036 Int) ($i4665034 Int))
    (=> (and (<= (- 2147483648) $int5036)
             (<= $int5036 2147483647)
             (< $i4665034 10000)
             ($main_inv383 $a4645032 $b4655033 $i4665034 $j4675035))
        ($main_inv383 $a4645032 (store $b4655033 $i4665034 $int5036) (+ $i4665034 1) $j4675035))))

; loop entry $main_inv384
(assert
  (forall (($a4645037 (Array Int Int)) ($b4655038 (Array Int Int)) ($j4675040 Int) ($i4665039 Int))
    (=> (and ($main_sum383 $a4645037 $b4655038 $i4665039 $j4675040))
        ($main_inv384 $a4645037 $b4655038 1 $j4675040))))

; loop term $main_sum384
(assert
  (forall (($a4645041 (Array Int Int)) ($b4655042 (Array Int Int)) ($i4665043 Int) ($j4675044 Int))
    (=> (and (not (< $i4665043 10000))
             ($main_inv384 $a4645041 $b4655042 $i4665043 $j4675044))
        ($main_sum384 $a4645041 $b4655042 $i4665043 $j4675044))))

; forwards $main_inv384
(assert
  (forall (($a4645041 (Array Int Int)) ($j4675044 Int) ($b4655042 (Array Int Int)) ($i4665043 Int))
    (=> (and (< $i4665043 10000)
             ($main_inv384 $a4645041 $b4655042 $i4665043 $j4675044))
        ($main_inv384 (store $a4645041 $j4675044 (select $b4655042 $i4665043)) $b4655042 (+ $i4665043 3) (+ $j4675044 1)))))

; loop entry $main_inv385
(assert
  (forall (($a4645045 (Array Int Int)) ($b4655046 (Array Int Int)) ($i4665047 Int) ($j4675048 Int))
    (=> (and ($main_sum384 $a4645045 $b4655046 $i4665047 $j4675048))
        ($main_inv385 $a4645045 $b4655046 1 0))))

; loop term $main_sum385
(assert
  (forall (($a4645049 (Array Int Int)) ($b4655050 (Array Int Int)) ($i4665051 Int) ($j4675052 Int))
    (=> (and (not (< $i4665051 10000))
             ($main_inv385 $a4645049 $b4655050 $i4665051 $j4675052))
        ($main_sum385 $a4645049 $b4655050 $i4665051 $j4675052))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4645049 (Array Int Int)) ($j4675052 Int) ($b4655050 (Array Int Int)) ($i4665051 Int))
    (=> (and (< $i4665051 10000)
             ($main_inv385 $a4645049 $b4655050 $i4665051 $j4675052))
        ($__VERIFIER_assert_pre (ite (= (select $a4645049 $j4675052) (select $b4655050 (+ (* 3 $j4675052) 1))) 1 0)))))

; forwards $main_inv385
(assert
  (forall (($a4645049 (Array Int Int)) ($b4655050 (Array Int Int)) ($i4665051 Int) ($j4675052 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4645049 $j4675052) (select $b4655050 (+ (* 3 $j4675052) 1))) 1 0))
             (< $i4665051 10000)
             ($main_inv385 $a4645049 $b4655050 $i4665051 $j4675052))
        ($main_inv385 $a4645049 $b4655050 (+ $i4665051 3) (+ $j4675052 1)))))

(check-sat)
