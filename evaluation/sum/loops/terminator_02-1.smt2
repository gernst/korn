(set-logic HORN)

(declare-fun $main_if692 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_sum267 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if691 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $main_inv267 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16647 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16647))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if691 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16648 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if691 cond cond16648))
        (__VERIFIER_assert cond16648))))

; loop entry $main_inv267
(assert
  (forall (($y739 Int) ($x738 Int) ($int16649 Int) ($int16651 Int) ($int16650 Int) ($tmp741 Int) ($z740 Int))
    (=> (and (= $z740 $int16651)
             (<= (- 2147483648) $int16651)
             (<= $int16651 2147483647)
             (= $y739 $int16650)
             (<= (- 2147483648) $int16650)
             (<= $int16650 2147483647)
             (= $x738 $int16649)
             (<= (- 2147483648) $int16649)
             (<= $int16649 2147483647))
        ($main_inv267 $x738 $y739 $z740 $tmp741))))

; loop term $main_sum267
(assert
  (forall (($x73816652 Int) ($y73916653 Int) ($z74016654 Int) ($tmp74116655 Int))
    (=> (and (not (and (< $x73816652 100) (< 100 $z74016654))))
        ($main_sum267 $x73816652 $y73916653 $z74016654 $tmp74116655 $x73816652 $y73916653 $z74016654 $tmp74116655))))

; if then
(assert
  (forall (($y73916653 Int) ($z74016654 Int) ($tmp74116655 Int) ($x73816652 Int) ($bool16656 Int))
    (=> (and (not (= $tmp74116655 0))
             (= $tmp74116655 $bool16656)
             (or (= $bool16656 0) (= $bool16656 1))
             (< $x73816652 100)
             (< 100 $z74016654)
             ($main_inv267 $x73816652 $y73916653 $z74016654 $tmp74116655))
        ($main_if692 $x73816652 $y73916653 $z74016654 $tmp74116655 (+ $x73816652 1) $y73916653 $z74016654 $tmp74116655))))

; if else
(assert
  (forall (($y73916653 Int) ($z74016654 Int) ($tmp74116655 Int) ($x73816652 Int) ($bool16656 Int))
    (=> (and (= $tmp74116655 0)
             (= $tmp74116655 $bool16656)
             (or (= $bool16656 0) (= $bool16656 1))
             (< $x73816652 100)
             (< 100 $z74016654)
             ($main_inv267 $x73816652 $y73916653 $z74016654 $tmp74116655))
        ($main_if692 $x73816652 $y73916653 $z74016654 $tmp74116655 (- $x73816652 1) $y73916653 (- $z74016654 1) $tmp74116655))))

; forwards $main_inv267
(assert
  (forall (($y73916658 Int) ($x73816657 Int) ($y73916653 Int) ($z74016659 Int) ($x73816652 Int) ($z74016654 Int) ($tmp74116655 Int) ($tmp74116660 Int))
    (=> (and ($main_if692 $x73816652 $y73916653 $z74016654 $tmp74116655 $x73816657 $y73916658 $z74016659 $tmp74116660))
        ($main_inv267 $x73816657 $y73916658 $z74016659 $tmp74116660))))

; backwards $main_sum267
(assert
  (forall (($y73916658 Int) ($x73816657 Int) ($y73916653 Int) ($x73816652 Int) ($x73816661 Int) ($z74016654 Int) ($y73916662 Int) ($z74016659 Int) ($tmp74116655 Int) ($tmp74116664 Int) ($z74016663 Int) ($tmp74116660 Int))
    (=> (and ($main_sum267 $x73816657 $y73916658 $z74016659 $tmp74116660 $x73816661 $y73916662 $z74016663 $tmp74116664)
             ($main_if692 $x73816652 $y73916653 $z74016654 $tmp74116655 $x73816657 $y73916658 $z74016659 $tmp74116660))
        ($main_sum267 $x73816652 $y73916653 $z74016654 $tmp74116655 $x73816661 $y73916662 $z74016663 $tmp74116664))))

; __VERIFIER_assert precondition
(assert
  (forall (($y739 Int) ($x738 Int) ($tmp74116668 Int) ($x73816665 Int) ($z74016667 Int) ($int16649 Int) ($int16651 Int) ($int16650 Int) ($tmp741 Int) ($z740 Int) ($y73916666 Int))
    (=> (and ($main_sum267 $x738 $y739 $z740 $tmp741 $x73816665 $y73916666 $z74016667 $tmp74116668)
             (= $z740 $int16651)
             (<= (- 2147483648) $int16651)
             (<= $int16651 2147483647)
             (= $y739 $int16650)
             (<= (- 2147483648) $int16650)
             (<= $int16650 2147483647)
             (= $x738 $int16649)
             (<= (- 2147483648) $int16649)
             (<= $int16649 2147483647))
        ($__VERIFIER_assert_pre 0))))

(check-sat)
