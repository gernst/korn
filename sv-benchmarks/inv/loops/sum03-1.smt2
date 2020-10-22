(set-logic HORN)

(declare-fun $main_if372 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum522 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv522 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if371 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7155 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7155))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if371 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7156 Int))
    (=> (and ($__VERIFIER_assert_if371 cond7156))
        (__VERIFIER_assert cond7156))))

; loop entry $main_inv522
(assert
  (forall (($x749 Int) ($n1748 Int) ($uint7157 Int) ($sn746 Int) ($uint7158 Int) ($loop1747 Int))
    (=> (and (= $x749 0)
             (= $n1748 $uint7158)
             (<= 0 $uint7158)
             (<= $uint7158 4294967295)
             (= $loop1747 $uint7157)
             (<= 0 $uint7157)
             (<= $uint7157 4294967295)
             (= $sn746 0))
        ($main_inv522 $sn746 $loop1747 $n1748 $x749))))

; loop term $main_sum522
(assert
  (forall (($sn7467159 Int) ($loop17477160 Int) ($n17487161 Int) ($x7497162 Int))
    (=> (and (= 1 0)
             ($main_inv522 $sn7467159 $loop17477160 $n17487161 $x7497162))
        ($main_sum522 $sn7467159 $loop17477160 $n17487161 $x7497162))))

; if then
(assert
  (forall (($sn7467159 Int) ($loop17477160 Int) ($n17487161 Int) ($x7497162 Int))
    (=> (and (< $x7497162 10)
             (not (= 1 0))
             ($main_inv522 $sn7467159 $loop17477160 $n17487161 $x7497162))
        ($main_if372 (+ $sn7467159 2) $loop17477160 $n17487161 $x7497162))))

; if else
(assert
  (forall (($sn7467159 Int) ($loop17477160 Int) ($n17487161 Int) ($x7497162 Int))
    (=> (and (not (< $x7497162 10))
             (not (= 1 0))
             ($main_inv522 $sn7467159 $loop17477160 $n17487161 $x7497162))
        ($main_if372 $sn7467159 $loop17477160 $n17487161 $x7497162))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7467163 Int) ($x7497166 Int) ($loop17477164 Int) ($n17487165 Int))
    (=> (and ($main_if372 $sn7467163 $loop17477164 $n17487165 $x7497166))
        ($__VERIFIER_assert_pre (ite (or (= $sn7467163 (* (+ $x7497166 1) 2)) (= $sn7467163 0)) 1 0)))))

; forwards $main_inv522
(assert
  (forall (($sn7467163 Int) ($loop17477164 Int) ($n17487165 Int) ($x7497166 Int))
    (=> (and (__VERIFIER_assert (ite (or (= $sn7467163 (* (+ $x7497166 1) 2)) (= $sn7467163 0)) 1 0))
             ($main_if372 $sn7467163 $loop17477164 $n17487165 $x7497166))
        ($main_inv522 $sn7467163 $loop17477164 $n17487165 (+ $x7497166 1)))))

(check-sat)
