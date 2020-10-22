(set-logic HORN)

(declare-fun $main_sum94 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if466 (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv94 (Int Int) Bool)
(declare-fun $main_if467 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12898 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12898))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if466 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12899 Int))
    (=> (and ($__VERIFIER_assert_if466 cond12899))
        (__VERIFIER_assert cond12899))))

; loop entry $main_inv94
(assert
  (forall (($x400 Int) ($y401 Int) ($uint12900 Int))
    (=> (and (= $y401 $uint12900)
             (<= 0 $uint12900)
             (<= $uint12900 4294967295)
             (= $x400 0))
        ($main_inv94 $x400 $y401))))

; loop term $main_sum94
(assert
  (forall (($x40012901 Int) ($y40112902 Int))
    (=> (and (not (< $x40012901 99))
             ($main_inv94 $x40012901 $y40112902))
        ($main_sum94 $x40012901 $y40112902))))

; if then
(assert
  (forall (($x40012901 Int) ($y40112902 Int))
    (=> (and (= (mod $y40112902 2) 0)
             (< $x40012901 99)
             ($main_inv94 $x40012901 $y40112902))
        ($main_if467 (+ $x40012901 2) $y40112902))))

; if else
(assert
  (forall (($x40012901 Int) ($y40112902 Int))
    (=> (and (not (= (mod $y40112902 2) 0))
             (< $x40012901 99)
             ($main_inv94 $x40012901 $y40112902))
        ($main_if467 (+ $x40012901 1) $y40112902))))

; forwards $main_inv94
(assert
  (forall (($x40012903 Int) ($y40112904 Int))
    (=> (and ($main_if467 $x40012903 $y40112904))
        ($main_inv94 $x40012903 $y40112904))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40012905 Int) ($y40112906 Int))
    (=> (and ($main_sum94 $x40012905 $y40112906))
        ($__VERIFIER_assert_pre (ite (= (mod $x40012905 2) (mod $y40112906 2)) 1 0)))))

(check-sat)
