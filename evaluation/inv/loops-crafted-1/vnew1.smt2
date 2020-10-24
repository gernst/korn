(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv231 (Int Int Int Int) Bool)
(declare-fun $main_sum231 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if662 (Int) Bool)
(declare-fun $__VERIFIER_assert_if663 (Int) Bool)
(declare-fun $main_if664 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv232 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum232 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if662 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14675 Int))
    (=> (and ($assume_abort_if_not_if662 cond14675))
        (assume_abort_if_not cond14675))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14676 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14676))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if663 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14677 Int))
    (=> (and ($__VERIFIER_assert_if663 cond14677))
        (__VERIFIER_assert cond14677))))

; if else
(assert
  (forall (($uint14679 Int) ($i670 Int) ($k671 Int) ($j672 Int))
    (=> (and (<= $uint14679 20000001)
             (<= 0 $uint14679)
             (<= $uint14679 4294967295))
        ($main_if664 $uint14679 $i670 $k671 $j672))))

; loop entry $main_inv231
(assert
  (forall (($n66914680 Int) ($j67214683 Int) ($i67014681 Int) ($k67114682 Int))
    (=> (and ($main_if664 $n66914680 $i67014681 $k67114682 $j67214683))
        ($main_inv231 $n66914680 0 $n66914680 $j67214683))))

; loop term $main_sum231
(assert
  (forall (($n66914684 Int) ($i67014685 Int) ($k67114686 Int) ($j67214687 Int))
    (=> (and (not (< $i67014685 $n66914684))
             ($main_inv231 $n66914684 $i67014685 $k67114686 $j67214687))
        ($main_sum231 $n66914684 $i67014685 $k67114686 $j67214687))))

; forwards $main_inv231
(assert
  (forall (($n66914684 Int) ($i67014685 Int) ($k67114686 Int) ($j67214687 Int))
    (=> (and (< $i67014685 $n66914684)
             ($main_inv231 $n66914684 $i67014685 $k67114686 $j67214687))
        ($main_inv231 $n66914684 (+ $i67014685 3) (- $k67114686 1) $j67214687))))

; loop entry $main_inv232
(assert
  (forall (($n66914688 Int) ($i67014689 Int) ($k67114690 Int) ($j67214691 Int))
    (=> (and (= $j67214691 0)
             ($main_sum231 $n66914688 $i67014689 $k67114690 $j67214691))
        ($main_inv232 $n66914688 $i67014689 $k67114690 $j67214691))))

; loop term $main_sum232
(assert
  (forall (($n66914692 Int) ($i67014693 Int) ($k67114694 Int) ($j67214695 Int))
    (=> (and (not (< $j67214695 (div $n66914692 3)))
             ($main_inv232 $n66914692 $i67014693 $k67114694 $j67214695))
        ($main_sum232 $n66914692 $i67014693 $k67114694 $j67214695))))

; __VERIFIER_assert precondition
(assert
  (forall (($k67114694 Int) ($j67214695 Int) ($n66914692 Int) ($i67014693 Int))
    (=> (and (< $j67214695 (div $n66914692 3))
             ($main_inv232 $n66914692 $i67014693 $k67114694 $j67214695))
        ($__VERIFIER_assert_pre (ite (> $k67114694 0) 1 0)))))

; forwards $main_inv232
(assert
  (forall (($n66914692 Int) ($i67014693 Int) ($k67114694 Int) ($j67214695 Int))
    (=> (and (__VERIFIER_assert (ite (> $k67114694 0) 1 0))
             (< $j67214695 (div $n66914692 3))
             ($main_inv232 $n66914692 $i67014693 $k67114694 $j67214695))
        ($main_inv232 $n66914692 $i67014693 (- $k67114694 1) (+ $j67214695 1)))))

(check-sat)
