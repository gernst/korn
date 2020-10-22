(set-logic HORN)

(declare-fun $main_inv11 (Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if10 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv12 (Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum11 (Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if11 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum12 (Int Int (Array Int Int) (Array Int Int)) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if10 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond122 Int))
    (=> (and ($assume_abort_if_not_if10 cond122))
        (assume_abort_if_not cond122))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond123 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond123))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if11 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond124 Int))
    (=> (and ($__VERIFIER_assert_if11 cond124))
        (__VERIFIER_assert cond124))))

; assume_abort_if_not precondition
(assert
  (forall (($S20 Int) ($int125 Int))
    (=> (and (= $S20 $int125)
             (<= (- 2147483648) $int125)
             (<= $int125 2147483647))
        ($assume_abort_if_not_pre (ite (> $S20 1) 1 0)))))

; loop entry $main_inv11
(assert
  (forall (($S20 Int) ($a22 (Array Int Int)) ($acopy23 (Array Int Int)) ($int125 Int))
    (=> (and (assume_abort_if_not (ite (> $S20 1) 1 0))
             (= $S20 $int125)
             (<= (- 2147483648) $int125)
             (<= $int125 2147483647))
        ($main_inv11 $S20 0 $a22 $acopy23))))

; loop term $main_sum11
(assert
  (forall (($S20126 Int) ($i21127 Int) ($a22128 (Array Int Int)) ($acopy23129 (Array Int Int)))
    (=> (and (not (< $i21127 $S20126))
             ($main_inv11 $S20126 $i21127 $a22128 $acopy23129))
        ($main_sum11 $S20126 $i21127 $a22128 $acopy23129))))

; forwards $main_inv11
(assert
  (forall (($S20126 Int) ($i21127 Int) ($a22128 (Array Int Int)) ($acopy23129 (Array Int Int)))
    (=> (and (< $i21127 $S20126)
             ($main_inv11 $S20126 $i21127 $a22128 $acopy23129))
        ($main_inv11 $S20126 (+ $i21127 1) $a22128 (store (store $acopy23129 (- (* 2 $S20126) (+ $i21127 1)) (select $a22128 (- (* 2 $S20126) (+ $i21127 1)))) $i21127 (select $a22128 $i21127))))))

; loop entry $main_inv12
(assert
  (forall (($S20130 Int) ($a22132 (Array Int Int)) ($acopy23133 (Array Int Int)) ($i21131 Int))
    (=> (and ($main_sum11 $S20130 $i21131 $a22132 $acopy23133))
        ($main_inv12 $S20130 0 $a22132 $acopy23133))))

; loop term $main_sum12
(assert
  (forall (($S20134 Int) ($i21135 Int) ($a22136 (Array Int Int)) ($acopy23137 (Array Int Int)))
    (=> (and (not (< $i21135 (* 2 $S20134)))
             ($main_inv12 $S20134 $i21135 $a22136 $acopy23137))
        ($main_sum12 $S20134 $i21135 $a22136 $acopy23137))))

; __VERIFIER_assert precondition
(assert
  (forall (($acopy23137 (Array Int Int)) ($i21135 Int) ($a22136 (Array Int Int)) ($S20134 Int))
    (=> (and (< $i21135 (* 2 $S20134))
             ($main_inv12 $S20134 $i21135 $a22136 $acopy23137))
        ($__VERIFIER_assert_pre (ite (= (select $acopy23137 $i21135) (select $a22136 $i21135)) 1 0)))))

; forwards $main_inv12
(assert
  (forall (($S20134 Int) ($i21135 Int) ($a22136 (Array Int Int)) ($acopy23137 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $acopy23137 $i21135) (select $a22136 $i21135)) 1 0))
             (< $i21135 (* 2 $S20134))
             ($main_inv12 $S20134 $i21135 $a22136 $acopy23137))
        ($main_inv12 $S20134 (+ $i21135 1) $a22136 $acopy23137))))

(check-sat)
