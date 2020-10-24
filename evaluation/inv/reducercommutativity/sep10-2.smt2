(set-logic HORN)

(declare-fun $sep_inv553 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if406 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if405 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv555 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum553 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv554 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum555 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum554 ((Array Int Int) Int Int Int Int Int Int) Bool)
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
  (forall ((x7660 (Array Int Int)) ($ret8307661 Int) ($i8317662 Int))
    (=> (and (not (< $i8317662 10))
             ($sep_inv553 x7660 $ret8307661 $i8317662))
        ($sep_sum553 x7660 $ret8307661 $i8317662))))

; if then
(assert
  (forall ((x7660 (Array Int Int)) ($ret8307661 Int) ($i8317662 Int))
    (=> (and (= (mod (select x7660 $i8317662) 2) 0)
             (< $i8317662 10)
             ($sep_inv553 x7660 $ret8307661 $i8317662))
        ($sep_if405 x7660 (+ $ret8307661 1) $i8317662))))

; if else
(assert
  (forall ((x7660 (Array Int Int)) ($ret8307661 Int) ($i8317662 Int))
    (=> (and (not (= (mod (select x7660 $i8317662) 2) 0))
             (< $i8317662 10)
             ($sep_inv553 x7660 $ret8307661 $i8317662))
        ($sep_if405 x7660 (- $ret8307661 1) $i8317662))))

; forwards $sep_inv553
(assert
  (forall ((x7663 (Array Int Int)) ($ret8307664 Int) ($i8317665 Int))
    (=> (and ($sep_if405 x7663 $ret8307664 $i8317665))
        ($sep_inv553 x7663 $ret8307664 (+ $i8317665 1)))))

; post sep
(assert
  (forall ((x7666 (Array Int Int)) ($ret8307667 Int) ($i8317668 Int))
    (=> (and ($sep_sum553 x7666 $ret8307667 $i8317668))
        (sep x7666 $ret8307667))))

; loop entry $main_inv554
(assert
  (forall (($temp833 Int) ($i838 Int) ($i837 Int) ($ret5836 Int) ($ret2835 Int) ($ret834 Int) ($x832 (Array Int Int)))
    (=> (and (= $i837 0))
        ($main_inv554 $x832 $temp833 $ret834 $ret2835 $ret5836 $i837 $i838))))

; loop term $main_sum554
(assert
  (forall (($temp8337670 Int) ($x8327669 (Array Int Int)) ($ret58367673 Int) ($i8377674 Int) ($ret28357672 Int) ($ret8347671 Int) ($i8387675 Int))
    (=> (and (not (< $i8377674 10))
             ($main_inv554 $x8327669 $temp8337670 $ret8347671 $ret28357672 $ret58367673 $i8377674 $i8387675))
        ($main_sum554 $x8327669 $temp8337670 $ret8347671 $ret28357672 $ret58367673 $i8377674 $i8387675))))

; forwards $main_inv554
(assert
  (forall (($temp8337670 Int) ($x8327669 (Array Int Int)) ($ret58367673 Int) ($i8377674 Int) ($ret28357672 Int) ($int7676 Int) ($ret8347671 Int) ($i8387675 Int))
    (=> (and (<= (- 2147483648) $int7676)
             (<= $int7676 2147483647)
             (< $i8377674 10)
             ($main_inv554 $x8327669 $temp8337670 $ret8347671 $ret28357672 $ret58367673 $i8377674 $i8387675))
        ($main_inv554 (store $x8327669 $i8377674 $int7676) $temp8337670 $ret8347671 $ret28357672 $ret58367673 (+ $i8377674 1) $i8387675))))

; sep precondition
(assert
  (forall (($ret8347679 Int) ($i8387683 Int) ($ret28357680 Int) ($x8327677 (Array Int Int)) ($ret58367681 Int) ($temp8337678 Int) ($i8377682 Int))
    (=> (and ($main_sum554 $x8327677 $temp8337678 $ret8347679 $ret28357680 $ret58367681 $i8377682 $i8387683))
        ($sep_pre $x8327677))))

; sep precondition
(assert
  (forall (($ret8347679 Int) ($result7684 Int) ($i8387683 Int) ($ret28357680 Int) ($x8327677 (Array Int Int)) ($ret58367681 Int) ($temp8337678 Int) ($i8377682 Int))
    (=> (and (sep $x8327677 $result7684)
             ($main_sum554 $x8327677 $temp8337678 $ret8347679 $ret28357680 $ret58367681 $i8377682 $i8387683))
        ($sep_pre (store (store $x8327677 0 (select $x8327677 1)) 1 (select $x8327677 0))))))

; loop entry $main_inv555
(assert
  (forall (($ret8347679 Int) ($i8387683 Int) ($ret28357680 Int) ($x8327677 (Array Int Int)) ($ret58367681 Int) ($temp8337678 Int) ($i8377682 Int) ($result7684 Int) ($result7685 Int))
    (=> (and (= $i8387683 0)
             (sep (store (store $x8327677 0 (select $x8327677 1)) 1 (select $x8327677 0)) $result7685)
             (sep $x8327677 $result7684)
             ($main_sum554 $x8327677 $temp8337678 $ret8347679 $ret28357680 $ret58367681 $i8377682 $i8387683))
        ($main_inv555 (store (store $x8327677 0 (select $x8327677 1)) 1 (select $x8327677 0)) (select (store (store $x8327677 0 (select $x8327677 1)) 1 (select $x8327677 0)) 0) $result7684 $result7685 $ret58367681 $i8377682 $i8387683))))

; loop term $main_sum555
(assert
  (forall (($ret8347688 Int) ($ret58367690 Int) ($i8387692 Int) ($ret28357689 Int) ($i8377691 Int) ($temp8337687 Int) ($x8327686 (Array Int Int)))
    (=> (and (not (< $i8387692 (- 10 1)))
             ($main_inv555 $x8327686 $temp8337687 $ret8347688 $ret28357689 $ret58367690 $i8377691 $i8387692))
        ($main_sum555 $x8327686 $temp8337687 $ret8347688 $ret28357689 $ret58367690 $i8377691 $i8387692))))

; forwards $main_inv555
(assert
  (forall (($ret8347688 Int) ($ret58367690 Int) ($i8387692 Int) ($ret28357689 Int) ($i8377691 Int) ($temp8337687 Int) ($x8327686 (Array Int Int)))
    (=> (and (< $i8387692 (- 10 1))
             ($main_inv555 $x8327686 $temp8337687 $ret8347688 $ret28357689 $ret58367690 $i8377691 $i8387692))
        ($main_inv555 (store $x8327686 $i8387692 (select $x8327686 (+ $i8387692 1))) $temp8337687 $ret8347688 $ret28357689 $ret58367690 $i8377691 (+ $i8387692 1)))))

; sep precondition
(assert
  (forall (($i8377698 Int) ($ret28357696 Int) ($ret58367697 Int) ($x8327693 (Array Int Int)) ($temp8337694 Int) ($ret8347695 Int) ($i8387699 Int))
    (=> (and ($main_sum555 $x8327693 $temp8337694 $ret8347695 $ret28357696 $ret58367697 $i8377698 $i8387699))
        ($sep_pre (store $x8327693 (- 10 1) $temp8337694)))))

; error
(assert
  (forall (($i8377698 Int) ($ret28357696 Int) ($ret58367697 Int) ($x8327693 (Array Int Int)) ($temp8337694 Int) ($ret8347695 Int) ($i8387699 Int) ($result7700 Int))
    (=> (and (or (not (= $ret8347695 $ret28357696)) (not (= $ret8347695 $result7700)))
             (sep (store $x8327693 (- 10 1) $temp8337694) $result7700)
             ($main_sum555 $x8327693 $temp8337694 $ret8347695 $ret28357696 $ret58367697 $i8377698 $i8387699))
        false)))

; if then
(assert
  (forall (($i8377698 Int) ($ret28357696 Int) ($ret58367697 Int) ($x8327693 (Array Int Int)) ($temp8337694 Int) ($ret8347695 Int) ($i8387699 Int) ($result7700 Int))
    (=> (and (or (not (= $ret8347695 $ret28357696)) (not (= $ret8347695 $result7700)))
             (sep (store $x8327693 (- 10 1) $temp8337694) $result7700)
             ($main_sum555 $x8327693 $temp8337694 $ret8347695 $ret28357696 $ret58367697 $i8377698 $i8387699))
        ($main_if406 (store $x8327693 (- 10 1) $temp8337694) $temp8337694 $ret8347695 $ret28357696 $result7700 $i8377698 $i8387699))))

; if else
(assert
  (forall (($i8377698 Int) ($ret28357696 Int) ($ret58367697 Int) ($x8327693 (Array Int Int)) ($temp8337694 Int) ($ret8347695 Int) ($i8387699 Int) ($result7700 Int))
    (=> (and (not (or (not (= $ret8347695 $ret28357696)) (not (= $ret8347695 $result7700))))
             (sep (store $x8327693 (- 10 1) $temp8337694) $result7700)
             ($main_sum555 $x8327693 $temp8337694 $ret8347695 $ret28357696 $ret58367697 $i8377698 $i8387699))
        ($main_if406 (store $x8327693 (- 10 1) $temp8337694) $temp8337694 $ret8347695 $ret28357696 $result7700 $i8377698 $i8387699))))

(check-sat)
