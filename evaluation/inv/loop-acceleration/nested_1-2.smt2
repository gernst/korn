(set-logic HORN)

(declare-fun $main_inv103 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if486 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv104 (Int Int) Bool)
(declare-fun $main_sum104 (Int Int) Bool)
(declare-fun $main_sum103 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12977 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12977))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if486 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12978 Int))
    (=> (and ($__VERIFIER_assert_if486 cond12978))
        (__VERIFIER_assert cond12978))))

; loop entry $main_inv103
(assert
  (forall (($x414 Int) ($y415 Int))
    (=> (and (= $y415 0)
             (= $x414 0))
        ($main_inv103 $x414 $y415))))

; loop term $main_sum103
(assert
  (forall (($x41412979 Int) ($y41512980 Int))
    (=> (and (not (< $x41412979 268435455))
             ($main_inv103 $x41412979 $y41512980))
        ($main_sum103 $x41412979 $y41512980))))

; loop entry $main_inv104
(assert
  (forall (($x41412979 Int) ($y41512980 Int))
    (=> (and (< $x41412979 268435455)
             ($main_inv103 $x41412979 $y41512980))
        ($main_inv104 $x41412979 0))))

; loop term $main_sum104
(assert
  (forall (($x41412981 Int) ($y41512982 Int))
    (=> (and (not (< $y41512982 10))
             ($main_inv104 $x41412981 $y41512982))
        ($main_sum104 $x41412981 $y41512982))))

; forwards $main_inv104
(assert
  (forall (($x41412981 Int) ($y41512982 Int))
    (=> (and (< $y41512982 10)
             ($main_inv104 $x41412981 $y41512982))
        ($main_inv104 $x41412981 (+ $y41512982 1)))))

; forwards $main_inv103
(assert
  (forall (($x41412983 Int) ($y41512984 Int))
    (=> (and ($main_sum104 $x41412983 $y41512984))
        ($main_inv103 (+ $x41412983 1) $y41512984))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41412985 Int) ($y41512986 Int))
    (=> (and ($main_sum103 $x41412985 $y41512986))
        ($__VERIFIER_assert_pre (ite (= (mod $x41412985 2) 0) 1 0)))))

(check-sat)
