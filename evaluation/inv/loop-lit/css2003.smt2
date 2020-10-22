(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum494 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if296 (Int Int Int) Bool)
(declare-fun $main_inv494 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if294 (Int) Bool)
(declare-fun $__VERIFIER_assert_if295 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if294 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6710 Int))
    (=> (and ($assume_abort_if_not_if294 cond6710))
        (assume_abort_if_not cond6710))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6711 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6711))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if295 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6712 Int))
    (=> (and ($__VERIFIER_assert_if295 cond6712))
        (__VERIFIER_assert cond6712))))

; if else
(assert
  (forall (($int6713 Int))
    (=> (and (<= 0 $int6713)
             (<= $int6713 1)
             (<= (- 2147483648) $int6713)
             (<= $int6713 2147483647))
        ($main_if296 1 1 $int6713))))

; loop entry $main_inv494
(assert
  (forall (($i6736714 Int) ($j6746715 Int) ($k6756716 Int))
    (=> (and ($main_if296 $i6736714 $j6746715 $k6756716))
        ($main_inv494 $i6736714 $j6746715 $k6756716))))

; loop term $main_sum494
(assert
  (forall (($i6736717 Int) ($j6746718 Int) ($k6756719 Int))
    (=> (and (not (< $i6736717 1000000))
             ($main_inv494 $i6736717 $j6746718 $k6756719))
        ($main_sum494 $i6736717 $j6746718 $k6756719))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6736717 Int) ($k6756719 Int) ($j6746718 Int))
    (=> (and (< $i6736717 1000000)
             ($main_inv494 $i6736717 $j6746718 $k6756719))
        ($__VERIFIER_assert_pre (ite (and (and (<= 1 (+ (+ $i6736717 1) (- $k6756719 1))) (<= (+ (+ $i6736717 1) (- $k6756719 1)) 2)) (>= (+ $i6736717 1) 1)) 1 0)))))

; forwards $main_inv494
(assert
  (forall (($i6736717 Int) ($j6746718 Int) ($k6756719 Int))
    (=> (and (__VERIFIER_assert (ite (and (and (<= 1 (+ (+ $i6736717 1) (- $k6756719 1))) (<= (+ (+ $i6736717 1) (- $k6756719 1)) 2)) (>= (+ $i6736717 1) 1)) 1 0))
             (< $i6736717 1000000)
             ($main_inv494 $i6736717 $j6746718 $k6756719))
        ($main_inv494 (+ $i6736717 1) (+ $j6746718 $k6756719) (- $k6756719 1)))))

(check-sat)
