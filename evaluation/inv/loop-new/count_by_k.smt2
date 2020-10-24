(set-logic HORN)

(declare-fun $assume_abort_if_not_if340 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum507 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if342 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv507 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if341 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if340 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6914 Int))
    (=> (and ($assume_abort_if_not_if340 cond6914))
        (assume_abort_if_not cond6914))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6915 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6915))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if341 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6916 Int))
    (=> (and ($__VERIFIER_assert_if341 cond6916))
        (__VERIFIER_assert cond6916))))

; if else
(assert
  (forall (($i710 Int) ($int6917 Int))
    (=> (and (<= 0 $int6917)
             (<= $int6917 10)
             (<= (- 2147483648) $int6917)
             (<= $int6917 2147483647))
        ($main_if342 $i710 $int6917))))

; loop entry $main_inv507
(assert
  (forall (($k7116919 Int) ($i7106918 Int))
    (=> (and ($main_if342 $i7106918 $k7116919))
        ($main_inv507 0 $k7116919))))

; loop term $main_sum507
(assert
  (forall (($i7106920 Int) ($k7116921 Int))
    (=> (and (not (< $i7106920 (* 1000000 $k7116921)))
             ($main_inv507 $i7106920 $k7116921))
        ($main_sum507 $i7106920 $k7116921))))

; forwards $main_inv507
(assert
  (forall (($i7106920 Int) ($k7116921 Int))
    (=> (and (< $i7106920 (* 1000000 $k7116921))
             ($main_inv507 $i7106920 $k7116921))
        ($main_inv507 (+ $i7106920 $k7116921) $k7116921))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7106922 Int) ($k7116923 Int))
    (=> (and ($main_sum507 $i7106922 $k7116923))
        ($__VERIFIER_assert_pre (ite (= $i7106922 (* 1000000 $k7116923)) 1 0)))))

(check-sat)
