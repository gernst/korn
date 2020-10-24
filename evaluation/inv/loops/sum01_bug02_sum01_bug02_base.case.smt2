(set-logic HORN)

(declare-fun $main_sum521 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if370 (Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if369 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv521 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7143 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7143))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if369 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7144 Int))
    (=> (and ($__VERIFIER_assert_if369 cond7144))
        (__VERIFIER_assert cond7144))))

; loop entry $main_inv521
(assert
  (forall (($n744 Int) ($sn745 Int) ($uint7145 Int))
    (=> (and (= $sn745 0)
             (= $n744 $uint7145)
             (<= 0 $uint7145)
             (<= $uint7145 4294967295))
        ($main_inv521 1 $n744 $sn745))))

; loop term $main_sum521
(assert
  (forall (($i7437146 Int) ($n7447147 Int) ($sn7457148 Int))
    (=> (and (not (<= $i7437146 $n7447147))
             ($main_inv521 $i7437146 $n7447147 $sn7457148))
        ($main_sum521 $i7437146 $n7447147 $sn7457148))))

; if then
(assert
  (forall (($i7437146 Int) ($n7447147 Int) ($sn7457148 Int))
    (=> (and (= $i7437146 4)
             (<= $i7437146 $n7447147)
             ($main_inv521 $i7437146 $n7447147 $sn7457148))
        ($main_if370 $i7437146 $n7447147 (- 10)))))

; if else
(assert
  (forall (($i7437146 Int) ($n7447147 Int) ($sn7457148 Int))
    (=> (and (not (= $i7437146 4))
             (<= $i7437146 $n7447147)
             ($main_inv521 $i7437146 $n7447147 $sn7457148))
        ($main_if370 $i7437146 $n7447147 (+ $sn7457148 2)))))

; forwards $main_inv521
(assert
  (forall (($i7437149 Int) ($n7447150 Int) ($sn7457151 Int))
    (=> (and ($main_if370 $i7437149 $n7447150 $sn7457151))
        ($main_inv521 (+ $i7437149 1) $n7447150 $sn7457151))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7457154 Int) ($n7447153 Int) ($i7437152 Int))
    (=> (and ($main_sum521 $i7437152 $n7447153 $sn7457154))
        ($__VERIFIER_assert_pre (ite (or (= $sn7457154 (* $n7447153 2)) (= $sn7457154 0)) 1 0)))))

(check-sat)
