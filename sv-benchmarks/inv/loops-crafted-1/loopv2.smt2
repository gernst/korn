(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if558 (Int) Bool)
(declare-fun $main_sum177 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if560 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if559 (Int) Bool)
(declare-fun $main_inv178 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv177 (Int Int Int Int) Bool)
(declare-fun $main_sum178 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if558 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13649 Int))
    (=> (and ($assume_abort_if_not_if558 cond13649))
        (assume_abort_if_not cond13649))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13650 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13650))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if559 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13651 Int))
    (=> (and ($__VERIFIER_assert_if559 cond13651))
        (__VERIFIER_assert cond13651))))

; if else
(assert
  (forall (($int13652 Int) ($i529 Int) ($j530 Int) ($k531 Int))
    (=> (and (<= $int13652 50000001)
             (<= (- 2147483648) $int13652)
             (<= $int13652 2147483647))
        ($main_if560 $int13652 $i529 $j530 $k531))))

; loop entry $main_inv177
(assert
  (forall (($n52813653 Int) ($k53113656 Int) ($i52913654 Int) ($j53013655 Int))
    (=> (and ($main_if560 $n52813653 $i52913654 $j53013655 $k53113656))
        ($main_inv177 $n52813653 0 0 $k53113656))))

; loop term $main_sum177
(assert
  (forall (($n52813657 Int) ($i52913658 Int) ($j53013659 Int) ($k53113660 Int))
    (=> (and (not (< $i52913658 $n52813657))
             ($main_inv177 $n52813657 $i52913658 $j53013659 $k53113660))
        ($main_sum177 $n52813657 $i52913658 $j53013659 $k53113660))))

; forwards $main_inv177
(assert
  (forall (($n52813657 Int) ($i52913658 Int) ($k53113660 Int) ($j53013659 Int))
    (=> (and (< $i52913658 $n52813657)
             ($main_inv177 $n52813657 $i52913658 $j53013659 $k53113660))
        ($main_inv177 $n52813657 (+ $i52913658 4) (+ (+ $i52913658 4) 2) $k53113660))))

; loop entry $main_inv178
(assert
  (forall (($n52813661 Int) ($i52913662 Int) ($j53013663 Int) ($k53113664 Int))
    (=> (and ($main_sum177 $n52813661 $i52913662 $j53013663 $k53113664))
        ($main_inv178 $n52813661 $i52913662 $j53013663 $i52913662))))

; loop term $main_sum178
(assert
  (forall (($n52813665 Int) ($i52913666 Int) ($j53013667 Int) ($k53113668 Int))
    (=> (and (not (= (mod $j53013667 2) 0))
             ($main_inv178 $n52813665 $i52913666 $j53013667 $k53113668))
        ($main_sum178 $n52813665 $i52913666 $j53013667 $k53113668))))

; forwards $main_inv178
(assert
  (forall (($n52813665 Int) ($i52913666 Int) ($j53013667 Int) ($k53113668 Int))
    (=> (and (= (mod $j53013667 2) 0)
             ($main_inv178 $n52813665 $i52913666 $j53013667 $k53113668))
        ($main_inv178 $n52813665 $i52913666 (- $j53013667 4) (- $k53113668 4)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k53113672 Int) ($n52813669 Int) ($i52913670 Int) ($j53013671 Int))
    (=> (and ($main_sum178 $n52813669 $i52913670 $j53013671 $k53113672))
        ($__VERIFIER_assert_pre (ite (= (mod $k53113672 2) 0) 1 0)))))

(check-sat)
