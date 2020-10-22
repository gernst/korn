(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if768 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if771 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if769 (Int) Bool)
(declare-fun $main_sum294 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if770 (Int Int Int Int Int) Bool)
(declare-fun $main_inv294 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if768 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15842 Int))
    (=> (and ($assume_abort_if_not_if768 cond15842))
        (assume_abort_if_not cond15842))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15843 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15843))
        false)))

; if then
(assert
  (forall ((cond15843 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15843))
        ($__VERIFIER_assert_if769 cond15843))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if769 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15844 Int))
    (=> (and ($__VERIFIER_assert_if769 cond15844))
        (__VERIFIER_assert cond15844))))

; assume_abort_if_not precondition
(assert
  (forall (($int15845 Int) ($int15846 Int))
    (=> (and (<= (- 2147483648) $int15846)
             (<= $int15846 2147483647)
             (<= (- 2147483648) $int15845)
             (<= $int15845 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15845 0) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15846 Int) ($int15845 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15845 0) 1 0))
             (<= (- 2147483648) $int15846)
             (<= $int15846 2147483647)
             (<= (- 2147483648) $int15845)
             (<= $int15845 2147483647))
        ($assume_abort_if_not_pre (ite (not (= $int15846 0)) 1 0)))))

; loop entry $main_inv294
(assert
  (forall (($int15845 Int) ($int15846 Int))
    (=> (and (assume_abort_if_not (ite (not (= $int15846 0)) 1 0))
             (assume_abort_if_not (ite (>= $int15845 0) 1 0))
             (<= (- 2147483648) $int15846)
             (<= $int15846 2147483647)
             (<= (- 2147483648) $int15845)
             (<= $int15845 2147483647))
        ($main_inv294 $int15845 $int15846 0 0 $int15845))))

; loop term $main_sum294
(assert
  (forall (($y385115851 Int) ($x184715847 Int) ($y285015850 Int) ($x284815848 Int) ($y184915849 Int))
    (=> (and (= 1 0)
             ($main_inv294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))
        ($main_sum294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))))

; __VERIFIER_assert precondition
(assert
  (forall (($y385115851 Int) ($x184715847 Int) ($y285015850 Int) ($x284815848 Int) ($y184915849 Int))
    (=> (and (not (= 1 0))
             ($main_inv294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (* $y184915849 $x284815848) $y285015850) $y385115851) $x184715847) 1 0)))))

; break $main_sum294
(assert
  (forall (($y385115851 Int) ($x184715847 Int) ($y285015850 Int) ($x284815848 Int) ($y184915849 Int))
    (=> (and (= $y385115851 0)
             (__VERIFIER_assert (ite (= (+ (+ (* $y184915849 $x284815848) $y285015850) $y385115851) $x184715847) 1 0))
             (not (= 1 0))
             ($main_inv294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))
        ($main_sum294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))))

; if else
(assert
  (forall (($y385115851 Int) ($x184715847 Int) ($y285015850 Int) ($x284815848 Int) ($y184915849 Int))
    (=> (and (not (= $y385115851 0))
             (__VERIFIER_assert (ite (= (+ (+ (* $y184915849 $x284815848) $y285015850) $y385115851) $x184715847) 1 0))
             (not (= 1 0))
             ($main_inv294 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))
        ($main_if770 $x184715847 $x284815848 $y184915849 $y285015850 $y385115851))))

; if then
(assert
  (forall (($y184915854 Int) ($x284815853 Int) ($x184715852 Int) ($y285015855 Int) ($y385115856 Int))
    (=> (and (= (+ $y285015855 1) $x284815853)
             ($main_if770 $x184715852 $x284815853 $y184915854 $y285015855 $y385115856))
        ($main_if771 $x184715852 $x284815853 (+ $y184915854 1) 0 (- $y385115856 1)))))

; if else
(assert
  (forall (($y184915854 Int) ($x284815853 Int) ($x184715852 Int) ($y285015855 Int) ($y385115856 Int))
    (=> (and (not (= (+ $y285015855 1) $x284815853))
             ($main_if770 $x184715852 $x284815853 $y184915854 $y285015855 $y385115856))
        ($main_if771 $x184715852 $x284815853 $y184915854 (+ $y285015855 1) (- $y385115856 1)))))

; forwards $main_inv294
(assert
  (forall (($x284815858 Int) ($y385115861 Int) ($x184715857 Int) ($y285015860 Int) ($y184915859 Int))
    (=> (and ($main_if771 $x184715857 $x284815858 $y184915859 $y285015860 $y385115861))
        ($main_inv294 $x184715857 $x284815858 $y184915859 $y285015860 $y385115861))))

; __VERIFIER_assert precondition
(assert
  (forall (($y184915864 Int) ($x184715862 Int) ($y285015865 Int) ($x284815863 Int) ($y385115866 Int))
    (=> (and ($main_sum294 $x184715862 $x284815863 $y184915864 $y285015865 $y385115866))
        ($__VERIFIER_assert_pre (ite (= (+ (* $y184915864 $x284815863) $y285015865) $x184715862) 1 0)))))

(check-sat)
