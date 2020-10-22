(set-logic HORN)

(declare-fun $main_sum503 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv503 (Int Int Int Int Int) Bool)
(declare-fun $main_if332 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if330 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if329 (Int Int) Bool)
(declare-fun $main_if333 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if331 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if329 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9622 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if329 cond cond9622))
        (assume_abort_if_not cond9622))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9623 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9623))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if330 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9624 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if330 cond cond9624))
        (__VERIFIER_assert cond9624))))

; if else
(assert
  (forall (($y705 Int) ($int9625 Int) ($int9626 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int))
    (=> (and (>= $int9625 0)
             (<= $int9625 1000000)
             (<= (- 2147483648) $int9626)
             (<= $int9626 2147483647)
             (<= (- 2147483648) $int9625)
             (<= $int9625 2147483647))
        ($main_if331 $i702 $j703 $x704 $y705 $z706 $int9625 $int9626 $x704 $y705 $z706))))

; if else
(assert
  (forall (($y7059630 Int) ($i7029627 Int) ($y705 Int) ($z7069631 Int) ($j7039628 Int) ($x7049629 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int))
    (=> (and (>= $j7039628 0)
             ($main_if331 $i702 $j703 $x704 $y705 $z706 $i7029627 $j7039628 $x7049629 $y7059630 $z7069631))
        ($main_if332 $i702 $j703 $x704 $y705 $z706 $i7029627 $j7039628 $x7049629 $y7059630 $z7069631))))

; loop entry $main_inv503
(assert
  (forall (($y705 Int) ($x7049634 Int) ($i7029632 Int) ($z7069636 Int) ($y7059635 Int) ($j7039633 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int))
    (=> (and (= $z7069636 0)
             (= $y7059635 $j7039633)
             (= $x7049634 $i7029632)
             ($main_if332 $i702 $j703 $x704 $y705 $z706 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636))
        ($main_inv503 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636))))

; loop term $main_sum503
(assert
  (forall (($y7059640 Int) ($i7029637 Int) ($x7049639 Int) ($z7069641 Int) ($j7039638 Int))
    (=> (and (= $x7049639 0))
        ($main_sum503 $i7029637 $j7039638 $x7049639 $y7059640 $z7069641 $i7029637 $j7039638 $x7049639 $y7059640 $z7069641))))

; forwards $main_inv503
(assert
  (forall (($y7059640 Int) ($i7029637 Int) ($x7049639 Int) ($z7069641 Int) ($j7039638 Int))
    (=> (and (not (= $x7049639 0))
             ($main_inv503 $i7029637 $j7039638 $x7049639 $y7059640 $z7069641))
        ($main_inv503 $i7029637 $j7039638 (- $x7049639 1) (- $y7059640 2) (+ $z7069641 1)))))

; backwards $main_sum503
(assert
  (forall (($x7049644 Int) ($y7059640 Int) ($y7059645 Int) ($x7049639 Int) ($j7039643 Int) ($z7069641 Int) ($i7029642 Int) ($j7039638 Int) ($i7029637 Int) ($z7069646 Int))
    (=> (and ($main_sum503 $i7029637 $j7039638 (- $x7049639 1) (- $y7059640 2) (+ $z7069641 1) $i7029642 $j7039643 $x7049644 $y7059645 $z7069646)
             (not (= $x7049639 0)))
        ($main_sum503 $i7029637 $j7039638 $x7049639 $y7059640 $z7069641 $i7029642 $j7039643 $x7049644 $y7059645 $z7069646))))

; __VERIFIER_assert precondition
(assert
  (forall (($j7039648 Int) ($z7069651 Int) ($x7049649 Int) ($x7049634 Int) ($i7029632 Int) ($z7069636 Int) ($y7059650 Int) ($y7059635 Int) ($j7039633 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int) ($y705 Int) ($i7029647 Int))
    (=> (and (= $i7029647 $j7039648)
             ($main_sum503 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636 $i7029647 $j7039648 $x7049649 $y7059650 $z7069651)
             (= $z7069636 0)
             (= $y7059635 $j7039633)
             (= $x7049634 $i7029632)
             ($main_if332 $i702 $j703 $x704 $y705 $z706 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636))
        ($__VERIFIER_assert_pre (ite (= $y7059650 (- $z7069651)) 1 0)))))

; if then
(assert
  (forall (($j7039648 Int) ($z7069651 Int) ($x7049649 Int) ($x7049634 Int) ($i7029632 Int) ($z7069636 Int) ($y7059650 Int) ($y7059635 Int) ($j7039633 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int) ($y705 Int) ($i7029647 Int))
    (=> (and (__VERIFIER_assert (ite (= $y7059650 (- $z7069651)) 1 0))
             (= $i7029647 $j7039648)
             ($main_sum503 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636 $i7029647 $j7039648 $x7049649 $y7059650 $z7069651)
             (= $z7069636 0)
             (= $y7059635 $j7039633)
             (= $x7049634 $i7029632)
             ($main_if332 $i702 $j703 $x704 $y705 $z706 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636))
        ($main_if333 $i702 $j703 $x704 $y705 $z706 $i7029647 $j7039648 $x7049649 $y7059650 $z7069651))))

; if else
(assert
  (forall (($j7039648 Int) ($z7069651 Int) ($x7049649 Int) ($x7049634 Int) ($i7029632 Int) ($z7069636 Int) ($y7059650 Int) ($y7059635 Int) ($j7039633 Int) ($j703 Int) ($i702 Int) ($z706 Int) ($x704 Int) ($y705 Int) ($i7029647 Int))
    (=> (and (not (= $i7029647 $j7039648))
             ($main_sum503 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636 $i7029647 $j7039648 $x7049649 $y7059650 $z7069651)
             (= $z7069636 0)
             (= $y7059635 $j7039633)
             (= $x7049634 $i7029632)
             ($main_if332 $i702 $j703 $x704 $y705 $z706 $i7029632 $j7039633 $x7049634 $y7059635 $z7069636))
        ($main_if333 $i702 $j703 $x704 $y705 $z706 $i7029647 $j7039648 $x7049649 $y7059650 $z7069651))))

(check-sat)
