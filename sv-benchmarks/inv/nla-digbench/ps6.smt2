(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if784 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if785 (Int) Bool)
(declare-fun $main_sum299 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if786 (Int Int Int Int) Bool)
(declare-fun $main_inv299 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if784 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15931 Int))
    (=> (and ($assume_abort_if_not_if784 cond15931))
        (assume_abort_if_not cond15931))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15932 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15932))
        false)))

; if then
(assert
  (forall ((cond15932 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15932))
        ($__VERIFIER_assert_if785 cond15932))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if785 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15933 Int))
    (=> (and ($__VERIFIER_assert_if785 cond15933))
        (__VERIFIER_assert cond15933))))

; loop entry $main_inv299
(assert
  (forall (($int15934 Int))
    (=> (and (<= (- 2147483648) $int15934)
             (<= $int15934 2147483647))
        ($main_inv299 $int15934 0 0 0))))

; loop term $main_sum299
(assert
  (forall (($k86815935 Int) ($y86915936 Int) ($x87015937 Int) ($c87115938 Int))
    (=> (and (= 1 0)
             ($main_inv299 $k86815935 $y86915936 $x87015937 $c87115938))
        ($main_sum299 $k86815935 $y86915936 $x87015937 $c87115938))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86915936 Int) ($x87015937 Int) ($k86815935 Int) ($c87115938 Int))
    (=> (and (not (= 1 0))
             ($main_inv299 $k86815935 $y86915936 $x87015937 $c87115938))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) (* (* (* (* (* 6 $y86915936) $y86915936) $y86915936) $y86915936) $y86915936)) (* (* (* (* 5 $y86915936) $y86915936) $y86915936) $y86915936)) (* $y86915936 $y86915936)) (* 12 $x87015937)) 0) 1 0)))))

; break $main_sum299
(assert
  (forall (($k86815935 Int) ($y86915936 Int) ($x87015937 Int) ($c87115938 Int))
    (=> (and (not (< $c87115938 $k86815935))
             (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) (* (* (* (* (* 6 $y86915936) $y86915936) $y86915936) $y86915936) $y86915936)) (* (* (* (* 5 $y86915936) $y86915936) $y86915936) $y86915936)) (* $y86915936 $y86915936)) (* 12 $x87015937)) 0) 1 0))
             (not (= 1 0))
             ($main_inv299 $k86815935 $y86915936 $x87015937 $c87115938))
        ($main_sum299 $k86815935 $y86915936 $x87015937 $c87115938))))

; if else
(assert
  (forall (($k86815935 Int) ($y86915936 Int) ($x87015937 Int) ($c87115938 Int))
    (=> (and (< $c87115938 $k86815935)
             (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) $y86915936) (* (* (* (* (* 6 $y86915936) $y86915936) $y86915936) $y86915936) $y86915936)) (* (* (* (* 5 $y86915936) $y86915936) $y86915936) $y86915936)) (* $y86915936 $y86915936)) (* 12 $x87015937)) 0) 1 0))
             (not (= 1 0))
             ($main_inv299 $k86815935 $y86915936 $x87015937 $c87115938))
        ($main_if786 $k86815935 $y86915936 $x87015937 $c87115938))))

; forwards $main_inv299
(assert
  (forall (($k86815939 Int) ($y86915940 Int) ($x87015941 Int) ($c87115942 Int))
    (=> (and ($main_if786 $k86815939 $y86915940 $x87015941 $c87115942))
        ($main_inv299 $k86815939 (+ $y86915940 1) (+ (* (* (* (* (+ $y86915940 1) (+ $y86915940 1)) (+ $y86915940 1)) (+ $y86915940 1)) (+ $y86915940 1)) $x87015941) (+ $c87115942 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86915944 Int) ($x87015945 Int) ($k86815943 Int) ($c87115946 Int))
    (=> (and ($main_sum299 $k86815943 $y86915944 $x87015945 $c87115946))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86915944) $y86915944) $y86915944) $y86915944) $y86915944) $y86915944) (* (* (* (* (* 6 $y86915944) $y86915944) $y86915944) $y86915944) $y86915944)) (* (* (* (* 5 $y86915944) $y86915944) $y86915944) $y86915944)) (* $y86915944 $y86915944)) (* 12 $x87015945)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k86815943 Int) ($y86915944 Int) ($x87015945 Int) ($c87115946 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86915944) $y86915944) $y86915944) $y86915944) $y86915944) $y86915944) (* (* (* (* (* 6 $y86915944) $y86915944) $y86915944) $y86915944) $y86915944)) (* (* (* (* 5 $y86915944) $y86915944) $y86915944) $y86915944)) (* $y86915944 $y86915944)) (* 12 $x87015945)) 0) 1 0))
             ($main_sum299 $k86815943 $y86915944 $x87015945 $c87115946))
        ($__VERIFIER_assert_pre (ite (= (* $k86815943 $y86915944) (* $y86915944 $y86915944)) 1 0)))))

(check-sat)
