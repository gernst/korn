(set-logic HORN)

(declare-fun $main_inv223 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv224 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum223 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum224 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum225 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv225 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if68 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5276 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5276))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if68 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5277 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if68 cond cond5277))
        (__VERIFIER_assert cond5277))))

; loop entry $main_inv223
(assert
  (forall (($a325 (Array Int Int)) ($i326 Int) ($x327 Int))
    (=> (and (= $i326 0))
        ($main_inv223 $a325 $i326 $x327))))

; loop term $main_sum223
(assert
  (forall (($a3255278 (Array Int Int)) ($i3265279 Int) ($x3275280 Int))
    (=> (and (not (< $i3265279 100000)))
        ($main_sum223 $a3255278 $i3265279 $x3275280 $a3255278 $i3265279 $x3275280))))

; forwards $main_inv223
(assert
  (forall (($a3255278 (Array Int Int)) ($i3265279 Int) ($x3275280 Int))
    (=> (and (< $i3265279 100000)
             ($main_inv223 $a3255278 $i3265279 $x3275280))
        ($main_inv223 (store $a3255278 $i3265279 42) (+ $i3265279 1) $x3275280))))

; backwards $main_sum223
(assert
  (forall (($i3265279 Int) ($a3255281 (Array Int Int)) ($x3275280 Int) ($i3265282 Int) ($a3255278 (Array Int Int)) ($x3275283 Int))
    (=> (and ($main_sum223 (store $a3255278 $i3265279 42) (+ $i3265279 1) $x3275280 $a3255281 $i3265282 $x3275283)
             (< $i3265279 100000))
        ($main_sum223 $a3255278 $i3265279 $x3275280 $a3255281 $i3265282 $x3275283))))

; loop entry $main_inv224
(assert
  (forall (($i3265285 Int) ($a3255284 (Array Int Int)) ($x3275286 Int) ($i326 Int) ($a325 (Array Int Int)) ($x327 Int))
    (=> (and ($main_sum223 $a325 $i326 $x327 $a3255284 $i3265285 $x3275286)
             (= $i326 0))
        ($main_inv224 $a3255284 0 $x3275286))))

; loop term $main_sum224
(assert
  (forall (($a3255287 (Array Int Int)) ($i3265288 Int) ($x3275289 Int))
    (=> (and (not (< $i3265288 100000)))
        ($main_sum224 $a3255287 $i3265288 $x3275289 $a3255287 $i3265288 $x3275289))))

; forwards $main_inv224
(assert
  (forall (($a3255287 (Array Int Int)) ($i3265288 Int) ($x3275289 Int))
    (=> (and (< $i3265288 100000)
             ($main_inv224 $a3255287 $i3265288 $x3275289))
        ($main_inv224 (store $a3255287 $i3265288 43) (+ $i3265288 1) $x3275289))))

; backwards $main_sum224
(assert
  (forall (($i3265291 Int) ($a3255287 (Array Int Int)) ($x3275289 Int) ($x3275292 Int) ($a3255290 (Array Int Int)) ($i3265288 Int))
    (=> (and ($main_sum224 (store $a3255287 $i3265288 43) (+ $i3265288 1) $x3275289 $a3255290 $i3265291 $x3275292)
             (< $i3265288 100000))
        ($main_sum224 $a3255287 $i3265288 $x3275289 $a3255290 $i3265291 $x3275292))))

; loop entry $main_inv225
(assert
  (forall (($i3265294 Int) ($i3265285 Int) ($a3255293 (Array Int Int)) ($a3255284 (Array Int Int)) ($x3275286 Int) ($i326 Int) ($a325 (Array Int Int)) ($x327 Int) ($x3275295 Int))
    (=> (and ($main_sum224 $a3255284 0 $x3275286 $a3255293 $i3265294 $x3275295)
             ($main_sum223 $a325 $i326 $x327 $a3255284 $i3265285 $x3275286)
             (= $i326 0))
        ($main_inv225 $a3255293 $i3265294 0))))

; loop term $main_sum225
(assert
  (forall (($a3255296 (Array Int Int)) ($i3265297 Int) ($x3275298 Int))
    (=> (and (not (< $x3275298 100000)))
        ($main_sum225 $a3255296 $i3265297 $x3275298 $a3255296 $i3265297 $x3275298))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3255296 (Array Int Int)) ($x3275298 Int) ($i3265297 Int))
    (=> (and (< $x3275298 100000)
             ($main_inv225 $a3255296 $i3265297 $x3275298))
        ($__VERIFIER_assert_pre (ite (= (select $a3255296 $x3275298) 43) 1 0)))))

; forwards $main_inv225
(assert
  (forall (($a3255296 (Array Int Int)) ($i3265297 Int) ($x3275298 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3255296 $x3275298) 43) 1 0))
             (< $x3275298 100000)
             ($main_inv225 $a3255296 $i3265297 $x3275298))
        ($main_inv225 $a3255296 $i3265297 (+ $x3275298 1)))))

; backwards $main_sum225
(assert
  (forall (($x3275298 Int) ($i3265297 Int) ($i3265300 Int) ($a3255299 (Array Int Int)) ($a3255296 (Array Int Int)) ($x3275301 Int))
    (=> (and ($main_sum225 $a3255296 $i3265297 (+ $x3275298 1) $a3255299 $i3265300 $x3275301)
             (__VERIFIER_assert (ite (= (select $a3255296 $x3275298) 43) 1 0))
             (< $x3275298 100000))
        ($main_sum225 $a3255296 $i3265297 $x3275298 $a3255299 $i3265300 $x3275301))))

(check-sat)
