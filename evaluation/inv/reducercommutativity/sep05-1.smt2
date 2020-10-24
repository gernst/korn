(set-logic HORN)

(declare-fun $main_sum551 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if403 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum552 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_if404 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv552 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv550 ((Array Int Int) Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)
(declare-fun $main_inv551 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum550 ((Array Int Int) Int Int) Bool)

; loop entry $sep_inv550
(assert
  (forall ((x (Array Int Int)) ($ret821 Int) ($i822 Int))
    (=> (and (= $i822 0)
             (= $ret821 0)
             ($sep_pre x))
        ($sep_inv550 x $ret821 $i822))))

; loop term $sep_sum550
(assert
  (forall ((x7612 (Array Int Int)) ($ret8217613 Int) ($i8227614 Int))
    (=> (and (not (< $i8227614 5))
             ($sep_inv550 x7612 $ret8217613 $i8227614))
        ($sep_sum550 x7612 $ret8217613 $i8227614))))

; if then
(assert
  (forall ((x7612 (Array Int Int)) ($ret8217613 Int) ($i8227614 Int))
    (=> (and (= (mod (select x7612 $i8227614) 2) 0)
             (< $i8227614 5)
             ($sep_inv550 x7612 $ret8217613 $i8227614))
        ($sep_if403 x7612 (+ $ret8217613 1) $i8227614))))

; if else
(assert
  (forall ((x7612 (Array Int Int)) ($ret8217613 Int) ($i8227614 Int))
    (=> (and (not (= (mod (select x7612 $i8227614) 2) 0))
             (< $i8227614 5)
             ($sep_inv550 x7612 $ret8217613 $i8227614))
        ($sep_if403 x7612 (- $ret8217613 1) $i8227614))))

; forwards $sep_inv550
(assert
  (forall ((x7615 (Array Int Int)) ($ret8217616 Int) ($i8227617 Int))
    (=> (and ($sep_if403 x7615 $ret8217616 $i8227617))
        ($sep_inv550 x7615 $ret8217616 (+ $i8227617 1)))))

; post sep
(assert
  (forall ((x7618 (Array Int Int)) ($ret8217619 Int) ($i8227620 Int))
    (=> (and ($sep_sum550 x7618 $ret8217619 $i8227620))
        (sep x7618 $ret8217619))))

; loop entry $main_inv551
(assert
  (forall (($x823 (Array Int Int)) ($i828 Int) ($ret825 Int) ($temp824 Int) ($i829 Int) ($ret2826 Int) ($ret5827 Int))
    (=> (and (= $i828 0))
        ($main_inv551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829))))

; loop term $main_sum551
(assert
  (forall (($x8237621 (Array Int Int)) ($ret8257623 Int) ($temp8247622 Int) ($ret28267624 Int) ($ret58277625 Int) ($i8297627 Int) ($i8287626 Int))
    (=> (and (not (< $i8287626 5))
             ($main_inv551 $x8237621 $temp8247622 $ret8257623 $ret28267624 $ret58277625 $i8287626 $i8297627))
        ($main_sum551 $x8237621 $temp8247622 $ret8257623 $ret28267624 $ret58277625 $i8287626 $i8297627))))

; forwards $main_inv551
(assert
  (forall (($int7628 Int) ($x8237621 (Array Int Int)) ($ret8257623 Int) ($temp8247622 Int) ($ret28267624 Int) ($ret58277625 Int) ($i8297627 Int) ($i8287626 Int))
    (=> (and (<= (- 2147483648) $int7628)
             (<= $int7628 2147483647)
             (< $i8287626 5)
             ($main_inv551 $x8237621 $temp8247622 $ret8257623 $ret28267624 $ret58277625 $i8287626 $i8297627))
        ($main_inv551 (store $x8237621 $i8287626 $int7628) $temp8247622 $ret8257623 $ret28267624 $ret58277625 (+ $i8287626 1) $i8297627))))

; sep precondition
(assert
  (forall (($i8287634 Int) ($ret58277633 Int) ($temp8247630 Int) ($i8297635 Int) ($x8237629 (Array Int Int)) ($ret28267632 Int) ($ret8257631 Int))
    (=> (and ($main_sum551 $x8237629 $temp8247630 $ret8257631 $ret28267632 $ret58277633 $i8287634 $i8297635))
        ($sep_pre $x8237629))))

; sep precondition
(assert
  (forall (($result7636 Int) ($i8287634 Int) ($ret58277633 Int) ($temp8247630 Int) ($i8297635 Int) ($x8237629 (Array Int Int)) ($ret28267632 Int) ($ret8257631 Int))
    (=> (and (sep $x8237629 $result7636)
             ($main_sum551 $x8237629 $temp8247630 $ret8257631 $ret28267632 $ret58277633 $i8287634 $i8297635))
        ($sep_pre (store (store $x8237629 0 (select $x8237629 1)) 1 (select $x8237629 0))))))

; loop entry $main_inv552
(assert
  (forall (($result7636 Int) ($i8287634 Int) ($ret58277633 Int) ($result7637 Int) ($temp8247630 Int) ($i8297635 Int) ($x8237629 (Array Int Int)) ($ret28267632 Int) ($ret8257631 Int))
    (=> (and (= $i8297635 0)
             (sep (store (store $x8237629 0 (select $x8237629 1)) 1 (select $x8237629 0)) $result7637)
             (sep $x8237629 $result7636)
             ($main_sum551 $x8237629 $temp8247630 $ret8257631 $ret28267632 $ret58277633 $i8287634 $i8297635))
        ($main_inv552 (store (store $x8237629 0 (select $x8237629 1)) 1 (select $x8237629 0)) (select (store (store $x8237629 0 (select $x8237629 1)) 1 (select $x8237629 0)) 0) $result7636 $result7637 $ret58277633 $i8287634 $i8297635))))

; loop term $main_sum552
(assert
  (forall (($i8297644 Int) ($x8237638 (Array Int Int)) ($ret8257640 Int) ($ret58277642 Int) ($ret28267641 Int) ($temp8247639 Int) ($i8287643 Int))
    (=> (and (not (< $i8297644 (- 5 1)))
             ($main_inv552 $x8237638 $temp8247639 $ret8257640 $ret28267641 $ret58277642 $i8287643 $i8297644))
        ($main_sum552 $x8237638 $temp8247639 $ret8257640 $ret28267641 $ret58277642 $i8287643 $i8297644))))

; forwards $main_inv552
(assert
  (forall (($i8297644 Int) ($x8237638 (Array Int Int)) ($ret8257640 Int) ($ret58277642 Int) ($ret28267641 Int) ($temp8247639 Int) ($i8287643 Int))
    (=> (and (< $i8297644 (- 5 1))
             ($main_inv552 $x8237638 $temp8247639 $ret8257640 $ret28267641 $ret58277642 $i8287643 $i8297644))
        ($main_inv552 (store $x8237638 $i8297644 (select $x8237638 (+ $i8297644 1))) $temp8247639 $ret8257640 $ret28267641 $ret58277642 $i8287643 (+ $i8297644 1)))))

; sep precondition
(assert
  (forall (($ret8257647 Int) ($temp8247646 Int) ($ret58277649 Int) ($i8287650 Int) ($ret28267648 Int) ($x8237645 (Array Int Int)) ($i8297651 Int))
    (=> (and ($main_sum552 $x8237645 $temp8247646 $ret8257647 $ret28267648 $ret58277649 $i8287650 $i8297651))
        ($sep_pre (store $x8237645 (- 5 1) $temp8247646)))))

; error
(assert
  (forall (($ret8257647 Int) ($result7652 Int) ($temp8247646 Int) ($ret58277649 Int) ($i8287650 Int) ($ret28267648 Int) ($x8237645 (Array Int Int)) ($i8297651 Int))
    (=> (and (or (not (= $ret8257647 $ret28267648)) (not (= $ret8257647 $result7652)))
             (sep (store $x8237645 (- 5 1) $temp8247646) $result7652)
             ($main_sum552 $x8237645 $temp8247646 $ret8257647 $ret28267648 $ret58277649 $i8287650 $i8297651))
        false)))

; if then
(assert
  (forall (($ret8257647 Int) ($result7652 Int) ($temp8247646 Int) ($ret58277649 Int) ($i8287650 Int) ($ret28267648 Int) ($x8237645 (Array Int Int)) ($i8297651 Int))
    (=> (and (or (not (= $ret8257647 $ret28267648)) (not (= $ret8257647 $result7652)))
             (sep (store $x8237645 (- 5 1) $temp8247646) $result7652)
             ($main_sum552 $x8237645 $temp8247646 $ret8257647 $ret28267648 $ret58277649 $i8287650 $i8297651))
        ($main_if404 (store $x8237645 (- 5 1) $temp8247646) $temp8247646 $ret8257647 $ret28267648 $result7652 $i8287650 $i8297651))))

; if else
(assert
  (forall (($ret8257647 Int) ($result7652 Int) ($temp8247646 Int) ($ret58277649 Int) ($i8287650 Int) ($ret28267648 Int) ($x8237645 (Array Int Int)) ($i8297651 Int))
    (=> (and (not (or (not (= $ret8257647 $ret28267648)) (not (= $ret8257647 $result7652))))
             (sep (store $x8237645 (- 5 1) $temp8247646) $result7652)
             ($main_sum552 $x8237645 $temp8247646 $ret8257647 $ret28267648 $ret58277649 $i8287650 $i8297651))
        ($main_if404 (store $x8237645 (- 5 1) $temp8247646) $temp8247646 $ret8257647 $ret28267648 $result7652 $i8287650 $i8297651))))

(check-sat)
