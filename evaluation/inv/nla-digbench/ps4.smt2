(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if778 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv297 (Int Int Int Int) Bool)
(declare-fun $main_if780 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if779 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum297 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if778 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15899 Int))
    (=> (and ($assume_abort_if_not_if778 cond15899))
        (assume_abort_if_not cond15899))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15900 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15900))
        false)))

; if then
(assert
  (forall ((cond15900 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15900))
        ($__VERIFIER_assert_if779 cond15900))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if779 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15901 Int))
    (=> (and ($__VERIFIER_assert_if779 cond15901))
        (__VERIFIER_assert cond15901))))

; loop entry $main_inv297
(assert
  (forall (($int15902 Int))
    (=> (and (<= (- 2147483648) $int15902)
             (<= $int15902 2147483647))
        ($main_inv297 $int15902 0 0 0))))

; loop term $main_sum297
(assert
  (forall (($k86015903 Int) ($y86115904 Int) ($x86215905 Int) ($c86315906 Int))
    (=> (and (= 1 0)
             ($main_inv297 $k86015903 $y86115904 $x86215905 $c86315906))
        ($main_sum297 $k86015903 $y86115904 $x86215905 $c86315906))))

; __VERIFIER_assert precondition
(assert
  (forall (($x86215905 Int) ($y86115904 Int) ($k86015903 Int) ($c86315906 Int))
    (=> (and (not (= 1 0))
             ($main_inv297 $k86015903 $y86115904 $x86215905 $c86315906))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 4 $x86215905) (* (* (* $y86115904 $y86115904) $y86115904) $y86115904)) (* (* (* 2 $y86115904) $y86115904) $y86115904)) (* $y86115904 $y86115904)) 0) 1 0)))))

; break $main_sum297
(assert
  (forall (($k86015903 Int) ($y86115904 Int) ($x86215905 Int) ($c86315906 Int))
    (=> (and (not (< $c86315906 $k86015903))
             (__VERIFIER_assert (ite (= (- (- (- (* 4 $x86215905) (* (* (* $y86115904 $y86115904) $y86115904) $y86115904)) (* (* (* 2 $y86115904) $y86115904) $y86115904)) (* $y86115904 $y86115904)) 0) 1 0))
             (not (= 1 0))
             ($main_inv297 $k86015903 $y86115904 $x86215905 $c86315906))
        ($main_sum297 $k86015903 $y86115904 $x86215905 $c86315906))))

; if else
(assert
  (forall (($k86015903 Int) ($y86115904 Int) ($x86215905 Int) ($c86315906 Int))
    (=> (and (< $c86315906 $k86015903)
             (__VERIFIER_assert (ite (= (- (- (- (* 4 $x86215905) (* (* (* $y86115904 $y86115904) $y86115904) $y86115904)) (* (* (* 2 $y86115904) $y86115904) $y86115904)) (* $y86115904 $y86115904)) 0) 1 0))
             (not (= 1 0))
             ($main_inv297 $k86015903 $y86115904 $x86215905 $c86315906))
        ($main_if780 $k86015903 $y86115904 $x86215905 $c86315906))))

; forwards $main_inv297
(assert
  (forall (($k86015907 Int) ($y86115908 Int) ($x86215909 Int) ($c86315910 Int))
    (=> (and ($main_if780 $k86015907 $y86115908 $x86215909 $c86315910))
        ($main_inv297 $k86015907 (+ $y86115908 1) (+ (* (* (+ $y86115908 1) (+ $y86115908 1)) (+ $y86115908 1)) $x86215909) (+ $c86315910 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k86015911 Int) ($y86115912 Int) ($x86215913 Int) ($c86315914 Int))
    (=> (and ($main_sum297 $k86015911 $y86115912 $x86215913 $c86315914))
        ($__VERIFIER_assert_pre (ite (= (- (* $k86015911 $y86115912) (* $y86115912 $y86115912)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x86215913 Int) ($y86115912 Int) ($k86015911 Int) ($c86315914 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (* $k86015911 $y86115912) (* $y86115912 $y86115912)) 0) 1 0))
             ($main_sum297 $k86015911 $y86115912 $x86215913 $c86315914))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 4 $x86215913) (* (* (* $y86115912 $y86115912) $y86115912) $y86115912)) (* (* (* 2 $y86115912) $y86115912) $y86115912)) (* $y86115912 $y86115912)) 0) 1 0)))))

(check-sat)
