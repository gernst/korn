(set-logic HORN)

(declare-fun $assume_abort_if_not_if173 (Int) Bool)
(declare-fun $__VERIFIER_assert_if174 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv448 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_if175 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum448 ((Array Int Int) Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv447 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum447 ((Array Int Int) Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if173 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5728 Int))
    (=> (and ($assume_abort_if_not_if173 cond5728))
        (assume_abort_if_not cond5728))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5729 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5729))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if174 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5730 Int))
    (=> (and ($__VERIFIER_assert_if174 cond5730))
        (__VERIFIER_assert cond5730))))

; assume_abort_if_not precondition
(assert
  (forall (($uint5731 Int) ($loop_entered566 Int))
    (=> (and (<= 0 $uint5731)
             (<= $uint5731 4294967295)
             (= $loop_entered566 0))
        ($assume_abort_if_not_pre (ite (< $uint5731 100000) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($uint5732 Int) ($uint5731 Int) ($loop_entered566 Int))
    (=> (and (<= 0 $uint5732)
             (<= $uint5732 4294967295)
             (assume_abort_if_not (ite (< $uint5731 100000) 1 0))
             (<= 0 $uint5731)
             (<= $uint5731 4294967295)
             (= $loop_entered566 0))
        ($assume_abort_if_not_pre (ite (< $uint5732 100000) 1 0)))))

; loop entry $main_inv447
(assert
  (forall (($array563 (Array Int Int)) ($uint5731 Int) ($uint5732 Int) ($loop_entered566 Int))
    (=> (and (assume_abort_if_not (ite (< $uint5732 100000) 1 0))
             (<= 0 $uint5732)
             (<= $uint5732 4294967295)
             (assume_abort_if_not (ite (< $uint5731 100000) 1 0))
             (<= 0 $uint5731)
             (<= $uint5731 4294967295)
             (= $loop_entered566 0))
        ($main_inv447 $array563 $uint5731 $uint5732 $loop_entered566))))

; loop term $main_sum447
(assert
  (forall (($array5635733 (Array Int Int)) ($index15645734 Int) ($index25655735 Int) ($loop_entered5665736 Int))
    (=> (and (not (< $index15645734 $index25655735))
             ($main_inv447 $array5635733 $index15645734 $index25655735 $loop_entered5665736))
        ($main_sum447 $array5635733 $index15645734 $index25655735 $loop_entered5665736))))

; __VERIFIER_assert precondition
(assert
  (forall (($index15645734 Int) ($index25655735 Int) ($array5635733 (Array Int Int)) ($loop_entered5665736 Int))
    (=> (and (< $index15645734 $index25655735)
             ($main_inv447 $array5635733 $index15645734 $index25655735 $loop_entered5665736))
        ($__VERIFIER_assert_pre (ite (and (< $index15645734 100000) (< $index25655735 100000)) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($array5635733 (Array Int Int)) ($index15645734 Int) ($index25655735 Int) ($loop_entered5665736 Int))
    (=> (and (__VERIFIER_assert (ite (and (< $index15645734 100000) (< $index25655735 100000)) 1 0))
             (< $index15645734 $index25655735)
             ($main_inv447 $array5635733 $index15645734 $index25655735 $loop_entered5665736))
        ($assume_abort_if_not_pre (ite (= (select $array5635733 $index15645734) (select $array5635733 $index25655735)) 1 0)))))

; forwards $main_inv447
(assert
  (forall (($array5635733 (Array Int Int)) ($index15645734 Int) ($index25655735 Int) ($loop_entered5665736 Int))
    (=> (and (assume_abort_if_not (ite (= (select $array5635733 $index15645734) (select $array5635733 $index25655735)) 1 0))
             (__VERIFIER_assert (ite (and (< $index15645734 100000) (< $index25655735 100000)) 1 0))
             (< $index15645734 $index25655735)
             ($main_inv447 $array5635733 $index15645734 $index25655735 $loop_entered5665736))
        ($main_inv447 $array5635733 (+ $index15645734 1) (- $index25655735 1) 1))))

; loop entry $main_inv448
(assert
  (forall (($array5635737 (Array Int Int)) ($index15645738 Int) ($index25655739 Int) ($loop_entered5665740 Int))
    (=> (and (not (= $loop_entered5665740 0))
             ($main_sum447 $array5635737 $index15645738 $index25655739 $loop_entered5665740))
        ($main_inv448 $array5635737 $index15645738 $index25655739 $loop_entered5665740))))

; loop term $main_sum448
(assert
  (forall (($array5635741 (Array Int Int)) ($index15645742 Int) ($index25655743 Int) ($loop_entered5665744 Int))
    (=> (and (not (< $index25655743 $index15645742))
             ($main_inv448 $array5635741 $index15645742 $index25655743 $loop_entered5665744))
        ($main_sum448 $array5635741 $index15645742 $index25655743 $loop_entered5665744))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5635741 (Array Int Int)) ($index15645742 Int) ($index25655743 Int) ($loop_entered5665744 Int))
    (=> (and (< $index25655743 $index15645742)
             ($main_inv448 $array5635741 $index15645742 $index25655743 $loop_entered5665744))
        ($__VERIFIER_assert_pre (ite (= (select $array5635741 $index15645742) (select $array5635741 $index25655743)) 1 0)))))

; forwards $main_inv448
(assert
  (forall (($array5635741 (Array Int Int)) ($index15645742 Int) ($index25655743 Int) ($loop_entered5665744 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $array5635741 $index15645742) (select $array5635741 $index25655743)) 1 0))
             (< $index25655743 $index15645742)
             ($main_inv448 $array5635741 $index15645742 $index25655743 $loop_entered5665744))
        ($main_inv448 $array5635741 (- $index15645742 1) (+ $index25655743 1) $loop_entered5665744))))

; if then
(assert
  (forall (($array5635745 (Array Int Int)) ($index15645746 Int) ($index25655747 Int) ($loop_entered5665748 Int))
    (=> (and ($main_sum448 $array5635745 $index15645746 $index25655747 $loop_entered5665748))
        ($main_if175 $array5635745 $index15645746 $index25655747 $loop_entered5665748))))

; if else
(assert
  (forall (($array5635737 (Array Int Int)) ($index15645738 Int) ($index25655739 Int) ($loop_entered5665740 Int))
    (=> (and (= $loop_entered5665740 0)
             ($main_sum447 $array5635737 $index15645738 $index25655739 $loop_entered5665740))
        ($main_if175 $array5635737 $index15645738 $index25655739 $loop_entered5665740))))

(check-sat)
