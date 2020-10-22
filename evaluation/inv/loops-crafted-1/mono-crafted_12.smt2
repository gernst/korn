(set-logic HORN)

(declare-fun $main_if578 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if577 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum187 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv187 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13737 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13737))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if577 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13738 Int))
    (=> (and ($__VERIFIER_assert_if577 cond13738))
        (__VERIFIER_assert cond13738))))

; loop entry $main_inv187
(assert
  (forall (($x548 Int) ($y549 Int) ($z550 Int))
    (=> (and (= $z550 0)
             (= $y549 10000000)
             (= $x548 0))
        ($main_inv187 $x548 $y549 $z550))))

; loop term $main_sum187
(assert
  (forall (($x54813739 Int) ($y54913740 Int) ($z55013741 Int))
    (=> (and (not (< $x54813739 $y54913740))
             ($main_inv187 $x54813739 $y54913740 $z55013741))
        ($main_sum187 $x54813739 $y54913740 $z55013741))))

; if then
(assert
  (forall (($x54813739 Int) ($y54913740 Int) ($z55013741 Int))
    (=> (and (>= $x54813739 5000000)
             (< $x54813739 $y54913740)
             ($main_inv187 $x54813739 $y54913740 $z55013741))
        ($main_if578 $x54813739 $y54913740 (+ $z55013741 2)))))

; if else
(assert
  (forall (($x54813739 Int) ($y54913740 Int) ($z55013741 Int))
    (=> (and (not (>= $x54813739 5000000))
             (< $x54813739 $y54913740)
             ($main_inv187 $x54813739 $y54913740 $z55013741))
        ($main_if578 $x54813739 $y54913740 $z55013741))))

; forwards $main_inv187
(assert
  (forall (($x54813742 Int) ($y54913743 Int) ($z55013744 Int))
    (=> (and ($main_if578 $x54813742 $y54913743 $z55013744))
        ($main_inv187 (+ $x54813742 1) $y54913743 $z55013744))))

; __VERIFIER_assert precondition
(assert
  (forall (($z55013747 Int) ($x54813745 Int) ($y54913746 Int))
    (=> (and ($main_sum187 $x54813745 $y54913746 $z55013747))
        ($__VERIFIER_assert_pre (ite (= (mod $z55013747 2) 0) 1 0)))))

(check-sat)
