(set-logic HORN)

(declare-fun $__VERIFIER_assert_if507 (Int) Bool)
(declare-fun $main_sum117 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv117 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13061 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13061))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if507 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13062 Int))
    (=> (and ($__VERIFIER_assert_if507 cond13062))
        (__VERIFIER_assert cond13062))))

; loop entry $main_inv117
(assert
  (forall (($x432 Int))
    (=> (and (= $x432 268435440))
        ($main_inv117 $x432))))

; loop term $main_sum117
(assert
  (forall (($x43213063 Int))
    (=> (and (not (> $x43213063 0))
             ($main_inv117 $x43213063))
        ($main_sum117 $x43213063))))

; forwards $main_inv117
(assert
  (forall (($x43213063 Int))
    (=> (and (> $x43213063 0)
             ($main_inv117 $x43213063))
        ($main_inv117 (- $x43213063 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43213064 Int))
    (=> (and ($main_sum117 $x43213064))
        ($__VERIFIER_assert_pre (ite (= (mod $x43213064 2) 0) 1 0)))))

(check-sat)
