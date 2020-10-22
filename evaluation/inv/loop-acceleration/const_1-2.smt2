(set-logic HORN)

(declare-fun $main_inv93 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum93 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if465 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12892 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12892))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if465 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12893 Int))
    (=> (and ($__VERIFIER_assert_if465 cond12893))
        (__VERIFIER_assert cond12893))))

; loop entry $main_inv93
(assert
  (forall (($x398 Int) ($y399 Int))
    (=> (and (= $y399 0)
             (= $x398 1))
        ($main_inv93 $x398 $y399))))

; loop term $main_sum93
(assert
  (forall (($x39812894 Int) ($y39912895 Int))
    (=> (and (not (< $y39912895 1024))
             ($main_inv93 $x39812894 $y39912895))
        ($main_sum93 $x39812894 $y39912895))))

; forwards $main_inv93
(assert
  (forall (($y39912895 Int) ($x39812894 Int))
    (=> (and (< $y39912895 1024)
             ($main_inv93 $x39812894 $y39912895))
        ($main_inv93 0 (+ $y39912895 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x39812896 Int) ($y39912897 Int))
    (=> (and ($main_sum93 $x39812896 $y39912897))
        ($__VERIFIER_assert_pre (ite (= $x39812896 1) 1 0)))))

(check-sat)
