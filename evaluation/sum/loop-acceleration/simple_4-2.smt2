(set-logic HORN)

(declare-fun $main_sum117 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv117 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if507 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13875 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13875))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if507 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13876 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if507 cond cond13876))
        (__VERIFIER_assert cond13876))))

; loop entry $main_inv117
(assert
  (forall (($x432 Int))
    (=> (and (= $x432 268435440))
        ($main_inv117 $x432))))

; loop term $main_sum117
(assert
  (forall (($x43213877 Int))
    (=> (and (not (> $x43213877 0)))
        ($main_sum117 $x43213877 $x43213877))))

; forwards $main_inv117
(assert
  (forall (($x43213877 Int))
    (=> (and (> $x43213877 0)
             ($main_inv117 $x43213877))
        ($main_inv117 (- $x43213877 2)))))

; backwards $main_sum117
(assert
  (forall (($x43213877 Int) ($x43213878 Int))
    (=> (and ($main_sum117 (- $x43213877 2) $x43213878)
             (> $x43213877 0))
        ($main_sum117 $x43213877 $x43213878))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43213879 Int) ($x432 Int))
    (=> (and ($main_sum117 $x432 $x43213879)
             (= $x432 268435440))
        ($__VERIFIER_assert_pre (ite (= (mod $x43213879 2) 0) 1 0)))))

(check-sat)
