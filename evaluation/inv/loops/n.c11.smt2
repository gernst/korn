(set-logic HORN)

(declare-fun $main_inv261 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum261 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if686 (Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $main_if687 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15102 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15102))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if686 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15103 Int))
    (=> (and ($__VERIFIER_assert_if686 cond15103))
        (__VERIFIER_assert cond15103))))

; loop entry $main_inv261
(assert
  (forall (($a726 (Array Int Int)) ($len727 Int) ($i728 Int))
    (=> (and (= $len727 0))
        ($main_inv261 $a726 $len727 $i728))))

; loop term $main_sum261
(assert
  (forall (($a72615104 (Array Int Int)) ($len72715105 Int) ($i72815106 Int) ($bool15107 Int))
    (=> (and (= $bool15107 0)
             (or (= $bool15107 0) (= $bool15107 1))
             ($main_inv261 $a72615104 $len72715105 $i72815106))
        ($main_sum261 $a72615104 $len72715105 $i72815106))))

; if then
(assert
  (forall (($a72615104 (Array Int Int)) ($i72815106 Int) ($len72715105 Int) ($bool15107 Int))
    (=> (and (= $len72715105 4)
             (not (= $bool15107 0))
             (or (= $bool15107 0) (= $bool15107 1))
             ($main_inv261 $a72615104 $len72715105 $i72815106))
        ($main_if687 $a72615104 0 $i72815106))))

; if else
(assert
  (forall (($a72615104 (Array Int Int)) ($len72715105 Int) ($i72815106 Int) ($bool15107 Int))
    (=> (and (not (= $len72715105 4))
             (not (= $bool15107 0))
             (or (= $bool15107 0) (= $bool15107 1))
             ($main_inv261 $a72615104 $len72715105 $i72815106))
        ($main_if687 $a72615104 $len72715105 $i72815106))))

; forwards $main_inv261
(assert
  (forall (($a72615108 (Array Int Int)) ($len72715109 Int) ($i72815110 Int))
    (=> (and ($main_if687 $a72615108 $len72715109 $i72815110))
        ($main_inv261 (store $a72615108 $len72715109 0) (+ $len72715109 1) $i72815110))))

; __VERIFIER_assert precondition
(assert
  (forall (($len72715112 Int) ($a72615111 (Array Int Int)) ($i72815113 Int))
    (=> (and ($main_sum261 $a72615111 $len72715112 $i72815113))
        ($__VERIFIER_assert_pre (ite (and (>= $len72715112 0) (< $len72715112 5)) 1 0)))))

(check-sat)
