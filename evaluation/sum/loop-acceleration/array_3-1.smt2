(set-logic HORN)

(declare-fun $__VERIFIER_assert_if160 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum434 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $main_inv435 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv434 ((Array Int Int) Int) Bool)
(declare-fun $main_sum435 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $main_if161 ((Array Int Int) Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8110 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8110))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if160 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8111 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if160 cond cond8111))
        (__VERIFIER_assert cond8111))))

; loop entry $main_inv434
(assert
  (forall (($A546 (Array Int Int)))
        ($main_inv434 $A546 0)))

; loop term $main_sum434
(assert
  (forall (($A5468112 (Array Int Int)) ($i5478113 Int))
    (=> (and (not (< $i5478113 1024)))
        ($main_sum434 $A5468112 $i5478113 $A5468112 $i5478113))))

; forwards $main_inv434
(assert
  (forall (($A5468112 (Array Int Int)) ($i5478113 Int) ($int8114 Int))
    (=> (and (<= (- 2147483648) $int8114)
             (<= $int8114 2147483647)
             (< $i5478113 1024)
             ($main_inv434 $A5468112 $i5478113))
        ($main_inv434 (store $A5468112 $i5478113 $int8114) (+ $i5478113 1)))))

; backwards $main_sum434
(assert
  (forall (($i5478116 Int) ($A5468112 (Array Int Int)) ($A5468115 (Array Int Int)) ($i5478113 Int) ($int8114 Int))
    (=> (and ($main_sum434 (store $A5468112 $i5478113 $int8114) (+ $i5478113 1) $A5468115 $i5478116)
             (<= (- 2147483648) $int8114)
             (<= $int8114 2147483647)
             (< $i5478113 1024))
        ($main_sum434 $A5468112 $i5478113 $A5468115 $i5478116))))

; loop entry $main_inv435
(assert
  (forall (($A5468117 (Array Int Int)) ($A546 (Array Int Int)) ($i5478118 Int))
    (=> (and ($main_sum434 $A546 0 $A5468117 $i5478118))
        ($main_inv435 $A5468117 0))))

; loop term $main_sum435
(assert
  (forall (($A5468119 (Array Int Int)) ($i5478120 Int))
    (=> (and (= (select $A5468119 $i5478120) 0))
        ($main_sum435 $A5468119 $i5478120 $A5468119 $i5478120))))

; break $main_sum435
(assert
  (forall (($A5468119 (Array Int Int)) ($i5478120 Int))
    (=> (and (>= $i5478120 (- 1024 1))
             (not (= (select $A5468119 $i5478120) 0))
             ($main_inv435 $A5468119 $i5478120))
        ($main_sum435 $A5468119 $i5478120 $A5468119 $i5478120))))

; if else
(assert
  (forall (($A5468119 (Array Int Int)) ($i5478120 Int))
    (=> (and (not (>= $i5478120 (- 1024 1)))
             (not (= (select $A5468119 $i5478120) 0))
             ($main_inv435 $A5468119 $i5478120))
        ($main_if161 $A5468119 $i5478120 $A5468119 $i5478120))))

; forwards $main_inv435
(assert
  (forall (($A5468121 (Array Int Int)) ($i5478122 Int) ($A5468119 (Array Int Int)) ($i5478120 Int))
    (=> (and ($main_if161 $A5468119 $i5478120 $A5468121 $i5478122))
        ($main_inv435 $A5468121 (+ $i5478122 1)))))

; backwards $main_sum435
(assert
  (forall (($i5478120 Int) ($A5468119 (Array Int Int)) ($i5478122 Int) ($A5468121 (Array Int Int)) ($i5478124 Int) ($A5468123 (Array Int Int)))
    (=> (and ($main_sum435 $A5468121 (+ $i5478122 1) $A5468123 $i5478124)
             ($main_if161 $A5468119 $i5478120 $A5468121 $i5478122))
        ($main_sum435 $A5468119 $i5478120 $A5468123 $i5478124))))

; __VERIFIER_assert precondition
(assert
  (forall (($A5468125 (Array Int Int)) ($i5478118 Int) ($i5478126 Int) ($A5468117 (Array Int Int)) ($A546 (Array Int Int)))
    (=> (and ($main_sum435 $A5468117 0 $A5468125 $i5478126)
             ($main_sum434 $A546 0 $A5468117 $i5478118))
        ($__VERIFIER_assert_pre (ite (<= $i5478126 1024) 1 0)))))

(check-sat)
