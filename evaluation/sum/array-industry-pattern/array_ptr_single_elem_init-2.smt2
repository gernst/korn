(set-logic HORN)

(declare-fun $main_if140 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if138 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv414 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if137 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if136 (Int Int) Bool)
(declare-fun $main_inv415 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum415 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if139 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum414 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7680 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7680))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if136 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7681 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if136 cond cond7681))
        (__VERIFIER_assert cond7681))))

; loop entry $main_inv414
(assert
  (forall (($a507 (Array Int Int)) ($b508 (Array Int Int)) ($c509 (Array Int Int)) ($q510 Int))
        ($main_inv414 0 $a507 $b508 $c509 $q510)))

; loop term $main_sum414
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($q5107686 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (not (< $i5067682 100000)))
        ($main_sum414 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686))))

; if then
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($q5107686 Int) ($int7687 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (= $q5107686 0)
             (= $q5107686 $int7687)
             (<= (- 2147483648) $int7687)
             (<= $int7687 2147483647)
             (< $i5067682 100000)
             ($main_inv414 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686))
        ($main_if137 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067682 (store (store $a5077683 $i5067682 0) $i5067682 1) (store $b5087684 $i5067682 (mod $i5067682 2)) $c5097685 $q5107686))))

; if else
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($q5107686 Int) ($int7687 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (not (= $q5107686 0))
             (= $q5107686 $int7687)
             (<= (- 2147483648) $int7687)
             (<= $int7687 2147483647)
             (< $i5067682 100000)
             ($main_inv414 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686))
        ($main_if137 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067682 (store $a5077683 $i5067682 0) $b5087684 $c5097685 $q5107686))))

; if then
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($a5077689 (Array Int Int)) ($q5107686 Int) ($q5107692 Int) ($c5097691 (Array Int Int)) ($b5087690 (Array Int Int)) ($i5067688 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (= (select $b5087690 $i5067688) 0)
             (not (= (select $a5077689 $i5067688) 0))
             ($main_if137 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 $c5097691 $q5107692))
        ($main_if138 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 (store $c5097691 $i5067688 0) $q5107692))))

; if else
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($a5077689 (Array Int Int)) ($q5107686 Int) ($q5107692 Int) ($c5097691 (Array Int Int)) ($b5087690 (Array Int Int)) ($i5067688 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (not (= (select $b5087690 $i5067688) 0))
             (not (= (select $a5077689 $i5067688) 0))
             ($main_if137 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 $c5097691 $q5107692))
        ($main_if138 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 (store $c5097691 $i5067688 1) $q5107692))))

; if then
(assert
  (forall (($b5087684 (Array Int Int)) ($q5107697 Int) ($i5067682 Int) ($a5077694 (Array Int Int)) ($q5107686 Int) ($i5067693 Int) ($b5087695 (Array Int Int)) ($c5097696 (Array Int Int)) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and ($main_if138 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067693 $a5077694 $b5087695 $c5097696 $q5107697))
        ($main_if139 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067693 $a5077694 $b5087695 $c5097696 $q5107697))))

; if else
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067682 Int) ($a5077689 (Array Int Int)) ($q5107686 Int) ($q5107692 Int) ($c5097691 (Array Int Int)) ($b5087690 (Array Int Int)) ($i5067688 Int) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and (= (select $a5077689 $i5067688) 0)
             ($main_if137 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 $c5097691 $q5107692))
        ($main_if139 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067688 $a5077689 $b5087690 $c5097691 $q5107692))))

; forwards $main_inv414
(assert
  (forall (($b5087684 (Array Int Int)) ($i5067698 Int) ($q5107702 Int) ($q5107686 Int) ($c5097701 (Array Int Int)) ($b5087700 (Array Int Int)) ($i5067682 Int) ($a5077699 (Array Int Int)) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)))
    (=> (and ($main_if139 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067698 $a5077699 $b5087700 $c5097701 $q5107702))
        ($main_inv414 (+ $i5067698 1) $a5077699 $b5087700 $c5097701 $q5107702))))

; backwards $main_sum414
(assert
  (forall (($a5077704 (Array Int Int)) ($b5087684 (Array Int Int)) ($i5067698 Int) ($q5107707 Int) ($q5107702 Int) ($c5097706 (Array Int Int)) ($q5107686 Int) ($c5097701 (Array Int Int)) ($i5067703 Int) ($i5067682 Int) ($a5077699 (Array Int Int)) ($a5077683 (Array Int Int)) ($c5097685 (Array Int Int)) ($b5087700 (Array Int Int)) ($b5087705 (Array Int Int)))
    (=> (and ($main_sum414 (+ $i5067698 1) $a5077699 $b5087700 $c5097701 $q5107702 $i5067703 $a5077704 $b5087705 $c5097706 $q5107707)
             ($main_if139 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067698 $a5077699 $b5087700 $c5097701 $q5107702))
        ($main_sum414 $i5067682 $a5077683 $b5087684 $c5097685 $q5107686 $i5067703 $a5077704 $b5087705 $c5097706 $q5107707))))

; loop entry $main_inv415
(assert
  (forall (($a5077709 (Array Int Int)) ($i5067708 Int) ($a507 (Array Int Int)) ($q510 Int) ($b5087710 (Array Int Int)) ($q5107712 Int) ($c5097711 (Array Int Int)) ($b508 (Array Int Int)) ($c509 (Array Int Int)))
    (=> (and ($main_sum414 0 $a507 $b508 $c509 $q510 $i5067708 $a5077709 $b5087710 $c5097711 $q5107712))
        ($main_inv415 0 (store $a5077709 15000 1) $b5087710 $c5097711 $q5107712))))

; loop term $main_sum415
(assert
  (forall (($a5077714 (Array Int Int)) ($i5067713 Int) ($q5107717 Int) ($b5087715 (Array Int Int)) ($c5097716 (Array Int Int)))
    (=> (and (not (< $i5067713 100000)))
        ($main_sum415 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))))

; __VERIFIER_assert precondition
(assert
  (forall (($a5077714 (Array Int Int)) ($i5067713 Int) ($q5107717 Int) ($b5087715 (Array Int Int)) ($c5097716 (Array Int Int)))
    (=> (and (= $i5067713 15000)
             (< $i5067713 100000)
             ($main_inv415 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))
        ($__VERIFIER_assert_pre (ite (not (= (select $a5077714 $i5067713) 1)) 1 0)))))

; if then
(assert
  (forall (($a5077714 (Array Int Int)) ($i5067713 Int) ($q5107717 Int) ($b5087715 (Array Int Int)) ($c5097716 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a5077714 $i5067713) 1)) 1 0))
             (= $i5067713 15000)
             (< $i5067713 100000)
             ($main_inv415 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))
        ($main_if140 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))))

; if else
(assert
  (forall (($a5077714 (Array Int Int)) ($i5067713 Int) ($q5107717 Int) ($b5087715 (Array Int Int)) ($c5097716 (Array Int Int)))
    (=> (and (not (= $i5067713 15000))
             (< $i5067713 100000)
             ($main_inv415 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))
        ($main_if140 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717))))

; forwards $main_inv415
(assert
  (forall (($b5087720 (Array Int Int)) ($a5077714 (Array Int Int)) ($a5077719 (Array Int Int)) ($i5067713 Int) ($q5107717 Int) ($b5087715 (Array Int Int)) ($i5067718 Int) ($c5097716 (Array Int Int)) ($q5107722 Int) ($c5097721 (Array Int Int)))
    (=> (and ($main_if140 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067718 $a5077719 $b5087720 $c5097721 $q5107722))
        ($main_inv415 (+ $i5067718 1) $a5077719 $b5087720 $c5097721 $q5107722))))

; backwards $main_sum415
(assert
  (forall (($b5087725 (Array Int Int)) ($b5087720 (Array Int Int)) ($a5077719 (Array Int Int)) ($q5107717 Int) ($b5087715 (Array Int Int)) ($i5067718 Int) ($c5097726 (Array Int Int)) ($q5107722 Int) ($c5097721 (Array Int Int)) ($a5077714 (Array Int Int)) ($q5107727 Int) ($i5067723 Int) ($i5067713 Int) ($a5077724 (Array Int Int)) ($c5097716 (Array Int Int)))
    (=> (and ($main_sum415 (+ $i5067718 1) $a5077719 $b5087720 $c5097721 $q5107722 $i5067723 $a5077724 $b5087725 $c5097726 $q5107727)
             ($main_if140 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067718 $a5077719 $b5087720 $c5097721 $q5107722))
        ($main_sum415 $i5067713 $a5077714 $b5087715 $c5097716 $q5107717 $i5067723 $a5077724 $b5087725 $c5097726 $q5107727))))

(check-sat)
