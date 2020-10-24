(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if672 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if674 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum235 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv235 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if673 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if672 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16032 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if672 cond cond16032))
        (assume_abort_if_not cond16032))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16033 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16033))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if673 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16034 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if673 cond cond16034))
        (__VERIFIER_assert cond16034))))

; if else
(assert
  (forall (($x682 Int) ($n684 Int) ($y683 Int) ($int16035 Int) ($i681 Int))
    (=> (and (> $n684 0)
             (= $n684 $int16035)
             (<= (- 2147483648) $int16035)
             (<= $int16035 2147483647)
             (= $y683 0)
             (= $x682 0)
             (= $i681 0))
        ($main_if674 $i681 $x682 $y683 $n684 $i681 $x682 $y683 $n684))))

; loop entry $main_inv235
(assert
  (forall (($y68316038 Int) ($x682 Int) ($n684 Int) ($n68416039 Int) ($x68216037 Int) ($y683 Int) ($i68116036 Int) ($i681 Int))
    (=> (and ($main_if674 $i681 $x682 $y683 $n684 $i68116036 $x68216037 $y68316038 $n68416039))
        ($main_inv235 0 $x68216037 $y68316038 $n68416039))))

; loop term $main_sum235
(assert
  (forall (($i68116040 Int) ($x68216041 Int) ($y68316042 Int) ($n68416043 Int))
    (=> (and (= 1 0))
        ($main_sum235 $i68116040 $x68216041 $y68316042 $n68416043 $i68116040 $x68216041 $y68316042 $n68416043))))

; __VERIFIER_assert precondition
(assert
  (forall (($x68216041 Int) ($i68116040 Int) ($y68316042 Int) ($n68416043 Int))
    (=> (and (not (= 1 0))
             ($main_inv235 $i68116040 $x68216041 $y68316042 $n68416043))
        ($__VERIFIER_assert_pre (ite (= $x68216041 0) 1 0)))))

; forwards $main_inv235
(assert
  (forall (($i68116040 Int) ($x68216041 Int) ($y68316042 Int) ($n68416043 Int))
    (=> (and (__VERIFIER_assert (ite (= $x68216041 0) 1 0))
             (not (= 1 0))
             ($main_inv235 $i68116040 $x68216041 $y68316042 $n68416043))
        ($main_inv235 (+ $i68116040 1) $x68216041 $y68316042 $n68416043))))

; backwards $main_sum235
(assert
  (forall (($n68416047 Int) ($n68416043 Int) ($x68216045 Int) ($y68316042 Int) ($x68216041 Int) ($i68116044 Int) ($y68316046 Int) ($i68116040 Int))
    (=> (and ($main_sum235 (+ $i68116040 1) $x68216041 $y68316042 $n68416043 $i68116044 $x68216045 $y68316046 $n68416047)
             (__VERIFIER_assert (ite (= $x68216041 0) 1 0))
             (not (= 1 0)))
        ($main_sum235 $i68116040 $x68216041 $y68316042 $n68416043 $i68116044 $x68216045 $y68316046 $n68416047))))

; __VERIFIER_assert precondition
(assert
  (forall (($y68316038 Int) ($x682 Int) ($n684 Int) ($y68316050 Int) ($n68416051 Int) ($x68216049 Int) ($n68416039 Int) ($i68116048 Int) ($x68216037 Int) ($y683 Int) ($i68116036 Int) ($i681 Int))
    (=> (and ($main_sum235 0 $x68216037 $y68316038 $n68416039 $i68116048 $x68216049 $y68316050 $n68416051)
             ($main_if674 $i681 $x682 $y683 $n684 $i68116036 $x68216037 $y68316038 $n68416039))
        ($__VERIFIER_assert_pre (ite (not (= $x68216049 0)) 1 0)))))

(check-sat)
