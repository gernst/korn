(set-logic HORN)

(declare-fun $main_inv107 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if491 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum107 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if490 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13796 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13796))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if490 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13797 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if490 cond cond13797))
        (__VERIFIER_assert cond13797))))

; loop entry $main_inv107
(assert
  (forall (($x418 Int))
    (=> (and (= $x418 0))
        ($main_inv107 $x418))))

; loop term $main_sum107
(assert
  (forall (($x41813798 Int))
    (=> (and (not (< $x41813798 268435455)))
        ($main_sum107 $x41813798 $x41813798))))

; if then
(assert
  (forall (($x41813798 Int))
    (=> (and (< $x41813798 65521)
             (< $x41813798 268435455)
             ($main_inv107 $x41813798))
        ($main_if491 $x41813798 (+ $x41813798 1)))))

; if else
(assert
  (forall (($x41813798 Int))
    (=> (and (not (< $x41813798 65521))
             (< $x41813798 268435455)
             ($main_inv107 $x41813798))
        ($main_if491 $x41813798 (+ $x41813798 2)))))

; forwards $main_inv107
(assert
  (forall (($x41813799 Int) ($x41813798 Int))
    (=> (and ($main_if491 $x41813798 $x41813799))
        ($main_inv107 $x41813799))))

; backwards $main_sum107
(assert
  (forall (($x41813798 Int) ($x41813800 Int) ($x41813799 Int))
    (=> (and ($main_sum107 $x41813799 $x41813800)
             ($main_if491 $x41813798 $x41813799))
        ($main_sum107 $x41813798 $x41813800))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41813801 Int) ($x418 Int))
    (=> (and ($main_sum107 $x418 $x41813801)
             (= $x418 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x41813801 2) 0) 1 0)))))

(check-sat)
