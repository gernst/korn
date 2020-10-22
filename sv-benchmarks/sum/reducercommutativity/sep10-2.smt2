(set-logic HORN)

(declare-fun $sep_inv553 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum554 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv555 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv554 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $sep_sum553 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_if406 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum555 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if405 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)

; loop entry $sep_inv553
(assert
  (forall ((x (Array Int Int)) ($ret830 Int) ($i831 Int))
    (=> (and (= $i831 0)
             (= $ret830 0)
             ($sep_pre x))
        ($sep_inv553 x $ret830 $i831))))

; loop term $sep_sum553
(assert
  (forall ((x10648 (Array Int Int)) ($ret83010649 Int) ($i83110650 Int))
    (=> (and (not (< $i83110650 10)))
        ($sep_sum553 x10648 $ret83010649 $i83110650 x10648 $ret83010649 $i83110650))))

; if then
(assert
  (forall ((x10648 (Array Int Int)) ($ret83010649 Int) ($i83110650 Int))
    (=> (and (= (mod (select x10648 $i83110650) 2) 0)
             (< $i83110650 10)
             ($sep_inv553 x10648 $ret83010649 $i83110650))
        ($sep_if405 x10648 $ret83010649 $i83110650 x10648 (+ $ret83010649 1) $i83110650))))

; if else
(assert
  (forall ((x10648 (Array Int Int)) ($ret83010649 Int) ($i83110650 Int))
    (=> (and (not (= (mod (select x10648 $i83110650) 2) 0))
             (< $i83110650 10)
             ($sep_inv553 x10648 $ret83010649 $i83110650))
        ($sep_if405 x10648 $ret83010649 $i83110650 x10648 (- $ret83010649 1) $i83110650))))

; forwards $sep_inv553
(assert
  (forall ((x10648 (Array Int Int)) ($i83110653 Int) ($ret83010652 Int) ($i83110650 Int) ($ret83010649 Int) (x10651 (Array Int Int)))
    (=> (and ($sep_if405 x10648 $ret83010649 $i83110650 x10651 $ret83010652 $i83110653))
        ($sep_inv553 x10651 $ret83010652 (+ $i83110653 1)))))

; backwards $sep_sum553
(assert
  (forall (($i83110656 Int) (x10654 (Array Int Int)) (x10648 (Array Int Int)) ($i83110653 Int) ($ret83010652 Int) ($i83110650 Int) ($ret83010649 Int) (x10651 (Array Int Int)) ($ret83010655 Int))
    (=> (and ($sep_sum553 x10651 $ret83010652 (+ $i83110653 1) x10654 $ret83010655 $i83110656)
             ($sep_if405 x10648 $ret83010649 $i83110650 x10651 $ret83010652 $i83110653))
        ($sep_sum553 x10648 $ret83010649 $i83110650 x10654 $ret83010655 $i83110656))))

; post sep
(assert
  (forall (($i83110659 Int) (x (Array Int Int)) (x10657 (Array Int Int)) ($ret830 Int) ($i831 Int) ($ret83010658 Int))
    (=> (and ($sep_sum553 x $ret830 $i831 x10657 $ret83010658 $i83110659)
             (= $i831 0)
             (= $ret830 0)
             ($sep_pre x))
        (sep x10657 $ret83010658))))

; loop entry $main_inv554
(assert
  (forall (($temp833 Int) ($i838 Int) ($i837 Int) ($ret5836 Int) ($ret2835 Int) ($ret834 Int) ($x832 (Array Int Int)))
    (=> (and (= $i837 0))
        ($main_inv554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838))))

; loop term $main_sum554
(assert
  (forall (($ret283510663 Int) ($i83710665 Int) ($i83810666 Int) ($ret83410662 Int) ($x83210660 (Array Int Int)) ($ret583610664 Int) ($temp83310661 Int))
    (=> (and (not (< $i83710665 10)))
        ($main_sum554 $x83210660 $temp83310661 $ret83410662 $ret283510663 $ret583610664 $i83710665 $i83810666 $x83210660 $temp83310661 $ret83410662 $ret283510663 $ret583610664 $i83710665 $i83810666))))

; forwards $main_inv554
(assert
  (forall (($ret283510663 Int) ($i83710665 Int) ($i83810666 Int) ($ret83410662 Int) ($x83210660 (Array Int Int)) ($ret583610664 Int) ($int10667 Int) ($temp83310661 Int))
    (=> (and (<= (- 2147483648) $int10667)
             (<= $int10667 2147483647)
             (< $i83710665 10)
             ($main_inv554 $x83210660 $temp83310661 $ret83410662 $ret283510663 $ret583610664 $i83710665 $i83810666))
        ($main_inv554 (store $x83210660 $i83710665 $int10667) $temp83310661 $ret83410662 $ret283510663 $ret583610664 (+ $i83710665 1) $i83810666))))

; backwards $main_sum554
(assert
  (forall (($ret283510663 Int) ($i83710665 Int) ($i83810666 Int) ($i83710673 Int) ($ret83410662 Int) ($x83210660 (Array Int Int)) ($ret83410670 Int) ($x83210668 (Array Int Int)) ($ret283510671 Int) ($int10667 Int) ($ret583610672 Int) ($ret583610664 Int) ($i83810674 Int) ($temp83310661 Int) ($temp83310669 Int))
    (=> (and ($main_sum554 (store $x83210660 $i83710665 $int10667) $temp83310661 $ret83410662 $ret283510663 $ret583610664 (+ $i83710665 1) $i83810666 $x83210668 $temp83310669 $ret83410670 $ret283510671 $ret583610672 $i83710673 $i83810674)
             (<= (- 2147483648) $int10667)
             (<= $int10667 2147483647)
             (< $i83710665 10))
        ($main_sum554 $x83210660 $temp83310661 $ret83410662 $ret283510663 $ret583610664 $i83710665 $i83810666 $x83210668 $temp83310669 $ret83410670 $ret283510671 $ret583610672 $i83710673 $i83810674))))

; sep precondition
(assert
  (forall (($i83810681 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($i837 Int) ($ret283510678 Int) ($ret83410677 Int) ($ret5836 Int) ($ret834 Int) ($x832 (Array Int Int)) ($i83710680 Int) ($ret2835 Int))
    (=> (and ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($sep_pre $x83210675))))

; sep precondition
(assert
  (forall (($i83810681 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10682 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($i837 Int) ($ret283510678 Int) ($ret83410677 Int) ($ret5836 Int) ($ret834 Int) ($x832 (Array Int Int)) ($i83710680 Int) ($ret2835 Int))
    (=> (and (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($sep_pre (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0))))))

; loop entry $main_inv555
(assert
  (forall (($i83810681 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10682 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($i837 Int) ($ret283510678 Int) ($ret83410677 Int) ($ret5836 Int) ($ret834 Int) ($x832 (Array Int Int)) ($result10683 Int) ($i83710680 Int) ($ret2835 Int))
    (=> (and (= $i83810681 0)
             (sep (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) $result10683)
             (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($main_inv555 (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) (select (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) 0) $result10682 $result10683 $ret583610679 $i83710680 $i83810681))))

; loop term $main_sum555
(assert
  (forall (($temp83310685 Int) ($ret283510687 Int) ($x83210684 (Array Int Int)) ($ret583610688 Int) ($i83810690 Int) ($ret83410686 Int) ($i83710689 Int))
    (=> (and (not (< $i83810690 (- 10 1))))
        ($main_sum555 $x83210684 $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 $i83810690 $x83210684 $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 $i83810690))))

; forwards $main_inv555
(assert
  (forall (($temp83310685 Int) ($ret283510687 Int) ($x83210684 (Array Int Int)) ($ret583610688 Int) ($i83810690 Int) ($ret83410686 Int) ($i83710689 Int))
    (=> (and (< $i83810690 (- 10 1))
             ($main_inv555 $x83210684 $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 $i83810690))
        ($main_inv555 (store $x83210684 $i83810690 (select $x83210684 (+ $i83810690 1))) $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 (+ $i83810690 1)))))

; backwards $main_sum555
(assert
  (forall (($x83210691 (Array Int Int)) ($i83710696 Int) ($ret283510687 Int) ($ret83410693 Int) ($x83210684 (Array Int Int)) ($ret583610688 Int) ($i83810690 Int) ($ret583610695 Int) ($temp83310692 Int) ($temp83310685 Int) ($ret283510694 Int) ($i83810697 Int) ($ret83410686 Int) ($i83710689 Int))
    (=> (and ($main_sum555 (store $x83210684 $i83810690 (select $x83210684 (+ $i83810690 1))) $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 (+ $i83810690 1) $x83210691 $temp83310692 $ret83410693 $ret283510694 $ret583610695 $i83710696 $i83810697)
             (< $i83810690 (- 10 1)))
        ($main_sum555 $x83210684 $temp83310685 $ret83410686 $ret283510687 $ret583610688 $i83710689 $i83810690 $x83210691 $temp83310692 $ret83410693 $ret283510694 $ret583610695 $i83710696 $i83810697))))

; sep precondition
(assert
  (forall (($i83710703 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10682 Int) ($ret83410700 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($ret583610702 Int) ($i83810704 Int) ($i837 Int) ($ret283510678 Int) ($i83810681 Int) ($ret283510701 Int) ($ret834 Int) ($x832 (Array Int Int)) ($result10683 Int) ($ret83410677 Int) ($x83210698 (Array Int Int)) ($temp83310699 Int) ($ret5836 Int) ($i83710680 Int) ($ret2835 Int))
    (=> (and ($main_sum555 (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) (select (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) 0) $result10682 $result10683 $ret583610679 $i83710680 $i83810681 $x83210698 $temp83310699 $ret83410700 $ret283510701 $ret583610702 $i83710703 $i83810704)
             (= $i83810681 0)
             (sep (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) $result10683)
             (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($sep_pre (store $x83210698 (- 10 1) $temp83310699)))))

; error
(assert
  (forall (($i83710703 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10705 Int) ($result10682 Int) ($ret83410700 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($ret583610702 Int) ($i83810704 Int) ($i837 Int) ($ret283510678 Int) ($i83810681 Int) ($ret283510701 Int) ($ret834 Int) ($x832 (Array Int Int)) ($result10683 Int) ($ret83410677 Int) ($x83210698 (Array Int Int)) ($temp83310699 Int) ($ret5836 Int) ($i83710680 Int) ($ret2835 Int))
    (=> (and (or (not (= $ret83410700 $ret283510701)) (not (= $ret83410700 $result10705)))
             (sep (store $x83210698 (- 10 1) $temp83310699) $result10705)
             ($main_sum555 (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) (select (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) 0) $result10682 $result10683 $ret583610679 $i83710680 $i83810681 $x83210698 $temp83310699 $ret83410700 $ret283510701 $ret583610702 $i83710703 $i83810704)
             (= $i83810681 0)
             (sep (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) $result10683)
             (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        false)))

; if then
(assert
  (forall (($i83710703 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10705 Int) ($result10682 Int) ($ret83410700 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($ret583610702 Int) ($i83810704 Int) ($i837 Int) ($ret283510678 Int) ($i83810681 Int) ($ret283510701 Int) ($ret834 Int) ($x832 (Array Int Int)) ($result10683 Int) ($ret83410677 Int) ($x83210698 (Array Int Int)) ($temp83310699 Int) ($ret5836 Int) ($i83710680 Int) ($ret2835 Int))
    (=> (and (or (not (= $ret83410700 $ret283510701)) (not (= $ret83410700 $result10705)))
             (sep (store $x83210698 (- 10 1) $temp83310699) $result10705)
             ($main_sum555 (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) (select (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) 0) $result10682 $result10683 $ret583610679 $i83710680 $i83810681 $x83210698 $temp83310699 $ret83410700 $ret283510701 $ret583610702 $i83710703 $i83810704)
             (= $i83810681 0)
             (sep (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) $result10683)
             (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($main_if406 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 (store $x83210698 (- 10 1) $temp83310699) $temp83310699 $ret83410700 $ret283510701 $result10705 $i83710703 $i83810704))))

; if else
(assert
  (forall (($i83710703 Int) ($temp83310676 Int) ($temp833 Int) ($i838 Int) ($result10705 Int) ($result10682 Int) ($ret83410700 Int) ($ret583610679 Int) ($x83210675 (Array Int Int)) ($ret583610702 Int) ($i83810704 Int) ($i837 Int) ($ret283510678 Int) ($i83810681 Int) ($ret283510701 Int) ($ret834 Int) ($x832 (Array Int Int)) ($result10683 Int) ($ret83410677 Int) ($x83210698 (Array Int Int)) ($temp83310699 Int) ($ret5836 Int) ($i83710680 Int) ($ret2835 Int))
    (=> (and (not (or (not (= $ret83410700 $ret283510701)) (not (= $ret83410700 $result10705))))
             (sep (store $x83210698 (- 10 1) $temp83310699) $result10705)
             ($main_sum555 (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) (select (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) 0) $result10682 $result10683 $ret583610679 $i83710680 $i83810681 $x83210698 $temp83310699 $ret83410700 $ret283510701 $ret583610702 $i83710703 $i83810704)
             (= $i83810681 0)
             (sep (store (store $x83210675 0 (select $x83210675 1)) 1 (select $x83210675 0)) $result10683)
             (sep $x83210675 $result10682)
             ($main_sum554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 $x83210675 $temp83310676 $ret83410677 $ret283510678 $ret583610679 $i83710680 $i83810681)
             (= $i837 0))
        ($main_if406 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838 (store $x83210698 (- 10 1) $temp83310699) $temp83310699 $ret83410700 $ret283510701 $result10705 $i83710703 $i83810704))))

(check-sat)
