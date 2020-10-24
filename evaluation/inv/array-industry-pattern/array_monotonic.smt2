(set-logic HORN)

(declare-fun $main_sum413 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_if135 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if133 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum412 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv412 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv413 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_if134 (Int (Array Int Int) (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5292 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5292))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if133 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5293 Int))
    (=> (and ($__VERIFIER_assert_if133 cond5293))
        (__VERIFIER_assert cond5293))))

; loop entry $main_inv412
(assert
  (forall (($a504 (Array Int Int)) ($b505 (Array Int Int)))
        ($main_inv412 0 $a504 $b505)))

; loop term $main_sum412
(assert
  (forall (($i5035294 Int) ($a5045295 (Array Int Int)) ($b5055296 (Array Int Int)))
    (=> (and (not (< $i5035294 100000))
             ($main_inv412 $i5035294 $a5045295 $b5055296))
        ($main_sum412 $i5035294 $a5045295 $b5055296))))

; if then
(assert
  (forall (($i5035294 Int) ($a5045295 (Array Int Int)) ($int5297 Int) ($b5055296 (Array Int Int)))
    (=> (and (= (select (store $a5045295 $i5035294 $int5297) $i5035294) 10)
             (<= (- 2147483648) $int5297)
             (<= $int5297 2147483647)
             (< $i5035294 100000)
             ($main_inv412 $i5035294 $a5045295 $b5055296))
        ($main_if134 $i5035294 (store $a5045295 $i5035294 $int5297) (store $b5055296 $i5035294 20)))))

; if else
(assert
  (forall (($i5035294 Int) ($a5045295 (Array Int Int)) ($int5297 Int) ($b5055296 (Array Int Int)))
    (=> (and (not (= (select (store $a5045295 $i5035294 $int5297) $i5035294) 10))
             (<= (- 2147483648) $int5297)
             (<= $int5297 2147483647)
             (< $i5035294 100000)
             ($main_inv412 $i5035294 $a5045295 $b5055296))
        ($main_if134 $i5035294 (store $a5045295 $i5035294 $int5297) $b5055296))))

; forwards $main_inv412
(assert
  (forall (($i5035298 Int) ($a5045299 (Array Int Int)) ($b5055300 (Array Int Int)))
    (=> (and ($main_if134 $i5035298 $a5045299 $b5055300))
        ($main_inv412 (+ $i5035298 2) $a5045299 $b5055300))))

; loop entry $main_inv413
(assert
  (forall (($a5045302 (Array Int Int)) ($b5055303 (Array Int Int)) ($i5035301 Int))
    (=> (and ($main_sum412 $i5035301 $a5045302 $b5055303))
        ($main_inv413 0 $a5045302 $b5055303))))

; loop term $main_sum413
(assert
  (forall (($i5035304 Int) ($a5045305 (Array Int Int)) ($b5055306 (Array Int Int)))
    (=> (and (not (< $i5035304 100000))
             ($main_inv413 $i5035304 $a5045305 $b5055306))
        ($main_sum413 $i5035304 $a5045305 $b5055306))))

; __VERIFIER_assert precondition
(assert
  (forall (($b5055306 (Array Int Int)) ($i5035304 Int) ($a5045305 (Array Int Int)))
    (=> (and (= (select $a5045305 $i5035304) 10)
             (< $i5035304 100000)
             ($main_inv413 $i5035304 $a5045305 $b5055306))
        ($__VERIFIER_assert_pre (ite (= (select $b5055306 $i5035304) 20) 1 0)))))

; if then
(assert
  (forall (($i5035304 Int) ($a5045305 (Array Int Int)) ($b5055306 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $b5055306 $i5035304) 20) 1 0))
             (= (select $a5045305 $i5035304) 10)
             (< $i5035304 100000)
             ($main_inv413 $i5035304 $a5045305 $b5055306))
        ($main_if135 $i5035304 $a5045305 $b5055306))))

; if else
(assert
  (forall (($i5035304 Int) ($a5045305 (Array Int Int)) ($b5055306 (Array Int Int)))
    (=> (and (not (= (select $a5045305 $i5035304) 10))
             (< $i5035304 100000)
             ($main_inv413 $i5035304 $a5045305 $b5055306))
        ($main_if135 $i5035304 $a5045305 $b5055306))))

; forwards $main_inv413
(assert
  (forall (($i5035307 Int) ($a5045308 (Array Int Int)) ($b5055309 (Array Int Int)))
    (=> (and ($main_if135 $i5035307 $a5045308 $b5055309))
        ($main_inv413 (+ $i5035307 2) $a5045308 $b5055309))))

(check-sat)
