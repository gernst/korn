(set-logic HORN)

(declare-fun $__VERIFIER_assert_if569 (Int) Bool)
(declare-fun $main_if570 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv183 (Int Int Int) Bool)
(declare-fun $main_sum183 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13699 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13699))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if569 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13700 Int))
    (=> (and ($__VERIFIER_assert_if569 cond13700))
        (__VERIFIER_assert cond13700))))

; loop entry $main_inv183
(assert
  (forall (($x538 Int) ($y539 Int) ($z540 Int))
    (=> (and (= $z540 5000000)
             (= $y539 10000000)
             (= $x538 0))
        ($main_inv183 $x538 $y539 $z540))))

; loop term $main_sum183
(assert
  (forall (($x53813701 Int) ($y53913702 Int) ($z54013703 Int))
    (=> (and (not (< $x53813701 $y53913702))
             ($main_inv183 $x53813701 $y53913702 $z54013703))
        ($main_sum183 $x53813701 $y53913702 $z54013703))))

; if then
(assert
  (forall (($x53813701 Int) ($y53913702 Int) ($z54013703 Int))
    (=> (and (>= $x53813701 5000000)
             (< $x53813701 $y53913702)
             ($main_inv183 $x53813701 $y53913702 $z54013703))
        ($main_if570 $x53813701 $y53913702 (- $z54013703 1)))))

; if else
(assert
  (forall (($x53813701 Int) ($y53913702 Int) ($z54013703 Int))
    (=> (and (not (>= $x53813701 5000000))
             (< $x53813701 $y53913702)
             ($main_inv183 $x53813701 $y53913702 $z54013703))
        ($main_if570 $x53813701 $y53913702 $z54013703))))

; forwards $main_inv183
(assert
  (forall (($x53813704 Int) ($y53913705 Int) ($z54013706 Int))
    (=> (and ($main_if570 $x53813704 $y53913705 $z54013706))
        ($main_inv183 (+ $x53813704 1) $y53913705 $z54013706))))

; __VERIFIER_assert precondition
(assert
  (forall (($z54013709 Int) ($x53813707 Int) ($y53913708 Int))
    (=> (and ($main_sum183 $x53813707 $y53913708 $z54013709))
        ($__VERIFIER_assert_pre (ite (not (= $z54013709 0)) 1 0)))))

(check-sat)
