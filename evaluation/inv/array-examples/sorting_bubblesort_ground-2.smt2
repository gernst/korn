(set-logic HORN)

(declare-fun $main_inv48 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum48 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if24 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv51 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv49 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum51 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if23 (Int) Bool)
(declare-fun $main_inv50 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv52 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum49 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum52 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum50 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond674 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond674))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if23 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond675 Int))
    (=> (and ($__VERIFIER_assert_if23 cond675))
        (__VERIFIER_assert cond675))))

; loop entry $main_inv48
(assert
  (forall (($t109 Int) ($y111 Int) ($x110 Int) ($j106 Int) ($i108 Int) ($swapped107 Int) ($a105 (Array Int Int)))
    (=> (and (= $j106 0))
        ($main_inv48 $a105 $j106 $swapped107 $i108 $t109 $x110 $y111))))

; loop term $main_sum48
(assert
  (forall (($i108679 Int) ($swapped107678 Int) ($t109680 Int) ($y111682 Int) ($a105676 (Array Int Int)) ($x110681 Int) ($j106677 Int))
    (=> (and (not (< $j106677 100000))
             ($main_inv48 $a105676 $j106677 $swapped107678 $i108679 $t109680 $x110681 $y111682))
        ($main_sum48 $a105676 $j106677 $swapped107678 $i108679 $t109680 $x110681 $y111682))))

; forwards $main_inv48
(assert
  (forall (($i108679 Int) ($swapped107678 Int) ($int683 Int) ($t109680 Int) ($y111682 Int) ($a105676 (Array Int Int)) ($x110681 Int) ($j106677 Int))
    (=> (and (<= (- 2147483648) $int683)
             (<= $int683 2147483647)
             (< $j106677 100000)
             ($main_inv48 $a105676 $j106677 $swapped107678 $i108679 $t109680 $x110681 $y111682))
        ($main_inv48 (store $a105676 $j106677 $int683) (+ $j106677 1) $swapped107678 $i108679 $t109680 $x110681 $y111682))))

; loop entry $main_inv49
(assert
  (forall (($i108687 Int) ($x110689 Int) ($t109688 Int) ($swapped107686 Int) ($j106685 Int) ($y111690 Int) ($a105684 (Array Int Int)))
    (=> (and (= $swapped107686 1)
             ($main_sum48 $a105684 $j106685 $swapped107686 $i108687 $t109688 $x110689 $y111690))
        ($main_inv49 $a105684 $j106685 $swapped107686 $i108687 $t109688 $x110689 $y111690))))

; loop term $main_sum49
(assert
  (forall (($i108694 Int) ($y111697 Int) ($x110696 Int) ($swapped107693 Int) ($a105691 (Array Int Int)) ($j106692 Int) ($t109695 Int))
    (=> (and (= $swapped107693 0)
             ($main_inv49 $a105691 $j106692 $swapped107693 $i108694 $t109695 $x110696 $y111697))
        ($main_sum49 $a105691 $j106692 $swapped107693 $i108694 $t109695 $x110696 $y111697))))

; loop entry $main_inv50
(assert
  (forall (($i108694 Int) ($y111697 Int) ($x110696 Int) ($swapped107693 Int) ($a105691 (Array Int Int)) ($j106692 Int) ($t109695 Int))
    (=> (and (= $i108694 1)
             (not (= $swapped107693 0))
             ($main_inv49 $a105691 $j106692 $swapped107693 $i108694 $t109695 $x110696 $y111697))
        ($main_inv50 $a105691 $j106692 0 $i108694 $t109695 $x110696 $y111697))))

; loop term $main_sum50
(assert
  (forall (($a105698 (Array Int Int)) ($y111704 Int) ($x110703 Int) ($t109702 Int) ($j106699 Int) ($i108701 Int) ($swapped107700 Int))
    (=> (and (not (< $i108701 100000))
             ($main_inv50 $a105698 $j106699 $swapped107700 $i108701 $t109702 $x110703 $y111704))
        ($main_sum50 $a105698 $j106699 $swapped107700 $i108701 $t109702 $x110703 $y111704))))

; if then
(assert
  (forall (($a105698 (Array Int Int)) ($y111704 Int) ($x110703 Int) ($t109702 Int) ($j106699 Int) ($i108701 Int) ($swapped107700 Int))
    (=> (and (= $t109702 (select $a105698 $i108701))
             (< (select $a105698 (- $i108701 1)) (select $a105698 $i108701))
             (< $i108701 100000)
             ($main_inv50 $a105698 $j106699 $swapped107700 $i108701 $t109702 $x110703 $y111704))
        ($main_if24 (store (store $a105698 $i108701 (select $a105698 (- $i108701 1))) (- $i108701 1) $t109702) $j106699 1 $i108701 $t109702 $x110703 $y111704))))

; if else
(assert
  (forall (($a105698 (Array Int Int)) ($y111704 Int) ($x110703 Int) ($t109702 Int) ($j106699 Int) ($i108701 Int) ($swapped107700 Int))
    (=> (and (not (< (select $a105698 (- $i108701 1)) (select $a105698 $i108701)))
             (< $i108701 100000)
             ($main_inv50 $a105698 $j106699 $swapped107700 $i108701 $t109702 $x110703 $y111704))
        ($main_if24 $a105698 $j106699 $swapped107700 $i108701 $t109702 $x110703 $y111704))))

; forwards $main_inv50
(assert
  (forall (($a105705 (Array Int Int)) ($i108708 Int) ($j106706 Int) ($swapped107707 Int) ($x110710 Int) ($y111711 Int) ($t109709 Int))
    (=> (and ($main_if24 $a105705 $j106706 $swapped107707 $i108708 $t109709 $x110710 $y111711))
        ($main_inv50 $a105705 $j106706 $swapped107707 (+ $i108708 1) $t109709 $x110710 $y111711))))

; forwards $main_inv49
(assert
  (forall (($j106713 Int) ($swapped107714 Int) ($t109716 Int) ($a105712 (Array Int Int)) ($x110717 Int) ($i108715 Int) ($y111718 Int))
    (=> (and ($main_sum50 $a105712 $j106713 $swapped107714 $i108715 $t109716 $x110717 $y111718))
        ($main_inv49 $a105712 $j106713 $swapped107714 $i108715 $t109716 $x110717 $y111718))))

; loop entry $main_inv51
(assert
  (forall (($j106720 Int) ($y111725 Int) ($i108722 Int) ($t109723 Int) ($a105719 (Array Int Int)) ($swapped107721 Int) ($x110724 Int))
    (=> (and ($main_sum49 $a105719 $j106720 $swapped107721 $i108722 $t109723 $x110724 $y111725))
        ($main_inv51 $a105719 $j106720 $swapped107721 $i108722 $t109723 0 $y111725))))

; loop term $main_sum51
(assert
  (forall (($swapped107728 Int) ($x110731 Int) ($i108729 Int) ($a105726 (Array Int Int)) ($t109730 Int) ($y111732 Int) ($j106727 Int))
    (=> (and (not (< $x110731 100000))
             ($main_inv51 $a105726 $j106727 $swapped107728 $i108729 $t109730 $x110731 $y111732))
        ($main_sum51 $a105726 $j106727 $swapped107728 $i108729 $t109730 $x110731 $y111732))))

; loop entry $main_inv52
(assert
  (forall (($swapped107728 Int) ($x110731 Int) ($i108729 Int) ($a105726 (Array Int Int)) ($t109730 Int) ($y111732 Int) ($j106727 Int))
    (=> (and (< $x110731 100000)
             ($main_inv51 $a105726 $j106727 $swapped107728 $i108729 $t109730 $x110731 $y111732))
        ($main_inv52 $a105726 $j106727 $swapped107728 $i108729 $t109730 $x110731 (+ $x110731 1)))))

; loop term $main_sum52
(assert
  (forall (($swapped107735 Int) ($x110738 Int) ($y111739 Int) ($a105733 (Array Int Int)) ($j106734 Int) ($i108736 Int) ($t109737 Int))
    (=> (and (not (< $y111739 100000))
             ($main_inv52 $a105733 $j106734 $swapped107735 $i108736 $t109737 $x110738 $y111739))
        ($main_sum52 $a105733 $j106734 $swapped107735 $i108736 $t109737 $x110738 $y111739))))

; __VERIFIER_assert precondition
(assert
  (forall (($swapped107735 Int) ($x110738 Int) ($y111739 Int) ($a105733 (Array Int Int)) ($j106734 Int) ($i108736 Int) ($t109737 Int))
    (=> (and (< $y111739 100000)
             ($main_inv52 $a105733 $j106734 $swapped107735 $i108736 $t109737 $x110738 $y111739))
        ($__VERIFIER_assert_pre (ite (<= (select $a105733 $x110738) (select $a105733 $y111739)) 1 0)))))

; forwards $main_inv52
(assert
  (forall (($swapped107735 Int) ($x110738 Int) ($y111739 Int) ($a105733 (Array Int Int)) ($j106734 Int) ($i108736 Int) ($t109737 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a105733 $x110738) (select $a105733 $y111739)) 1 0))
             (< $y111739 100000)
             ($main_inv52 $a105733 $j106734 $swapped107735 $i108736 $t109737 $x110738 $y111739))
        ($main_inv52 $a105733 $j106734 $swapped107735 $i108736 $t109737 $x110738 (+ $y111739 1)))))

; forwards $main_inv51
(assert
  (forall (($a105740 (Array Int Int)) ($x110745 Int) ($i108743 Int) ($j106741 Int) ($y111746 Int) ($t109744 Int) ($swapped107742 Int))
    (=> (and ($main_sum52 $a105740 $j106741 $swapped107742 $i108743 $t109744 $x110745 $y111746))
        ($main_inv51 $a105740 $j106741 $swapped107742 $i108743 $t109744 (+ $x110745 1) $y111746))))

(check-sat)
