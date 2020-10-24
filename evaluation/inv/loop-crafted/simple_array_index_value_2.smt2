(set-logic HORN)

(declare-fun $__VERIFIER_assert_if170 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv444 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv443 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum443 ((Array Int Int) Int Int) Bool)
(declare-fun $assume_abort_if_not_if169 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum444 ((Array Int Int) Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if169 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5697 Int))
    (=> (and ($assume_abort_if_not_if169 cond5697))
        (assume_abort_if_not cond5697))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5698 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5698))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if170 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5699 Int))
    (=> (and ($__VERIFIER_assert_if170 cond5699))
        (__VERIFIER_assert cond5699))))

; loop entry $main_inv443
(assert
  (forall (($array557 (Array Int Int)) ($tmp559 Int))
        ($main_inv443 $array557 0 $tmp559)))

; loop term $main_sum443
(assert
  (forall (($array5575700 (Array Int Int)) ($index5585701 Int) ($tmp5595702 Int))
    (=> (and (not (< $index5585701 10000))
             ($main_inv443 $array5575700 $index5585701 $tmp5595702))
        ($main_sum443 $array5575700 $index5585701 $tmp5595702))))

; assume_abort_if_not precondition
(assert
  (forall (($tmp5595702 Int) ($index5585701 Int) ($uint5703 Int) ($array5575700 (Array Int Int)))
    (=> (and (= $tmp5595702 $uint5703)
             (<= 0 $uint5703)
             (<= $uint5703 4294967295)
             (< $index5585701 10000)
             ($main_inv443 $array5575700 $index5585701 $tmp5595702))
        ($assume_abort_if_not_pre (ite (> $tmp5595702 $index5585701) 1 0)))))

; forwards $main_inv443
(assert
  (forall (($array5575700 (Array Int Int)) ($index5585701 Int) ($tmp5595702 Int) ($uint5703 Int))
    (=> (and (assume_abort_if_not (ite (> $tmp5595702 $index5585701) 1 0))
             (= $tmp5595702 $uint5703)
             (<= 0 $uint5703)
             (<= $uint5703 4294967295)
             (< $index5585701 10000)
             ($main_inv443 $array5575700 $index5585701 $tmp5595702))
        ($main_inv443 (store $array5575700 $index5585701 $tmp5595702) (+ $index5585701 1) $tmp5595702))))

; loop entry $main_inv444
(assert
  (forall (($array5575704 (Array Int Int)) ($tmp5595706 Int) ($index5585705 Int))
    (=> (and ($main_sum443 $array5575704 $index5585705 $tmp5595706))
        ($main_inv444 $array5575704 0 $tmp5595706))))

; loop term $main_sum444
(assert
  (forall (($array5575707 (Array Int Int)) ($index5585708 Int) ($tmp5595709 Int))
    (=> (and (not (< $index5585708 10000))
             ($main_inv444 $array5575707 $index5585708 $tmp5595709))
        ($main_sum444 $array5575707 $index5585708 $tmp5595709))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5575707 (Array Int Int)) ($index5585708 Int) ($tmp5595709 Int))
    (=> (and (< $index5585708 10000)
             ($main_inv444 $array5575707 $index5585708 $tmp5595709))
        ($__VERIFIER_assert_pre (ite (> (select $array5575707 $index5585708) $index5585708) 1 0)))))

; forwards $main_inv444
(assert
  (forall (($array5575707 (Array Int Int)) ($index5585708 Int) ($tmp5595709 Int))
    (=> (and (__VERIFIER_assert (ite (> (select $array5575707 $index5585708) $index5585708) 1 0))
             (< $index5585708 10000)
             ($main_inv444 $array5575707 $index5585708 $tmp5595709))
        ($main_inv444 $array5575707 (+ $index5585708 1) $tmp5595709))))

(check-sat)
