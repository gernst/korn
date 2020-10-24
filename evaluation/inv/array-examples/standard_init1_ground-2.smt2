(set-logic HORN)

(declare-fun $main_sum218 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum219 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if66 (Int) Bool)
(declare-fun $main_inv219 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv218 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3597 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3597))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if66 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3598 Int))
    (=> (and ($__VERIFIER_assert_if66 cond3598))
        (__VERIFIER_assert cond3598))))

; loop entry $main_inv218
(assert
  (forall (($a319 (Array Int Int)) ($i320 Int) ($x321 Int))
    (=> (and (= $i320 0))
        ($main_inv218 $a319 $i320 $x321))))

; loop term $main_sum218
(assert
  (forall (($a3193599 (Array Int Int)) ($i3203600 Int) ($x3213601 Int))
    (=> (and (not (< $i3203600 100000))
             ($main_inv218 $a3193599 $i3203600 $x3213601))
        ($main_sum218 $a3193599 $i3203600 $x3213601))))

; forwards $main_inv218
(assert
  (forall (($a3193599 (Array Int Int)) ($i3203600 Int) ($x3213601 Int))
    (=> (and (< $i3203600 100000)
             ($main_inv218 $a3193599 $i3203600 $x3213601))
        ($main_inv218 (store $a3193599 $i3203600 42) (+ $i3203600 1) $x3213601))))

; loop entry $main_inv219
(assert
  (forall (($a3193602 (Array Int Int)) ($i3203603 Int) ($x3213604 Int))
    (=> (and ($main_sum218 $a3193602 $i3203603 $x3213604))
        ($main_inv219 $a3193602 $i3203603 0))))

; loop term $main_sum219
(assert
  (forall (($a3193605 (Array Int Int)) ($i3203606 Int) ($x3213607 Int))
    (=> (and (not (< $x3213607 100000))
             ($main_inv219 $a3193605 $i3203606 $x3213607))
        ($main_sum219 $a3193605 $i3203606 $x3213607))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3193605 (Array Int Int)) ($x3213607 Int) ($i3203606 Int))
    (=> (and (< $x3213607 100000)
             ($main_inv219 $a3193605 $i3203606 $x3213607))
        ($__VERIFIER_assert_pre (ite (= (select $a3193605 $x3213607) 42) 1 0)))))

; forwards $main_inv219
(assert
  (forall (($a3193605 (Array Int Int)) ($i3203606 Int) ($x3213607 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3193605 $x3213607) 42) 1 0))
             (< $x3213607 100000)
             ($main_inv219 $a3193605 $i3203606 $x3213607))
        ($main_inv219 $a3193605 $i3203606 (+ $x3213607 1)))))

(check-sat)
