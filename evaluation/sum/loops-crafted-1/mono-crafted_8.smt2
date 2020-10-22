(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum199 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if592 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if593 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv199 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14933 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14933))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if592 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14934 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if592 cond cond14934))
        (__VERIFIER_assert cond14934))))

; loop entry $main_inv199
(assert
  (forall (($x569 Int) ($y570 Int) ($z571 Int))
    (=> (and (= $z571 5000000)
             (= $y570 10000000)
             (= $x569 0))
        ($main_inv199 $x569 $y570 $z571))))

; loop term $main_sum199
(assert
  (forall (($x56914935 Int) ($y57014936 Int) ($z57114937 Int))
    (=> (and (not (< $x56914935 $y57014936)))
        ($main_sum199 $x56914935 $y57014936 $z57114937 $x56914935 $y57014936 $z57114937))))

; if then
(assert
  (forall (($x56914935 Int) ($y57014936 Int) ($z57114937 Int))
    (=> (and (>= $x56914935 5000000)
             (< $x56914935 $y57014936)
             ($main_inv199 $x56914935 $y57014936 $z57114937))
        ($main_if593 $x56914935 $y57014936 $z57114937 $x56914935 $y57014936 (- $z57114937 1)))))

; if else
(assert
  (forall (($x56914935 Int) ($y57014936 Int) ($z57114937 Int))
    (=> (and (not (>= $x56914935 5000000))
             (< $x56914935 $y57014936)
             ($main_inv199 $x56914935 $y57014936 $z57114937))
        ($main_if593 $x56914935 $y57014936 $z57114937 $x56914935 $y57014936 $z57114937))))

; forwards $main_inv199
(assert
  (forall (($x56914938 Int) ($z57114937 Int) ($x56914935 Int) ($z57114940 Int) ($y57014936 Int) ($y57014939 Int))
    (=> (and ($main_if593 $x56914935 $y57014936 $z57114937 $x56914938 $y57014939 $z57114940))
        ($main_inv199 (+ $x56914938 1) $y57014939 $z57114940))))

; backwards $main_sum199
(assert
  (forall (($x56914938 Int) ($x56914941 Int) ($z57114937 Int) ($y57014942 Int) ($z57114940 Int) ($y57014936 Int) ($y57014939 Int) ($x56914935 Int) ($z57114943 Int))
    (=> (and ($main_sum199 (+ $x56914938 1) $y57014939 $z57114940 $x56914941 $y57014942 $z57114943)
             ($main_if593 $x56914935 $y57014936 $z57114937 $x56914938 $y57014939 $z57114940))
        ($main_sum199 $x56914935 $y57014936 $z57114937 $x56914941 $y57014942 $z57114943))))

; __VERIFIER_assert precondition
(assert
  (forall (($y570 Int) ($x56914944 Int) ($z57114946 Int) ($z571 Int) ($x569 Int) ($y57014945 Int))
    (=> (and ($main_sum199 $x569 $y570 $z571 $x56914944 $y57014945 $z57114946)
             (= $z571 5000000)
             (= $y570 10000000)
             (= $x569 0))
        ($__VERIFIER_assert_pre (ite (= $z57114946 0) 1 0)))))

(check-sat)
