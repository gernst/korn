(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if352 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum510 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if349 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if351 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv510 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if350 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if349 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9719 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if349 cond cond9719))
        (assume_abort_if_not cond9719))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9720 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9720))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if350 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9721 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if350 cond cond9721))
        (__VERIFIER_assert cond9721))))

; if else
(assert
  (forall (($i718 Int) ($n719 Int) ($k720 Int) ($int9722 Int))
    (=> (and (<= $k720 1000000)
             (>= $k720 (- 1000000))
             (= $k720 $int9722)
             (<= (- 2147483648) $int9722)
             (<= $int9722 2147483647)
             (= $n719 0)
             (= $i718 0))
        ($main_if351 $i718 $n719 $k720 $i718 $n719 $k720))))

; loop entry $main_inv510
(assert
  (forall (($i7189723 Int) ($n719 Int) ($k720 Int) ($i718 Int) ($n7199724 Int) ($k7209725 Int))
    (=> (and ($main_if351 $i718 $n719 $k720 $i7189723 $n7199724 $k7209725))
        ($main_inv510 0 $n7199724 $k7209725))))

; loop term $main_sum510
(assert
  (forall (($i7189726 Int) ($n7199727 Int) ($k7209728 Int))
    (=> (and (not (< $i7189726 (* 2 $k7209728))))
        ($main_sum510 $i7189726 $n7199727 $k7209728 $i7189726 $n7199727 $k7209728))))

; if then
(assert
  (forall (($i7189726 Int) ($n7199727 Int) ($k7209728 Int))
    (=> (and (= (mod $i7189726 2) 0)
             (< $i7189726 (* 2 $k7209728))
             ($main_inv510 $i7189726 $n7199727 $k7209728))
        ($main_if352 $i7189726 $n7199727 $k7209728 $i7189726 (+ $n7199727 1) $k7209728))))

; if else
(assert
  (forall (($i7189726 Int) ($n7199727 Int) ($k7209728 Int))
    (=> (and (not (= (mod $i7189726 2) 0))
             (< $i7189726 (* 2 $k7209728))
             ($main_inv510 $i7189726 $n7199727 $k7209728))
        ($main_if352 $i7189726 $n7199727 $k7209728 $i7189726 $n7199727 $k7209728))))

; forwards $main_inv510
(assert
  (forall (($k7209728 Int) ($i7189726 Int) ($i7189729 Int) ($k7209731 Int) ($n7199730 Int) ($n7199727 Int))
    (=> (and ($main_if352 $i7189726 $n7199727 $k7209728 $i7189729 $n7199730 $k7209731))
        ($main_inv510 (+ $i7189729 1) $n7199730 $k7209731))))

; backwards $main_sum510
(assert
  (forall (($k7209728 Int) ($n7199733 Int) ($i7189726 Int) ($i7189729 Int) ($i7189732 Int) ($k7209731 Int) ($n7199730 Int) ($n7199727 Int) ($k7209734 Int))
    (=> (and ($main_sum510 (+ $i7189729 1) $n7199730 $k7209731 $i7189732 $n7199733 $k7209734)
             ($main_if352 $i7189726 $n7199727 $k7209728 $i7189729 $n7199730 $k7209731))
        ($main_sum510 $i7189726 $n7199727 $k7209728 $i7189732 $n7199733 $k7209734))))

; __VERIFIER_assert precondition
(assert
  (forall (($k7209737 Int) ($i7189723 Int) ($i7189735 Int) ($n719 Int) ($k720 Int) ($i718 Int) ($n7199736 Int) ($n7199724 Int) ($k7209725 Int))
    (=> (and ($main_sum510 0 $n7199724 $k7209725 $i7189735 $n7199736 $k7209737)
             ($main_if351 $i718 $n719 $k720 $i7189723 $n7199724 $k7209725))
        ($__VERIFIER_assert_pre (ite (or (< $k7209737 0) (= $n7199736 $k7209737)) 1 0)))))

(check-sat)
