(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum490 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if288 (Int) Bool)
(declare-fun $main_inv490 (Int Int Int) Bool)
(declare-fun $main_sum489 (Int Int Int) Bool)
(declare-fun $main_inv489 (Int Int Int) Bool)
(declare-fun $main_inv491 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum491 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if287 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if287 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6669 Int))
    (=> (and ($assume_abort_if_not_if287 cond6669))
        (assume_abort_if_not cond6669))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6670 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6670))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if288 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6671 Int))
    (=> (and ($__VERIFIER_assert_if288 cond6671))
        (__VERIFIER_assert cond6671))))

; loop entry $main_inv489
(assert
        ($main_inv489 0 (- 100) 9))

; loop term $main_sum489
(assert
  (forall (($i6656672 Int) ($j6666673 Int) ($k6676674 Int))
    (=> (and (not (<= $i6656672 100))
             ($main_inv489 $i6656672 $j6666673 $k6676674))
        ($main_sum489 $i6656672 $j6666673 $k6676674))))

; loop entry $main_inv490
(assert
  (forall (($i6656672 Int) ($j6666673 Int) ($k6676674 Int))
    (=> (and (<= $i6656672 100)
             ($main_inv489 $i6656672 $j6666673 $k6676674))
        ($main_inv490 (+ $i6656672 1) $j6666673 $k6676674))))

; loop term $main_sum490
(assert
  (forall (($i6656675 Int) ($j6666676 Int) ($k6676677 Int))
    (=> (and (not (< $j6666676 20))
             ($main_inv490 $i6656675 $j6666676 $k6676677))
        ($main_sum490 $i6656675 $j6666676 $k6676677))))

; forwards $main_inv490
(assert
  (forall (($i6656675 Int) ($j6666676 Int) ($k6676677 Int))
    (=> (and (< $j6666676 20)
             ($main_inv490 $i6656675 $j6666676 $k6676677))
        ($main_inv490 $i6656675 (+ $i6656675 $j6666676) $k6676677))))

; loop entry $main_inv491
(assert
  (forall (($i6656678 Int) ($j6666679 Int) ($k6676680 Int))
    (=> (and ($main_sum490 $i6656678 $j6666679 $k6676680))
        ($main_inv491 $i6656678 $j6666679 4))))

; loop term $main_sum491
(assert
  (forall (($i6656681 Int) ($j6666682 Int) ($k6676683 Int))
    (=> (and (not (<= $k6676683 3))
             ($main_inv491 $i6656681 $j6666682 $k6676683))
        ($main_sum491 $i6656681 $j6666682 $k6676683))))

; forwards $main_inv491
(assert
  (forall (($i6656681 Int) ($j6666682 Int) ($k6676683 Int))
    (=> (and (<= $k6676683 3)
             ($main_inv491 $i6656681 $j6666682 $k6676683))
        ($main_inv491 $i6656681 $j6666682 (+ $k6676683 1)))))

; forwards $main_inv489
(assert
  (forall (($i6656684 Int) ($j6666685 Int) ($k6676686 Int))
    (=> (and ($main_sum491 $i6656684 $j6666685 $k6676686))
        ($main_inv489 $i6656684 $j6666685 $k6676686))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6676689 Int) ($i6656687 Int) ($j6666688 Int))
    (=> (and ($main_sum489 $i6656687 $j6666688 $k6676689))
        ($__VERIFIER_assert_pre (ite (= $k6676689 4) 1 0)))))

(check-sat)
