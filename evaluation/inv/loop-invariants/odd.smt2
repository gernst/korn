(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if533 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv132 (Int) Bool)
(declare-fun $main_sum132 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13213 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13213))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if533 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13214 Int))
    (=> (and ($__VERIFIER_assert_if533 cond13214))
        (__VERIFIER_assert cond13214))))

; loop entry $main_inv132
(assert
  (forall (($x468 Int))
    (=> (and (= $x468 1))
        ($main_inv132 $x468))))

; loop term $main_sum132
(assert
  (forall (($x46813215 Int) ($int13216 Int))
    (=> (and (= $int13216 0)
             (<= (- 2147483648) $int13216)
             (<= $int13216 2147483647)
             ($main_inv132 $x46813215))
        ($main_sum132 $x46813215))))

; forwards $main_inv132
(assert
  (forall (($x46813215 Int) ($int13216 Int))
    (=> (and (not (= $int13216 0))
             (<= (- 2147483648) $int13216)
             (<= $int13216 2147483647)
             ($main_inv132 $x46813215))
        ($main_inv132 (+ $x46813215 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x46813217 Int))
    (=> (and ($main_sum132 $x46813217))
        ($__VERIFIER_assert_pre (mod $x46813217 2)))))

(check-sat)
