(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv351 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv350 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum350 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv349 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum348 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if98 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum349 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv348 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum351 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if99 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6692 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6692))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if98 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6693 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if98 cond cond6693))
        (__VERIFIER_assert cond6693))))

; loop entry $main_inv348
(assert
  (forall (($bb412 (Array Int Int)) ($aa408 (Array Int Int)) ($b410 Int) ($a409 Int) ($c411 Int) ($i414 Int) ($cc413 (Array Int Int)) ($x415 Int))
    (=> (and (= $i414 0)
             (= $c411 0)
             (= $b410 0)
             (= $a409 0))
        ($main_inv348 $aa408 $a409 $b410 $c411 $bb412 $cc413 $i414 $x415))))

; loop term $main_sum348
(assert
  (forall (($bb4126698 (Array Int Int)) ($aa4086694 (Array Int Int)) ($cc4136699 (Array Int Int)) ($x4156701 Int) ($c4116697 Int) ($a4096695 Int) ($b4106696 Int) ($i4146700 Int))
    (=> (and (not (< $i4146700 100000)))
        ($main_sum348 $aa4086694 $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 $i4146700 $x4156701 $aa4086694 $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 $i4146700 $x4156701))))

; forwards $main_inv348
(assert
  (forall (($bb4126698 (Array Int Int)) ($aa4086694 (Array Int Int)) ($cc4136699 (Array Int Int)) ($x4156701 Int) ($c4116697 Int) ($int6702 Int) ($a4096695 Int) ($b4106696 Int) ($i4146700 Int))
    (=> (and (<= (- 2147483648) $int6702)
             (<= $int6702 2147483647)
             (< $i4146700 100000)
             ($main_inv348 $aa4086694 $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 $i4146700 $x4156701))
        ($main_inv348 (store $aa4086694 $i4146700 $int6702) $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 (+ $i4146700 1) $x4156701))))

; backwards $main_sum348
(assert
  (forall (($a4096704 Int) ($bb4126698 (Array Int Int)) ($b4106705 Int) ($cc4136699 (Array Int Int)) ($x4156701 Int) ($x4156710 Int) ($int6702 Int) ($bb4126707 (Array Int Int)) ($a4096695 Int) ($b4106696 Int) ($i4146700 Int) ($aa4086703 (Array Int Int)) ($c4116706 Int) ($aa4086694 (Array Int Int)) ($cc4136708 (Array Int Int)) ($i4146709 Int) ($c4116697 Int))
    (=> (and ($main_sum348 (store $aa4086694 $i4146700 $int6702) $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 (+ $i4146700 1) $x4156701 $aa4086703 $a4096704 $b4106705 $c4116706 $bb4126707 $cc4136708 $i4146709 $x4156710)
             (<= (- 2147483648) $int6702)
             (<= $int6702 2147483647)
             (< $i4146700 100000))
        ($main_sum348 $aa4086694 $a4096695 $b4106696 $c4116697 $bb4126698 $cc4136699 $i4146700 $x4156701 $aa4086703 $a4096704 $b4106705 $c4116706 $bb4126707 $cc4136708 $i4146709 $x4156710))))

; loop entry $main_inv349
(assert
  (forall (($c4116714 Int) ($bb412 (Array Int Int)) ($i4146717 Int) ($cc4136716 (Array Int Int)) ($x4156718 Int) ($bb4126715 (Array Int Int)) ($b410 Int) ($c411 Int) ($i414 Int) ($cc413 (Array Int Int)) ($aa4086711 (Array Int Int)) ($x415 Int) ($aa408 (Array Int Int)) ($b4106713 Int) ($a409 Int) ($a4096712 Int))
    (=> (and ($main_sum348 $aa408 $a409 $b410 $c411 $bb412 $cc413 $i414 $x415 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718)
             (= $i414 0)
             (= $c411 0)
             (= $b410 0)
             (= $a409 0))
        ($main_inv349 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718))))

; loop term $main_sum349
(assert
  (forall (($i4146725 Int) ($x4156726 Int) ($a4096720 Int) ($bb4126723 (Array Int Int)) ($c4116722 Int) ($aa4086719 (Array Int Int)) ($b4106721 Int) ($cc4136724 (Array Int Int)))
    (=> (and (not (< $a4096720 100000)))
        ($main_sum349 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726))))

; if then
(assert
  (forall (($i4146725 Int) ($x4156726 Int) ($a4096720 Int) ($bb4126723 (Array Int Int)) ($c4116722 Int) ($aa4086719 (Array Int Int)) ($b4106721 Int) ($cc4136724 (Array Int Int)))
    (=> (and (>= (select $aa4086719 $a4096720) 0)
             (< $a4096720 100000)
             ($main_inv349 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726))
        ($main_if99 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086719 $a4096720 (+ $b4106721 1) $c4116722 (store $bb4126723 $b4106721 (select $aa4086719 $a4096720)) $cc4136724 $i4146725 $x4156726))))

; if else
(assert
  (forall (($i4146725 Int) ($x4156726 Int) ($a4096720 Int) ($bb4126723 (Array Int Int)) ($c4116722 Int) ($aa4086719 (Array Int Int)) ($b4106721 Int) ($cc4136724 (Array Int Int)))
    (=> (and (not (>= (select $aa4086719 $a4096720) 0))
             (< $a4096720 100000)
             ($main_inv349 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726))
        ($main_if99 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086719 $a4096720 $b4106721 (+ $c4116722 1) $bb4126723 (store $cc4136724 $c4116722 (select $aa4086719 $a4096720)) $i4146725 $x4156726))))

; forwards $main_inv349
(assert
  (forall (($i4146725 Int) ($cc4136732 (Array Int Int)) ($x4156734 Int) ($c4116730 Int) ($x4156726 Int) ($a4096728 Int) ($a4096720 Int) ($aa4086727 (Array Int Int)) ($i4146733 Int) ($b4106729 Int) ($bb4126723 (Array Int Int)) ($c4116722 Int) ($bb4126731 (Array Int Int)) ($aa4086719 (Array Int Int)) ($b4106721 Int) ($cc4136724 (Array Int Int)))
    (=> (and ($main_if99 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086727 $a4096728 $b4106729 $c4116730 $bb4126731 $cc4136732 $i4146733 $x4156734))
        ($main_inv349 $aa4086727 (+ $a4096728 1) $b4106729 $c4116730 $bb4126731 $cc4136732 $i4146733 $x4156734))))

; backwards $main_sum349
(assert
  (forall (($aa4086735 (Array Int Int)) ($cc4136732 (Array Int Int)) ($x4156734 Int) ($a4096736 Int) ($c4116730 Int) ($x4156726 Int) ($a4096728 Int) ($a4096720 Int) ($aa4086727 (Array Int Int)) ($i4146741 Int) ($cc4136740 (Array Int Int)) ($i4146733 Int) ($b4106729 Int) ($x4156742 Int) ($i4146725 Int) ($bb4126723 (Array Int Int)) ($b4106737 Int) ($c4116722 Int) ($c4116738 Int) ($bb4126731 (Array Int Int)) ($bb4126739 (Array Int Int)) ($aa4086719 (Array Int Int)) ($b4106721 Int) ($cc4136724 (Array Int Int)))
    (=> (and ($main_sum349 $aa4086727 (+ $a4096728 1) $b4106729 $c4116730 $bb4126731 $cc4136732 $i4146733 $x4156734 $aa4086735 $a4096736 $b4106737 $c4116738 $bb4126739 $cc4136740 $i4146741 $x4156742)
             ($main_if99 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086727 $a4096728 $b4106729 $c4116730 $bb4126731 $cc4136732 $i4146733 $x4156734))
        ($main_sum349 $aa4086719 $a4096720 $b4106721 $c4116722 $bb4126723 $cc4136724 $i4146725 $x4156726 $aa4086735 $a4096736 $b4106737 $c4116738 $bb4126739 $cc4136740 $i4146741 $x4156742))))

; loop entry $main_inv350
(assert
  (forall (($c4116714 Int) ($a4096744 Int) ($cc4136716 (Array Int Int)) ($x4156718 Int) ($bb4126715 (Array Int Int)) ($b410 Int) ($c411 Int) ($cc413 (Array Int Int)) ($aa4086711 (Array Int Int)) ($x415 Int) ($bb412 (Array Int Int)) ($cc4136748 (Array Int Int)) ($x4156750 Int) ($i4146717 Int) ($c4116746 Int) ($aa408 (Array Int Int)) ($b4106713 Int) ($i4146749 Int) ($a409 Int) ($bb4126747 (Array Int Int)) ($aa4086743 (Array Int Int)) ($a4096712 Int) ($b4106745 Int) ($i414 Int))
    (=> (and ($main_sum349 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718 $aa4086743 $a4096744 $b4106745 $c4116746 $bb4126747 $cc4136748 $i4146749 $x4156750)
             ($main_sum348 $aa408 $a409 $b410 $c411 $bb412 $cc413 $i414 $x415 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718)
             (= $i414 0)
             (= $c411 0)
             (= $b410 0)
             (= $a409 0))
        ($main_inv350 $aa4086743 $a4096744 $b4106745 $c4116746 $bb4126747 $cc4136748 $i4146749 0))))

; loop term $main_sum350
(assert
  (forall (($b4106753 Int) ($bb4126755 (Array Int Int)) ($a4096752 Int) ($cc4136756 (Array Int Int)) ($aa4086751 (Array Int Int)) ($c4116754 Int) ($i4146757 Int) ($x4156758 Int))
    (=> (and (not (< $x4156758 $b4106753)))
        ($main_sum350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 $x4156758 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 $x4156758))))

; __VERIFIER_assert precondition
(assert
  (forall (($b4106753 Int) ($bb4126755 (Array Int Int)) ($a4096752 Int) ($cc4136756 (Array Int Int)) ($aa4086751 (Array Int Int)) ($c4116754 Int) ($i4146757 Int) ($x4156758 Int))
    (=> (and (< $x4156758 $b4106753)
             ($main_inv350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 $x4156758))
        ($__VERIFIER_assert_pre (ite (>= (select $bb4126755 $x4156758) 0) 1 0)))))

; forwards $main_inv350
(assert
  (forall (($b4106753 Int) ($bb4126755 (Array Int Int)) ($a4096752 Int) ($cc4136756 (Array Int Int)) ($aa4086751 (Array Int Int)) ($c4116754 Int) ($i4146757 Int) ($x4156758 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb4126755 $x4156758) 0) 1 0))
             (< $x4156758 $b4106753)
             ($main_inv350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 $x4156758))
        ($main_inv350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 (+ $x4156758 1)))))

; backwards $main_sum350
(assert
  (forall (($a4096760 Int) ($x4156766 Int) ($a4096752 Int) ($cc4136756 (Array Int Int)) ($c4116762 Int) ($aa4086751 (Array Int Int)) ($c4116754 Int) ($i4146765 Int) ($i4146757 Int) ($x4156758 Int) ($b4106753 Int) ($cc4136764 (Array Int Int)) ($bb4126755 (Array Int Int)) ($bb4126763 (Array Int Int)) ($b4106761 Int) ($aa4086759 (Array Int Int)))
    (=> (and ($main_sum350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 (+ $x4156758 1) $aa4086759 $a4096760 $b4106761 $c4116762 $bb4126763 $cc4136764 $i4146765 $x4156766)
             (__VERIFIER_assert (ite (>= (select $bb4126755 $x4156758) 0) 1 0))
             (< $x4156758 $b4106753))
        ($main_sum350 $aa4086751 $a4096752 $b4106753 $c4116754 $bb4126755 $cc4136756 $i4146757 $x4156758 $aa4086759 $a4096760 $b4106761 $c4116762 $bb4126763 $cc4136764 $i4146765 $x4156766))))

; loop entry $main_inv351
(assert
  (forall (($c4116714 Int) ($a4096744 Int) ($bb4126771 (Array Int Int)) ($x4156718 Int) ($bb4126715 (Array Int Int)) ($aa4086767 (Array Int Int)) ($aa4086711 (Array Int Int)) ($x415 Int) ($bb412 (Array Int Int)) ($cc4136748 (Array Int Int)) ($i4146773 Int) ($x4156750 Int) ($i4146717 Int) ($c4116746 Int) ($aa408 (Array Int Int)) ($b4106713 Int) ($cc4136716 (Array Int Int)) ($b4106769 Int) ($a4096768 Int) ($b410 Int) ($i4146749 Int) ($a409 Int) ($bb4126747 (Array Int Int)) ($aa4086743 (Array Int Int)) ($a4096712 Int) ($c411 Int) ($cc4136772 (Array Int Int)) ($b4106745 Int) ($i414 Int) ($c4116770 Int) ($cc413 (Array Int Int)) ($x4156774 Int))
    (=> (and ($main_sum350 $aa4086743 $a4096744 $b4106745 $c4116746 $bb4126747 $cc4136748 $i4146749 0 $aa4086767 $a4096768 $b4106769 $c4116770 $bb4126771 $cc4136772 $i4146773 $x4156774)
             ($main_sum349 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718 $aa4086743 $a4096744 $b4106745 $c4116746 $bb4126747 $cc4136748 $i4146749 $x4156750)
             ($main_sum348 $aa408 $a409 $b410 $c411 $bb412 $cc413 $i414 $x415 $aa4086711 $a4096712 $b4106713 $c4116714 $bb4126715 $cc4136716 $i4146717 $x4156718)
             (= $i414 0)
             (= $c411 0)
             (= $b410 0)
             (= $a409 0))
        ($main_inv351 $aa4086767 $a4096768 $b4106769 $c4116770 $bb4126771 $cc4136772 $i4146773 0))))

; loop term $main_sum351
(assert
  (forall (($a4096776 Int) ($c4116778 Int) ($b4106777 Int) ($bb4126779 (Array Int Int)) ($x4156782 Int) ($aa4086775 (Array Int Int)) ($cc4136780 (Array Int Int)) ($i4146781 Int))
    (=> (and (not (< $x4156782 $c4116778)))
        ($main_sum351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 $x4156782 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 $x4156782))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4096776 Int) ($c4116778 Int) ($b4106777 Int) ($bb4126779 (Array Int Int)) ($x4156782 Int) ($aa4086775 (Array Int Int)) ($cc4136780 (Array Int Int)) ($i4146781 Int))
    (=> (and (< $x4156782 $c4116778)
             ($main_inv351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 $x4156782))
        ($__VERIFIER_assert_pre (ite (< (select $cc4136780 $x4156782) 0) 1 0)))))

; forwards $main_inv351
(assert
  (forall (($a4096776 Int) ($c4116778 Int) ($b4106777 Int) ($bb4126779 (Array Int Int)) ($x4156782 Int) ($aa4086775 (Array Int Int)) ($cc4136780 (Array Int Int)) ($i4146781 Int))
    (=> (and (__VERIFIER_assert (ite (< (select $cc4136780 $x4156782) 0) 1 0))
             (< $x4156782 $c4116778)
             ($main_inv351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 $x4156782))
        ($main_inv351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 (+ $x4156782 1)))))

; backwards $main_sum351
(assert
  (forall (($a4096776 Int) ($b4106777 Int) ($bb4126779 (Array Int Int)) ($b4106785 Int) ($a4096784 Int) ($i4146789 Int) ($x4156790 Int) ($cc4136780 (Array Int Int)) ($i4146781 Int) ($aa4086783 (Array Int Int)) ($bb4126787 (Array Int Int)) ($c4116778 Int) ($x4156782 Int) ($cc4136788 (Array Int Int)) ($c4116786 Int) ($aa4086775 (Array Int Int)))
    (=> (and ($main_sum351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 (+ $x4156782 1) $aa4086783 $a4096784 $b4106785 $c4116786 $bb4126787 $cc4136788 $i4146789 $x4156790)
             (__VERIFIER_assert (ite (< (select $cc4136780 $x4156782) 0) 1 0))
             (< $x4156782 $c4116778))
        ($main_sum351 $aa4086775 $a4096776 $b4106777 $c4116778 $bb4126779 $cc4136780 $i4146781 $x4156782 $aa4086783 $a4096784 $b4106785 $c4116786 $bb4126787 $cc4136788 $i4146789 $x4156790))))

(check-sat)
