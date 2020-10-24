(set-logic HORN)

(declare-fun $main_inv518 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if363 (Int) Bool)
(declare-fun $main_if364 (Int Int Int) Bool)
(declare-fun $main_sum518 (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7104 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7104))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if363 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7105 Int))
    (=> (and ($__VERIFIER_assert_if363 cond7105))
        (__VERIFIER_assert cond7105))))

; loop entry $main_inv518
(assert
  (forall (($n734 Int) ($sn735 Int) ($uint7106 Int))
    (=> (and (= $sn735 0)
             (= $n734 $uint7106)
             (<= 0 $uint7106)
             (<= $uint7106 4294967295))
        ($main_inv518 1 $n734 $sn735))))

; loop term $main_sum518
(assert
  (forall (($i7337107 Int) ($n7347108 Int) ($sn7357109 Int))
    (=> (and (not (<= $i7337107 $n7347108))
             ($main_inv518 $i7337107 $n7347108 $sn7357109))
        ($main_sum518 $i7337107 $n7347108 $sn7357109))))

; if then
(assert
  (forall (($i7337107 Int) ($n7347108 Int) ($sn7357109 Int))
    (=> (and (< $i7337107 10)
             (<= $i7337107 $n7347108)
             ($main_inv518 $i7337107 $n7347108 $sn7357109))
        ($main_if364 $i7337107 $n7347108 (+ $sn7357109 2)))))

; if else
(assert
  (forall (($i7337107 Int) ($n7347108 Int) ($sn7357109 Int))
    (=> (and (not (< $i7337107 10))
             (<= $i7337107 $n7347108)
             ($main_inv518 $i7337107 $n7347108 $sn7357109))
        ($main_if364 $i7337107 $n7347108 $sn7357109))))

; forwards $main_inv518
(assert
  (forall (($i7337110 Int) ($n7347111 Int) ($sn7357112 Int))
    (=> (and ($main_if364 $i7337110 $n7347111 $sn7357112))
        ($main_inv518 (+ $i7337110 1) $n7347111 $sn7357112))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7357115 Int) ($n7347114 Int) ($i7337113 Int))
    (=> (and ($main_sum518 $i7337113 $n7347114 $sn7357115))
        ($__VERIFIER_assert_pre (ite (or (= $sn7357115 (* $n7347114 2)) (= $sn7357115 0)) 1 0)))))

(check-sat)
