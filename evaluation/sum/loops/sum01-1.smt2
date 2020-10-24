(set-logic HORN)

(declare-fun $main_inv518 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if363 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if364 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum518 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9921 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9921))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if363 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9922 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if363 cond cond9922))
        (__VERIFIER_assert cond9922))))

; loop entry $main_inv518
(assert
  (forall (($n734 Int) ($sn735 Int) ($uint9923 Int))
    (=> (and (= $sn735 0)
             (= $n734 $uint9923)
             (<= 0 $uint9923)
             (<= $uint9923 4294967295))
        ($main_inv518 1 $n734 $sn735))))

; loop term $main_sum518
(assert
  (forall (($i7339924 Int) ($n7349925 Int) ($sn7359926 Int))
    (=> (and (not (<= $i7339924 $n7349925)))
        ($main_sum518 $i7339924 $n7349925 $sn7359926 $i7339924 $n7349925 $sn7359926))))

; if then
(assert
  (forall (($i7339924 Int) ($n7349925 Int) ($sn7359926 Int))
    (=> (and (< $i7339924 10)
             (<= $i7339924 $n7349925)
             ($main_inv518 $i7339924 $n7349925 $sn7359926))
        ($main_if364 $i7339924 $n7349925 $sn7359926 $i7339924 $n7349925 (+ $sn7359926 2)))))

; if else
(assert
  (forall (($i7339924 Int) ($n7349925 Int) ($sn7359926 Int))
    (=> (and (not (< $i7339924 10))
             (<= $i7339924 $n7349925)
             ($main_inv518 $i7339924 $n7349925 $sn7359926))
        ($main_if364 $i7339924 $n7349925 $sn7359926 $i7339924 $n7349925 $sn7359926))))

; forwards $main_inv518
(assert
  (forall (($sn7359926 Int) ($i7339924 Int) ($sn7359929 Int) ($n7349928 Int) ($i7339927 Int) ($n7349925 Int))
    (=> (and ($main_if364 $i7339924 $n7349925 $sn7359926 $i7339927 $n7349928 $sn7359929))
        ($main_inv518 (+ $i7339927 1) $n7349928 $sn7359929))))

; backwards $main_sum518
(assert
  (forall (($sn7359926 Int) ($i7339930 Int) ($i7339924 Int) ($sn7359929 Int) ($n7349928 Int) ($n7349931 Int) ($n7349925 Int) ($sn7359932 Int) ($i7339927 Int))
    (=> (and ($main_sum518 (+ $i7339927 1) $n7349928 $sn7359929 $i7339930 $n7349931 $sn7359932)
             ($main_if364 $i7339924 $n7349925 $sn7359926 $i7339927 $n7349928 $sn7359929))
        ($main_sum518 $i7339924 $n7349925 $sn7359926 $i7339930 $n7349931 $sn7359932))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn735 Int) ($n734 Int) ($sn7359935 Int) ($n7349934 Int) ($i7339933 Int) ($uint9923 Int))
    (=> (and ($main_sum518 1 $n734 $sn735 $i7339933 $n7349934 $sn7359935)
             (= $sn735 0)
             (= $n734 $uint9923)
             (<= 0 $uint9923)
             (<= $uint9923 4294967295))
        ($__VERIFIER_assert_pre (ite (or (= $sn7359935 (* $n7349934 2)) (= $sn7359935 0)) 1 0)))))

(check-sat)
