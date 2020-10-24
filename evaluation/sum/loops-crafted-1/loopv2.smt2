(set-logic HORN)

(declare-fun $assume_abort_if_not_if558 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if559 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum177 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if560 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv178 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv177 (Int Int Int Int) Bool)
(declare-fun $main_sum178 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if558 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14675 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if558 cond cond14675))
        (assume_abort_if_not cond14675))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14676 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14676))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if559 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14677 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if559 cond cond14677))
        (__VERIFIER_assert cond14677))))

; if else
(assert
  (forall (($i529 Int) ($k531 Int) ($j530 Int) ($int14678 Int) ($n528 Int))
    (=> (and (<= $int14678 50000001)
             (<= (- 2147483648) $int14678)
             (<= $int14678 2147483647))
        ($main_if560 $n528 $i529 $j530 $k531 $int14678 $i529 $j530 $k531))))

; loop entry $main_inv177
(assert
  (forall (($j53014681 Int) ($k531 Int) ($j530 Int) ($i52914680 Int) ($n528 Int) ($k53114682 Int) ($i529 Int) ($n52814679 Int))
    (=> (and ($main_if560 $n528 $i529 $j530 $k531 $n52814679 $i52914680 $j53014681 $k53114682))
        ($main_inv177 $n52814679 0 0 $k53114682))))

; loop term $main_sum177
(assert
  (forall (($n52814683 Int) ($i52914684 Int) ($j53014685 Int) ($k53114686 Int))
    (=> (and (not (< $i52914684 $n52814683)))
        ($main_sum177 $n52814683 $i52914684 $j53014685 $k53114686 $n52814683 $i52914684 $j53014685 $k53114686))))

; forwards $main_inv177
(assert
  (forall (($n52814683 Int) ($i52914684 Int) ($k53114686 Int) ($j53014685 Int))
    (=> (and (< $i52914684 $n52814683)
             ($main_inv177 $n52814683 $i52914684 $j53014685 $k53114686))
        ($main_inv177 $n52814683 (+ $i52914684 4) (+ (+ $i52914684 4) 2) $k53114686))))

; backwards $main_sum177
(assert
  (forall (($i52914688 Int) ($k53114686 Int) ($j53014685 Int) ($i52914684 Int) ($n52814683 Int) ($n52814687 Int) ($j53014689 Int) ($k53114690 Int))
    (=> (and ($main_sum177 $n52814683 (+ $i52914684 4) (+ (+ $i52914684 4) 2) $k53114686 $n52814687 $i52914688 $j53014689 $k53114690)
             (< $i52914684 $n52814683))
        ($main_sum177 $n52814683 $i52914684 $j53014685 $k53114686 $n52814687 $i52914688 $j53014689 $k53114690))))

; loop entry $main_inv178
(assert
  (forall (($j53014693 Int) ($j53014681 Int) ($k531 Int) ($i52914692 Int) ($j530 Int) ($i52914680 Int) ($n528 Int) ($k53114694 Int) ($n52814691 Int) ($k53114682 Int) ($i529 Int) ($n52814679 Int))
    (=> (and ($main_sum177 $n52814679 0 0 $k53114682 $n52814691 $i52914692 $j53014693 $k53114694)
             ($main_if560 $n528 $i529 $j530 $k531 $n52814679 $i52914680 $j53014681 $k53114682))
        ($main_inv178 $n52814691 $i52914692 $j53014693 $i52914692))))

; loop term $main_sum178
(assert
  (forall (($n52814695 Int) ($i52914696 Int) ($j53014697 Int) ($k53114698 Int))
    (=> (and (not (= (mod $j53014697 2) 0)))
        ($main_sum178 $n52814695 $i52914696 $j53014697 $k53114698 $n52814695 $i52914696 $j53014697 $k53114698))))

; forwards $main_inv178
(assert
  (forall (($n52814695 Int) ($i52914696 Int) ($j53014697 Int) ($k53114698 Int))
    (=> (and (= (mod $j53014697 2) 0)
             ($main_inv178 $n52814695 $i52914696 $j53014697 $k53114698))
        ($main_inv178 $n52814695 $i52914696 (- $j53014697 4) (- $k53114698 4)))))

; backwards $main_sum178
(assert
  (forall (($n52814699 Int) ($j53014697 Int) ($j53014701 Int) ($k53114698 Int) ($k53114702 Int) ($i52914696 Int) ($n52814695 Int) ($i52914700 Int))
    (=> (and ($main_sum178 $n52814695 $i52914696 (- $j53014697 4) (- $k53114698 4) $n52814699 $i52914700 $j53014701 $k53114702)
             (= (mod $j53014697 2) 0))
        ($main_sum178 $n52814695 $i52914696 $j53014697 $k53114698 $n52814699 $i52914700 $j53014701 $k53114702))))

; __VERIFIER_assert precondition
(assert
  (forall (($k53114706 Int) ($j53014693 Int) ($n52814703 Int) ($j53014681 Int) ($k531 Int) ($i52914692 Int) ($j530 Int) ($i52914680 Int) ($n528 Int) ($k53114694 Int) ($j53014705 Int) ($n52814691 Int) ($i529 Int) ($n52814679 Int) ($k53114682 Int) ($i52914704 Int))
    (=> (and ($main_sum178 $n52814691 $i52914692 $j53014693 $i52914692 $n52814703 $i52914704 $j53014705 $k53114706)
             ($main_sum177 $n52814679 0 0 $k53114682 $n52814691 $i52914692 $j53014693 $k53114694)
             ($main_if560 $n528 $i529 $j530 $k531 $n52814679 $i52914680 $j53014681 $k53114682))
        ($__VERIFIER_assert_pre (ite (= (mod $k53114706 2) 0) 1 0)))))

(check-sat)
