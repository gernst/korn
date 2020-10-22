(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if789 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if788 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if787 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv300 (Int Int Int Int) Bool)
(declare-fun $main_sum300 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if787 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17597 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if787 cond cond17597))
        (assume_abort_if_not cond17597))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17598 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17598))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17598 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17598))
        ($__VERIFIER_assert_if788 cond cond17598))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if788 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17599 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if788 cond cond17599))
        (__VERIFIER_assert cond17599))))

; loop entry $main_inv300
(assert
  (forall (($int17600 Int))
    (=> (and (<= (- 2147483648) $int17600)
             (<= $int17600 2147483647))
        ($main_inv300 $int17600 0 1 1))))

; loop term $main_sum300
(assert
  (forall (($n87217601 Int) ($a87317602 Int) ($s87417603 Int) ($t87517604 Int))
    (=> (and (= 1 0))
        ($main_sum300 $n87217601 $a87317602 $s87417603 $t87517604 $n87217601 $a87317602 $s87417603 $t87517604))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87517604 Int) ($a87317602 Int) ($n87217601 Int) ($s87417603 Int))
    (=> (and (not (= 1 0))
             ($main_inv300 $n87217601 $a87317602 $s87417603 $t87517604))
        ($__VERIFIER_assert_pre (ite (= $t87517604 (+ (* 2 $a87317602) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s87417603 Int) ($a87317602 Int) ($t87517604 Int) ($n87217601 Int))
    (=> (and (__VERIFIER_assert (ite (= $t87517604 (+ (* 2 $a87317602) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87217601 $a87317602 $s87417603 $t87517604))
        ($__VERIFIER_assert_pre (ite (= $s87417603 (* (+ $a87317602 1) (+ $a87317602 1))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87517604 Int) ($s87417603 Int) ($a87317602 Int) ($n87217601 Int))
    (=> (and (__VERIFIER_assert (ite (= $s87417603 (* (+ $a87317602 1) (+ $a87317602 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87517604 (+ (* 2 $a87317602) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87217601 $a87317602 $s87417603 $t87517604))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (* $t87517604 $t87517604) (* 4 $s87417603)) (* 2 $t87517604)) 1) 0) 1 0)))))

; break $main_sum300
(assert
  (forall (($n87217601 Int) ($a87317602 Int) ($s87417603 Int) ($t87517604 Int))
    (=> (and (not (<= $s87417603 $n87217601))
             (__VERIFIER_assert (ite (= (+ (+ (- (* $t87517604 $t87517604) (* 4 $s87417603)) (* 2 $t87517604)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= $s87417603 (* (+ $a87317602 1) (+ $a87317602 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87517604 (+ (* 2 $a87317602) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87217601 $a87317602 $s87417603 $t87517604))
        ($main_sum300 $n87217601 $a87317602 $s87417603 $t87517604 $n87217601 $a87317602 $s87417603 $t87517604))))

; if else
(assert
  (forall (($n87217601 Int) ($a87317602 Int) ($s87417603 Int) ($t87517604 Int))
    (=> (and (<= $s87417603 $n87217601)
             (__VERIFIER_assert (ite (= (+ (+ (- (* $t87517604 $t87517604) (* 4 $s87417603)) (* 2 $t87517604)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= $s87417603 (* (+ $a87317602 1) (+ $a87317602 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87517604 (+ (* 2 $a87317602) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87217601 $a87317602 $s87417603 $t87517604))
        ($main_if789 $n87217601 $a87317602 $s87417603 $t87517604 $n87217601 $a87317602 $s87417603 $t87517604))))

; forwards $main_inv300
(assert
  (forall (($a87317602 Int) ($t87517604 Int) ($s87417607 Int) ($n87217601 Int) ($s87417603 Int) ($n87217605 Int) ($t87517608 Int) ($a87317606 Int))
    (=> (and ($main_if789 $n87217601 $a87317602 $s87417603 $t87517604 $n87217605 $a87317606 $s87417607 $t87517608))
        ($main_inv300 $n87217605 (+ $a87317606 1) (+ $s87417607 (+ $t87517608 2)) (+ $t87517608 2)))))

; backwards $main_sum300
(assert
  (forall (($a87317602 Int) ($t87517604 Int) ($s87417607 Int) ($n87217601 Int) ($s87417603 Int) ($t87517612 Int) ($n87217605 Int) ($a87317610 Int) ($t87517608 Int) ($a87317606 Int) ($n87217609 Int) ($s87417611 Int))
    (=> (and ($main_sum300 $n87217605 (+ $a87317606 1) (+ $s87417607 (+ $t87517608 2)) (+ $t87517608 2) $n87217609 $a87317610 $s87417611 $t87517612)
             ($main_if789 $n87217601 $a87317602 $s87417603 $t87517604 $n87217605 $a87317606 $s87417607 $t87517608))
        ($main_sum300 $n87217601 $a87317602 $s87417603 $t87517604 $n87217609 $a87317610 $s87417611 $t87517612))))

; __VERIFIER_assert precondition
(assert
  (forall (($n87217613 Int) ($a87317614 Int) ($t87517616 Int) ($s87417615 Int) ($int17600 Int))
    (=> (and ($main_sum300 $int17600 0 1 1 $n87217613 $a87317614 $s87417615 $t87517616)
             (<= (- 2147483648) $int17600)
             (<= $int17600 2147483647))
        ($__VERIFIER_assert_pre (ite (= $t87517616 (+ (* 2 $a87317614) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n87217613 Int) ($a87317614 Int) ($t87517616 Int) ($s87417615 Int) ($int17600 Int))
    (=> (and (__VERIFIER_assert (ite (= $t87517616 (+ (* 2 $a87317614) 1)) 1 0))
             ($main_sum300 $int17600 0 1 1 $n87217613 $a87317614 $s87417615 $t87517616)
             (<= (- 2147483648) $int17600)
             (<= $int17600 2147483647))
        ($__VERIFIER_assert_pre (ite (= $s87417615 (* (+ $a87317614 1) (+ $a87317614 1))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n87217613 Int) ($a87317614 Int) ($t87517616 Int) ($s87417615 Int) ($int17600 Int))
    (=> (and (__VERIFIER_assert (ite (= $s87417615 (* (+ $a87317614 1) (+ $a87317614 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87517616 (+ (* 2 $a87317614) 1)) 1 0))
             ($main_sum300 $int17600 0 1 1 $n87217613 $a87317614 $s87417615 $t87517616)
             (<= (- 2147483648) $int17600)
             (<= $int17600 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (* $t87517616 $t87517616) (* 4 $s87417615)) (* 2 $t87517616)) 1) 0) 1 0)))))

(check-sat)
