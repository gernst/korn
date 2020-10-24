(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if789 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if787 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if788 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv300 (Int Int Int Int) Bool)
(declare-fun $main_sum300 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if787 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15947 Int))
    (=> (and ($assume_abort_if_not_if787 cond15947))
        (assume_abort_if_not cond15947))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15948 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15948))
        false)))

; if then
(assert
  (forall ((cond15948 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15948))
        ($__VERIFIER_assert_if788 cond15948))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if788 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15949 Int))
    (=> (and ($__VERIFIER_assert_if788 cond15949))
        (__VERIFIER_assert cond15949))))

; loop entry $main_inv300
(assert
  (forall (($int15950 Int))
    (=> (and (<= (- 2147483648) $int15950)
             (<= $int15950 2147483647))
        ($main_inv300 $int15950 0 1 1))))

; loop term $main_sum300
(assert
  (forall (($n87215951 Int) ($a87315952 Int) ($s87415953 Int) ($t87515954 Int))
    (=> (and (= 1 0)
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($main_sum300 $n87215951 $a87315952 $s87415953 $t87515954))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87515954 Int) ($a87315952 Int) ($n87215951 Int) ($s87415953 Int))
    (=> (and (not (= 1 0))
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($__VERIFIER_assert_pre (ite (= $t87515954 (+ (* 2 $a87315952) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s87415953 Int) ($a87315952 Int) ($t87515954 Int) ($n87215951 Int))
    (=> (and (__VERIFIER_assert (ite (= $t87515954 (+ (* 2 $a87315952) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($__VERIFIER_assert_pre (ite (= $s87415953 (* (+ $a87315952 1) (+ $a87315952 1))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87515954 Int) ($s87415953 Int) ($a87315952 Int) ($n87215951 Int))
    (=> (and (__VERIFIER_assert (ite (= $s87415953 (* (+ $a87315952 1) (+ $a87315952 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87515954 (+ (* 2 $a87315952) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (* $t87515954 $t87515954) (* 4 $s87415953)) (* 2 $t87515954)) 1) 0) 1 0)))))

; break $main_sum300
(assert
  (forall (($n87215951 Int) ($a87315952 Int) ($s87415953 Int) ($t87515954 Int))
    (=> (and (not (<= $s87415953 $n87215951))
             (__VERIFIER_assert (ite (= (+ (+ (- (* $t87515954 $t87515954) (* 4 $s87415953)) (* 2 $t87515954)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= $s87415953 (* (+ $a87315952 1) (+ $a87315952 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87515954 (+ (* 2 $a87315952) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($main_sum300 $n87215951 $a87315952 $s87415953 $t87515954))))

; if else
(assert
  (forall (($n87215951 Int) ($a87315952 Int) ($s87415953 Int) ($t87515954 Int))
    (=> (and (<= $s87415953 $n87215951)
             (__VERIFIER_assert (ite (= (+ (+ (- (* $t87515954 $t87515954) (* 4 $s87415953)) (* 2 $t87515954)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= $s87415953 (* (+ $a87315952 1) (+ $a87315952 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87515954 (+ (* 2 $a87315952) 1)) 1 0))
             (not (= 1 0))
             ($main_inv300 $n87215951 $a87315952 $s87415953 $t87515954))
        ($main_if789 $n87215951 $a87315952 $s87415953 $t87515954))))

; forwards $main_inv300
(assert
  (forall (($n87215955 Int) ($a87315956 Int) ($s87415957 Int) ($t87515958 Int))
    (=> (and ($main_if789 $n87215955 $a87315956 $s87415957 $t87515958))
        ($main_inv300 $n87215955 (+ $a87315956 1) (+ $s87415957 (+ $t87515958 2)) (+ $t87515958 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87515962 Int) ($a87315960 Int) ($n87215959 Int) ($s87415961 Int))
    (=> (and ($main_sum300 $n87215959 $a87315960 $s87415961 $t87515962))
        ($__VERIFIER_assert_pre (ite (= $t87515962 (+ (* 2 $a87315960) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s87415961 Int) ($a87315960 Int) ($t87515962 Int) ($n87215959 Int))
    (=> (and (__VERIFIER_assert (ite (= $t87515962 (+ (* 2 $a87315960) 1)) 1 0))
             ($main_sum300 $n87215959 $a87315960 $s87415961 $t87515962))
        ($__VERIFIER_assert_pre (ite (= $s87415961 (* (+ $a87315960 1) (+ $a87315960 1))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t87515962 Int) ($s87415961 Int) ($a87315960 Int) ($n87215959 Int))
    (=> (and (__VERIFIER_assert (ite (= $s87415961 (* (+ $a87315960 1) (+ $a87315960 1))) 1 0))
             (__VERIFIER_assert (ite (= $t87515962 (+ (* 2 $a87315960) 1)) 1 0))
             ($main_sum300 $n87215959 $a87315960 $s87415961 $t87515962))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (* $t87515962 $t87515962) (* 4 $s87415961)) (* 2 $t87515962)) 1) 0) 1 0)))))

(check-sat)
