(set-logic HORN)

(declare-fun $assume_abort_if_not_if166 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum442 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv442 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if167 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if168 ((Array Int Int) Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if166 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5684 Int))
    (=> (and ($assume_abort_if_not_if166 cond5684))
        (assume_abort_if_not cond5684))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5685 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5685))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if167 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5686 Int))
    (=> (and ($__VERIFIER_assert_if167 cond5686))
        (__VERIFIER_assert cond5686))))

; loop entry $main_inv442
(assert
  (forall (($array554 (Array Int Int)) ($index555 Int) ($tmp556 Int))
    (=> (and (= $tmp556 0)
             (= $index555 0))
        ($main_inv442 $array554 $index555 $tmp556))))

; loop term $main_sum442
(assert
  (forall (($array5545687 (Array Int Int)) ($index5555688 Int) ($tmp5565689 Int))
    (=> (and (= 1 0)
             ($main_inv442 $array5545687 $index5555688 $tmp5565689))
        ($main_sum442 $array5545687 $index5555688 $tmp5565689))))

; break $main_sum442
(assert
  (forall (($array5545687 (Array Int Int)) ($uint5690 Int) ($tmp5565689 Int) ($index5555688 Int))
    (=> (and (>= $uint5690 10000)
             (<= 0 $uint5690)
             (<= $uint5690 4294967295)
             (not (= 1 0))
             ($main_inv442 $array5545687 $index5555688 $tmp5565689))
        ($main_sum442 $array5545687 $uint5690 $tmp5565689))))

; if else
(assert
  (forall (($array5545687 (Array Int Int)) ($uint5690 Int) ($tmp5565689 Int) ($index5555688 Int))
    (=> (and (not (>= $uint5690 10000))
             (<= 0 $uint5690)
             (<= $uint5690 4294967295)
             (not (= 1 0))
             ($main_inv442 $array5545687 $index5555688 $tmp5565689))
        ($main_if168 $array5545687 $uint5690 $tmp5565689))))

; forwards $main_inv442
(assert
  (forall (($array5545691 (Array Int Int)) ($index5555692 Int) ($tmp5565693 Int))
    (=> (and ($main_if168 $array5545691 $index5555692 $tmp5565693))
        ($main_inv442 (store $array5545691 $index5555692 $index5555692) $index5555692 $index5555692))))

; __VERIFIER_assert precondition
(assert
  (forall (($tmp5565696 Int) ($array5545694 (Array Int Int)) ($index5555695 Int))
    (=> (and ($main_sum442 $array5545694 $index5555695 $tmp5565696))
        ($__VERIFIER_assert_pre (ite (and (< $tmp5565696 10000) (= (select $array5545694 $tmp5565696) $tmp5565696)) 1 0)))))

(check-sat)
