(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv445 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum445 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if171 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if172 (Int) Bool)
(declare-fun $main_inv446 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum446 ((Array Int Int) Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if171 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5713 Int))
    (=> (and ($assume_abort_if_not_if171 cond5713))
        (assume_abort_if_not cond5713))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5714 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5714))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if172 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5715 Int))
    (=> (and ($__VERIFIER_assert_if172 cond5715))
        (__VERIFIER_assert cond5715))))

; loop entry $main_inv445
(assert
  (forall (($array560 (Array Int Int)) ($index561 Int) ($tmp562 Int))
    (=> (and (= $tmp562 0)
             (= $index561 0))
        ($main_inv445 $array560 $index561 $tmp562))))

; loop term $main_sum445
(assert
  (forall (($array5605716 (Array Int Int)) ($index5615717 Int) ($tmp5625718 Int))
    (=> (and (not (< $index5615717 10000))
             ($main_inv445 $array5605716 $index5615717 $tmp5625718))
        ($main_sum445 $array5605716 $index5615717 $tmp5625718))))

; forwards $main_inv445
(assert
  (forall (($array5605716 (Array Int Int)) ($index5615717 Int) ($tmp5625718 Int))
    (=> (and (< $index5615717 10000)
             ($main_inv445 $array5605716 $index5615717 $tmp5625718))
        ($main_inv445 (store $array5605716 $index5615717 $tmp5625718) (+ $index5615717 1) (+ $tmp5625718 2)))))

; loop entry $main_inv446
(assert
  (forall (($array5605719 (Array Int Int)) ($tmp5625721 Int) ($index5615720 Int))
    (=> (and ($main_sum445 $array5605719 $index5615720 $tmp5625721))
        ($main_inv446 $array5605719 0 $tmp5625721))))

; loop term $main_sum446
(assert
  (forall (($array5605722 (Array Int Int)) ($index5615723 Int) ($tmp5625724 Int))
    (=> (and (not (< $index5615723 10000))
             ($main_inv446 $array5605722 $index5615723 $tmp5625724))
        ($main_sum446 $array5605722 $index5615723 $tmp5625724))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5605722 (Array Int Int)) ($index5615723 Int) ($tmp5625724 Int))
    (=> (and (< $index5615723 10000)
             ($main_inv446 $array5605722 $index5615723 $tmp5625724))
        ($__VERIFIER_assert_pre (ite (or (= (select $array5605722 $index5615723) (* 2 $index5615723)) (= (select $array5605722 $index5615723) 0)) 1 0)))))

; forwards $main_inv446
(assert
  (forall (($array5605722 (Array Int Int)) ($index5615723 Int) ($tmp5625724 Int))
    (=> (and (__VERIFIER_assert (ite (or (= (select $array5605722 $index5615723) (* 2 $index5615723)) (= (select $array5605722 $index5615723) 0)) 1 0))
             (< $index5615723 10000)
             ($main_inv446 $array5605722 $index5615723 $tmp5625724))
        ($main_inv446 $array5605722 (+ $index5615723 1) $tmp5625724))))

(check-sat)
