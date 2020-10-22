(set-logic HORN)

(declare-fun $main_if578 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum187 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv187 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if577 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14787 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14787))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if577 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14788 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if577 cond cond14788))
        (__VERIFIER_assert cond14788))))

; loop entry $main_inv187
(assert
  (forall (($x548 Int) ($y549 Int) ($z550 Int))
    (=> (and (= $z550 0)
             (= $y549 10000000)
             (= $x548 0))
        ($main_inv187 $x548 $y549 $z550))))

; loop term $main_sum187
(assert
  (forall (($x54814789 Int) ($y54914790 Int) ($z55014791 Int))
    (=> (and (not (< $x54814789 $y54914790)))
        ($main_sum187 $x54814789 $y54914790 $z55014791 $x54814789 $y54914790 $z55014791))))

; if then
(assert
  (forall (($x54814789 Int) ($y54914790 Int) ($z55014791 Int))
    (=> (and (>= $x54814789 5000000)
             (< $x54814789 $y54914790)
             ($main_inv187 $x54814789 $y54914790 $z55014791))
        ($main_if578 $x54814789 $y54914790 $z55014791 $x54814789 $y54914790 (+ $z55014791 2)))))

; if else
(assert
  (forall (($x54814789 Int) ($y54914790 Int) ($z55014791 Int))
    (=> (and (not (>= $x54814789 5000000))
             (< $x54814789 $y54914790)
             ($main_inv187 $x54814789 $y54914790 $z55014791))
        ($main_if578 $x54814789 $y54914790 $z55014791 $x54814789 $y54914790 $z55014791))))

; forwards $main_inv187
(assert
  (forall (($x54814792 Int) ($z55014794 Int) ($y54914793 Int) ($z55014791 Int) ($y54914790 Int) ($x54814789 Int))
    (=> (and ($main_if578 $x54814789 $y54914790 $z55014791 $x54814792 $y54914793 $z55014794))
        ($main_inv187 (+ $x54814792 1) $y54914793 $z55014794))))

; backwards $main_sum187
(assert
  (forall (($x54814792 Int) ($z55014797 Int) ($z55014794 Int) ($y54914793 Int) ($z55014791 Int) ($x54814795 Int) ($x54814789 Int) ($y54914790 Int) ($y54914796 Int))
    (=> (and ($main_sum187 (+ $x54814792 1) $y54914793 $z55014794 $x54814795 $y54914796 $z55014797)
             ($main_if578 $x54814789 $y54914790 $z55014791 $x54814792 $y54914793 $z55014794))
        ($main_sum187 $x54814789 $y54914790 $z55014791 $x54814795 $y54914796 $z55014797))))

; __VERIFIER_assert precondition
(assert
  (forall (($x54814798 Int) ($z55014800 Int) ($x548 Int) ($z550 Int) ($y54914799 Int) ($y549 Int))
    (=> (and ($main_sum187 $x548 $y549 $z550 $x54814798 $y54914799 $z55014800)
             (= $z550 0)
             (= $y549 10000000)
             (= $x548 0))
        ($__VERIFIER_assert_pre (ite (= (mod $z55014800 2) 0) 1 0)))))

(check-sat)
