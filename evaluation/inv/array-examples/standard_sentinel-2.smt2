(set-logic HORN)

(declare-fun $main_inv364 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum365 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum364 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if112 (Int) Bool)
(declare-fun $main_inv365 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if113 ((Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4833 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4833))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if112 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4834 Int))
    (=> (and ($__VERIFIER_assert_if112 cond4834))
        (__VERIFIER_assert cond4834))))

; loop entry $main_inv364
(assert
  (forall (($a433 (Array Int Int)) ($int4836 Int) ($pos435 Int) ($i437 Int) ($marker434 Int) ($i436 Int) ($int4835 Int))
    (=> (and (= $i436 0)
             (= $pos435 $int4836)
             (<= (- 2147483648) $int4836)
             (<= $int4836 2147483647)
             (= $marker434 $int4835)
             (<= (- 2147483648) $int4835)
             (<= $int4835 2147483647))
        ($main_inv364 $a433 $marker434 $pos435 $i436 $i437))))

; loop term $main_sum364
(assert
  (forall (($i4374841 Int) ($marker4344838 Int) ($pos4354839 Int) ($i4364840 Int) ($a4334837 (Array Int Int)))
    (=> (and (not (< $i4364840 100000))
             ($main_inv364 $a4334837 $marker4344838 $pos4354839 $i4364840 $i4374841))
        ($main_sum364 $a4334837 $marker4344838 $pos4354839 $i4364840 $i4374841))))

; forwards $main_inv364
(assert
  (forall (($int4842 Int) ($i4374841 Int) ($marker4344838 Int) ($pos4354839 Int) ($i4364840 Int) ($a4334837 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4842)
             (<= $int4842 2147483647)
             (< $i4364840 100000)
             ($main_inv364 $a4334837 $marker4344838 $pos4354839 $i4364840 $i4374841))
        ($main_inv364 (store $a4334837 $i4364840 $int4842) $marker4344838 $pos4354839 (+ $i4364840 1) $i4374841))))

; loop entry $main_inv365
(assert
  (forall (($i4374847 Int) ($i4364846 Int) ($a4334843 (Array Int Int)) ($marker4344844 Int) ($pos4354845 Int))
    (=> (and (= $i4374847 0)
             (>= $pos4354845 0)
             (< $pos4354845 100000)
             ($main_sum364 $a4334843 $marker4344844 $pos4354845 $i4364846 $i4374847))
        ($main_inv365 (store $a4334843 $pos4354845 $marker4344844) $marker4344844 $pos4354845 $i4364846 $i4374847))))

; loop term $main_sum365
(assert
  (forall (($i4374852 Int) ($marker4344849 Int) ($a4334848 (Array Int Int)) ($pos4354850 Int) ($i4364851 Int))
    (=> (and (= (select $a4334848 $i4374852) $marker4344849)
             ($main_inv365 $a4334848 $marker4344849 $pos4354850 $i4364851 $i4374852))
        ($main_sum365 $a4334848 $marker4344849 $pos4354850 $i4364851 $i4374852))))

; forwards $main_inv365
(assert
  (forall (($i4374852 Int) ($marker4344849 Int) ($a4334848 (Array Int Int)) ($pos4354850 Int) ($i4364851 Int))
    (=> (and (not (= (select $a4334848 $i4374852) $marker4344849))
             ($main_inv365 $a4334848 $marker4344849 $pos4354850 $i4364851 $i4374852))
        ($main_inv365 $a4334848 $marker4344849 $pos4354850 $i4364851 (+ $i4374852 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i4364856 Int) ($marker4344854 Int) ($pos4354855 Int) ($a4334853 (Array Int Int)) ($i4374857 Int))
    (=> (and ($main_sum365 $a4334853 $marker4344854 $pos4354855 $i4364856 $i4374857))
        ($__VERIFIER_assert_pre (ite (<= $i4374857 $pos4354855) 1 0)))))

; if then
(assert
  (forall (($i4364856 Int) ($marker4344854 Int) ($pos4354855 Int) ($a4334853 (Array Int Int)) ($i4374857 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i4374857 $pos4354855) 1 0))
             ($main_sum365 $a4334853 $marker4344854 $pos4354855 $i4364856 $i4374857))
        ($main_if113 $a4334853 $marker4344854 $pos4354855 $i4364856 $i4374857))))

; if else
(assert
  (forall (($i4374847 Int) ($i4364846 Int) ($a4334843 (Array Int Int)) ($marker4344844 Int) ($pos4354845 Int))
    (=> (and (not (and (>= $pos4354845 0) (< $pos4354845 100000)))
             ($main_sum364 $a4334843 $marker4344844 $pos4354845 $i4364846 $i4374847))
        ($main_if113 $a4334843 $marker4344844 $pos4354845 $i4364846 $i4374847))))

(check-sat)
