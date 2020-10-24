(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if65 (Int Int) Bool)
(declare-fun $main_sum216 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv217 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv216 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum217 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5207 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5207))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if65 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5208 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if65 cond cond5208))
        (__VERIFIER_assert cond5208))))

; loop entry $main_inv216
(assert
  (forall (($a316 (Array Int Int)) ($i317 Int) ($x318 Int))
    (=> (and (= $i317 0))
        ($main_inv216 $a316 $i317 $x318))))

; loop term $main_sum216
(assert
  (forall (($a3165209 (Array Int Int)) ($i3175210 Int) ($x3185211 Int))
    (=> (and (not (< $i3175210 100000)))
        ($main_sum216 $a3165209 $i3175210 $x3185211 $a3165209 $i3175210 $x3185211))))

; forwards $main_inv216
(assert
  (forall (($a3165209 (Array Int Int)) ($i3175210 Int) ($x3185211 Int))
    (=> (and (< $i3175210 100000)
             ($main_inv216 $a3165209 $i3175210 $x3185211))
        ($main_inv216 (store $a3165209 $i3175210 42) (+ $i3175210 1) $x3185211))))

; backwards $main_sum216
(assert
  (forall (($x3185211 Int) ($i3175210 Int) ($i3175213 Int) ($a3165212 (Array Int Int)) ($x3185214 Int) ($a3165209 (Array Int Int)))
    (=> (and ($main_sum216 (store $a3165209 $i3175210 42) (+ $i3175210 1) $x3185211 $a3165212 $i3175213 $x3185214)
             (< $i3175210 100000))
        ($main_sum216 $a3165209 $i3175210 $x3185211 $a3165212 $i3175213 $x3185214))))

; loop entry $main_inv217
(assert
  (forall (($x3185217 Int) ($a316 (Array Int Int)) ($x318 Int) ($a3165215 (Array Int Int)) ($i317 Int) ($i3175216 Int))
    (=> (and ($main_sum216 $a316 $i317 $x318 $a3165215 $i3175216 $x3185217)
             (= $i317 0))
        ($main_inv217 $a3165215 $i3175216 0))))

; loop term $main_sum217
(assert
  (forall (($a3165218 (Array Int Int)) ($i3175219 Int) ($x3185220 Int))
    (=> (and (not (< $x3185220 100000)))
        ($main_sum217 $a3165218 $i3175219 $x3185220 $a3165218 $i3175219 $x3185220))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3165218 (Array Int Int)) ($x3185220 Int) ($i3175219 Int))
    (=> (and (< $x3185220 100000)
             ($main_inv217 $a3165218 $i3175219 $x3185220))
        ($__VERIFIER_assert_pre (ite (= (select $a3165218 $x3185220) 43) 1 0)))))

; forwards $main_inv217
(assert
  (forall (($a3165218 (Array Int Int)) ($i3175219 Int) ($x3185220 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3165218 $x3185220) 43) 1 0))
             (< $x3185220 100000)
             ($main_inv217 $a3165218 $i3175219 $x3185220))
        ($main_inv217 $a3165218 $i3175219 (+ $x3185220 1)))))

; backwards $main_sum217
(assert
  (forall (($x3185220 Int) ($a3165218 (Array Int Int)) ($i3175222 Int) ($i3175219 Int) ($a3165221 (Array Int Int)) ($x3185223 Int))
    (=> (and ($main_sum217 $a3165218 $i3175219 (+ $x3185220 1) $a3165221 $i3175222 $x3185223)
             (__VERIFIER_assert (ite (= (select $a3165218 $x3185220) 43) 1 0))
             (< $x3185220 100000))
        ($main_sum217 $a3165218 $i3175219 $x3185220 $a3165221 $i3175222 $x3185223))))

(check-sat)
