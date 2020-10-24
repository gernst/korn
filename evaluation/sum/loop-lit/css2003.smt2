(set-logic HORN)

(declare-fun $assume_abort_if_not_if294 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum494 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if295 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if296 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv494 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if294 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9434 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if294 cond cond9434))
        (assume_abort_if_not cond9434))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9435 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9435))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if295 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9436 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if295 cond cond9436))
        (__VERIFIER_assert cond9436))))

; if else
(assert
  (forall (($i673 Int) ($j674 Int) ($k675 Int) ($int9437 Int))
    (=> (and (<= 0 $int9437)
             (<= $int9437 1)
             (<= (- 2147483648) $int9437)
             (<= $int9437 2147483647))
        ($main_if296 $i673 $j674 $k675 1 1 $int9437))))

; loop entry $main_inv494
(assert
  (forall (($k675 Int) ($i673 Int) ($i6739438 Int) ($j674 Int) ($j6749439 Int) ($k6759440 Int))
    (=> (and ($main_if296 $i673 $j674 $k675 $i6739438 $j6749439 $k6759440))
        ($main_inv494 $i6739438 $j6749439 $k6759440))))

; loop term $main_sum494
(assert
  (forall (($i6739441 Int) ($j6749442 Int) ($k6759443 Int))
    (=> (and (not (< $i6739441 1000000)))
        ($main_sum494 $i6739441 $j6749442 $k6759443 $i6739441 $j6749442 $k6759443))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6739441 Int) ($k6759443 Int) ($j6749442 Int))
    (=> (and (< $i6739441 1000000)
             ($main_inv494 $i6739441 $j6749442 $k6759443))
        ($__VERIFIER_assert_pre (ite (and (and (<= 1 (+ (+ $i6739441 1) (- $k6759443 1))) (<= (+ (+ $i6739441 1) (- $k6759443 1)) 2)) (>= (+ $i6739441 1) 1)) 1 0)))))

; forwards $main_inv494
(assert
  (forall (($i6739441 Int) ($j6749442 Int) ($k6759443 Int))
    (=> (and (__VERIFIER_assert (ite (and (and (<= 1 (+ (+ $i6739441 1) (- $k6759443 1))) (<= (+ (+ $i6739441 1) (- $k6759443 1)) 2)) (>= (+ $i6739441 1) 1)) 1 0))
             (< $i6739441 1000000)
             ($main_inv494 $i6739441 $j6749442 $k6759443))
        ($main_inv494 (+ $i6739441 1) (+ $j6749442 $k6759443) (- $k6759443 1)))))

; backwards $main_sum494
(assert
  (forall (($j6749442 Int) ($k6759443 Int) ($i6739444 Int) ($k6759446 Int) ($i6739441 Int) ($j6749445 Int))
    (=> (and ($main_sum494 (+ $i6739441 1) (+ $j6749442 $k6759443) (- $k6759443 1) $i6739444 $j6749445 $k6759446)
             (__VERIFIER_assert (ite (and (and (<= 1 (+ (+ $i6739441 1) (- $k6759443 1))) (<= (+ (+ $i6739441 1) (- $k6759443 1)) 2)) (>= (+ $i6739441 1) 1)) 1 0))
             (< $i6739441 1000000))
        ($main_sum494 $i6739441 $j6749442 $k6759443 $i6739444 $j6749445 $k6759446))))

(check-sat)
