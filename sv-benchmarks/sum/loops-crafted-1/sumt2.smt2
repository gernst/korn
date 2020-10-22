(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if602 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if601 (Int Int) Bool)
(declare-fun $main_if603 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_if600 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum217 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv217 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if600 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15187 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if600 cond cond15187))
        (assume_abort_if_not cond15187))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15188 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15188))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if601 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15189 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if601 cond cond15189))
        (__VERIFIER_assert cond15189))))

; if else
(assert
  (forall (($j594 Int) ($i593 Int) ($l595 Int) ($n592 Int) ($uint15191 Int))
    (=> (and (<= $uint15191 20000001)
             (<= 0 $uint15191)
             (<= $uint15191 4294967295)
             (= $l595 0))
        ($main_if602 $n592 $i593 $j594 $l595 $uint15191 $i593 $j594 $l595))))

; loop entry $main_inv217
(assert
  (forall (($j594 Int) ($n59215192 Int) ($i59315193 Int) ($i593 Int) ($l595 Int) ($j59415194 Int) ($n592 Int) ($l59515195 Int))
    (=> (and ($main_if602 $n592 $i593 $j594 $l595 $n59215192 $i59315193 $j59415194 $l59515195))
        ($main_inv217 $n59215192 0 0 0))))

; loop term $main_sum217
(assert
  (forall (($n59215196 Int) ($i59315197 Int) ($j59415198 Int) ($l59515199 Int))
    (=> (and (not (< $l59515199 $n59215196)))
        ($main_sum217 $n59215196 $i59315197 $j59415198 $l59515199 $n59215196 $i59315197 $j59415198 $l59515199))))

; if then
(assert
  (forall (($n59215196 Int) ($i59315197 Int) ($j59415198 Int) ($l59515199 Int))
    (=> (and (= (mod $l59515199 2) 0)
             (< $l59515199 $n59215196)
             ($main_inv217 $n59215196 $i59315197 $j59415198 $l59515199))
        ($main_if603 $n59215196 $i59315197 $j59415198 $l59515199 $n59215196 (+ $i59315197 1) $j59415198 $l59515199))))

; if else
(assert
  (forall (($n59215196 Int) ($i59315197 Int) ($j59415198 Int) ($l59515199 Int))
    (=> (and (not (= (mod $l59515199 2) 0))
             (< $l59515199 $n59215196)
             ($main_inv217 $n59215196 $i59315197 $j59415198 $l59515199))
        ($main_if603 $n59215196 $i59315197 $j59415198 $l59515199 $n59215196 $i59315197 (+ $j59415198 1) $l59515199))))

; forwards $main_inv217
(assert
  (forall (($n59215196 Int) ($i59315201 Int) ($j59415198 Int) ($j59415202 Int) ($n59215200 Int) ($i59315197 Int) ($l59515199 Int) ($l59515203 Int))
    (=> (and ($main_if603 $n59215196 $i59315197 $j59415198 $l59515199 $n59215200 $i59315201 $j59415202 $l59515203))
        ($main_inv217 $n59215200 $i59315201 $j59415202 (+ $l59515203 1)))))

; backwards $main_sum217
(assert
  (forall (($n59215196 Int) ($n59215204 Int) ($j59415198 Int) ($n59215200 Int) ($i59315197 Int) ($l59515207 Int) ($i59315205 Int) ($i59315201 Int) ($j59415206 Int) ($j59415202 Int) ($l59515199 Int) ($l59515203 Int))
    (=> (and ($main_sum217 $n59215200 $i59315201 $j59415202 (+ $l59515203 1) $n59215204 $i59315205 $j59415206 $l59515207)
             ($main_if603 $n59215196 $i59315197 $j59415198 $l59515199 $n59215200 $i59315201 $j59415202 $l59515203))
        ($main_sum217 $n59215196 $i59315197 $j59415198 $l59515199 $n59215204 $i59315205 $j59415206 $l59515207))))

; __VERIFIER_assert precondition
(assert
  (forall (($j594 Int) ($n59215192 Int) ($i59315193 Int) ($i593 Int) ($j59415194 Int) ($i59315209 Int) ($n592 Int) ($n59215208 Int) ($l59515211 Int) ($l59515195 Int) ($l595 Int) ($j59415210 Int))
    (=> (and ($main_sum217 $n59215192 0 0 0 $n59215208 $i59315209 $j59415210 $l59515211)
             ($main_if602 $n592 $i593 $j594 $l595 $n59215192 $i59315193 $j59415194 $l59515195))
        ($__VERIFIER_assert_pre (ite (= (+ $i59315209 $j59415210) $l59515211) 1 0)))))

(check-sat)
