(set-logic HORN)

(declare-fun $__VERIFIER_assert_if103 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv357 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum356 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv356 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum355 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum357 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv355 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4728 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4728))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if103 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4729 Int))
    (=> (and ($__VERIFIER_assert_if103 cond4729))
        (__VERIFIER_assert cond4729))))

; loop entry $main_inv355
(assert
  (forall (($a421 (Array Int Int)) ($b422 (Array Int Int)) ($x424 Int))
        ($main_inv355 $a421 $b422 0 $x424)))

; loop term $main_sum355
(assert
  (forall (($a4214730 (Array Int Int)) ($b4224731 (Array Int Int)) ($i4234732 Int) ($x4244733 Int))
    (=> (and (not (< $i4234732 100000))
             ($main_inv355 $a4214730 $b4224731 $i4234732 $x4244733))
        ($main_sum355 $a4214730 $b4224731 $i4234732 $x4244733))))

; forwards $main_inv355
(assert
  (forall (($b4224731 (Array Int Int)) ($x4244733 Int) ($int4734 Int) ($i4234732 Int) ($a4214730 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4734)
             (<= $int4734 2147483647)
             (< $i4234732 100000)
             ($main_inv355 $a4214730 $b4224731 $i4234732 $x4244733))
        ($main_inv355 (store $a4214730 $i4234732 $int4734) $b4224731 (+ $i4234732 1) $x4244733))))

; loop entry $main_inv356
(assert
  (forall (($a4214735 (Array Int Int)) ($b4224736 (Array Int Int)) ($x4244738 Int) ($i4234737 Int))
    (=> (and ($main_sum355 $a4214735 $b4224736 $i4234737 $x4244738))
        ($main_inv356 $a4214735 $b4224736 0 $x4244738))))

; loop term $main_sum356
(assert
  (forall (($a4214739 (Array Int Int)) ($b4224740 (Array Int Int)) ($i4234741 Int) ($x4244742 Int))
    (=> (and (not (< $i4234741 100000))
             ($main_inv356 $a4214739 $b4224740 $i4234741 $x4244742))
        ($main_sum356 $a4214739 $b4224740 $i4234741 $x4244742))))

; forwards $main_inv356
(assert
  (forall (($a4214739 (Array Int Int)) ($b4224740 (Array Int Int)) ($i4234741 Int) ($x4244742 Int))
    (=> (and (< $i4234741 100000)
             ($main_inv356 $a4214739 $b4224740 $i4234741 $x4244742))
        ($main_inv356 $a4214739 (store $b4224740 $i4234741 (select $a4214739 (- (- 100000 $i4234741) 1))) (+ $i4234741 1) $x4244742))))

; loop entry $main_inv357
(assert
  (forall (($a4214743 (Array Int Int)) ($b4224744 (Array Int Int)) ($i4234745 Int) ($x4244746 Int))
    (=> (and ($main_sum356 $a4214743 $b4224744 $i4234745 $x4244746))
        ($main_inv357 $a4214743 $b4224744 $i4234745 0))))

; loop term $main_sum357
(assert
  (forall (($a4214747 (Array Int Int)) ($b4224748 (Array Int Int)) ($i4234749 Int) ($x4244750 Int))
    (=> (and (not (< $x4244750 100000))
             ($main_inv357 $a4214747 $b4224748 $i4234749 $x4244750))
        ($main_sum357 $a4214747 $b4224748 $i4234749 $x4244750))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4214747 (Array Int Int)) ($x4244750 Int) ($b4224748 (Array Int Int)) ($i4234749 Int))
    (=> (and (< $x4244750 100000)
             ($main_inv357 $a4214747 $b4224748 $i4234749 $x4244750))
        ($__VERIFIER_assert_pre (ite (= (select $a4214747 $x4244750) (select $b4224748 (- (- 100000 $x4244750) 1))) 1 0)))))

; forwards $main_inv357
(assert
  (forall (($a4214747 (Array Int Int)) ($b4224748 (Array Int Int)) ($i4234749 Int) ($x4244750 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4214747 $x4244750) (select $b4224748 (- (- 100000 $x4244750) 1))) 1 0))
             (< $x4244750 100000)
             ($main_inv357 $a4214747 $b4224748 $i4234749 $x4244750))
        ($main_inv357 $a4214747 $b4224748 $i4234749 (+ $x4244750 1)))))

(check-sat)
