(set-logic HORN)

(declare-fun $__VERIFIER_assert_if120 (Int) Bool)
(declare-fun $main_inv379 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum379 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum377 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv378 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv377 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum378 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4976 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4976))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if120 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4977 Int))
    (=> (and ($__VERIFIER_assert_if120 cond4977))
        (__VERIFIER_assert cond4977))))

; loop entry $main_inv377
(assert
  (forall (($a456 (Array Int Int)) ($b457 (Array Int Int)) ($i458 Int) ($j459 Int))
    (=> (and (= $j459 0)
             (= $i458 0))
        ($main_inv377 $a456 $b457 $i458 $j459))))

; loop term $main_sum377
(assert
  (forall (($a4564978 (Array Int Int)) ($b4574979 (Array Int Int)) ($i4584980 Int) ($j4594981 Int))
    (=> (and (not (< $i4584980 10000))
             ($main_inv377 $a4564978 $b4574979 $i4584980 $j4594981))
        ($main_sum377 $a4564978 $b4574979 $i4584980 $j4594981))))

; forwards $main_inv377
(assert
  (forall (($a4564978 (Array Int Int)) ($i4584980 Int) ($b4574979 (Array Int Int)) ($int4982 Int) ($j4594981 Int))
    (=> (and (<= (- 2147483648) $int4982)
             (<= $int4982 2147483647)
             (< $i4584980 10000)
             ($main_inv377 $a4564978 $b4574979 $i4584980 $j4594981))
        ($main_inv377 $a4564978 (store $b4574979 $i4584980 $int4982) (+ $i4584980 1) $j4594981))))

; loop entry $main_inv378
(assert
  (forall (($a4564983 (Array Int Int)) ($b4574984 (Array Int Int)) ($j4594986 Int) ($i4584985 Int))
    (=> (and ($main_sum377 $a4564983 $b4574984 $i4584985 $j4594986))
        ($main_inv378 $a4564983 $b4574984 0 $j4594986))))

; loop term $main_sum378
(assert
  (forall (($a4564987 (Array Int Int)) ($b4574988 (Array Int Int)) ($i4584989 Int) ($j4594990 Int))
    (=> (and (not (< $i4584989 10000))
             ($main_inv378 $a4564987 $b4574988 $i4584989 $j4594990))
        ($main_sum378 $a4564987 $b4574988 $i4584989 $j4594990))))

; forwards $main_inv378
(assert
  (forall (($a4564987 (Array Int Int)) ($j4594990 Int) ($b4574988 (Array Int Int)) ($i4584989 Int))
    (=> (and (< $i4584989 10000)
             ($main_inv378 $a4564987 $b4574988 $i4584989 $j4594990))
        ($main_inv378 (store $a4564987 $j4594990 (select $b4574988 $i4584989)) $b4574988 (+ $i4584989 1) (+ $j4594990 1)))))

; loop entry $main_inv379
(assert
  (forall (($a4564991 (Array Int Int)) ($b4574992 (Array Int Int)) ($i4584993 Int) ($j4594994 Int))
    (=> (and ($main_sum378 $a4564991 $b4574992 $i4584993 $j4594994))
        ($main_inv379 $a4564991 $b4574992 0 0))))

; loop term $main_sum379
(assert
  (forall (($a4564995 (Array Int Int)) ($b4574996 (Array Int Int)) ($i4584997 Int) ($j4594998 Int))
    (=> (and (not (< $i4584997 10000))
             ($main_inv379 $a4564995 $b4574996 $i4584997 $j4594998))
        ($main_sum379 $a4564995 $b4574996 $i4584997 $j4594998))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4564995 (Array Int Int)) ($j4594998 Int) ($b4574996 (Array Int Int)) ($i4584997 Int))
    (=> (and (< $i4584997 10000)
             ($main_inv379 $a4564995 $b4574996 $i4584997 $j4594998))
        ($__VERIFIER_assert_pre (ite (= (select $a4564995 $j4594998) (select $b4574996 $j4594998)) 1 0)))))

; forwards $main_inv379
(assert
  (forall (($a4564995 (Array Int Int)) ($b4574996 (Array Int Int)) ($i4584997 Int) ($j4594998 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4564995 $j4594998) (select $b4574996 $j4594998)) 1 0))
             (< $i4584997 10000)
             ($main_inv379 $a4564995 $b4574996 $i4584997 $j4594998))
        ($main_inv379 $a4564995 $b4574996 (+ $i4584997 1) (+ $j4594998 1)))))

(check-sat)
