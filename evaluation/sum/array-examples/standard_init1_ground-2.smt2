(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if66 (Int Int) Bool)
(declare-fun $main_sum219 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv219 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum218 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv218 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5227 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5227))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if66 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5228 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if66 cond cond5228))
        (__VERIFIER_assert cond5228))))

; loop entry $main_inv218
(assert
  (forall (($a319 (Array Int Int)) ($i320 Int) ($x321 Int))
    (=> (and (= $i320 0))
        ($main_inv218 $a319 $i320 $x321))))

; loop term $main_sum218
(assert
  (forall (($a3195229 (Array Int Int)) ($i3205230 Int) ($x3215231 Int))
    (=> (and (not (< $i3205230 100000)))
        ($main_sum218 $a3195229 $i3205230 $x3215231 $a3195229 $i3205230 $x3215231))))

; forwards $main_inv218
(assert
  (forall (($a3195229 (Array Int Int)) ($i3205230 Int) ($x3215231 Int))
    (=> (and (< $i3205230 100000)
             ($main_inv218 $a3195229 $i3205230 $x3215231))
        ($main_inv218 (store $a3195229 $i3205230 42) (+ $i3205230 1) $x3215231))))

; backwards $main_sum218
(assert
  (forall (($i3205230 Int) ($i3205233 Int) ($x3215231 Int) ($a3195232 (Array Int Int)) ($x3215234 Int) ($a3195229 (Array Int Int)))
    (=> (and ($main_sum218 (store $a3195229 $i3205230 42) (+ $i3205230 1) $x3215231 $a3195232 $i3205233 $x3215234)
             (< $i3205230 100000))
        ($main_sum218 $a3195229 $i3205230 $x3215231 $a3195232 $i3205233 $x3215234))))

; loop entry $main_inv219
(assert
  (forall (($i3205236 Int) ($a3195235 (Array Int Int)) ($x3215237 Int) ($a319 (Array Int Int)) ($i320 Int) ($x321 Int))
    (=> (and ($main_sum218 $a319 $i320 $x321 $a3195235 $i3205236 $x3215237)
             (= $i320 0))
        ($main_inv219 $a3195235 $i3205236 0))))

; loop term $main_sum219
(assert
  (forall (($a3195238 (Array Int Int)) ($i3205239 Int) ($x3215240 Int))
    (=> (and (not (< $x3215240 100000)))
        ($main_sum219 $a3195238 $i3205239 $x3215240 $a3195238 $i3205239 $x3215240))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3195238 (Array Int Int)) ($x3215240 Int) ($i3205239 Int))
    (=> (and (< $x3215240 100000)
             ($main_inv219 $a3195238 $i3205239 $x3215240))
        ($__VERIFIER_assert_pre (ite (= (select $a3195238 $x3215240) 42) 1 0)))))

; forwards $main_inv219
(assert
  (forall (($a3195238 (Array Int Int)) ($i3205239 Int) ($x3215240 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3195238 $x3215240) 42) 1 0))
             (< $x3215240 100000)
             ($main_inv219 $a3195238 $i3205239 $x3215240))
        ($main_inv219 $a3195238 $i3205239 (+ $x3215240 1)))))

; backwards $main_sum219
(assert
  (forall (($a3195241 (Array Int Int)) ($a3195238 (Array Int Int)) ($i3205242 Int) ($x3215243 Int) ($x3215240 Int) ($i3205239 Int))
    (=> (and ($main_sum219 $a3195238 $i3205239 (+ $x3215240 1) $a3195241 $i3205242 $x3215243)
             (__VERIFIER_assert (ite (= (select $a3195238 $x3215240) 42) 1 0))
             (< $x3215240 100000))
        ($main_sum219 $a3195238 $i3205239 $x3215240 $a3195241 $i3205242 $x3215243))))

(check-sat)
