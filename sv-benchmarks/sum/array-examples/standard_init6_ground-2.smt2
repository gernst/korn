(set-logic HORN)

(declare-fun $main_inv265 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum267 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if76 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum269 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv267 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv264 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv268 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv266 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum263 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum264 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum265 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum268 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv269 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv263 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum266 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5652 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5652))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if76 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5653 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if76 cond cond5653))
        (__VERIFIER_assert cond5653))))

; loop entry $main_inv263
(assert
  (forall (($a349 (Array Int Int)) ($i350 Int) ($x351 Int))
    (=> (and (= $i350 0))
        ($main_inv263 $a349 $i350 $x351))))

; loop term $main_sum263
(assert
  (forall (($a3495654 (Array Int Int)) ($i3505655 Int) ($x3515656 Int))
    (=> (and (not (< $i3505655 100000)))
        ($main_sum263 $a3495654 $i3505655 $x3515656 $a3495654 $i3505655 $x3515656))))

; forwards $main_inv263
(assert
  (forall (($a3495654 (Array Int Int)) ($i3505655 Int) ($x3515656 Int))
    (=> (and (< $i3505655 100000)
             ($main_inv263 $a3495654 $i3505655 $x3515656))
        ($main_inv263 (store $a3495654 $i3505655 42) (+ $i3505655 1) $x3515656))))

; backwards $main_sum263
(assert
  (forall (($i3505655 Int) ($x3515659 Int) ($a3495654 (Array Int Int)) ($i3505658 Int) ($x3515656 Int) ($a3495657 (Array Int Int)))
    (=> (and ($main_sum263 (store $a3495654 $i3505655 42) (+ $i3505655 1) $x3515656 $a3495657 $i3505658 $x3515659)
             (< $i3505655 100000))
        ($main_sum263 $a3495654 $i3505655 $x3515656 $a3495657 $i3505658 $x3515659))))

; loop entry $main_inv264
(assert
  (forall (($x3515662 Int) ($x351 Int) ($a3495660 (Array Int Int)) ($i350 Int) ($a349 (Array Int Int)) ($i3505661 Int))
    (=> (and ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv264 $a3495660 0 $x3515662))))

; loop term $main_sum264
(assert
  (forall (($a3495663 (Array Int Int)) ($i3505664 Int) ($x3515665 Int))
    (=> (and (not (< $i3505664 100000)))
        ($main_sum264 $a3495663 $i3505664 $x3515665 $a3495663 $i3505664 $x3515665))))

; forwards $main_inv264
(assert
  (forall (($a3495663 (Array Int Int)) ($i3505664 Int) ($x3515665 Int))
    (=> (and (< $i3505664 100000)
             ($main_inv264 $a3495663 $i3505664 $x3515665))
        ($main_inv264 (store $a3495663 $i3505664 43) (+ $i3505664 1) $x3515665))))

; backwards $main_sum264
(assert
  (forall (($x3515668 Int) ($i3505664 Int) ($a3495663 (Array Int Int)) ($i3505667 Int) ($x3515665 Int) ($a3495666 (Array Int Int)))
    (=> (and ($main_sum264 (store $a3495663 $i3505664 43) (+ $i3505664 1) $x3515665 $a3495666 $i3505667 $x3515668)
             (< $i3505664 100000))
        ($main_sum264 $a3495663 $i3505664 $x3515665 $a3495666 $i3505667 $x3515668))))

; loop entry $main_inv265
(assert
  (forall (($x3515662 Int) ($x351 Int) ($a3495660 (Array Int Int)) ($a349 (Array Int Int)) ($a3495669 (Array Int Int)) ($i3505661 Int) ($x3515671 Int) ($i3505670 Int) ($i350 Int))
    (=> (and ($main_sum264 $a3495660 0 $x3515662 $a3495669 $i3505670 $x3515671)
             ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv265 $a3495669 0 $x3515671))))

; loop term $main_sum265
(assert
  (forall (($a3495672 (Array Int Int)) ($i3505673 Int) ($x3515674 Int))
    (=> (and (not (< $i3505673 100000)))
        ($main_sum265 $a3495672 $i3505673 $x3515674 $a3495672 $i3505673 $x3515674))))

; forwards $main_inv265
(assert
  (forall (($a3495672 (Array Int Int)) ($i3505673 Int) ($x3515674 Int))
    (=> (and (< $i3505673 100000)
             ($main_inv265 $a3495672 $i3505673 $x3515674))
        ($main_inv265 (store $a3495672 $i3505673 44) (+ $i3505673 1) $x3515674))))

; backwards $main_sum265
(assert
  (forall (($i3505673 Int) ($x3515677 Int) ($a3495675 (Array Int Int)) ($a3495672 (Array Int Int)) ($i3505676 Int) ($x3515674 Int))
    (=> (and ($main_sum265 (store $a3495672 $i3505673 44) (+ $i3505673 1) $x3515674 $a3495675 $i3505676 $x3515677)
             (< $i3505673 100000))
        ($main_sum265 $a3495672 $i3505673 $x3515674 $a3495675 $i3505676 $x3515677))))

; loop entry $main_inv266
(assert
  (forall (($i3505679 Int) ($x3515662 Int) ($x351 Int) ($x3515680 Int) ($a3495660 (Array Int Int)) ($a349 (Array Int Int)) ($a3495669 (Array Int Int)) ($i3505661 Int) ($x3515671 Int) ($a3495678 (Array Int Int)) ($i3505670 Int) ($i350 Int))
    (=> (and ($main_sum265 $a3495669 0 $x3515671 $a3495678 $i3505679 $x3515680)
             ($main_sum264 $a3495660 0 $x3515662 $a3495669 $i3505670 $x3515671)
             ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv266 $a3495678 0 $x3515680))))

; loop term $main_sum266
(assert
  (forall (($a3495681 (Array Int Int)) ($i3505682 Int) ($x3515683 Int))
    (=> (and (not (< $i3505682 100000)))
        ($main_sum266 $a3495681 $i3505682 $x3515683 $a3495681 $i3505682 $x3515683))))

; forwards $main_inv266
(assert
  (forall (($a3495681 (Array Int Int)) ($i3505682 Int) ($x3515683 Int))
    (=> (and (< $i3505682 100000)
             ($main_inv266 $a3495681 $i3505682 $x3515683))
        ($main_inv266 (store $a3495681 $i3505682 45) (+ $i3505682 1) $x3515683))))

; backwards $main_sum266
(assert
  (forall (($i3505685 Int) ($a3495684 (Array Int Int)) ($x3515683 Int) ($i3505682 Int) ($x3515686 Int) ($a3495681 (Array Int Int)))
    (=> (and ($main_sum266 (store $a3495681 $i3505682 45) (+ $i3505682 1) $x3515683 $a3495684 $i3505685 $x3515686)
             (< $i3505682 100000))
        ($main_sum266 $a3495681 $i3505682 $x3515683 $a3495684 $i3505685 $x3515686))))

; loop entry $main_inv267
(assert
  (forall (($i3505679 Int) ($x3515662 Int) ($x351 Int) ($x3515680 Int) ($i3505688 Int) ($a3495660 (Array Int Int)) ($a349 (Array Int Int)) ($x3515689 Int) ($a3495669 (Array Int Int)) ($i3505661 Int) ($a3495678 (Array Int Int)) ($i3505670 Int) ($i350 Int) ($a3495687 (Array Int Int)) ($x3515671 Int))
    (=> (and ($main_sum266 $a3495678 0 $x3515680 $a3495687 $i3505688 $x3515689)
             ($main_sum265 $a3495669 0 $x3515671 $a3495678 $i3505679 $x3515680)
             ($main_sum264 $a3495660 0 $x3515662 $a3495669 $i3505670 $x3515671)
             ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv267 $a3495687 0 $x3515689))))

; loop term $main_sum267
(assert
  (forall (($a3495690 (Array Int Int)) ($i3505691 Int) ($x3515692 Int))
    (=> (and (not (< $i3505691 100000)))
        ($main_sum267 $a3495690 $i3505691 $x3515692 $a3495690 $i3505691 $x3515692))))

; forwards $main_inv267
(assert
  (forall (($a3495690 (Array Int Int)) ($i3505691 Int) ($x3515692 Int))
    (=> (and (< $i3505691 100000)
             ($main_inv267 $a3495690 $i3505691 $x3515692))
        ($main_inv267 (store $a3495690 $i3505691 46) (+ $i3505691 1) $x3515692))))

; backwards $main_sum267
(assert
  (forall (($x3515692 Int) ($a3495693 (Array Int Int)) ($i3505694 Int) ($i3505691 Int) ($a3495690 (Array Int Int)) ($x3515695 Int))
    (=> (and ($main_sum267 (store $a3495690 $i3505691 46) (+ $i3505691 1) $x3515692 $a3495693 $i3505694 $x3515695)
             (< $i3505691 100000))
        ($main_sum267 $a3495690 $i3505691 $x3515692 $a3495693 $i3505694 $x3515695))))

; loop entry $main_inv268
(assert
  (forall (($i3505679 Int) ($x3515662 Int) ($x351 Int) ($x3515680 Int) ($i3505688 Int) ($a3495660 (Array Int Int)) ($a3495696 (Array Int Int)) ($a349 (Array Int Int)) ($x3515689 Int) ($a3495669 (Array Int Int)) ($i3505661 Int) ($x3515698 Int) ($i3505697 Int) ($a3495678 (Array Int Int)) ($i3505670 Int) ($i350 Int) ($a3495687 (Array Int Int)) ($x3515671 Int))
    (=> (and ($main_sum267 $a3495687 0 $x3515689 $a3495696 $i3505697 $x3515698)
             ($main_sum266 $a3495678 0 $x3515680 $a3495687 $i3505688 $x3515689)
             ($main_sum265 $a3495669 0 $x3515671 $a3495678 $i3505679 $x3515680)
             ($main_sum264 $a3495660 0 $x3515662 $a3495669 $i3505670 $x3515671)
             ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv268 $a3495696 0 $x3515698))))

; loop term $main_sum268
(assert
  (forall (($a3495699 (Array Int Int)) ($i3505700 Int) ($x3515701 Int))
    (=> (and (not (< $i3505700 100000)))
        ($main_sum268 $a3495699 $i3505700 $x3515701 $a3495699 $i3505700 $x3515701))))

; forwards $main_inv268
(assert
  (forall (($a3495699 (Array Int Int)) ($i3505700 Int) ($x3515701 Int))
    (=> (and (< $i3505700 100000)
             ($main_inv268 $a3495699 $i3505700 $x3515701))
        ($main_inv268 (store $a3495699 $i3505700 47) (+ $i3505700 1) $x3515701))))

; backwards $main_sum268
(assert
  (forall (($x3515704 Int) ($i3505700 Int) ($a3495702 (Array Int Int)) ($i3505703 Int) ($x3515701 Int) ($a3495699 (Array Int Int)))
    (=> (and ($main_sum268 (store $a3495699 $i3505700 47) (+ $i3505700 1) $x3515701 $a3495702 $i3505703 $x3515704)
             (< $i3505700 100000))
        ($main_sum268 $a3495699 $i3505700 $x3515701 $a3495702 $i3505703 $x3515704))))

; loop entry $main_inv269
(assert
  (forall (($i3505679 Int) ($x3515680 Int) ($i3505688 Int) ($a3495660 (Array Int Int)) ($i3505706 Int) ($a3495696 (Array Int Int)) ($a349 (Array Int Int)) ($x3515689 Int) ($a3495669 (Array Int Int)) ($i3505661 Int) ($x3515698 Int) ($i3505697 Int) ($a3495678 (Array Int Int)) ($a3495705 (Array Int Int)) ($x3515662 Int) ($x351 Int) ($x3515707 Int) ($i3505670 Int) ($i350 Int) ($a3495687 (Array Int Int)) ($x3515671 Int))
    (=> (and ($main_sum268 $a3495696 0 $x3515698 $a3495705 $i3505706 $x3515707)
             ($main_sum267 $a3495687 0 $x3515689 $a3495696 $i3505697 $x3515698)
             ($main_sum266 $a3495678 0 $x3515680 $a3495687 $i3505688 $x3515689)
             ($main_sum265 $a3495669 0 $x3515671 $a3495678 $i3505679 $x3515680)
             ($main_sum264 $a3495660 0 $x3515662 $a3495669 $i3505670 $x3515671)
             ($main_sum263 $a349 $i350 $x351 $a3495660 $i3505661 $x3515662)
             (= $i350 0))
        ($main_inv269 $a3495705 $i3505706 0))))

; loop term $main_sum269
(assert
  (forall (($a3495708 (Array Int Int)) ($i3505709 Int) ($x3515710 Int))
    (=> (and (not (< $x3515710 100000)))
        ($main_sum269 $a3495708 $i3505709 $x3515710 $a3495708 $i3505709 $x3515710))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3495708 (Array Int Int)) ($x3515710 Int) ($i3505709 Int))
    (=> (and (< $x3515710 100000)
             ($main_inv269 $a3495708 $i3505709 $x3515710))
        ($__VERIFIER_assert_pre (ite (= (select $a3495708 $x3515710) 47) 1 0)))))

; forwards $main_inv269
(assert
  (forall (($a3495708 (Array Int Int)) ($i3505709 Int) ($x3515710 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3495708 $x3515710) 47) 1 0))
             (< $x3515710 100000)
             ($main_inv269 $a3495708 $i3505709 $x3515710))
        ($main_inv269 $a3495708 $i3505709 (+ $x3515710 1)))))

; backwards $main_sum269
(assert
  (forall (($i3505712 Int) ($x3515713 Int) ($a3495711 (Array Int Int)) ($a3495708 (Array Int Int)) ($i3505709 Int) ($x3515710 Int))
    (=> (and ($main_sum269 $a3495708 $i3505709 (+ $x3515710 1) $a3495711 $i3505712 $x3515713)
             (__VERIFIER_assert (ite (= (select $a3495708 $x3515710) 47) 1 0))
             (< $x3515710 100000))
        ($main_sum269 $a3495708 $i3505709 $x3515710 $a3495711 $i3505712 $x3515713))))

(check-sat)
