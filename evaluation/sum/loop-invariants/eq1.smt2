(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if522 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum126 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv126 (Int Int Int Int) Bool)
(declare-fun $main_if523 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13961 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13961))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if522 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13962 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if522 cond cond13962))
        (__VERIFIER_assert cond13962))))

; loop entry $main_inv126
(assert
  (forall (($z453 Int) ($y452 Int) ($uint13963 Int) ($uint13964 Int) ($x451 Int) ($w450 Int))
    (=> (and (= $z453 $y452)
             (= $y452 $uint13964)
             (<= 0 $uint13964)
             (<= $uint13964 4294967295)
             (= $x451 $w450)
             (= $w450 $uint13963)
             (<= 0 $uint13963)
             (<= $uint13963 4294967295))
        ($main_inv126 $w450 $x451 $y452 $z453))))

; loop term $main_sum126
(assert
  (forall (($z45313968 Int) ($w45013965 Int) ($uint13969 Int) ($x45113966 Int) ($y45213967 Int))
    (=> (and (= $uint13969 0)
             (<= 0 $uint13969)
             (<= $uint13969 4294967295))
        ($main_sum126 $w45013965 $x45113966 $y45213967 $z45313968 $w45013965 $x45113966 $y45213967 $z45313968))))

; if then
(assert
  (forall (($z45313968 Int) ($w45013965 Int) ($uint13970 Int) ($uint13969 Int) ($x45113966 Int) ($y45213967 Int))
    (=> (and (not (= $uint13970 0))
             (<= 0 $uint13970)
             (<= $uint13970 4294967295)
             (not (= $uint13969 0))
             (<= 0 $uint13969)
             (<= $uint13969 4294967295)
             ($main_inv126 $w45013965 $x45113966 $y45213967 $z45313968))
        ($main_if523 $w45013965 $x45113966 $y45213967 $z45313968 (+ $w45013965 1) (+ $x45113966 1) $y45213967 $z45313968))))

; if else
(assert
  (forall (($z45313968 Int) ($w45013965 Int) ($uint13970 Int) ($uint13969 Int) ($x45113966 Int) ($y45213967 Int))
    (=> (and (= $uint13970 0)
             (<= 0 $uint13970)
             (<= $uint13970 4294967295)
             (not (= $uint13969 0))
             (<= 0 $uint13969)
             (<= $uint13969 4294967295)
             ($main_inv126 $w45013965 $x45113966 $y45213967 $z45313968))
        ($main_if523 $w45013965 $x45113966 $y45213967 $z45313968 $w45013965 $x45113966 (- $y45213967 1) (- $z45313968 1)))))

; forwards $main_inv126
(assert
  (forall (($z45313968 Int) ($w45013965 Int) ($z45313974 Int) ($x45113966 Int) ($x45113972 Int) ($w45013971 Int) ($y45213973 Int) ($y45213967 Int))
    (=> (and ($main_if523 $w45013965 $x45113966 $y45213967 $z45313968 $w45013971 $x45113972 $y45213973 $z45313974))
        ($main_inv126 $w45013971 $x45113972 $y45213973 $z45313974))))

; backwards $main_sum126
(assert
  (forall (($y45213977 Int) ($z45313968 Int) ($x45113976 Int) ($z45313978 Int) ($w45013965 Int) ($z45313974 Int) ($x45113966 Int) ($w45013975 Int) ($x45113972 Int) ($w45013971 Int) ($y45213973 Int) ($y45213967 Int))
    (=> (and ($main_sum126 $w45013971 $x45113972 $y45213973 $z45313974 $w45013975 $x45113976 $y45213977 $z45313978)
             ($main_if523 $w45013965 $x45113966 $y45213967 $z45313968 $w45013971 $x45113972 $y45213973 $z45313974))
        ($main_sum126 $w45013965 $x45113966 $y45213967 $z45313968 $w45013975 $x45113976 $y45213977 $z45313978))))

; __VERIFIER_assert precondition
(assert
  (forall (($z453 Int) ($y452 Int) ($uint13963 Int) ($x45113980 Int) ($uint13964 Int) ($w450 Int) ($x451 Int) ($w45013979 Int) ($z45313982 Int) ($y45213981 Int))
    (=> (and ($main_sum126 $w450 $x451 $y452 $z453 $w45013979 $x45113980 $y45213981 $z45313982)
             (= $z453 $y452)
             (= $y452 $uint13964)
             (<= 0 $uint13964)
             (<= $uint13964 4294967295)
             (= $x451 $w450)
             (= $w450 $uint13963)
             (<= 0 $uint13963)
             (<= $uint13963 4294967295))
        ($__VERIFIER_assert_pre (ite (and (= $w45013979 $x45113980) (= $y45213981 $z45313982)) 1 0)))))

(check-sat)
