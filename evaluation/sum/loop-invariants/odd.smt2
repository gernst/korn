(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum132 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv132 (Int) Bool)
(declare-fun $__VERIFIER_assert_if533 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14063 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14063))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if533 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14064 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if533 cond cond14064))
        (__VERIFIER_assert cond14064))))

; loop entry $main_inv132
(assert
  (forall (($x468 Int))
    (=> (and (= $x468 1))
        ($main_inv132 $x468))))

; loop term $main_sum132
(assert
  (forall (($x46814065 Int) ($int14066 Int))
    (=> (and (= $int14066 0)
             (<= (- 2147483648) $int14066)
             (<= $int14066 2147483647))
        ($main_sum132 $x46814065 $x46814065))))

; forwards $main_inv132
(assert
  (forall (($x46814065 Int) ($int14066 Int))
    (=> (and (not (= $int14066 0))
             (<= (- 2147483648) $int14066)
             (<= $int14066 2147483647)
             ($main_inv132 $x46814065))
        ($main_inv132 (+ $x46814065 2)))))

; backwards $main_sum132
(assert
  (forall (($x46814065 Int) ($x46814067 Int) ($int14066 Int))
    (=> (and ($main_sum132 (+ $x46814065 2) $x46814067)
             (not (= $int14066 0))
             (<= (- 2147483648) $int14066)
             (<= $int14066 2147483647))
        ($main_sum132 $x46814065 $x46814067))))

; __VERIFIER_assert precondition
(assert
  (forall (($x46814068 Int) ($x468 Int))
    (=> (and ($main_sum132 $x468 $x46814068)
             (= $x468 1))
        ($__VERIFIER_assert_pre (mod $x46814068 2)))))

(check-sat)
