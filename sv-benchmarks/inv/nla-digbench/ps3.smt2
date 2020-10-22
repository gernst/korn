(set-logic HORN)

(declare-fun $main_sum296 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if775 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if776 (Int) Bool)
(declare-fun $main_inv296 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if777 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if775 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15883 Int))
    (=> (and ($assume_abort_if_not_if775 cond15883))
        (assume_abort_if_not cond15883))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15884 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15884))
        false)))

; if then
(assert
  (forall ((cond15884 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15884))
        ($__VERIFIER_assert_if776 cond15884))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if776 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15885 Int))
    (=> (and ($__VERIFIER_assert_if776 cond15885))
        (__VERIFIER_assert cond15885))))

; loop entry $main_inv296
(assert
  (forall (($int15886 Int))
    (=> (and (<= (- 2147483648) $int15886)
             (<= $int15886 2147483647))
        ($main_inv296 $int15886 0 0 0))))

; loop term $main_sum296
(assert
  (forall (($k85615887 Int) ($y85715888 Int) ($x85815889 Int) ($c85915890 Int))
    (=> (and (= 1 0)
             ($main_inv296 $k85615887 $y85715888 $x85815889 $c85915890))
        ($main_sum296 $k85615887 $y85715888 $x85815889 $c85915890))))

; __VERIFIER_assert precondition
(assert
  (forall (($x85815889 Int) ($y85715888 Int) ($k85615887 Int) ($c85915890 Int))
    (=> (and (not (= 1 0))
             ($main_inv296 $k85615887 $y85715888 $x85815889 $c85915890))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 6 $x85815889) (* (* (* 2 $y85715888) $y85715888) $y85715888)) (* (* 3 $y85715888) $y85715888)) $y85715888) 0) 1 0)))))

; break $main_sum296
(assert
  (forall (($k85615887 Int) ($y85715888 Int) ($x85815889 Int) ($c85915890 Int))
    (=> (and (not (< $c85915890 $k85615887))
             (__VERIFIER_assert (ite (= (- (- (- (* 6 $x85815889) (* (* (* 2 $y85715888) $y85715888) $y85715888)) (* (* 3 $y85715888) $y85715888)) $y85715888) 0) 1 0))
             (not (= 1 0))
             ($main_inv296 $k85615887 $y85715888 $x85815889 $c85915890))
        ($main_sum296 $k85615887 $y85715888 $x85815889 $c85915890))))

; if else
(assert
  (forall (($k85615887 Int) ($y85715888 Int) ($x85815889 Int) ($c85915890 Int))
    (=> (and (< $c85915890 $k85615887)
             (__VERIFIER_assert (ite (= (- (- (- (* 6 $x85815889) (* (* (* 2 $y85715888) $y85715888) $y85715888)) (* (* 3 $y85715888) $y85715888)) $y85715888) 0) 1 0))
             (not (= 1 0))
             ($main_inv296 $k85615887 $y85715888 $x85815889 $c85915890))
        ($main_if777 $k85615887 $y85715888 $x85815889 $c85915890))))

; forwards $main_inv296
(assert
  (forall (($k85615891 Int) ($y85715892 Int) ($x85815893 Int) ($c85915894 Int))
    (=> (and ($main_if777 $k85615891 $y85715892 $x85815893 $c85915894))
        ($main_inv296 $k85615891 (+ $y85715892 1) (+ (* (+ $y85715892 1) (+ $y85715892 1)) $x85815893) (+ $c85915894 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x85815897 Int) ($y85715896 Int) ($k85615895 Int) ($c85915898 Int))
    (=> (and ($main_sum296 $k85615895 $y85715896 $x85815897 $c85915898))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 6 $x85815897) (* (* (* 2 $y85715896) $y85715896) $y85715896)) (* (* 3 $y85715896) $y85715896)) $y85715896) 0) 1 0)))))

(check-sat)
