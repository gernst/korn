(set-logic HORN)

(declare-fun $main_inv192 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if583 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum193 (Int Int Int) Bool)
(declare-fun $main_inv193 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum192 (Int Int Int) Bool)
(declare-fun $main_if584 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13782 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13782))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if583 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13783 Int))
    (=> (and ($__VERIFIER_assert_if583 cond13783))
        (__VERIFIER_assert cond13783))))

; loop entry $main_inv192
(assert
  (forall (($y558 Int) ($z559 Int) ($x557 Int))
    (=> (and (= $z559 0)
             (= $y558 50000)
             (= $x557 0))
        ($main_inv192 0 $y558 $z559))))

; loop term $main_sum192
(assert
  (forall (($x55713784 Int) ($y55813785 Int) ($z55913786 Int))
    (=> (and (not (< $x55713784 1000000))
             ($main_inv192 $x55713784 $y55813785 $z55913786))
        ($main_sum192 $x55713784 $y55813785 $z55913786))))

; if then
(assert
  (forall (($x55713784 Int) ($y55813785 Int) ($z55913786 Int))
    (=> (and (< $x55713784 50000)
             (< $x55713784 1000000)
             ($main_inv192 $x55713784 $y55813785 $z55913786))
        ($main_if584 (+ $x55713784 1) $y55813785 $z55913786))))

; if else
(assert
  (forall (($x55713784 Int) ($y55813785 Int) ($z55913786 Int))
    (=> (and (not (< $x55713784 50000))
             (< $x55713784 1000000)
             ($main_inv192 $x55713784 $y55813785 $z55913786))
        ($main_if584 (+ $x55713784 1) (+ $y55813785 1) $z55913786))))

; forwards $main_inv192
(assert
  (forall (($x55713787 Int) ($y55813788 Int) ($z55913789 Int))
    (=> (and ($main_if584 $x55713787 $y55813788 $z55913789))
        ($main_inv192 $x55713787 $y55813788 $z55913789))))

; loop entry $main_inv193
(assert
  (forall (($x55713790 Int) ($y55813791 Int) ($z55913792 Int))
    (=> (and ($main_sum192 $x55713790 $y55813791 $z55913792))
        ($main_inv193 $x55713790 $y55813791 $z55913792))))

; loop term $main_sum193
(assert
  (forall (($x55713793 Int) ($y55813794 Int) ($z55913795 Int))
    (=> (and (not (> $y55813794 $z55913795))
             ($main_inv193 $x55713793 $y55813794 $z55913795))
        ($main_sum193 $x55713793 $y55813794 $z55913795))))

; forwards $main_inv193
(assert
  (forall (($x55713793 Int) ($y55813794 Int) ($z55913795 Int))
    (=> (and (> $y55813794 $z55913795)
             ($main_inv193 $x55713793 $y55813794 $z55913795))
        ($main_inv193 (- $x55713793 1) (- $y55813794 1) $z55913795))))

; __VERIFIER_assert precondition
(assert
  (forall (($x55713796 Int) ($z55913798 Int) ($y55813797 Int))
    (=> (and ($main_sum193 $x55713796 $y55813797 $z55913798))
        ($__VERIFIER_assert_pre (ite (= $x55713796 $z55913798) 1 0)))))

(check-sat)
