(set-logic HORN)

(declare-fun $main_sum95 (Int Int Int Int) Bool)
(declare-fun $main_inv95 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if468 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if469 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13687 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13687))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if468 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13688 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if468 cond cond13688))
        (__VERIFIER_assert cond13688))))

; loop entry $main_inv95
(assert
  (forall (($x402 Int) ($y403 Int) ($uint13689 Int))
    (=> (and (= $y403 $uint13689)
             (<= 0 $uint13689)
             (<= $uint13689 4294967295)
             (= $x402 0))
        ($main_inv95 $x402 $y403))))

; loop term $main_sum95
(assert
  (forall (($x40213690 Int) ($y40313691 Int))
    (=> (and (not (< $x40213690 99)))
        ($main_sum95 $x40213690 $y40313691 $x40213690 $y40313691))))

; if then
(assert
  (forall (($x40213690 Int) ($y40313691 Int))
    (=> (and (= (mod $y40313691 2) 0)
             (< $x40213690 99)
             ($main_inv95 $x40213690 $y40313691))
        ($main_if469 $x40213690 $y40313691 (+ $x40213690 1) $y40313691))))

; if else
(assert
  (forall (($x40213690 Int) ($y40313691 Int))
    (=> (and (not (= (mod $y40313691 2) 0))
             (< $x40213690 99)
             ($main_inv95 $x40213690 $y40313691))
        ($main_if469 $x40213690 $y40313691 (+ $x40213690 2) $y40313691))))

; forwards $main_inv95
(assert
  (forall (($x40213692 Int) ($y40313693 Int) ($x40213690 Int) ($y40313691 Int))
    (=> (and ($main_if469 $x40213690 $y40313691 $x40213692 $y40313693))
        ($main_inv95 $x40213692 $y40313693))))

; backwards $main_sum95
(assert
  (forall (($x40213690 Int) ($x40213694 Int) ($x40213692 Int) ($y40313693 Int) ($y40313695 Int) ($y40313691 Int))
    (=> (and ($main_sum95 $x40213692 $y40313693 $x40213694 $y40313695)
             ($main_if469 $x40213690 $y40313691 $x40213692 $y40313693))
        ($main_sum95 $x40213690 $y40313691 $x40213694 $y40313695))))

; __VERIFIER_assert precondition
(assert
  (forall (($y403 Int) ($y40313697 Int) ($uint13689 Int) ($x40213696 Int) ($x402 Int))
    (=> (and ($main_sum95 $x402 $y403 $x40213696 $y40313697)
             (= $y403 $uint13689)
             (<= 0 $uint13689)
             (<= $uint13689 4294967295)
             (= $x402 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x40213696 2) (mod $y40313697 2)) 1 0)))))

(check-sat)
