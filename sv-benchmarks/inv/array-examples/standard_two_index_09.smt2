(set-logic HORN)

(declare-fun $main_sum402 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum401 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv401 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum403 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if128 (Int) Bool)
(declare-fun $main_inv402 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv403 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5192 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5192))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if128 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5193 Int))
    (=> (and ($__VERIFIER_assert_if128 cond5193))
        (__VERIFIER_assert cond5193))))

; loop entry $main_inv401
(assert
  (forall (($a488 (Array Int Int)) ($b489 (Array Int Int)) ($i490 Int) ($j491 Int))
    (=> (and (= $j491 0)
             (= $i490 0))
        ($main_inv401 $a488 $b489 $i490 $j491))))

; loop term $main_sum401
(assert
  (forall (($a4885194 (Array Int Int)) ($b4895195 (Array Int Int)) ($i4905196 Int) ($j4915197 Int))
    (=> (and (not (< $i4905196 100000))
             ($main_inv401 $a4885194 $b4895195 $i4905196 $j4915197))
        ($main_sum401 $a4885194 $b4895195 $i4905196 $j4915197))))

; forwards $main_inv401
(assert
  (forall (($i4905196 Int) ($b4895195 (Array Int Int)) ($int5198 Int) ($a4885194 (Array Int Int)) ($j4915197 Int))
    (=> (and (<= (- 2147483648) $int5198)
             (<= $int5198 2147483647)
             (< $i4905196 100000)
             ($main_inv401 $a4885194 $b4895195 $i4905196 $j4915197))
        ($main_inv401 $a4885194 (store $b4895195 $i4905196 $int5198) (+ $i4905196 1) $j4915197))))

; loop entry $main_inv402
(assert
  (forall (($a4885199 (Array Int Int)) ($b4895200 (Array Int Int)) ($j4915202 Int) ($i4905201 Int))
    (=> (and ($main_sum401 $a4885199 $b4895200 $i4905201 $j4915202))
        ($main_inv402 $a4885199 $b4895200 1 $j4915202))))

; loop term $main_sum402
(assert
  (forall (($a4885203 (Array Int Int)) ($b4895204 (Array Int Int)) ($i4905205 Int) ($j4915206 Int))
    (=> (and (not (< $i4905205 100000))
             ($main_inv402 $a4885203 $b4895204 $i4905205 $j4915206))
        ($main_sum402 $a4885203 $b4895204 $i4905205 $j4915206))))

; forwards $main_inv402
(assert
  (forall (($a4885203 (Array Int Int)) ($j4915206 Int) ($b4895204 (Array Int Int)) ($i4905205 Int))
    (=> (and (< $i4905205 100000)
             ($main_inv402 $a4885203 $b4895204 $i4905205 $j4915206))
        ($main_inv402 (store $a4885203 $j4915206 (select $b4895204 $i4905205)) $b4895204 (+ $i4905205 9) (+ $j4915206 1)))))

; loop entry $main_inv403
(assert
  (forall (($a4885207 (Array Int Int)) ($b4895208 (Array Int Int)) ($i4905209 Int) ($j4915210 Int))
    (=> (and ($main_sum402 $a4885207 $b4895208 $i4905209 $j4915210))
        ($main_inv403 $a4885207 $b4895208 1 0))))

; loop term $main_sum403
(assert
  (forall (($a4885211 (Array Int Int)) ($b4895212 (Array Int Int)) ($i4905213 Int) ($j4915214 Int))
    (=> (and (not (< $i4905213 100000))
             ($main_inv403 $a4885211 $b4895212 $i4905213 $j4915214))
        ($main_sum403 $a4885211 $b4895212 $i4905213 $j4915214))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4885211 (Array Int Int)) ($j4915214 Int) ($b4895212 (Array Int Int)) ($i4905213 Int))
    (=> (and (< $i4905213 100000)
             ($main_inv403 $a4885211 $b4895212 $i4905213 $j4915214))
        ($__VERIFIER_assert_pre (ite (= (select $a4885211 $j4915214) (select $b4895212 (+ (* 9 $j4915214) 1))) 1 0)))))

; forwards $main_inv403
(assert
  (forall (($a4885211 (Array Int Int)) ($b4895212 (Array Int Int)) ($i4905213 Int) ($j4915214 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4885211 $j4915214) (select $b4895212 (+ (* 9 $j4915214) 1))) 1 0))
             (< $i4905213 100000)
             ($main_inv403 $a4885211 $b4895212 $i4905213 $j4915214))
        ($main_inv403 $a4885211 $b4895212 (+ $i4905213 9) (+ $j4915214 1)))))

(check-sat)
