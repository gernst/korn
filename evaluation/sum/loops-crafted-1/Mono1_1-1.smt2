(set-logic HORN)

(declare-fun $__VERIFIER_assert_if561 (Int Int) Bool)
(declare-fun $main_sum179 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv179 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if562 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14707 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14707))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if561 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14708 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if561 cond cond14708))
        (__VERIFIER_assert cond14708))))

; loop entry $main_inv179
(assert
  (forall (($x532 Int))
    (=> (and (= $x532 0))
        ($main_inv179 $x532))))

; loop term $main_sum179
(assert
  (forall (($x53214709 Int))
    (=> (and (not (< $x53214709 100000000)))
        ($main_sum179 $x53214709 $x53214709))))

; if then
(assert
  (forall (($x53214709 Int))
    (=> (and (< $x53214709 10000000)
             (< $x53214709 100000000)
             ($main_inv179 $x53214709))
        ($main_if562 $x53214709 (+ $x53214709 1)))))

; if else
(assert
  (forall (($x53214709 Int))
    (=> (and (not (< $x53214709 10000000))
             (< $x53214709 100000000)
             ($main_inv179 $x53214709))
        ($main_if562 $x53214709 (+ $x53214709 2)))))

; forwards $main_inv179
(assert
  (forall (($x53214710 Int) ($x53214709 Int))
    (=> (and ($main_if562 $x53214709 $x53214710))
        ($main_inv179 $x53214710))))

; backwards $main_sum179
(assert
  (forall (($x53214709 Int) ($x53214711 Int) ($x53214710 Int))
    (=> (and ($main_sum179 $x53214710 $x53214711)
             ($main_if562 $x53214709 $x53214710))
        ($main_sum179 $x53214709 $x53214711))))

; __VERIFIER_assert precondition
(assert
  (forall (($x53214712 Int) ($x532 Int))
    (=> (and ($main_sum179 $x532 $x53214712)
             (= $x532 0))
        ($__VERIFIER_assert_pre (ite (= $x53214712 100000001) 1 0)))))

(check-sat)
