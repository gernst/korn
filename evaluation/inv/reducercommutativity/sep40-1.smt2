(set-logic HORN)

(declare-fun $main_if410 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum559 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv560 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum561 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv559 ((Array Int Int) Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $sep_if409 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum560 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv561 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)

; loop entry $sep_inv559
(assert
  (forall ((x (Array Int Int)) ($ret848 Int) ($i849 Int))
    (=> (and (= $i849 0)
             (= $ret848 0)
             ($sep_pre x))
        ($sep_inv559 x $ret848 $i849))))

; loop term $sep_sum559
(assert
  (forall ((x7756 (Array Int Int)) ($ret8487757 Int) ($i8497758 Int))
    (=> (and (not (< $i8497758 40))
             ($sep_inv559 x7756 $ret8487757 $i8497758))
        ($sep_sum559 x7756 $ret8487757 $i8497758))))

; if then
(assert
  (forall ((x7756 (Array Int Int)) ($ret8487757 Int) ($i8497758 Int))
    (=> (and (= (mod (select x7756 $i8497758) 2) 0)
             (< $i8497758 40)
             ($sep_inv559 x7756 $ret8487757 $i8497758))
        ($sep_if409 x7756 (+ $ret8487757 1) $i8497758))))

; if else
(assert
  (forall ((x7756 (Array Int Int)) ($ret8487757 Int) ($i8497758 Int))
    (=> (and (not (= (mod (select x7756 $i8497758) 2) 0))
             (< $i8497758 40)
             ($sep_inv559 x7756 $ret8487757 $i8497758))
        ($sep_if409 x7756 (- $ret8487757 1) $i8497758))))

; forwards $sep_inv559
(assert
  (forall ((x7759 (Array Int Int)) ($ret8487760 Int) ($i8497761 Int))
    (=> (and ($sep_if409 x7759 $ret8487760 $i8497761))
        ($sep_inv559 x7759 $ret8487760 (+ $i8497761 1)))))

; post sep
(assert
  (forall ((x7762 (Array Int Int)) ($ret8487763 Int) ($i8497764 Int))
    (=> (and ($sep_sum559 x7762 $ret8487763 $i8497764))
        (sep x7762 $ret8487763))))

; loop entry $main_inv560
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($temp851 Int) ($ret852 Int) ($i856 Int) ($x850 (Array Int Int)))
    (=> (and (= $i855 0))
        ($main_inv560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856))))

; loop term $main_sum560
(assert
  (forall (($ret8527767 Int) ($ret58547769 Int) ($i8567771 Int) ($temp8517766 Int) ($x8507765 (Array Int Int)) ($ret28537768 Int) ($i8557770 Int))
    (=> (and (not (< $i8557770 40))
             ($main_inv560 $x8507765 $temp8517766 $ret8527767 $ret28537768 $ret58547769 $i8557770 $i8567771))
        ($main_sum560 $x8507765 $temp8517766 $ret8527767 $ret28537768 $ret58547769 $i8557770 $i8567771))))

; forwards $main_inv560
(assert
  (forall (($ret8527767 Int) ($ret58547769 Int) ($temp8517766 Int) ($x8507765 (Array Int Int)) ($ret28537768 Int) ($i8557770 Int) ($i8567771 Int) ($int7772 Int))
    (=> (and (<= (- 2147483648) $int7772)
             (<= $int7772 2147483647)
             (< $i8557770 40)
             ($main_inv560 $x8507765 $temp8517766 $ret8527767 $ret28537768 $ret58547769 $i8557770 $i8567771))
        ($main_inv560 (store $x8507765 $i8557770 $int7772) $temp8517766 $ret8527767 $ret28537768 $ret58547769 (+ $i8557770 1) $i8567771))))

; sep precondition
(assert
  (forall (($ret8527775 Int) ($i8567779 Int) ($temp8517774 Int) ($ret28537776 Int) ($i8557778 Int) ($ret58547777 Int) ($x8507773 (Array Int Int)))
    (=> (and ($main_sum560 $x8507773 $temp8517774 $ret8527775 $ret28537776 $ret58547777 $i8557778 $i8567779))
        ($sep_pre $x8507773))))

; sep precondition
(assert
  (forall (($result7780 Int) ($ret8527775 Int) ($i8567779 Int) ($temp8517774 Int) ($ret28537776 Int) ($i8557778 Int) ($ret58547777 Int) ($x8507773 (Array Int Int)))
    (=> (and (sep $x8507773 $result7780)
             ($main_sum560 $x8507773 $temp8517774 $ret8527775 $ret28537776 $ret58547777 $i8557778 $i8567779))
        ($sep_pre (store (store $x8507773 0 (select $x8507773 1)) 1 (select $x8507773 0))))))

; loop entry $main_inv561
(assert
  (forall (($result7780 Int) ($ret8527775 Int) ($i8567779 Int) ($temp8517774 Int) ($ret28537776 Int) ($result7781 Int) ($i8557778 Int) ($ret58547777 Int) ($x8507773 (Array Int Int)))
    (=> (and (= $i8567779 0)
             (sep (store (store $x8507773 0 (select $x8507773 1)) 1 (select $x8507773 0)) $result7781)
             (sep $x8507773 $result7780)
             ($main_sum560 $x8507773 $temp8517774 $ret8527775 $ret28537776 $ret58547777 $i8557778 $i8567779))
        ($main_inv561 (store (store $x8507773 0 (select $x8507773 1)) 1 (select $x8507773 0)) (select (store (store $x8507773 0 (select $x8507773 1)) 1 (select $x8507773 0)) 0) $result7780 $result7781 $ret58547777 $i8557778 $i8567779))))

; loop term $main_sum561
(assert
  (forall (($temp8517783 Int) ($ret8527784 Int) ($ret28537785 Int) ($i8567788 Int) ($ret58547786 Int) ($i8557787 Int) ($x8507782 (Array Int Int)))
    (=> (and (not (< $i8567788 (- 40 1)))
             ($main_inv561 $x8507782 $temp8517783 $ret8527784 $ret28537785 $ret58547786 $i8557787 $i8567788))
        ($main_sum561 $x8507782 $temp8517783 $ret8527784 $ret28537785 $ret58547786 $i8557787 $i8567788))))

; forwards $main_inv561
(assert
  (forall (($temp8517783 Int) ($ret8527784 Int) ($ret28537785 Int) ($i8567788 Int) ($ret58547786 Int) ($i8557787 Int) ($x8507782 (Array Int Int)))
    (=> (and (< $i8567788 (- 40 1))
             ($main_inv561 $x8507782 $temp8517783 $ret8527784 $ret28537785 $ret58547786 $i8557787 $i8567788))
        ($main_inv561 (store $x8507782 $i8567788 (select $x8507782 (+ $i8567788 1))) $temp8517783 $ret8527784 $ret28537785 $ret58547786 $i8557787 (+ $i8567788 1)))))

; sep precondition
(assert
  (forall (($i8567795 Int) ($x8507789 (Array Int Int)) ($ret8527791 Int) ($ret58547793 Int) ($temp8517790 Int) ($ret28537792 Int) ($i8557794 Int))
    (=> (and ($main_sum561 $x8507789 $temp8517790 $ret8527791 $ret28537792 $ret58547793 $i8557794 $i8567795))
        ($sep_pre (store $x8507789 (- 40 1) $temp8517790)))))

; error
(assert
  (forall (($i8567795 Int) ($x8507789 (Array Int Int)) ($ret8527791 Int) ($ret58547793 Int) ($temp8517790 Int) ($ret28537792 Int) ($result7796 Int) ($i8557794 Int))
    (=> (and (or (not (= $ret8527791 $ret28537792)) (not (= $ret8527791 $result7796)))
             (sep (store $x8507789 (- 40 1) $temp8517790) $result7796)
             ($main_sum561 $x8507789 $temp8517790 $ret8527791 $ret28537792 $ret58547793 $i8557794 $i8567795))
        false)))

; if then
(assert
  (forall (($i8567795 Int) ($x8507789 (Array Int Int)) ($ret8527791 Int) ($ret58547793 Int) ($temp8517790 Int) ($ret28537792 Int) ($result7796 Int) ($i8557794 Int))
    (=> (and (or (not (= $ret8527791 $ret28537792)) (not (= $ret8527791 $result7796)))
             (sep (store $x8507789 (- 40 1) $temp8517790) $result7796)
             ($main_sum561 $x8507789 $temp8517790 $ret8527791 $ret28537792 $ret58547793 $i8557794 $i8567795))
        ($main_if410 (store $x8507789 (- 40 1) $temp8517790) $temp8517790 $ret8527791 $ret28537792 $result7796 $i8557794 $i8567795))))

; if else
(assert
  (forall (($i8567795 Int) ($x8507789 (Array Int Int)) ($ret8527791 Int) ($ret58547793 Int) ($temp8517790 Int) ($ret28537792 Int) ($result7796 Int) ($i8557794 Int))
    (=> (and (not (or (not (= $ret8527791 $ret28537792)) (not (= $ret8527791 $result7796))))
             (sep (store $x8507789 (- 40 1) $temp8517790) $result7796)
             ($main_sum561 $x8507789 $temp8517790 $ret8527791 $ret28537792 $ret58547793 $i8557794 $i8567795))
        ($main_if410 (store $x8507789 (- 40 1) $temp8517790) $temp8517790 $ret8527791 $ret28537792 $result7796 $i8557794 $i8567795))))

(check-sat)
