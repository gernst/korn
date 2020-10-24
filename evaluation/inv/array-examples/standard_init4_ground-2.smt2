(set-logic HORN)

(declare-fun $main_sum242 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv242 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum241 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv240 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv243 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum240 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum239 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum243 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if72 (Int) Bool)
(declare-fun $main_inv241 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv239 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3735 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3735))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if72 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3736 Int))
    (=> (and ($__VERIFIER_assert_if72 cond3736))
        (__VERIFIER_assert cond3736))))

; loop entry $main_inv239
(assert
  (forall (($a337 (Array Int Int)) ($i338 Int) ($x339 Int))
    (=> (and (= $i338 0))
        ($main_inv239 $a337 $i338 $x339))))

; loop term $main_sum239
(assert
  (forall (($a3373737 (Array Int Int)) ($i3383738 Int) ($x3393739 Int))
    (=> (and (not (< $i3383738 100000))
             ($main_inv239 $a3373737 $i3383738 $x3393739))
        ($main_sum239 $a3373737 $i3383738 $x3393739))))

; forwards $main_inv239
(assert
  (forall (($a3373737 (Array Int Int)) ($i3383738 Int) ($x3393739 Int))
    (=> (and (< $i3383738 100000)
             ($main_inv239 $a3373737 $i3383738 $x3393739))
        ($main_inv239 (store $a3373737 $i3383738 42) (+ $i3383738 1) $x3393739))))

; loop entry $main_inv240
(assert
  (forall (($a3373740 (Array Int Int)) ($x3393742 Int) ($i3383741 Int))
    (=> (and ($main_sum239 $a3373740 $i3383741 $x3393742))
        ($main_inv240 $a3373740 0 $x3393742))))

; loop term $main_sum240
(assert
  (forall (($a3373743 (Array Int Int)) ($i3383744 Int) ($x3393745 Int))
    (=> (and (not (< $i3383744 100000))
             ($main_inv240 $a3373743 $i3383744 $x3393745))
        ($main_sum240 $a3373743 $i3383744 $x3393745))))

; forwards $main_inv240
(assert
  (forall (($a3373743 (Array Int Int)) ($i3383744 Int) ($x3393745 Int))
    (=> (and (< $i3383744 100000)
             ($main_inv240 $a3373743 $i3383744 $x3393745))
        ($main_inv240 (store $a3373743 $i3383744 43) (+ $i3383744 1) $x3393745))))

; loop entry $main_inv241
(assert
  (forall (($a3373746 (Array Int Int)) ($x3393748 Int) ($i3383747 Int))
    (=> (and ($main_sum240 $a3373746 $i3383747 $x3393748))
        ($main_inv241 $a3373746 0 $x3393748))))

; loop term $main_sum241
(assert
  (forall (($a3373749 (Array Int Int)) ($i3383750 Int) ($x3393751 Int))
    (=> (and (not (< $i3383750 100000))
             ($main_inv241 $a3373749 $i3383750 $x3393751))
        ($main_sum241 $a3373749 $i3383750 $x3393751))))

; forwards $main_inv241
(assert
  (forall (($a3373749 (Array Int Int)) ($i3383750 Int) ($x3393751 Int))
    (=> (and (< $i3383750 100000)
             ($main_inv241 $a3373749 $i3383750 $x3393751))
        ($main_inv241 (store $a3373749 $i3383750 44) (+ $i3383750 1) $x3393751))))

; loop entry $main_inv242
(assert
  (forall (($a3373752 (Array Int Int)) ($x3393754 Int) ($i3383753 Int))
    (=> (and ($main_sum241 $a3373752 $i3383753 $x3393754))
        ($main_inv242 $a3373752 0 $x3393754))))

; loop term $main_sum242
(assert
  (forall (($a3373755 (Array Int Int)) ($i3383756 Int) ($x3393757 Int))
    (=> (and (not (< $i3383756 100000))
             ($main_inv242 $a3373755 $i3383756 $x3393757))
        ($main_sum242 $a3373755 $i3383756 $x3393757))))

; forwards $main_inv242
(assert
  (forall (($a3373755 (Array Int Int)) ($i3383756 Int) ($x3393757 Int))
    (=> (and (< $i3383756 100000)
             ($main_inv242 $a3373755 $i3383756 $x3393757))
        ($main_inv242 (store $a3373755 $i3383756 45) (+ $i3383756 1) $x3393757))))

; loop entry $main_inv243
(assert
  (forall (($a3373758 (Array Int Int)) ($i3383759 Int) ($x3393760 Int))
    (=> (and ($main_sum242 $a3373758 $i3383759 $x3393760))
        ($main_inv243 $a3373758 $i3383759 0))))

; loop term $main_sum243
(assert
  (forall (($a3373761 (Array Int Int)) ($i3383762 Int) ($x3393763 Int))
    (=> (and (not (< $x3393763 100000))
             ($main_inv243 $a3373761 $i3383762 $x3393763))
        ($main_sum243 $a3373761 $i3383762 $x3393763))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3373761 (Array Int Int)) ($x3393763 Int) ($i3383762 Int))
    (=> (and (< $x3393763 100000)
             ($main_inv243 $a3373761 $i3383762 $x3393763))
        ($__VERIFIER_assert_pre (ite (= (select $a3373761 $x3393763) 45) 1 0)))))

; forwards $main_inv243
(assert
  (forall (($a3373761 (Array Int Int)) ($i3383762 Int) ($x3393763 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3373761 $x3393763) 45) 1 0))
             (< $x3393763 100000)
             ($main_inv243 $a3373761 $i3383762 $x3393763))
        ($main_inv243 $a3373761 $i3383762 (+ $x3393763 1)))))

(check-sat)
