(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv406 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum406 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if129 (Int) Bool)
(declare-fun $main_sum404 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum405 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv404 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv405 ((Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5219 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5219))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if129 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5220 Int))
    (=> (and ($__VERIFIER_assert_if129 cond5220))
        (__VERIFIER_assert cond5220))))

; loop entry $main_inv404
(assert
  (forall (($aa492 (Array Int Int)) ($a493 Int) ($i494 Int) ($x495 Int))
    (=> (and (= $i494 0)
             (= $a493 0))
        ($main_inv404 $aa492 $a493 $i494 $x495))))

; loop term $main_sum404
(assert
  (forall (($aa4925221 (Array Int Int)) ($a4935222 Int) ($i4945223 Int) ($x4955224 Int))
    (=> (and (not (< $i4945223 100000))
             ($main_inv404 $aa4925221 $a4935222 $i4945223 $x4955224))
        ($main_sum404 $aa4925221 $a4935222 $i4945223 $x4955224))))

; forwards $main_inv404
(assert
  (forall (($i4945223 Int) ($x4955224 Int) ($a4935222 Int) ($aa4925221 (Array Int Int)) ($int5225 Int))
    (=> (and (<= (- 2147483648) $int5225)
             (<= $int5225 2147483647)
             (< $i4945223 100000)
             ($main_inv404 $aa4925221 $a4935222 $i4945223 $x4955224))
        ($main_inv404 (store $aa4925221 $i4945223 $int5225) $a4935222 (+ $i4945223 1) $x4955224))))

; loop entry $main_inv405
(assert
  (forall (($aa4925226 (Array Int Int)) ($a4935227 Int) ($i4945228 Int) ($x4955229 Int))
    (=> (and ($main_sum404 $aa4925226 $a4935227 $i4945228 $x4955229))
        ($main_inv405 $aa4925226 $a4935227 $i4945228 $x4955229))))

; loop term $main_sum405
(assert
  (forall (($aa4925230 (Array Int Int)) ($a4935231 Int) ($i4945232 Int) ($x4955233 Int))
    (=> (and (not (>= (select $aa4925230 $a4935231) 0))
             ($main_inv405 $aa4925230 $a4935231 $i4945232 $x4955233))
        ($main_sum405 $aa4925230 $a4935231 $i4945232 $x4955233))))

; forwards $main_inv405
(assert
  (forall (($aa4925230 (Array Int Int)) ($a4935231 Int) ($i4945232 Int) ($x4955233 Int))
    (=> (and (>= (select $aa4925230 $a4935231) 0)
             ($main_inv405 $aa4925230 $a4935231 $i4945232 $x4955233))
        ($main_inv405 $aa4925230 (+ $a4935231 1) $i4945232 $x4955233))))

; loop entry $main_inv406
(assert
  (forall (($aa4925234 (Array Int Int)) ($a4935235 Int) ($i4945236 Int) ($x4955237 Int))
    (=> (and ($main_sum405 $aa4925234 $a4935235 $i4945236 $x4955237))
        ($main_inv406 $aa4925234 $a4935235 $i4945236 0))))

; loop term $main_sum406
(assert
  (forall (($aa4925238 (Array Int Int)) ($a4935239 Int) ($i4945240 Int) ($x4955241 Int))
    (=> (and (not (< $x4955241 $a4935239))
             ($main_inv406 $aa4925238 $a4935239 $i4945240 $x4955241))
        ($main_sum406 $aa4925238 $a4935239 $i4945240 $x4955241))))

; __VERIFIER_assert precondition
(assert
  (forall (($aa4925238 (Array Int Int)) ($x4955241 Int) ($a4935239 Int) ($i4945240 Int))
    (=> (and (< $x4955241 $a4935239)
             ($main_inv406 $aa4925238 $a4935239 $i4945240 $x4955241))
        ($__VERIFIER_assert_pre (ite (>= (select $aa4925238 $x4955241) 0) 1 0)))))

; forwards $main_inv406
(assert
  (forall (($aa4925238 (Array Int Int)) ($a4935239 Int) ($i4945240 Int) ($x4955241 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $aa4925238 $x4955241) 0) 1 0))
             (< $x4955241 $a4935239)
             ($main_inv406 $aa4925238 $a4935239 $i4945240 $x4955241))
        ($main_inv406 $aa4925238 $a4935239 $i4945240 (+ $x4955241 1)))))

(check-sat)
