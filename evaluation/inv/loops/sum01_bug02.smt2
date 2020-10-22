(set-logic HORN)

(declare-fun $__VERIFIER_assert_if367 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if368 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv520 (Int Int Int Int) Bool)
(declare-fun $main_sum520 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7128 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7128))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if367 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7129 Int))
    (=> (and ($__VERIFIER_assert_if367 cond7129))
        (__VERIFIER_assert cond7129))))

; loop entry $main_inv520
(assert
  (forall (($j740 Int) ($n741 Int) ($sn742 Int) ($uint7130 Int))
    (=> (and (= $sn742 0)
             (= $n741 $uint7130)
             (<= 0 $uint7130)
             (<= $uint7130 4294967295)
             (= $j740 10))
        ($main_inv520 1 $j740 $n741 $sn742))))

; loop term $main_sum520
(assert
  (forall (($i7397131 Int) ($j7407132 Int) ($n7417133 Int) ($sn7427134 Int))
    (=> (and (not (<= $i7397131 $n7417133))
             ($main_inv520 $i7397131 $j7407132 $n7417133 $sn7427134))
        ($main_sum520 $i7397131 $j7407132 $n7417133 $sn7427134))))

; if then
(assert
  (forall (($i7397131 Int) ($j7407132 Int) ($n7417133 Int) ($sn7427134 Int))
    (=> (and (< $i7397131 $j7407132)
             (<= $i7397131 $n7417133)
             ($main_inv520 $i7397131 $j7407132 $n7417133 $sn7427134))
        ($main_if368 $i7397131 $j7407132 $n7417133 (+ $sn7427134 2)))))

; if else
(assert
  (forall (($i7397131 Int) ($j7407132 Int) ($n7417133 Int) ($sn7427134 Int))
    (=> (and (not (< $i7397131 $j7407132))
             (<= $i7397131 $n7417133)
             ($main_inv520 $i7397131 $j7407132 $n7417133 $sn7427134))
        ($main_if368 $i7397131 $j7407132 $n7417133 $sn7427134))))

; forwards $main_inv520
(assert
  (forall (($i7397135 Int) ($j7407136 Int) ($n7417137 Int) ($sn7427138 Int))
    (=> (and ($main_if368 $i7397135 $j7407136 $n7417137 $sn7427138))
        ($main_inv520 (+ $i7397135 1) (- $j7407136 1) $n7417137 $sn7427138))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7427142 Int) ($n7417141 Int) ($i7397139 Int) ($j7407140 Int))
    (=> (and ($main_sum520 $i7397139 $j7407140 $n7417141 $sn7427142))
        ($__VERIFIER_assert_pre (ite (or (= $sn7427142 (* $n7417141 2)) (= $sn7427142 0)) 1 0)))))

(check-sat)
