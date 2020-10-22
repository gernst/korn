(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv374 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum375 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if119 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum374 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum376 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv376 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv375 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4949 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4949))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if119 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4950 Int))
    (=> (and ($__VERIFIER_assert_if119 cond4950))
        (__VERIFIER_assert cond4950))))

; loop entry $main_inv374
(assert
  (forall (($src452 (Array Int Int)) ($dst453 (Array Int Int)) ($i454 Int) ($j455 Int))
    (=> (and (= $j455 0)
             (= $i454 0))
        ($main_inv374 $src452 $dst453 $i454 $j455))))

; loop term $main_sum374
(assert
  (forall (($src4524951 (Array Int Int)) ($dst4534952 (Array Int Int)) ($i4544953 Int) ($j4554954 Int))
    (=> (and (not (< $j4554954 100000))
             ($main_inv374 $src4524951 $dst4534952 $i4544953 $j4554954))
        ($main_sum374 $src4524951 $dst4534952 $i4544953 $j4554954))))

; forwards $main_inv374
(assert
  (forall (($dst4534952 (Array Int Int)) ($i4544953 Int) ($src4524951 (Array Int Int)) ($j4554954 Int) ($int4955 Int))
    (=> (and (<= (- 2147483648) $int4955)
             (<= $int4955 2147483647)
             (< $j4554954 100000)
             ($main_inv374 $src4524951 $dst4534952 $i4544953 $j4554954))
        ($main_inv374 (store $src4524951 $j4554954 $int4955) $dst4534952 $i4544953 (+ $j4554954 1)))))

; loop entry $main_inv375
(assert
  (forall (($src4524956 (Array Int Int)) ($dst4534957 (Array Int Int)) ($i4544958 Int) ($j4554959 Int))
    (=> (and ($main_sum374 $src4524956 $dst4534957 $i4544958 $j4554959))
        ($main_inv375 $src4524956 $dst4534957 $i4544958 $j4554959))))

; loop term $main_sum375
(assert
  (forall (($src4524960 (Array Int Int)) ($dst4534961 (Array Int Int)) ($i4544962 Int) ($j4554963 Int))
    (=> (and (not (and (< $i4544962 100000) (not (= (select $src4524960 $i4544962) 0))))
             ($main_inv375 $src4524960 $dst4534961 $i4544962 $j4554963))
        ($main_sum375 $src4524960 $dst4534961 $i4544962 $j4554963))))

; forwards $main_inv375
(assert
  (forall (($src4524960 (Array Int Int)) ($dst4534961 (Array Int Int)) ($i4544962 Int) ($j4554963 Int))
    (=> (and (< $i4544962 100000)
             (not (= (select $src4524960 $i4544962) 0))
             ($main_inv375 $src4524960 $dst4534961 $i4544962 $j4554963))
        ($main_inv375 $src4524960 (store $dst4534961 $i4544962 (select $src4524960 $i4544962)) (+ $i4544962 1) $j4554963))))

; loop entry $main_inv376
(assert
  (forall (($src4524964 (Array Int Int)) ($dst4534965 (Array Int Int)) ($j4554967 Int) ($i4544966 Int))
    (=> (and ($main_sum375 $src4524964 $dst4534965 $i4544966 $j4554967))
        ($main_inv376 $src4524964 $dst4534965 0 $j4554967))))

; loop term $main_sum376
(assert
  (forall (($src4524968 (Array Int Int)) ($dst4534969 (Array Int Int)) ($i4544970 Int) ($j4554971 Int))
    (=> (and (not (and (< $i4544970 100000) (not (= (select $src4524968 $i4544970) 0))))
             ($main_inv376 $src4524968 $dst4534969 $i4544970 $j4554971))
        ($main_sum376 $src4524968 $dst4534969 $i4544970 $j4554971))))

; __VERIFIER_assert precondition
(assert
  (forall (($dst4534969 (Array Int Int)) ($i4544970 Int) ($src4524968 (Array Int Int)) ($j4554971 Int))
    (=> (and (< $i4544970 100000)
             (not (= (select $src4524968 $i4544970) 0))
             ($main_inv376 $src4524968 $dst4534969 $i4544970 $j4554971))
        ($__VERIFIER_assert_pre (ite (= (select $dst4534969 $i4544970) (select $src4524968 $i4544970)) 1 0)))))

; forwards $main_inv376
(assert
  (forall (($src4524968 (Array Int Int)) ($dst4534969 (Array Int Int)) ($i4544970 Int) ($j4554971 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $dst4534969 $i4544970) (select $src4524968 $i4544970)) 1 0))
             (< $i4544970 100000)
             (not (= (select $src4524968 $i4544970) 0))
             ($main_inv376 $src4524968 $dst4534969 $i4544970 $j4554971))
        ($main_inv376 $src4524968 $dst4534969 (+ $i4544970 1) $j4554971))))

(check-sat)
