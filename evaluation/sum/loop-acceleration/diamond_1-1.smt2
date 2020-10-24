(set-logic HORN)

(declare-fun $main_sum94 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv94 (Int Int) Bool)
(declare-fun $main_if467 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if466 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13676 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13676))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if466 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13677 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if466 cond cond13677))
        (__VERIFIER_assert cond13677))))

; loop entry $main_inv94
(assert
  (forall (($x400 Int) ($y401 Int) ($uint13678 Int))
    (=> (and (= $y401 $uint13678)
             (<= 0 $uint13678)
             (<= $uint13678 4294967295)
             (= $x400 0))
        ($main_inv94 $x400 $y401))))

; loop term $main_sum94
(assert
  (forall (($x40013679 Int) ($y40113680 Int))
    (=> (and (not (< $x40013679 99)))
        ($main_sum94 $x40013679 $y40113680 $x40013679 $y40113680))))

; if then
(assert
  (forall (($x40013679 Int) ($y40113680 Int))
    (=> (and (= (mod $y40113680 2) 0)
             (< $x40013679 99)
             ($main_inv94 $x40013679 $y40113680))
        ($main_if467 $x40013679 $y40113680 (+ $x40013679 2) $y40113680))))

; if else
(assert
  (forall (($x40013679 Int) ($y40113680 Int))
    (=> (and (not (= (mod $y40113680 2) 0))
             (< $x40013679 99)
             ($main_inv94 $x40013679 $y40113680))
        ($main_if467 $x40013679 $y40113680 (+ $x40013679 1) $y40113680))))

; forwards $main_inv94
(assert
  (forall (($x40013681 Int) ($y40113682 Int) ($x40013679 Int) ($y40113680 Int))
    (=> (and ($main_if467 $x40013679 $y40113680 $x40013681 $y40113682))
        ($main_inv94 $x40013681 $y40113682))))

; backwards $main_sum94
(assert
  (forall (($y40113684 Int) ($x40013679 Int) ($x40013683 Int) ($x40013681 Int) ($y40113680 Int) ($y40113682 Int))
    (=> (and ($main_sum94 $x40013681 $y40113682 $x40013683 $y40113684)
             ($main_if467 $x40013679 $y40113680 $x40013681 $y40113682))
        ($main_sum94 $x40013679 $y40113680 $x40013683 $y40113684))))

; __VERIFIER_assert precondition
(assert
  (forall (($x400 Int) ($y40113686 Int) ($uint13678 Int) ($x40013685 Int) ($y401 Int))
    (=> (and ($main_sum94 $x400 $y401 $x40013685 $y40113686)
             (= $y401 $uint13678)
             (<= 0 $uint13678)
             (<= $uint13678 4294967295)
             (= $x400 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x40013685 2) (mod $y40113686 2)) 1 0)))))

(check-sat)
