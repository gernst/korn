(set-logic HORN)

(declare-fun $main_if520 (Int Int) Bool)
(declare-fun $main_sum125 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv125 (Int) Bool)
(declare-fun $main_if521 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_if519 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13952 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13952))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if519 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13953 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if519 cond cond13953))
        (__VERIFIER_assert cond13953))))

; loop entry $main_inv125
(assert
  (forall (($s449 Int))
    (=> (and (= $s449 0))
        ($main_inv125 $s449))))

; loop term $main_sum125
(assert
  (forall (($s44913954 Int) ($uint13955 Int))
    (=> (and (= $uint13955 0)
             (<= 0 $uint13955)
             (<= $uint13955 4294967295))
        ($main_sum125 $s44913954 $s44913954))))

; if then
(assert
  (forall (($s44913954 Int) ($uint13955 Int))
    (=> (and (not (= $s44913954 0))
             (not (= $uint13955 0))
             (<= 0 $uint13955)
             (<= $uint13955 4294967295)
             ($main_inv125 $s44913954))
        ($main_if520 $s44913954 (+ $s44913954 1)))))

; if else
(assert
  (forall (($s44913954 Int) ($uint13955 Int))
    (=> (and (= $s44913954 0)
             (not (= $uint13955 0))
             (<= 0 $uint13955)
             (<= $uint13955 4294967295)
             ($main_inv125 $s44913954))
        ($main_if520 $s44913954 $s44913954))))

; __VERIFIER_assert precondition
(assert
  (forall (($s44913956 Int) ($uint13957 Int) ($s44913954 Int))
    (=> (and (not (= $uint13957 0))
             (<= 0 $uint13957)
             (<= $uint13957 4294967295)
             ($main_if520 $s44913954 $s44913956))
        ($__VERIFIER_assert_pre (ite (= $s44913956 0) 1 0)))))

; if then
(assert
  (forall (($s44913954 Int) ($s44913956 Int) ($uint13957 Int))
    (=> (and (__VERIFIER_assert (ite (= $s44913956 0) 1 0))
             (not (= $uint13957 0))
             (<= 0 $uint13957)
             (<= $uint13957 4294967295)
             ($main_if520 $s44913954 $s44913956))
        ($main_if521 $s44913954 $s44913956))))

; if else
(assert
  (forall (($s44913954 Int) ($s44913956 Int) ($uint13957 Int))
    (=> (and (= $uint13957 0)
             (<= 0 $uint13957)
             (<= $uint13957 4294967295)
             ($main_if520 $s44913954 $s44913956))
        ($main_if521 $s44913954 $s44913956))))

; forwards $main_inv125
(assert
  (forall (($s44913958 Int) ($s44913954 Int))
    (=> (and ($main_if521 $s44913954 $s44913958))
        ($main_inv125 $s44913958))))

; backwards $main_sum125
(assert
  (forall (($s44913954 Int) ($s44913959 Int) ($s44913958 Int))
    (=> (and ($main_sum125 $s44913958 $s44913959)
             ($main_if521 $s44913954 $s44913958))
        ($main_sum125 $s44913954 $s44913959))))

(check-sat)
