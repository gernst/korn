(set-logic HORN)

(declare-fun $main_inv399 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum398 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum400 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv400 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if127 (Int) Bool)
(declare-fun $main_sum399 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv398 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5165 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5165))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if127 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5166 Int))
    (=> (and ($__VERIFIER_assert_if127 cond5166))
        (__VERIFIER_assert cond5166))))

; loop entry $main_inv398
(assert
  (forall (($a484 (Array Int Int)) ($b485 (Array Int Int)) ($i486 Int) ($j487 Int))
    (=> (and (= $j487 0)
             (= $i486 0))
        ($main_inv398 $a484 $b485 $i486 $j487))))

; loop term $main_sum398
(assert
  (forall (($a4845167 (Array Int Int)) ($b4855168 (Array Int Int)) ($i4865169 Int) ($j4875170 Int))
    (=> (and (not (< $i4865169 100000))
             ($main_inv398 $a4845167 $b4855168 $i4865169 $j4875170))
        ($main_sum398 $a4845167 $b4855168 $i4865169 $j4875170))))

; forwards $main_inv398
(assert
  (forall (($b4855168 (Array Int Int)) ($a4845167 (Array Int Int)) ($i4865169 Int) ($j4875170 Int) ($int5171 Int))
    (=> (and (<= (- 2147483648) $int5171)
             (<= $int5171 2147483647)
             (< $i4865169 100000)
             ($main_inv398 $a4845167 $b4855168 $i4865169 $j4875170))
        ($main_inv398 $a4845167 (store $b4855168 $i4865169 $int5171) (+ $i4865169 1) $j4875170))))

; loop entry $main_inv399
(assert
  (forall (($a4845172 (Array Int Int)) ($b4855173 (Array Int Int)) ($j4875175 Int) ($i4865174 Int))
    (=> (and ($main_sum398 $a4845172 $b4855173 $i4865174 $j4875175))
        ($main_inv399 $a4845172 $b4855173 1 $j4875175))))

; loop term $main_sum399
(assert
  (forall (($a4845176 (Array Int Int)) ($b4855177 (Array Int Int)) ($i4865178 Int) ($j4875179 Int))
    (=> (and (not (< $i4865178 100000))
             ($main_inv399 $a4845176 $b4855177 $i4865178 $j4875179))
        ($main_sum399 $a4845176 $b4855177 $i4865178 $j4875179))))

; forwards $main_inv399
(assert
  (forall (($a4845176 (Array Int Int)) ($j4875179 Int) ($b4855177 (Array Int Int)) ($i4865178 Int))
    (=> (and (< $i4865178 100000)
             ($main_inv399 $a4845176 $b4855177 $i4865178 $j4875179))
        ($main_inv399 (store $a4845176 $j4875179 (select $b4855177 $i4865178)) $b4855177 (+ $i4865178 8) (+ $j4875179 1)))))

; loop entry $main_inv400
(assert
  (forall (($a4845180 (Array Int Int)) ($b4855181 (Array Int Int)) ($i4865182 Int) ($j4875183 Int))
    (=> (and ($main_sum399 $a4845180 $b4855181 $i4865182 $j4875183))
        ($main_inv400 $a4845180 $b4855181 1 0))))

; loop term $main_sum400
(assert
  (forall (($a4845184 (Array Int Int)) ($b4855185 (Array Int Int)) ($i4865186 Int) ($j4875187 Int))
    (=> (and (not (< $i4865186 100000))
             ($main_inv400 $a4845184 $b4855185 $i4865186 $j4875187))
        ($main_sum400 $a4845184 $b4855185 $i4865186 $j4875187))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4845184 (Array Int Int)) ($j4875187 Int) ($b4855185 (Array Int Int)) ($i4865186 Int))
    (=> (and (< $i4865186 100000)
             ($main_inv400 $a4845184 $b4855185 $i4865186 $j4875187))
        ($__VERIFIER_assert_pre (ite (= (select $a4845184 $j4875187) (select $b4855185 (+ (* 8 $j4875187) 1))) 1 0)))))

; forwards $main_inv400
(assert
  (forall (($a4845184 (Array Int Int)) ($b4855185 (Array Int Int)) ($i4865186 Int) ($j4875187 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4845184 $j4875187) (select $b4855185 (+ (* 8 $j4875187) 1))) 1 0))
             (< $i4865186 100000)
             ($main_inv400 $a4845184 $b4855185 $i4865186 $j4875187))
        ($main_inv400 $a4845184 $b4855185 (+ $i4865186 8) (+ $j4875187 1)))))

(check-sat)
