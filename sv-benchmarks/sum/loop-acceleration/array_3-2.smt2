(set-logic HORN)

(declare-fun $main_sum437 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if162 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum436 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv436 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv437 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8127 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8127))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if162 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8128 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if162 cond cond8128))
        (__VERIFIER_assert cond8128))))

; loop entry $main_inv436
(assert
  (forall (($A548 (Array Int Int)))
        ($main_inv436 $A548 0)))

; loop term $main_sum436
(assert
  (forall (($A5488129 (Array Int Int)) ($i5498130 Int))
    (=> (and (not (< $i5498130 1024)))
        ($main_sum436 $A5488129 $i5498130 $A5488129 $i5498130))))

; forwards $main_inv436
(assert
  (forall (($A5488129 (Array Int Int)) ($i5498130 Int) ($int8131 Int))
    (=> (and (<= (- 2147483648) $int8131)
             (<= $int8131 2147483647)
             (< $i5498130 1024)
             ($main_inv436 $A5488129 $i5498130))
        ($main_inv436 (store $A5488129 $i5498130 $int8131) (+ $i5498130 1)))))

; backwards $main_sum436
(assert
  (forall (($A5488129 (Array Int Int)) ($A5488132 (Array Int Int)) ($i5498130 Int) ($int8131 Int) ($i5498133 Int))
    (=> (and ($main_sum436 (store $A5488129 $i5498130 $int8131) (+ $i5498130 1) $A5488132 $i5498133)
             (<= (- 2147483648) $int8131)
             (<= $int8131 2147483647)
             (< $i5498130 1024))
        ($main_sum436 $A5488129 $i5498130 $A5488132 $i5498133))))

; loop entry $main_inv437
(assert
  (forall (($A5488134 (Array Int Int)) ($A548 (Array Int Int)) ($i5498135 Int))
    (=> (and ($main_sum436 $A548 0 $A5488134 $i5498135))
        ($main_inv437 $A5488134 0))))

; loop term $main_sum437
(assert
  (forall (($A5488136 (Array Int Int)) ($i5498137 Int))
    (=> (and (not (and (< $i5498137 1024) (not (= (select $A5488136 $i5498137) 0)))))
        ($main_sum437 $A5488136 $i5498137 $A5488136 $i5498137))))

; forwards $main_inv437
(assert
  (forall (($A5488136 (Array Int Int)) ($i5498137 Int))
    (=> (and (< $i5498137 1024)
             (not (= (select $A5488136 $i5498137) 0))
             ($main_inv437 $A5488136 $i5498137))
        ($main_inv437 $A5488136 (+ $i5498137 1)))))

; backwards $main_sum437
(assert
  (forall (($A5488136 (Array Int Int)) ($i5498137 Int) ($A5488138 (Array Int Int)) ($i5498139 Int))
    (=> (and ($main_sum437 $A5488136 (+ $i5498137 1) $A5488138 $i5498139)
             (< $i5498137 1024)
             (not (= (select $A5488136 $i5498137) 0)))
        ($main_sum437 $A5488136 $i5498137 $A5488138 $i5498139))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5498135 Int) ($A5488140 (Array Int Int)) ($i5498141 Int) ($A548 (Array Int Int)) ($A5488134 (Array Int Int)))
    (=> (and ($main_sum437 $A5488134 0 $A5488140 $i5498141)
             ($main_sum436 $A548 0 $A5488134 $i5498135))
        ($__VERIFIER_assert_pre (ite (<= $i5498141 (div 1024 2)) 1 0)))))

(check-sat)
