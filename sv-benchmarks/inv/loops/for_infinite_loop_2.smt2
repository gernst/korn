(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if672 (Int) Bool)
(declare-fun $main_if674 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum235 (Int Int Int Int) Bool)
(declare-fun $main_inv235 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if673 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if672 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14737 Int))
    (=> (and ($assume_abort_if_not_if672 cond14737))
        (assume_abort_if_not cond14737))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14738 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14738))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if673 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14739 Int))
    (=> (and ($__VERIFIER_assert_if673 cond14739))
        (__VERIFIER_assert cond14739))))

; if else
(assert
  (forall (($x682 Int) ($n684 Int) ($y683 Int) ($int14740 Int) ($i681 Int))
    (=> (and (> $n684 0)
             (= $n684 $int14740)
             (<= (- 2147483648) $int14740)
             (<= $int14740 2147483647)
             (= $y683 0)
             (= $x682 0)
             (= $i681 0))
        ($main_if674 $i681 $x682 $y683 $n684))))

; loop entry $main_inv235
(assert
  (forall (($x68214742 Int) ($y68314743 Int) ($n68414744 Int) ($i68114741 Int))
    (=> (and ($main_if674 $i68114741 $x68214742 $y68314743 $n68414744))
        ($main_inv235 0 $x68214742 $y68314743 $n68414744))))

; loop term $main_sum235
(assert
  (forall (($i68114745 Int) ($x68214746 Int) ($y68314747 Int) ($n68414748 Int))
    (=> (and (= 1 0)
             ($main_inv235 $i68114745 $x68214746 $y68314747 $n68414748))
        ($main_sum235 $i68114745 $x68214746 $y68314747 $n68414748))))

; __VERIFIER_assert precondition
(assert
  (forall (($x68214746 Int) ($i68114745 Int) ($y68314747 Int) ($n68414748 Int))
    (=> (and (not (= 1 0))
             ($main_inv235 $i68114745 $x68214746 $y68314747 $n68414748))
        ($__VERIFIER_assert_pre (ite (= $x68214746 0) 1 0)))))

; forwards $main_inv235
(assert
  (forall (($i68114745 Int) ($x68214746 Int) ($y68314747 Int) ($n68414748 Int))
    (=> (and (__VERIFIER_assert (ite (= $x68214746 0) 1 0))
             (not (= 1 0))
             ($main_inv235 $i68114745 $x68214746 $y68314747 $n68414748))
        ($main_inv235 (+ $i68114745 1) $x68214746 $y68314747 $n68414748))))

; __VERIFIER_assert precondition
(assert
  (forall (($x68214750 Int) ($i68114749 Int) ($y68314751 Int) ($n68414752 Int))
    (=> (and ($main_sum235 $i68114749 $x68214750 $y68314751 $n68414752))
        ($__VERIFIER_assert_pre (ite (not (= $x68214750 0)) 1 0)))))

(check-sat)
