(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if695 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_inv268 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if698 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum268 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if693 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if699 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if696 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if697 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if694 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if693 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16669 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if693 cond cond16669))
        (assume_abort_if_not cond16669))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16670 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16670))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if694 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16671 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if694 cond cond16671))
        (__VERIFIER_assert cond16671))))

; if else
(assert
  (forall (($tmp744 Int) ($int16672 Int) ($int16673 Int) ($x742 Int) ($z743 Int))
    (=> (and (> $x742 (- 100))
             (= $z743 $int16673)
             (<= (- 2147483648) $int16673)
             (<= $int16673 2147483647)
             (= $x742 $int16672)
             (<= (- 2147483648) $int16672)
             (<= $int16672 2147483647))
        ($main_if695 $x742 $z743 $tmp744 $x742 $z743 $tmp744))))

; if else
(assert
  (forall (($tmp744 Int) ($z74316675 Int) ($x74216674 Int) ($tmp74416676 Int) ($x742 Int) ($z743 Int))
    (=> (and (< $x74216674 200)
             ($main_if695 $x742 $z743 $tmp744 $x74216674 $z74316675 $tmp74416676))
        ($main_if696 $x742 $z743 $tmp744 $x74216674 $z74316675 $tmp74416676))))

; if else
(assert
  (forall (($x74216677 Int) ($tmp744 Int) ($z74316678 Int) ($tmp74416679 Int) ($x742 Int) ($z743 Int))
    (=> (and (> $z74316678 100)
             ($main_if696 $x742 $z743 $tmp744 $x74216677 $z74316678 $tmp74416679))
        ($main_if697 $x742 $z743 $tmp744 $x74216677 $z74316678 $tmp74416679))))

; if else
(assert
  (forall (($tmp744 Int) ($z74316681 Int) ($tmp74416682 Int) ($x74216680 Int) ($x742 Int) ($z743 Int))
    (=> (and (< $z74316681 200)
             ($main_if697 $x742 $z743 $tmp744 $x74216680 $z74316681 $tmp74416682))
        ($main_if698 $x742 $z743 $tmp744 $x74216680 $z74316681 $tmp74416682))))

; loop entry $main_inv268
(assert
  (forall (($x74216683 Int) ($tmp744 Int) ($tmp74416685 Int) ($z74316684 Int) ($x742 Int) ($z743 Int))
    (=> (and ($main_if698 $x742 $z743 $tmp744 $x74216683 $z74316684 $tmp74416685))
        ($main_inv268 $x74216683 $z74316684 $tmp74416685))))

; loop term $main_sum268
(assert
  (forall (($x74216686 Int) ($z74316687 Int) ($tmp74416688 Int))
    (=> (and (not (and (< $x74216686 100) (> $z74316687 100))))
        ($main_sum268 $x74216686 $z74316687 $tmp74416688 $x74216686 $z74316687 $tmp74416688))))

; if then
(assert
  (forall (($x74216686 Int) ($z74316687 Int) ($tmp74416688 Int) ($bool16689 Int))
    (=> (and (not (= $tmp74416688 0))
             (= $tmp74416688 $bool16689)
             (or (= $bool16689 0) (= $bool16689 1))
             (< $x74216686 100)
             (> $z74316687 100)
             ($main_inv268 $x74216686 $z74316687 $tmp74416688))
        ($main_if699 $x74216686 $z74316687 $tmp74416688 (+ $x74216686 1) $z74316687 $tmp74416688))))

; if else
(assert
  (forall (($x74216686 Int) ($z74316687 Int) ($tmp74416688 Int) ($bool16689 Int))
    (=> (and (= $tmp74416688 0)
             (= $tmp74416688 $bool16689)
             (or (= $bool16689 0) (= $bool16689 1))
             (< $x74216686 100)
             (> $z74316687 100)
             ($main_inv268 $x74216686 $z74316687 $tmp74416688))
        ($main_if699 $x74216686 $z74316687 $tmp74416688 (- $x74216686 1) (- $z74316687 1) $tmp74416688))))

; forwards $main_inv268
(assert
  (forall (($x74216690 Int) ($tmp74416688 Int) ($z74316687 Int) ($z74316691 Int) ($x74216686 Int) ($tmp74416692 Int))
    (=> (and ($main_if699 $x74216686 $z74316687 $tmp74416688 $x74216690 $z74316691 $tmp74416692))
        ($main_inv268 $x74216690 $z74316691 $tmp74416692))))

; backwards $main_sum268
(assert
  (forall (($x74216690 Int) ($tmp74416688 Int) ($z74316687 Int) ($z74316691 Int) ($tmp74416695 Int) ($z74316694 Int) ($x74216693 Int) ($x74216686 Int) ($tmp74416692 Int))
    (=> (and ($main_sum268 $x74216690 $z74316691 $tmp74416692 $x74216693 $z74316694 $tmp74416695)
             ($main_if699 $x74216686 $z74316687 $tmp74416688 $x74216690 $z74316691 $tmp74416692))
        ($main_sum268 $x74216686 $z74316687 $tmp74416688 $x74216693 $z74316694 $tmp74416695))))

; __VERIFIER_assert precondition
(assert
  (forall (($z74316697 Int) ($tmp744 Int) ($z74316684 Int) ($x74216683 Int) ($tmp74416698 Int) ($x74216696 Int) ($tmp74416685 Int) ($x742 Int) ($z743 Int))
    (=> (and ($main_sum268 $x74216683 $z74316684 $tmp74416685 $x74216696 $z74316697 $tmp74416698)
             ($main_if698 $x742 $z743 $tmp744 $x74216683 $z74316684 $tmp74416685))
        ($__VERIFIER_assert_pre (ite (or (>= $x74216696 100) (<= $z74316697 100)) 1 0)))))

(check-sat)
