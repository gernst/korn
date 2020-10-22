(set-logic HORN)

(declare-fun $main_sum46 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv45 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if23 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum48 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv48 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv47 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum47 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv46 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum45 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond607 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond607))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if23 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond608 Int))
    (=> (and ($__VERIFIER_assert_if23 cond608))
        (__VERIFIER_assert cond608))))

; loop entry $main_inv45
(assert
  (forall (($m63 Int) ($int609 Int) ($C66 Int) ($n64 Int) ($A65 (Array Int (Array Int Int))))
    (=> (and (= $C66 $int609)
             (<= (- 2147483648) $int609)
             (<= $int609 2147483647)
             (= $n64 1500)
             (= $m63 1000))
        ($main_inv45 0 0 $m63 $n64 $A65 $C66))))

; loop term $main_sum45
(assert
  (forall (($n64613 Int) ($j62611 Int) ($A65614 (Array Int (Array Int Int))) ($m63612 Int) ($C66615 Int) ($i61610 Int))
    (=> (and (not (< $i61610 $m63612))
             ($main_inv45 $i61610 $j62611 $m63612 $n64613 $A65614 $C66615))
        ($main_sum45 $i61610 $j62611 $m63612 $n64613 $A65614 $C66615))))

; loop entry $main_inv46
(assert
  (forall (($n64613 Int) ($j62611 Int) ($A65614 (Array Int (Array Int Int))) ($m63612 Int) ($C66615 Int) ($i61610 Int))
    (=> (and (< $i61610 $m63612)
             ($main_inv45 $i61610 $j62611 $m63612 $n64613 $A65614 $C66615))
        ($main_inv46 $i61610 0 $m63612 $n64613 $A65614 $C66615))))

; loop term $main_sum46
(assert
  (forall (($j62617 Int) ($i61616 Int) ($A65620 (Array Int (Array Int Int))) ($n64619 Int) ($C66621 Int) ($m63618 Int))
    (=> (and (not (< $j62617 $n64619))
             ($main_inv46 $i61616 $j62617 $m63618 $n64619 $A65620 $C66621))
        ($main_sum46 $i61616 $j62617 $m63618 $n64619 $A65620 $C66621))))

; forwards $main_inv46
(assert
  (forall (($j62617 Int) ($i61616 Int) ($A65620 (Array Int (Array Int Int))) ($n64619 Int) ($C66621 Int) ($m63618 Int))
    (=> (and (< $j62617 $n64619)
             ($main_inv46 $i61616 $j62617 $m63618 $n64619 $A65620 $C66621))
        ($main_inv46 $i61616 (+ $j62617 1) $m63618 $n64619 (store $A65620 $i61616 (store (select $A65620 $i61616) $j62617 $C66621)) $C66621))))

; forwards $main_inv45
(assert
  (forall (($m63624 Int) ($i61622 Int) ($A65626 (Array Int (Array Int Int))) ($n64625 Int) ($j62623 Int) ($C66627 Int))
    (=> (and ($main_sum46 $i61622 $j62623 $m63624 $n64625 $A65626 $C66627))
        ($main_inv45 (+ $i61622 1) $j62623 $m63624 $n64625 $A65626 $C66627))))

; loop entry $main_inv47
(assert
  (forall (($n64631 Int) ($i61628 Int) ($j62629 Int) ($m63630 Int) ($C66633 Int) ($A65632 (Array Int (Array Int Int))))
    (=> (and ($main_sum45 $i61628 $j62629 $m63630 $n64631 $A65632 $C66633))
        ($main_inv47 0 0 $m63630 $n64631 $A65632 $C66633))))

; loop term $main_sum47
(assert
  (forall (($j62635 Int) ($i61634 Int) ($m63636 Int) ($A65638 (Array Int (Array Int Int))) ($C66639 Int) ($n64637 Int))
    (=> (and (not (< $i61634 $m63636))
             ($main_inv47 $i61634 $j62635 $m63636 $n64637 $A65638 $C66639))
        ($main_sum47 $i61634 $j62635 $m63636 $n64637 $A65638 $C66639))))

; loop entry $main_inv48
(assert
  (forall (($j62635 Int) ($i61634 Int) ($m63636 Int) ($A65638 (Array Int (Array Int Int))) ($C66639 Int) ($n64637 Int))
    (=> (and (< $i61634 $m63636)
             ($main_inv47 $i61634 $j62635 $m63636 $n64637 $A65638 $C66639))
        ($main_inv48 $i61634 0 $m63636 $n64637 $A65638 $C66639))))

; loop term $main_sum48
(assert
  (forall (($m63642 Int) ($C66645 Int) ($j62641 Int) ($i61640 Int) ($n64643 Int) ($A65644 (Array Int (Array Int Int))))
    (=> (and (not (< $j62641 $n64643))
             ($main_inv48 $i61640 $j62641 $m63642 $n64643 $A65644 $C66645))
        ($main_sum48 $i61640 $j62641 $m63642 $n64643 $A65644 $C66645))))

; __VERIFIER_assert precondition
(assert
  (forall (($m63642 Int) ($C66645 Int) ($j62641 Int) ($i61640 Int) ($n64643 Int) ($A65644 (Array Int (Array Int Int))))
    (=> (and (< $j62641 $n64643)
             ($main_inv48 $i61640 $j62641 $m63642 $n64643 $A65644 $C66645))
        ($__VERIFIER_assert_pre (ite (= (select (select $A65644 $i61640) $j62641) $C66645) 1 0)))))

; forwards $main_inv48
(assert
  (forall (($m63642 Int) ($C66645 Int) ($j62641 Int) ($i61640 Int) ($n64643 Int) ($A65644 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A65644 $i61640) $j62641) $C66645) 1 0))
             (< $j62641 $n64643)
             ($main_inv48 $i61640 $j62641 $m63642 $n64643 $A65644 $C66645))
        ($main_inv48 $i61640 (+ $j62641 1) $m63642 $n64643 $A65644 $C66645))))

; forwards $main_inv47
(assert
  (forall (($i61646 Int) ($j62647 Int) ($m63648 Int) ($A65650 (Array Int (Array Int Int))) ($n64649 Int) ($C66651 Int))
    (=> (and ($main_sum48 $i61646 $j62647 $m63648 $n64649 $A65650 $C66651))
        ($main_inv47 (+ $i61646 1) $j62647 $m63648 $n64649 $A65650 $C66651))))

(check-sat)
