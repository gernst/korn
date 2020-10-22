(set-logic HORN)

(declare-fun $main_if570 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv183 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if569 (Int Int) Bool)
(declare-fun $main_sum183 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14739 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14739))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if569 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14740 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if569 cond cond14740))
        (__VERIFIER_assert cond14740))))

; loop entry $main_inv183
(assert
  (forall (($x538 Int) ($y539 Int) ($z540 Int))
    (=> (and (= $z540 5000000)
             (= $y539 10000000)
             (= $x538 0))
        ($main_inv183 $x538 $y539 $z540))))

; loop term $main_sum183
(assert
  (forall (($x53814741 Int) ($y53914742 Int) ($z54014743 Int))
    (=> (and (not (< $x53814741 $y53914742)))
        ($main_sum183 $x53814741 $y53914742 $z54014743 $x53814741 $y53914742 $z54014743))))

; if then
(assert
  (forall (($x53814741 Int) ($y53914742 Int) ($z54014743 Int))
    (=> (and (>= $x53814741 5000000)
             (< $x53814741 $y53914742)
             ($main_inv183 $x53814741 $y53914742 $z54014743))
        ($main_if570 $x53814741 $y53914742 $z54014743 $x53814741 $y53914742 (- $z54014743 1)))))

; if else
(assert
  (forall (($x53814741 Int) ($y53914742 Int) ($z54014743 Int))
    (=> (and (not (>= $x53814741 5000000))
             (< $x53814741 $y53914742)
             ($main_inv183 $x53814741 $y53914742 $z54014743))
        ($main_if570 $x53814741 $y53914742 $z54014743 $x53814741 $y53914742 $z54014743))))

; forwards $main_inv183
(assert
  (forall (($x53814744 Int) ($x53814741 Int) ($z54014743 Int) ($y53914745 Int) ($z54014746 Int) ($y53914742 Int))
    (=> (and ($main_if570 $x53814741 $y53914742 $z54014743 $x53814744 $y53914745 $z54014746))
        ($main_inv183 (+ $x53814744 1) $y53914745 $z54014746))))

; backwards $main_sum183
(assert
  (forall (($x53814741 Int) ($z54014749 Int) ($y53914748 Int) ($z54014743 Int) ($y53914745 Int) ($z54014746 Int) ($y53914742 Int) ($x53814747 Int) ($x53814744 Int))
    (=> (and ($main_sum183 (+ $x53814744 1) $y53914745 $z54014746 $x53814747 $y53914748 $z54014749)
             ($main_if570 $x53814741 $y53914742 $z54014743 $x53814744 $y53914745 $z54014746))
        ($main_sum183 $x53814741 $y53914742 $z54014743 $x53814747 $y53914748 $z54014749))))

; __VERIFIER_assert precondition
(assert
  (forall (($y539 Int) ($z54014752 Int) ($x53814750 Int) ($y53914751 Int) ($z540 Int) ($x538 Int))
    (=> (and ($main_sum183 $x538 $y539 $z540 $x53814750 $y53914751 $z54014752)
             (= $z540 5000000)
             (= $y539 10000000)
             (= $x538 0))
        ($__VERIFIER_assert_pre (ite (not (= $z54014752 0)) 1 0)))))

(check-sat)
