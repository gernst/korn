(set-logic HORN)

(declare-fun $main_if142 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv416 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if145 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if144 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv417 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum417 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if141 (Int Int) Bool)
(declare-fun $main_sum416 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if143 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7733 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7733))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if141 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7734 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if141 cond cond7734))
        (__VERIFIER_assert cond7734))))

; loop entry $main_inv416
(assert
  (forall (($a512 (Array Int Int)) ($b513 (Array Int Int)) ($c514 (Array Int Int)) ($q515 Int))
        ($main_inv416 0 $a512 $b513 $c514 $q515)))

; loop term $main_sum416
(assert
  (forall (($a5127736 (Array Int Int)) ($i5117735 Int) ($b5137737 (Array Int Int)) ($q5157739 Int) ($c5147738 (Array Int Int)))
    (=> (and (not (< $i5117735 100000)))
        ($main_sum416 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739))))

; if then
(assert
  (forall (($a5127736 (Array Int Int)) ($i5117735 Int) ($b5137737 (Array Int Int)) ($q5157739 Int) ($int7740 Int) ($c5147738 (Array Int Int)))
    (=> (and (= $q5157739 0)
             (= $q5157739 $int7740)
             (<= (- 2147483648) $int7740)
             (<= $int7740 2147483647)
             (< $i5117735 100000)
             ($main_inv416 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739))
        ($main_if142 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117735 (store (store $a5127736 $i5117735 0) $i5117735 1) (store $b5137737 $i5117735 (mod $i5117735 2)) $c5147738 $q5157739))))

; if else
(assert
  (forall (($a5127736 (Array Int Int)) ($i5117735 Int) ($b5137737 (Array Int Int)) ($q5157739 Int) ($int7740 Int) ($c5147738 (Array Int Int)))
    (=> (and (not (= $q5157739 0))
             (= $q5157739 $int7740)
             (<= (- 2147483648) $int7740)
             (<= $int7740 2147483647)
             (< $i5117735 100000)
             ($main_inv416 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739))
        ($main_if142 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117735 (store $a5127736 $i5117735 0) $b5137737 $c5147738 $q5157739))))

; if then
(assert
  (forall (($i5117735 Int) ($b5137737 (Array Int Int)) ($c5147744 (Array Int Int)) ($a5127742 (Array Int Int)) ($c5147738 (Array Int Int)) ($i5117741 Int) ($a5127736 (Array Int Int)) ($b5137743 (Array Int Int)) ($q5157745 Int) ($q5157739 Int))
    (=> (and (= (select $b5137743 $i5117741) 0)
             (not (= (select $a5127742 $i5117741) 0))
             ($main_if142 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 $c5147744 $q5157745))
        ($main_if143 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 (store $c5147744 $i5117741 0) $q5157745))))

; if else
(assert
  (forall (($i5117735 Int) ($b5137737 (Array Int Int)) ($c5147744 (Array Int Int)) ($a5127742 (Array Int Int)) ($c5147738 (Array Int Int)) ($i5117741 Int) ($a5127736 (Array Int Int)) ($b5137743 (Array Int Int)) ($q5157745 Int) ($q5157739 Int))
    (=> (and (not (= (select $b5137743 $i5117741) 0))
             (not (= (select $a5127742 $i5117741) 0))
             ($main_if142 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 $c5147744 $q5157745))
        ($main_if143 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 (store $c5147744 $i5117741 1) $q5157745))))

; if then
(assert
  (forall (($i5117746 Int) ($i5117735 Int) ($b5137737 (Array Int Int)) ($q5157739 Int) ($a5127736 (Array Int Int)) ($a5127747 (Array Int Int)) ($q5157750 Int) ($c5147749 (Array Int Int)) ($b5137748 (Array Int Int)) ($c5147738 (Array Int Int)))
    (=> (and ($main_if143 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117746 $a5127747 $b5137748 $c5147749 $q5157750))
        ($main_if144 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117746 $a5127747 $b5137748 $c5147749 $q5157750))))

; if else
(assert
  (forall (($i5117735 Int) ($b5137737 (Array Int Int)) ($c5147744 (Array Int Int)) ($a5127742 (Array Int Int)) ($c5147738 (Array Int Int)) ($i5117741 Int) ($a5127736 (Array Int Int)) ($b5137743 (Array Int Int)) ($q5157745 Int) ($q5157739 Int))
    (=> (and (= (select $a5127742 $i5117741) 0)
             ($main_if142 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 $c5147744 $q5157745))
        ($main_if144 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117741 $a5127742 $b5137743 $c5147744 $q5157745))))

; forwards $main_inv416
(assert
  (forall (($a5127736 (Array Int Int)) ($i5117735 Int) ($b5137737 (Array Int Int)) ($q5157755 Int) ($q5157739 Int) ($c5147754 (Array Int Int)) ($a5127752 (Array Int Int)) ($c5147738 (Array Int Int)) ($b5137753 (Array Int Int)) ($i5117751 Int))
    (=> (and ($main_if144 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117751 $a5127752 $b5137753 $c5147754 $q5157755))
        ($main_inv416 (+ $i5117751 1) $a5127752 $b5137753 $c5147754 $q5157755))))

; backwards $main_sum416
(assert
  (forall (($a5127736 (Array Int Int)) ($i5117735 Int) ($b5137758 (Array Int Int)) ($b5137737 (Array Int Int)) ($q5157755 Int) ($q5157739 Int) ($c5147754 (Array Int Int)) ($i5117756 Int) ($a5127757 (Array Int Int)) ($c5147759 (Array Int Int)) ($a5127752 (Array Int Int)) ($c5147738 (Array Int Int)) ($b5137753 (Array Int Int)) ($i5117751 Int) ($q5157760 Int))
    (=> (and ($main_sum416 (+ $i5117751 1) $a5127752 $b5137753 $c5147754 $q5157755 $i5117756 $a5127757 $b5137758 $c5147759 $q5157760)
             ($main_if144 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117751 $a5127752 $b5137753 $c5147754 $q5157755))
        ($main_sum416 $i5117735 $a5127736 $b5137737 $c5147738 $q5157739 $i5117756 $a5127757 $b5137758 $c5147759 $q5157760))))

; loop entry $main_inv417
(assert
  (forall (($c514 (Array Int Int)) ($a5127762 (Array Int Int)) ($q5157765 Int) ($b5137763 (Array Int Int)) ($a512 (Array Int Int)) ($c5147764 (Array Int Int)) ($b513 (Array Int Int)) ($q515 Int) ($i5117761 Int))
    (=> (and ($main_sum416 0 $a512 $b513 $c514 $q515 $i5117761 $a5127762 $b5137763 $c5147764 $q5157765))
        ($main_inv417 0 (store $a5127762 15000 1) $b5137763 $c5147764 $q5157765))))

; loop term $main_sum417
(assert
  (forall (($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($q5157770 Int) ($i5117766 Int) ($c5147769 (Array Int Int)))
    (=> (and (not (< $i5117766 100000)))
        ($main_sum417 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))))

; __VERIFIER_assert precondition
(assert
  (forall (($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($q5157770 Int) ($i5117766 Int) ($c5147769 (Array Int Int)))
    (=> (and (= $i5117766 15000)
             (< $i5117766 100000)
             ($main_inv417 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))
        ($__VERIFIER_assert_pre (ite (= (select $c5147769 $i5117766) 0) 1 0)))))

; if then
(assert
  (forall (($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($q5157770 Int) ($i5117766 Int) ($c5147769 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $c5147769 $i5117766) 0) 1 0))
             (= $i5117766 15000)
             (< $i5117766 100000)
             ($main_inv417 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))
        ($main_if145 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))))

; if else
(assert
  (forall (($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($q5157770 Int) ($i5117766 Int) ($c5147769 (Array Int Int)))
    (=> (and (not (= $i5117766 15000))
             (< $i5117766 100000)
             ($main_inv417 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))
        ($main_if145 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770))))

; forwards $main_inv417
(assert
  (forall (($c5147774 (Array Int Int)) ($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($q5157770 Int) ($i5117766 Int) ($b5137773 (Array Int Int)) ($c5147769 (Array Int Int)) ($a5127772 (Array Int Int)) ($i5117771 Int) ($q5157775 Int))
    (=> (and ($main_if145 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117771 $a5127772 $b5137773 $c5147774 $q5157775))
        ($main_inv417 (+ $i5117771 1) $a5127772 $b5137773 $c5147774 $q5157775))))

; backwards $main_sum417
(assert
  (forall (($c5147774 (Array Int Int)) ($b5137778 (Array Int Int)) ($a5127777 (Array Int Int)) ($c5147779 (Array Int Int)) ($a5127767 (Array Int Int)) ($b5137768 (Array Int Int)) ($i5117776 Int) ($q5157770 Int) ($q5157780 Int) ($i5117766 Int) ($b5137773 (Array Int Int)) ($c5147769 (Array Int Int)) ($a5127772 (Array Int Int)) ($i5117771 Int) ($q5157775 Int))
    (=> (and ($main_sum417 (+ $i5117771 1) $a5127772 $b5137773 $c5147774 $q5157775 $i5117776 $a5127777 $b5137778 $c5147779 $q5157780)
             ($main_if145 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117771 $a5127772 $b5137773 $c5147774 $q5157775))
        ($main_sum417 $i5117766 $a5127767 $b5137768 $c5147769 $q5157770 $i5117776 $a5127777 $b5137778 $c5147779 $q5157780))))

(check-sat)
