(set-logic HORN)

(declare-fun $__VERIFIER_assert_if519 (Int) Bool)
(declare-fun $main_sum125 (Int) Bool)
(declare-fun $main_if521 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv125 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if520 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13121 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13121))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if519 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13122 Int))
    (=> (and ($__VERIFIER_assert_if519 cond13122))
        (__VERIFIER_assert cond13122))))

; loop entry $main_inv125
(assert
  (forall (($s449 Int))
    (=> (and (= $s449 0))
        ($main_inv125 $s449))))

; loop term $main_sum125
(assert
  (forall (($s44913123 Int) ($uint13124 Int))
    (=> (and (= $uint13124 0)
             (<= 0 $uint13124)
             (<= $uint13124 4294967295)
             ($main_inv125 $s44913123))
        ($main_sum125 $s44913123))))

; if then
(assert
  (forall (($s44913123 Int) ($uint13124 Int))
    (=> (and (not (= $s44913123 0))
             (not (= $uint13124 0))
             (<= 0 $uint13124)
             (<= $uint13124 4294967295)
             ($main_inv125 $s44913123))
        ($main_if520 (+ $s44913123 1)))))

; if else
(assert
  (forall (($s44913123 Int) ($uint13124 Int))
    (=> (and (= $s44913123 0)
             (not (= $uint13124 0))
             (<= 0 $uint13124)
             (<= $uint13124 4294967295)
             ($main_inv125 $s44913123))
        ($main_if520 $s44913123))))

; __VERIFIER_assert precondition
(assert
  (forall (($s44913125 Int) ($uint13126 Int))
    (=> (and (not (= $uint13126 0))
             (<= 0 $uint13126)
             (<= $uint13126 4294967295)
             ($main_if520 $s44913125))
        ($__VERIFIER_assert_pre (ite (= $s44913125 0) 1 0)))))

; if then
(assert
  (forall (($s44913125 Int) ($uint13126 Int))
    (=> (and (__VERIFIER_assert (ite (= $s44913125 0) 1 0))
             (not (= $uint13126 0))
             (<= 0 $uint13126)
             (<= $uint13126 4294967295)
             ($main_if520 $s44913125))
        ($main_if521 $s44913125))))

; if else
(assert
  (forall (($s44913125 Int) ($uint13126 Int))
    (=> (and (= $uint13126 0)
             (<= 0 $uint13126)
             (<= $uint13126 4294967295)
             ($main_if520 $s44913125))
        ($main_if521 $s44913125))))

; forwards $main_inv125
(assert
  (forall (($s44913127 Int))
    (=> (and ($main_if521 $s44913127))
        ($main_inv125 $s44913127))))

(check-sat)
