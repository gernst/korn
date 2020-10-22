(set-logic HORN)

(declare-fun $main_inv192 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if583 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum193 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv193 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum192 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if584 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14847 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14847))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if583 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14848 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if583 cond cond14848))
        (__VERIFIER_assert cond14848))))

; loop entry $main_inv192
(assert
  (forall (($y558 Int) ($z559 Int) ($x557 Int))
    (=> (and (= $z559 0)
             (= $y558 50000)
             (= $x557 0))
        ($main_inv192 0 $y558 $z559))))

; loop term $main_sum192
(assert
  (forall (($x55714849 Int) ($y55814850 Int) ($z55914851 Int))
    (=> (and (not (< $x55714849 1000000)))
        ($main_sum192 $x55714849 $y55814850 $z55914851 $x55714849 $y55814850 $z55914851))))

; if then
(assert
  (forall (($x55714849 Int) ($y55814850 Int) ($z55914851 Int))
    (=> (and (< $x55714849 50000)
             (< $x55714849 1000000)
             ($main_inv192 $x55714849 $y55814850 $z55914851))
        ($main_if584 $x55714849 $y55814850 $z55914851 (+ $x55714849 1) $y55814850 $z55914851))))

; if else
(assert
  (forall (($x55714849 Int) ($y55814850 Int) ($z55914851 Int))
    (=> (and (not (< $x55714849 50000))
             (< $x55714849 1000000)
             ($main_inv192 $x55714849 $y55814850 $z55914851))
        ($main_if584 $x55714849 $y55814850 $z55914851 (+ $x55714849 1) (+ $y55814850 1) $z55914851))))

; forwards $main_inv192
(assert
  (forall (($y55814853 Int) ($z55914854 Int) ($x55714852 Int) ($z55914851 Int) ($y55814850 Int) ($x55714849 Int))
    (=> (and ($main_if584 $x55714849 $y55814850 $z55914851 $x55714852 $y55814853 $z55914854))
        ($main_inv192 $x55714852 $y55814853 $z55914854))))

; backwards $main_sum192
(assert
  (forall (($y55814856 Int) ($x55714855 Int) ($z55914854 Int) ($x55714852 Int) ($z55914851 Int) ($z55914857 Int) ($y55814853 Int) ($y55814850 Int) ($x55714849 Int))
    (=> (and ($main_sum192 $x55714852 $y55814853 $z55914854 $x55714855 $y55814856 $z55914857)
             ($main_if584 $x55714849 $y55814850 $z55914851 $x55714852 $y55814853 $z55914854))
        ($main_sum192 $x55714849 $y55814850 $z55914851 $x55714855 $y55814856 $z55914857))))

; loop entry $main_inv193
(assert
  (forall (($z559 Int) ($z55914860 Int) ($y558 Int) ($y55814859 Int) ($x55714858 Int) ($x557 Int))
    (=> (and ($main_sum192 0 $y558 $z559 $x55714858 $y55814859 $z55914860)
             (= $z559 0)
             (= $y558 50000)
             (= $x557 0))
        ($main_inv193 $x55714858 $y55814859 $z55914860))))

; loop term $main_sum193
(assert
  (forall (($x55714861 Int) ($y55814862 Int) ($z55914863 Int))
    (=> (and (not (> $y55814862 $z55914863)))
        ($main_sum193 $x55714861 $y55814862 $z55914863 $x55714861 $y55814862 $z55914863))))

; forwards $main_inv193
(assert
  (forall (($x55714861 Int) ($y55814862 Int) ($z55914863 Int))
    (=> (and (> $y55814862 $z55914863)
             ($main_inv193 $x55714861 $y55814862 $z55914863))
        ($main_inv193 (- $x55714861 1) (- $y55814862 1) $z55914863))))

; backwards $main_sum193
(assert
  (forall (($x55714864 Int) ($x55714861 Int) ($y55814862 Int) ($z55914863 Int) ($y55814865 Int) ($z55914866 Int))
    (=> (and ($main_sum193 (- $x55714861 1) (- $y55814862 1) $z55914863 $x55714864 $y55814865 $z55914866)
             (> $y55814862 $z55914863))
        ($main_sum193 $x55714861 $y55814862 $z55914863 $x55714864 $y55814865 $z55914866))))

; __VERIFIER_assert precondition
(assert
  (forall (($z559 Int) ($y558 Int) ($y55814859 Int) ($x55714867 Int) ($x55714858 Int) ($y55814868 Int) ($x557 Int) ($z55914869 Int) ($z55914860 Int))
    (=> (and ($main_sum193 $x55714858 $y55814859 $z55914860 $x55714867 $y55814868 $z55914869)
             ($main_sum192 0 $y558 $z559 $x55714858 $y55814859 $z55914860)
             (= $z559 0)
             (= $y558 50000)
             (= $x557 0))
        ($__VERIFIER_assert_pre (ite (= $x55714867 $z55914869) 1 0)))))

(check-sat)
