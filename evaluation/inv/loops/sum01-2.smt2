(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if365 (Int) Bool)
(declare-fun $main_sum519 (Int Int Int) Bool)
(declare-fun $main_inv519 (Int Int Int) Bool)
(declare-fun $main_if366 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7116 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7116))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if365 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7117 Int))
    (=> (and ($__VERIFIER_assert_if365 cond7117))
        (__VERIFIER_assert cond7117))))

; if else
(assert
  (forall (($i736 Int) ($n737 Int) ($sn738 Int) ($int7118 Int))
    (=> (and (< $n737 1000)
             (>= $n737 (- 1000))
             (= $sn738 0)
             (= $n737 $int7118)
             (<= (- 2147483648) $int7118)
             (<= $int7118 2147483647))
        ($main_if366 $i736 $n737 $sn738))))

; loop entry $main_inv519
(assert
  (forall (($n7377120 Int) ($sn7387121 Int) ($i7367119 Int))
    (=> (and ($main_if366 $i7367119 $n7377120 $sn7387121))
        ($main_inv519 1 $n7377120 $sn7387121))))

; loop term $main_sum519
(assert
  (forall (($i7367122 Int) ($n7377123 Int) ($sn7387124 Int))
    (=> (and (not (<= $i7367122 $n7377123))
             ($main_inv519 $i7367122 $n7377123 $sn7387124))
        ($main_sum519 $i7367122 $n7377123 $sn7387124))))

; forwards $main_inv519
(assert
  (forall (($i7367122 Int) ($n7377123 Int) ($sn7387124 Int))
    (=> (and (<= $i7367122 $n7377123)
             ($main_inv519 $i7367122 $n7377123 $sn7387124))
        ($main_inv519 (+ $i7367122 1) $n7377123 (+ $sn7387124 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7387127 Int) ($n7377126 Int) ($i7367125 Int))
    (=> (and ($main_sum519 $i7367125 $n7377126 $sn7387127))
        ($__VERIFIER_assert_pre (ite (or (= $sn7387127 (* $n7377126 2)) (= $sn7387127 0)) 1 0)))))

(check-sat)
