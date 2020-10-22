(set-logic HORN)

(declare-fun $__VERIFIER_assert_if164 (Int) Bool)
(declare-fun $main_sum441 ((Array Int Int) Int) Bool)
(declare-fun $main_sum440 ((Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv440 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if165 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv441 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5672 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5672))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if164 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5673 Int))
    (=> (and ($__VERIFIER_assert_if164 cond5673))
        (__VERIFIER_assert cond5673))))

; loop entry $main_inv440
(assert
  (forall (($array552 (Array Int Int)))
        ($main_inv440 $array552 0)))

; loop term $main_sum440
(assert
  (forall (($array5525674 (Array Int Int)) ($index5535675 Int))
    (=> (and (not (< $index5535675 1000))
             ($main_inv440 $array5525674 $index5535675))
        ($main_sum440 $array5525674 $index5535675))))

; forwards $main_inv440
(assert
  (forall (($array5525674 (Array Int Int)) ($index5535675 Int))
    (=> (and (< $index5535675 1000)
             ($main_inv440 $array5525674 $index5535675))
        ($main_inv440 (store $array5525674 $index5535675 (mod $index5535675 2)) (+ $index5535675 1)))))

; loop entry $main_inv441
(assert
  (forall (($array5525676 (Array Int Int)) ($index5535677 Int))
    (=> (and ($main_sum440 $array5525676 $index5535677))
        ($main_inv441 $array5525676 0))))

; loop term $main_sum441
(assert
  (forall (($array5525678 (Array Int Int)) ($index5535679 Int))
    (=> (and (not (< $index5535679 1000))
             ($main_inv441 $array5525678 $index5535679))
        ($main_sum441 $array5525678 $index5535679))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5525678 (Array Int Int)) ($index5535679 Int))
    (=> (and (= (mod $index5535679 2) 0)
             (< $index5535679 1000)
             ($main_inv441 $array5525678 $index5535679))
        ($__VERIFIER_assert_pre (ite (= (select $array5525678 $index5535679) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5525678 (Array Int Int)) ($index5535679 Int))
    (=> (and (not (= (mod $index5535679 2) 0))
             (< $index5535679 1000)
             ($main_inv441 $array5525678 $index5535679))
        ($__VERIFIER_assert_pre (ite (not (= (select $array5525678 $index5535679) 0)) 1 0)))))

; if then
(assert
  (forall (($array5525678 (Array Int Int)) ($index5535679 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $array5525678 $index5535679) 0) 1 0))
             (= (mod $index5535679 2) 0)
             (< $index5535679 1000)
             ($main_inv441 $array5525678 $index5535679))
        ($main_if165 $array5525678 $index5535679))))

; if else
(assert
  (forall (($array5525678 (Array Int Int)) ($index5535679 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $array5525678 $index5535679) 0)) 1 0))
             (not (= (mod $index5535679 2) 0))
             (< $index5535679 1000)
             ($main_inv441 $array5525678 $index5535679))
        ($main_if165 $array5525678 $index5535679))))

; forwards $main_inv441
(assert
  (forall (($array5525680 (Array Int Int)) ($index5535681 Int))
    (=> (and ($main_if165 $array5525680 $index5535681))
        ($main_inv441 $array5525680 (+ $index5535681 1)))))

(check-sat)
