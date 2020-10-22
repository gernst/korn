(set-logic HORN)

(declare-fun $main_inv11 (Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_sum11 (Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv12 (Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if11 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum12 (Int Int (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_if10 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if10 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond171 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if10 cond cond171))
        (assume_abort_if_not cond171))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond172 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond172))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if11 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond173 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if11 cond cond173))
        (__VERIFIER_assert cond173))))

; assume_abort_if_not precondition
(assert
  (forall (($S20 Int) ($int174 Int))
    (=> (and (= $S20 $int174)
             (<= (- 2147483648) $int174)
             (<= $int174 2147483647))
        ($assume_abort_if_not_pre (ite (> $S20 1) 1 0)))))

; loop entry $main_inv11
(assert
  (forall (($S20 Int) ($a22 (Array Int Int)) ($acopy23 (Array Int Int)) ($int174 Int))
    (=> (and (assume_abort_if_not (ite (> $S20 1) 1 0))
             (= $S20 $int174)
             (<= (- 2147483648) $int174)
             (<= $int174 2147483647))
        ($main_inv11 $S20 0 $a22 $acopy23))))

; loop term $main_sum11
(assert
  (forall (($S20175 Int) ($i21176 Int) ($a22177 (Array Int Int)) ($acopy23178 (Array Int Int)))
    (=> (and (not (< $i21176 $S20175)))
        ($main_sum11 $S20175 $i21176 $a22177 $acopy23178 $S20175 $i21176 $a22177 $acopy23178))))

; forwards $main_inv11
(assert
  (forall (($S20175 Int) ($i21176 Int) ($a22177 (Array Int Int)) ($acopy23178 (Array Int Int)))
    (=> (and (< $i21176 $S20175)
             ($main_inv11 $S20175 $i21176 $a22177 $acopy23178))
        ($main_inv11 $S20175 (+ $i21176 1) $a22177 (store (store $acopy23178 (- (* 2 $S20175) (+ $i21176 1)) (select $a22177 (- (* 2 $S20175) (+ $i21176 1)))) $i21176 (select $a22177 $i21176))))))

; backwards $main_sum11
(assert
  (forall (($S20179 Int) ($a22181 (Array Int Int)) ($a22177 (Array Int Int)) ($S20175 Int) ($acopy23178 (Array Int Int)) ($i21180 Int) ($i21176 Int) ($acopy23182 (Array Int Int)))
    (=> (and ($main_sum11 $S20175 (+ $i21176 1) $a22177 (store (store $acopy23178 (- (* 2 $S20175) (+ $i21176 1)) (select $a22177 (- (* 2 $S20175) (+ $i21176 1)))) $i21176 (select $a22177 $i21176)) $S20179 $i21180 $a22181 $acopy23182)
             (< $i21176 $S20175))
        ($main_sum11 $S20175 $i21176 $a22177 $acopy23178 $S20179 $i21180 $a22181 $acopy23182))))

; loop entry $main_inv12
(assert
  (forall (($i21184 Int) ($int174 Int) ($a22 (Array Int Int)) ($a22185 (Array Int Int)) ($acopy23 (Array Int Int)) ($acopy23186 (Array Int Int)) ($S20183 Int) ($S20 Int))
    (=> (and ($main_sum11 $S20 0 $a22 $acopy23 $S20183 $i21184 $a22185 $acopy23186)
             (assume_abort_if_not (ite (> $S20 1) 1 0))
             (= $S20 $int174)
             (<= (- 2147483648) $int174)
             (<= $int174 2147483647))
        ($main_inv12 $S20183 0 $a22185 $acopy23186))))

; loop term $main_sum12
(assert
  (forall (($S20187 Int) ($i21188 Int) ($a22189 (Array Int Int)) ($acopy23190 (Array Int Int)))
    (=> (and (not (< $i21188 (* 2 $S20187))))
        ($main_sum12 $S20187 $i21188 $a22189 $acopy23190 $S20187 $i21188 $a22189 $acopy23190))))

; __VERIFIER_assert precondition
(assert
  (forall (($acopy23190 (Array Int Int)) ($i21188 Int) ($a22189 (Array Int Int)) ($S20187 Int))
    (=> (and (< $i21188 (* 2 $S20187))
             ($main_inv12 $S20187 $i21188 $a22189 $acopy23190))
        ($__VERIFIER_assert_pre (ite (= (select $acopy23190 $i21188) (select $a22189 $i21188)) 1 0)))))

; forwards $main_inv12
(assert
  (forall (($S20187 Int) ($i21188 Int) ($a22189 (Array Int Int)) ($acopy23190 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $acopy23190 $i21188) (select $a22189 $i21188)) 1 0))
             (< $i21188 (* 2 $S20187))
             ($main_inv12 $S20187 $i21188 $a22189 $acopy23190))
        ($main_inv12 $S20187 (+ $i21188 1) $a22189 $acopy23190))))

; backwards $main_sum12
(assert
  (forall (($acopy23190 (Array Int Int)) ($S20191 Int) ($S20187 Int) ($i21192 Int) ($a22193 (Array Int Int)) ($i21188 Int) ($acopy23194 (Array Int Int)) ($a22189 (Array Int Int)))
    (=> (and ($main_sum12 $S20187 (+ $i21188 1) $a22189 $acopy23190 $S20191 $i21192 $a22193 $acopy23194)
             (__VERIFIER_assert (ite (= (select $acopy23190 $i21188) (select $a22189 $i21188)) 1 0))
             (< $i21188 (* 2 $S20187)))
        ($main_sum12 $S20187 $i21188 $a22189 $acopy23190 $S20191 $i21192 $a22193 $acopy23194))))

(check-sat)
