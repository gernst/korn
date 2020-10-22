(set-logic HORN)

(declare-fun $main_sum440 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv440 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv441 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if164 (Int Int) Bool)
(declare-fun $main_sum441 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $main_if165 ((Array Int Int) Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8157 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8157))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if164 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8158 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if164 cond cond8158))
        (__VERIFIER_assert cond8158))))

; loop entry $main_inv440
(assert
  (forall (($array552 (Array Int Int)))
        ($main_inv440 $array552 0)))

; loop term $main_sum440
(assert
  (forall (($array5528159 (Array Int Int)) ($index5538160 Int))
    (=> (and (not (< $index5538160 1000)))
        ($main_sum440 $array5528159 $index5538160 $array5528159 $index5538160))))

; forwards $main_inv440
(assert
  (forall (($array5528159 (Array Int Int)) ($index5538160 Int))
    (=> (and (< $index5538160 1000)
             ($main_inv440 $array5528159 $index5538160))
        ($main_inv440 (store $array5528159 $index5538160 (mod $index5538160 2)) (+ $index5538160 1)))))

; backwards $main_sum440
(assert
  (forall (($array5528159 (Array Int Int)) ($index5538160 Int) ($array5528161 (Array Int Int)) ($index5538162 Int))
    (=> (and ($main_sum440 (store $array5528159 $index5538160 (mod $index5538160 2)) (+ $index5538160 1) $array5528161 $index5538162)
             (< $index5538160 1000))
        ($main_sum440 $array5528159 $index5538160 $array5528161 $index5538162))))

; loop entry $main_inv441
(assert
  (forall (($array5528163 (Array Int Int)) ($array552 (Array Int Int)) ($index5538164 Int))
    (=> (and ($main_sum440 $array552 0 $array5528163 $index5538164))
        ($main_inv441 $array5528163 0))))

; loop term $main_sum441
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and (not (< $index5538166 1000)))
        ($main_sum441 $array5528165 $index5538166 $array5528165 $index5538166))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and (= (mod $index5538166 2) 0)
             (< $index5538166 1000)
             ($main_inv441 $array5528165 $index5538166))
        ($__VERIFIER_assert_pre (ite (= (select $array5528165 $index5538166) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and (not (= (mod $index5538166 2) 0))
             (< $index5538166 1000)
             ($main_inv441 $array5528165 $index5538166))
        ($__VERIFIER_assert_pre (ite (not (= (select $array5528165 $index5538166) 0)) 1 0)))))

; if then
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $array5528165 $index5538166) 0) 1 0))
             (= (mod $index5538166 2) 0)
             (< $index5538166 1000)
             ($main_inv441 $array5528165 $index5538166))
        ($main_if165 $array5528165 $index5538166 $array5528165 $index5538166))))

; if else
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $array5528165 $index5538166) 0)) 1 0))
             (not (= (mod $index5538166 2) 0))
             (< $index5538166 1000)
             ($main_inv441 $array5528165 $index5538166))
        ($main_if165 $array5528165 $index5538166 $array5528165 $index5538166))))

; forwards $main_inv441
(assert
  (forall (($array5528167 (Array Int Int)) ($index5538168 Int) ($array5528165 (Array Int Int)) ($index5538166 Int))
    (=> (and ($main_if165 $array5528165 $index5538166 $array5528167 $index5538168))
        ($main_inv441 $array5528167 (+ $index5538168 1)))))

; backwards $main_sum441
(assert
  (forall (($array5528165 (Array Int Int)) ($index5538170 Int) ($array5528167 (Array Int Int)) ($index5538168 Int) ($array5528169 (Array Int Int)) ($index5538166 Int))
    (=> (and ($main_sum441 $array5528167 (+ $index5538168 1) $array5528169 $index5538170)
             ($main_if165 $array5528165 $index5538166 $array5528167 $index5538168))
        ($main_sum441 $array5528165 $index5538166 $array5528169 $index5538170))))

(check-sat)
