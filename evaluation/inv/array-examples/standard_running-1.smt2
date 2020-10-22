(set-logic HORN)

(declare-fun $main_if107 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum359 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv360 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv359 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if104 (Int) Bool)
(declare-fun $main_if105 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if106 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum358 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv358 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum360 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4755 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4755))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if104 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4756 Int))
    (=> (and ($__VERIFIER_assert_if104 cond4756))
        (__VERIFIER_assert cond4756))))

; loop entry $main_inv358
(assert
  (forall (($a425 (Array Int Int)) ($b426 (Array Int Int)) ($f428 Int) ($i427 Int))
    (=> (and (= $i427 0))
        ($main_inv358 $a425 $b426 0 $f428))))

; loop term $main_sum358
(assert
  (forall (($a4254757 (Array Int Int)) ($b4264758 (Array Int Int)) ($i4274759 Int) ($f4284760 Int))
    (=> (and (not (< $i4274759 100000))
             ($main_inv358 $a4254757 $b4264758 $i4274759 $f4284760))
        ($main_sum358 $a4254757 $b4264758 $i4274759 $f4284760))))

; forwards $main_inv358
(assert
  (forall (($int4761 Int) ($f4284760 Int) ($b4264758 (Array Int Int)) ($a4254757 (Array Int Int)) ($i4274759 Int))
    (=> (and (<= (- 2147483648) $int4761)
             (<= $int4761 2147483647)
             (< $i4274759 100000)
             ($main_inv358 $a4254757 $b4264758 $i4274759 $f4284760))
        ($main_inv358 (store $a4254757 $i4274759 $int4761) $b4264758 (+ $i4274759 1) $f4284760))))

; loop entry $main_inv359
(assert
  (forall (($a4254762 (Array Int Int)) ($b4264763 (Array Int Int)) ($f4284765 Int) ($i4274764 Int))
    (=> (and ($main_sum358 $a4254762 $b4264763 $i4274764 $f4284765))
        ($main_inv359 $a4254762 $b4264763 0 $f4284765))))

; loop term $main_sum359
(assert
  (forall (($a4254766 (Array Int Int)) ($b4264767 (Array Int Int)) ($i4274768 Int) ($f4284769 Int))
    (=> (and (not (< $i4274768 100000))
             ($main_inv359 $a4254766 $b4264767 $i4274768 $f4284769))
        ($main_sum359 $a4254766 $b4264767 $i4274768 $f4284769))))

; if then
(assert
  (forall (($a4254766 (Array Int Int)) ($b4264767 (Array Int Int)) ($i4274768 Int) ($f4284769 Int))
    (=> (and (>= (select $a4254766 $i4274768) 0)
             (< $i4274768 100000)
             ($main_inv359 $a4254766 $b4264767 $i4274768 $f4284769))
        ($main_if105 $a4254766 (store $b4264767 $i4274768 1) $i4274768 $f4284769))))

; if else
(assert
  (forall (($a4254766 (Array Int Int)) ($b4264767 (Array Int Int)) ($i4274768 Int) ($f4284769 Int))
    (=> (and (not (>= (select $a4254766 $i4274768) 0))
             (< $i4274768 100000)
             ($main_inv359 $a4254766 $b4264767 $i4274768 $f4284769))
        ($main_if105 $a4254766 (store $b4264767 $i4274768 0) $i4274768 $f4284769))))

; forwards $main_inv359
(assert
  (forall (($a4254770 (Array Int Int)) ($b4264771 (Array Int Int)) ($i4274772 Int) ($f4284773 Int))
    (=> (and ($main_if105 $a4254770 $b4264771 $i4274772 $f4284773))
        ($main_inv359 $a4254770 $b4264771 (+ $i4274772 1) $f4284773))))

; loop entry $main_inv360
(assert
  (forall (($a4254774 (Array Int Int)) ($b4264775 (Array Int Int)) ($f4284777 Int) ($i4274776 Int))
    (=> (and (= $f4284777 1)
             ($main_sum359 $a4254774 $b4264775 $i4274776 $f4284777))
        ($main_inv360 $a4254774 $b4264775 0 $f4284777))))

; loop term $main_sum360
(assert
  (forall (($a4254778 (Array Int Int)) ($b4264779 (Array Int Int)) ($i4274780 Int) ($f4284781 Int))
    (=> (and (not (< $i4274780 100000))
             ($main_inv360 $a4254778 $b4264779 $i4274780 $f4284781))
        ($main_sum360 $a4254778 $b4264779 $i4274780 $f4284781))))

; if then
(assert
  (forall (($a4254778 (Array Int Int)) ($b4264779 (Array Int Int)) ($i4274780 Int) ($f4284781 Int))
    (=> (and (>= (select $a4254778 $i4274780) 0)
             (= (select $b4264779 $i4274780) 0)
             (< $i4274780 100000)
             ($main_inv360 $a4254778 $b4264779 $i4274780 $f4284781))
        ($main_if106 $a4254778 $b4264779 $i4274780 0))))

; if else
(assert
  (forall (($a4254778 (Array Int Int)) ($b4264779 (Array Int Int)) ($i4274780 Int) ($f4284781 Int))
    (=> (and (not (and (>= (select $a4254778 $i4274780) 0) (= (select $b4264779 $i4274780) 0)))
             (< $i4274780 100000)
             ($main_inv360 $a4254778 $b4264779 $i4274780 $f4284781))
        ($main_if106 $a4254778 $b4264779 $i4274780 $f4284781))))

; if then
(assert
  (forall (($a4254782 (Array Int Int)) ($b4264783 (Array Int Int)) ($i4274784 Int) ($f4284785 Int))
    (=> (and (< (select $a4254782 $i4274784) 0)
             (= (select $b4264783 $i4274784) 0)
             ($main_if106 $a4254782 $b4264783 $i4274784 $f4284785))
        ($main_if107 $a4254782 $b4264783 $i4274784 0))))

; if else
(assert
  (forall (($a4254782 (Array Int Int)) ($b4264783 (Array Int Int)) ($i4274784 Int) ($f4284785 Int))
    (=> (and (not (and (< (select $a4254782 $i4274784) 0) (= (select $b4264783 $i4274784) 0)))
             ($main_if106 $a4254782 $b4264783 $i4274784 $f4284785))
        ($main_if107 $a4254782 $b4264783 $i4274784 $f4284785))))

; forwards $main_inv360
(assert
  (forall (($a4254786 (Array Int Int)) ($b4264787 (Array Int Int)) ($i4274788 Int) ($f4284789 Int))
    (=> (and ($main_if107 $a4254786 $b4264787 $i4274788 $f4284789))
        ($main_inv360 $a4254786 $b4264787 (+ $i4274788 1) $f4284789))))

; __VERIFIER_assert precondition
(assert
  (forall (($f4284793 Int) ($a4254790 (Array Int Int)) ($b4264791 (Array Int Int)) ($i4274792 Int))
    (=> (and ($main_sum360 $a4254790 $b4264791 $i4274792 $f4284793))
        ($__VERIFIER_assert_pre $f4284793))))

(check-sat)
