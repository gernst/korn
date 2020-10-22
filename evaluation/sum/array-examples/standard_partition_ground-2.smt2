(set-logic HORN)

(declare-fun $main_sum346 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv345 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if95 (Int Int) Bool)
(declare-fun $main_if97 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv346 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv344 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum344 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv347 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if96 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum347 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum345 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6577 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6577))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if95 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6578 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if95 cond cond6578))
        (__VERIFIER_assert cond6578))))

; loop entry $main_inv344
(assert
  (forall (($i406 Int) ($b402 Int) ($a401 Int) ($c403 Int) ($bb404 (Array Int Int)) ($aa400 (Array Int Int)) ($x407 Int) ($cc405 (Array Int Int)))
    (=> (and (= $i406 0)
             (= $c403 0)
             (= $b402 0)
             (= $a401 0))
        ($main_inv344 $aa400 $a401 $b402 $c403 $bb404 $cc405 $i406 $x407))))

; loop term $main_sum344
(assert
  (forall (($x4076586 Int) ($b4026581 Int) ($a4016580 Int) ($bb4046583 (Array Int Int)) ($c4036582 Int) ($cc4056584 (Array Int Int)) ($aa4006579 (Array Int Int)) ($i4066585 Int))
    (=> (and (not (< $i4066585 100000)))
        ($main_sum344 $aa4006579 $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 $i4066585 $x4076586 $aa4006579 $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 $i4066585 $x4076586))))

; forwards $main_inv344
(assert
  (forall (($x4076586 Int) ($b4026581 Int) ($bb4046583 (Array Int Int)) ($c4036582 Int) ($cc4056584 (Array Int Int)) ($aa4006579 (Array Int Int)) ($i4066585 Int) ($a4016580 Int) ($int6587 Int))
    (=> (and (<= (- 2147483648) $int6587)
             (<= $int6587 2147483647)
             (< $i4066585 100000)
             ($main_inv344 $aa4006579 $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 $i4066585 $x4076586))
        ($main_inv344 (store $aa4006579 $i4066585 $int6587) $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 (+ $i4066585 1) $x4076586))))

; backwards $main_sum344
(assert
  (forall (($x4076595 Int) ($x4076586 Int) ($b4026581 Int) ($bb4046583 (Array Int Int)) ($c4036582 Int) ($bb4046592 (Array Int Int)) ($cc4056584 (Array Int Int)) ($aa4006588 (Array Int Int)) ($a4016589 Int) ($b4026590 Int) ($a4016580 Int) ($int6587 Int) ($i4066594 Int) ($aa4006579 (Array Int Int)) ($cc4056593 (Array Int Int)) ($c4036591 Int) ($i4066585 Int))
    (=> (and ($main_sum344 (store $aa4006579 $i4066585 $int6587) $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 (+ $i4066585 1) $x4076586 $aa4006588 $a4016589 $b4026590 $c4036591 $bb4046592 $cc4056593 $i4066594 $x4076595)
             (<= (- 2147483648) $int6587)
             (<= $int6587 2147483647)
             (< $i4066585 100000))
        ($main_sum344 $aa4006579 $a4016580 $b4026581 $c4036582 $bb4046583 $cc4056584 $i4066585 $x4076586 $aa4006588 $a4016589 $b4026590 $c4036591 $bb4046592 $cc4056593 $i4066594 $x4076595))))

; loop entry $main_inv345
(assert
  (forall (($i406 Int) ($b402 Int) ($a401 Int) ($aa4006596 (Array Int Int)) ($i4066602 Int) ($cc4056601 (Array Int Int)) ($bb404 (Array Int Int)) ($b4026598 Int) ($a4016597 Int) ($c4036599 Int) ($aa400 (Array Int Int)) ($x407 Int) ($cc405 (Array Int Int)) ($x4076603 Int) ($c403 Int) ($bb4046600 (Array Int Int)))
    (=> (and ($main_sum344 $aa400 $a401 $b402 $c403 $bb404 $cc405 $i406 $x407 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603)
             (= $i406 0)
             (= $c403 0)
             (= $b402 0)
             (= $a401 0))
        ($main_inv345 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603))))

; loop term $main_sum345
(assert
  (forall (($x4076611 Int) ($i4066610 Int) ($cc4056609 (Array Int Int)) ($b4026606 Int) ($aa4006604 (Array Int Int)) ($c4036607 Int) ($a4016605 Int) ($bb4046608 (Array Int Int)))
    (=> (and (not (< $a4016605 100000)))
        ($main_sum345 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611))))

; if then
(assert
  (forall (($x4076611 Int) ($i4066610 Int) ($cc4056609 (Array Int Int)) ($b4026606 Int) ($aa4006604 (Array Int Int)) ($c4036607 Int) ($a4016605 Int) ($bb4046608 (Array Int Int)))
    (=> (and (>= (select $aa4006604 $a4016605) 0)
             (< $a4016605 100000)
             ($main_inv345 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611))
        ($main_if96 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006604 $a4016605 (+ $b4026606 1) $c4036607 (store $bb4046608 $b4026606 (select $aa4006604 $a4016605)) $cc4056609 $i4066610 $x4076611))))

; if else
(assert
  (forall (($x4076611 Int) ($i4066610 Int) ($cc4056609 (Array Int Int)) ($b4026606 Int) ($aa4006604 (Array Int Int)) ($c4036607 Int) ($a4016605 Int) ($bb4046608 (Array Int Int)))
    (=> (and (not (>= (select $aa4006604 $a4016605) 0))
             (< $a4016605 100000)
             ($main_inv345 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611))
        ($main_if96 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611))))

; forwards $main_inv345
(assert
  (forall (($a4016613 Int) ($b4026614 Int) ($bb4046616 (Array Int Int)) ($x4076611 Int) ($c4036615 Int) ($aa4006612 (Array Int Int)) ($i4066610 Int) ($x4076619 Int) ($i4066618 Int) ($cc4056617 (Array Int Int)) ($cc4056609 (Array Int Int)) ($b4026606 Int) ($aa4006604 (Array Int Int)) ($c4036607 Int) ($a4016605 Int) ($bb4046608 (Array Int Int)))
    (=> (and ($main_if96 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006612 $a4016613 $b4026614 $c4036615 $bb4046616 $cc4056617 $i4066618 $x4076619))
        ($main_inv345 $aa4006612 (+ $a4016613 1) $b4026614 $c4036615 $bb4046616 $cc4056617 $i4066618 $x4076619))))

; backwards $main_sum345
(assert
  (forall (($a4016613 Int) ($bb4046616 (Array Int Int)) ($c4036623 Int) ($i4066610 Int) ($x4076619 Int) ($i4066618 Int) ($cc4056617 (Array Int Int)) ($bb4046624 (Array Int Int)) ($b4026614 Int) ($b4026622 Int) ($x4076611 Int) ($a4016621 Int) ($c4036615 Int) ($i4066626 Int) ($aa4006620 (Array Int Int)) ($aa4006612 (Array Int Int)) ($cc4056609 (Array Int Int)) ($b4026606 Int) ($x4076627 Int) ($aa4006604 (Array Int Int)) ($c4036607 Int) ($a4016605 Int) ($cc4056625 (Array Int Int)) ($bb4046608 (Array Int Int)))
    (=> (and ($main_sum345 $aa4006612 (+ $a4016613 1) $b4026614 $c4036615 $bb4046616 $cc4056617 $i4066618 $x4076619 $aa4006620 $a4016621 $b4026622 $c4036623 $bb4046624 $cc4056625 $i4066626 $x4076627)
             ($main_if96 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006612 $a4016613 $b4026614 $c4036615 $bb4046616 $cc4056617 $i4066618 $x4076619))
        ($main_sum345 $aa4006604 $a4016605 $b4026606 $c4036607 $bb4046608 $cc4056609 $i4066610 $x4076611 $aa4006620 $a4016621 $b4026622 $c4036623 $bb4046624 $cc4056625 $i4066626 $x4076627))))

; loop entry $main_inv346
(assert
  (forall (($cc4056633 (Array Int Int)) ($aa4006628 (Array Int Int)) ($b402 Int) ($aa4006596 (Array Int Int)) ($i4066602 Int) ($cc4056601 (Array Int Int)) ($bb404 (Array Int Int)) ($b4026598 Int) ($c4036599 Int) ($aa400 (Array Int Int)) ($x407 Int) ($x4076603 Int) ($i406 Int) ($i4066634 Int) ($b4026630 Int) ($a401 Int) ($x4076635 Int) ($c403 Int) ($bb4046600 (Array Int Int)) ($c4036631 Int) ($a4016597 Int) ($bb4046632 (Array Int Int)) ($a4016629 Int) ($cc405 (Array Int Int)))
    (=> (and ($main_sum345 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603 $aa4006628 $a4016629 $b4026630 $c4036631 $bb4046632 $cc4056633 $i4066634 $x4076635)
             ($main_sum344 $aa400 $a401 $b402 $c403 $bb404 $cc405 $i406 $x407 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603)
             (= $i406 0)
             (= $c403 0)
             (= $b402 0)
             (= $a401 0))
        ($main_inv346 $aa4006628 0 $b4026630 $c4036631 $bb4046632 $cc4056633 $i4066634 $x4076635))))

; loop term $main_sum346
(assert
  (forall (($b4026638 Int) ($c4036639 Int) ($cc4056641 (Array Int Int)) ($x4076643 Int) ($bb4046640 (Array Int Int)) ($a4016637 Int) ($i4066642 Int) ($aa4006636 (Array Int Int)))
    (=> (and (not (< $a4016637 100000)))
        ($main_sum346 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643))))

; if then
(assert
  (forall (($b4026638 Int) ($c4036639 Int) ($cc4056641 (Array Int Int)) ($x4076643 Int) ($bb4046640 (Array Int Int)) ($a4016637 Int) ($i4066642 Int) ($aa4006636 (Array Int Int)))
    (=> (and (< (select $aa4006636 $a4016637) 0)
             (< $a4016637 100000)
             ($main_inv346 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643))
        ($main_if97 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006636 $a4016637 $b4026638 (+ $c4036639 1) $bb4046640 (store $cc4056641 $c4036639 (select $aa4006636 $a4016637)) $i4066642 $x4076643))))

; if else
(assert
  (forall (($b4026638 Int) ($c4036639 Int) ($cc4056641 (Array Int Int)) ($x4076643 Int) ($bb4046640 (Array Int Int)) ($a4016637 Int) ($i4066642 Int) ($aa4006636 (Array Int Int)))
    (=> (and (not (< (select $aa4006636 $a4016637) 0))
             (< $a4016637 100000)
             ($main_inv346 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643))
        ($main_if97 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643))))

; forwards $main_inv346
(assert
  (forall (($b4026646 Int) ($aa4006644 (Array Int Int)) ($c4036647 Int) ($c4036639 Int) ($x4076643 Int) ($i4066650 Int) ($b4026638 Int) ($a4016645 Int) ($bb4046640 (Array Int Int)) ($a4016637 Int) ($cc4056641 (Array Int Int)) ($x4076651 Int) ($i4066642 Int) ($cc4056649 (Array Int Int)) ($aa4006636 (Array Int Int)) ($bb4046648 (Array Int Int)))
    (=> (and ($main_if97 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006644 $a4016645 $b4026646 $c4036647 $bb4046648 $cc4056649 $i4066650 $x4076651))
        ($main_inv346 $aa4006644 (+ $a4016645 1) $b4026646 $c4036647 $bb4046648 $cc4056649 $i4066650 $x4076651))))

; backwards $main_sum346
(assert
  (forall (($b4026646 Int) ($i4066658 Int) ($aa4006644 (Array Int Int)) ($c4036639 Int) ($bb4046656 (Array Int Int)) ($a4016653 Int) ($x4076643 Int) ($cc4056657 (Array Int Int)) ($b4026638 Int) ($a4016645 Int) ($bb4046640 (Array Int Int)) ($a4016637 Int) ($c4036647 Int) ($b4026654 Int) ($cc4056641 (Array Int Int)) ($x4076659 Int) ($x4076651 Int) ($i4066642 Int) ($cc4056649 (Array Int Int)) ($aa4006636 (Array Int Int)) ($bb4046648 (Array Int Int)) ($c4036655 Int) ($aa4006652 (Array Int Int)) ($i4066650 Int))
    (=> (and ($main_sum346 $aa4006644 (+ $a4016645 1) $b4026646 $c4036647 $bb4046648 $cc4056649 $i4066650 $x4076651 $aa4006652 $a4016653 $b4026654 $c4036655 $bb4046656 $cc4056657 $i4066658 $x4076659)
             ($main_if97 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006644 $a4016645 $b4026646 $c4036647 $bb4046648 $cc4056649 $i4066650 $x4076651))
        ($main_sum346 $aa4006636 $a4016637 $b4026638 $c4036639 $bb4046640 $cc4056641 $i4066642 $x4076643 $aa4006652 $a4016653 $b4026654 $c4036655 $bb4046656 $cc4056657 $i4066658 $x4076659))))

; loop entry $main_inv347
(assert
  (forall (($cc4056633 (Array Int Int)) ($aa4006628 (Array Int Int)) ($b402 Int) ($a4016661 Int) ($aa4006596 (Array Int Int)) ($cc4056601 (Array Int Int)) ($bb404 (Array Int Int)) ($bb4046664 (Array Int Int)) ($c4036599 Int) ($aa400 (Array Int Int)) ($x4076603 Int) ($i406 Int) ($i4066634 Int) ($c4036663 Int) ($x4076667 Int) ($b4026630 Int) ($a401 Int) ($x4076635 Int) ($i4066602 Int) ($b4026662 Int) ($c403 Int) ($bb4046600 (Array Int Int)) ($aa4006660 (Array Int Int)) ($b4026598 Int) ($i4066666 Int) ($c4036631 Int) ($a4016597 Int) ($cc4056665 (Array Int Int)) ($x407 Int) ($bb4046632 (Array Int Int)) ($a4016629 Int) ($cc405 (Array Int Int)))
    (=> (and ($main_sum346 $aa4006628 0 $b4026630 $c4036631 $bb4046632 $cc4056633 $i4066634 $x4076635 $aa4006660 $a4016661 $b4026662 $c4036663 $bb4046664 $cc4056665 $i4066666 $x4076667)
             ($main_sum345 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603 $aa4006628 $a4016629 $b4026630 $c4036631 $bb4046632 $cc4056633 $i4066634 $x4076635)
             ($main_sum344 $aa400 $a401 $b402 $c403 $bb404 $cc405 $i406 $x407 $aa4006596 $a4016597 $b4026598 $c4036599 $bb4046600 $cc4056601 $i4066602 $x4076603)
             (= $i406 0)
             (= $c403 0)
             (= $b402 0)
             (= $a401 0))
        ($main_inv347 $aa4006660 $a4016661 $b4026662 $c4036663 $bb4046664 $cc4056665 $i4066666 0))))

; loop term $main_sum347
(assert
  (forall (($i4066674 Int) ($b4026670 Int) ($x4076675 Int) ($cc4056673 (Array Int Int)) ($aa4006668 (Array Int Int)) ($a4016669 Int) ($bb4046672 (Array Int Int)) ($c4036671 Int))
    (=> (and (not (< $x4076675 $b4026670)))
        ($main_sum347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 $x4076675 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 $x4076675))))

; __VERIFIER_assert precondition
(assert
  (forall (($i4066674 Int) ($b4026670 Int) ($x4076675 Int) ($cc4056673 (Array Int Int)) ($aa4006668 (Array Int Int)) ($a4016669 Int) ($bb4046672 (Array Int Int)) ($c4036671 Int))
    (=> (and (< $x4076675 $b4026670)
             ($main_inv347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 $x4076675))
        ($__VERIFIER_assert_pre (ite (>= (select $bb4046672 $x4076675) 0) 1 0)))))

; forwards $main_inv347
(assert
  (forall (($i4066674 Int) ($b4026670 Int) ($x4076675 Int) ($cc4056673 (Array Int Int)) ($aa4006668 (Array Int Int)) ($a4016669 Int) ($bb4046672 (Array Int Int)) ($c4036671 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb4046672 $x4076675) 0) 1 0))
             (< $x4076675 $b4026670)
             ($main_inv347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 $x4076675))
        ($main_inv347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 (+ $x4076675 1)))))

; backwards $main_sum347
(assert
  (forall (($i4066674 Int) ($x4076675 Int) ($cc4056673 (Array Int Int)) ($cc4056681 (Array Int Int)) ($a4016669 Int) ($c4036679 Int) ($i4066682 Int) ($bb4046680 (Array Int Int)) ($c4036671 Int) ($b4026678 Int) ($b4026670 Int) ($x4076683 Int) ($aa4006668 (Array Int Int)) ($aa4006676 (Array Int Int)) ($bb4046672 (Array Int Int)) ($a4016677 Int))
    (=> (and ($main_sum347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 (+ $x4076675 1) $aa4006676 $a4016677 $b4026678 $c4036679 $bb4046680 $cc4056681 $i4066682 $x4076683)
             (__VERIFIER_assert (ite (>= (select $bb4046672 $x4076675) 0) 1 0))
             (< $x4076675 $b4026670))
        ($main_sum347 $aa4006668 $a4016669 $b4026670 $c4036671 $bb4046672 $cc4056673 $i4066674 $x4076675 $aa4006676 $a4016677 $b4026678 $c4036679 $bb4046680 $cc4056681 $i4066682 $x4076683))))

(check-sat)
