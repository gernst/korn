(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv367 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum367 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv366 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if114 (Int Int) Bool)
(declare-fun $main_sum366 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7039 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7039))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if114 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7040 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if114 cond cond7040))
        (__VERIFIER_assert cond7040))))

; loop entry $main_inv366
(assert
  (forall (($a438 (Array Int Int)) ($x440 Int))
        ($main_inv366 (store $a438 0 7) 1 $x440)))

; loop term $main_sum366
(assert
  (forall (($a4387041 (Array Int Int)) ($i4397042 Int) ($x4407043 Int))
    (=> (and (not (< $i4397042 100000)))
        ($main_sum366 $a4387041 $i4397042 $x4407043 $a4387041 $i4397042 $x4407043))))

; forwards $main_inv366
(assert
  (forall (($a4387041 (Array Int Int)) ($i4397042 Int) ($x4407043 Int))
    (=> (and (< $i4397042 100000)
             ($main_inv366 $a4387041 $i4397042 $x4407043))
        ($main_inv366 (store $a4387041 $i4397042 (+ (select $a4387041 (- $i4397042 1)) 1)) (+ $i4397042 1) $x4407043))))

; backwards $main_sum366
(assert
  (forall (($x4407046 Int) ($x4407043 Int) ($i4397045 Int) ($a4387044 (Array Int Int)) ($a4387041 (Array Int Int)) ($i4397042 Int))
    (=> (and ($main_sum366 (store $a4387041 $i4397042 (+ (select $a4387041 (- $i4397042 1)) 1)) (+ $i4397042 1) $x4407043 $a4387044 $i4397045 $x4407046)
             (< $i4397042 100000))
        ($main_sum366 $a4387041 $i4397042 $x4407043 $a4387044 $i4397045 $x4407046))))

; loop entry $main_inv367
(assert
  (forall (($x4407049 Int) ($a438 (Array Int Int)) ($i4397048 Int) ($a4387047 (Array Int Int)) ($x440 Int))
    (=> (and ($main_sum366 (store $a438 0 7) 1 $x440 $a4387047 $i4397048 $x4407049))
        ($main_inv367 $a4387047 $i4397048 1))))

; loop term $main_sum367
(assert
  (forall (($a4387050 (Array Int Int)) ($i4397051 Int) ($x4407052 Int))
    (=> (and (not (< $x4407052 100000)))
        ($main_sum367 $a4387050 $i4397051 $x4407052 $a4387050 $i4397051 $x4407052))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4387050 (Array Int Int)) ($x4407052 Int) ($i4397051 Int))
    (=> (and (< $x4407052 100000)
             ($main_inv367 $a4387050 $i4397051 $x4407052))
        ($__VERIFIER_assert_pre (ite (>= (select $a4387050 $x4407052) (select $a4387050 (- $x4407052 1))) 1 0)))))

; forwards $main_inv367
(assert
  (forall (($a4387050 (Array Int Int)) ($i4397051 Int) ($x4407052 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a4387050 $x4407052) (select $a4387050 (- $x4407052 1))) 1 0))
             (< $x4407052 100000)
             ($main_inv367 $a4387050 $i4397051 $x4407052))
        ($main_inv367 $a4387050 $i4397051 (+ $x4407052 1)))))

; backwards $main_sum367
(assert
  (forall (($i4397054 Int) ($a4387050 (Array Int Int)) ($i4397051 Int) ($a4387053 (Array Int Int)) ($x4407055 Int) ($x4407052 Int))
    (=> (and ($main_sum367 $a4387050 $i4397051 (+ $x4407052 1) $a4387053 $i4397054 $x4407055)
             (__VERIFIER_assert (ite (>= (select $a4387050 $x4407052) (select $a4387050 (- $x4407052 1))) 1 0))
             (< $x4407052 100000))
        ($main_sum367 $a4387050 $i4397051 $x4407052 $a4387053 $i4397054 $x4407055))))

(check-sat)
