(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if782 (Int) Bool)
(declare-fun $assume_abort_if_not_if781 (Int) Bool)
(declare-fun $main_inv298 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum298 (Int Int Int Int) Bool)
(declare-fun $main_if783 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if781 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15915 Int))
    (=> (and ($assume_abort_if_not_if781 cond15915))
        (assume_abort_if_not cond15915))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15916 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15916))
        false)))

; if then
(assert
  (forall ((cond15916 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15916))
        ($__VERIFIER_assert_if782 cond15916))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if782 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15917 Int))
    (=> (and ($__VERIFIER_assert_if782 cond15917))
        (__VERIFIER_assert cond15917))))

; loop entry $main_inv298
(assert
  (forall (($int15918 Int))
    (=> (and (<= (- 2147483648) $int15918)
             (<= $int15918 2147483647))
        ($main_inv298 $int15918 0 0 0))))

; loop term $main_sum298
(assert
  (forall (($k86415919 Int) ($y86515920 Int) ($x86615921 Int) ($c86715922 Int))
    (=> (and (= 1 0)
             ($main_inv298 $k86415919 $y86515920 $x86615921 $c86715922))
        ($main_sum298 $k86415919 $y86515920 $x86615921 $c86715922))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86515920 Int) ($x86615921 Int) ($k86415919 Int) ($c86715922 Int))
    (=> (and (not (= 1 0))
             ($main_inv298 $k86415919 $y86515920 $x86615921 $c86715922))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86515920) $y86515920) $y86515920) $y86515920) $y86515920) (* (* (* (* 15 $y86515920) $y86515920) $y86515920) $y86515920)) (* (* (* 10 $y86515920) $y86515920) $y86515920)) (* 30 $x86615921)) $y86515920) 0) 1 0)))))

; break $main_sum298
(assert
  (forall (($k86415919 Int) ($y86515920 Int) ($x86615921 Int) ($c86715922 Int))
    (=> (and (not (< $c86715922 $k86415919))
             (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86515920) $y86515920) $y86515920) $y86515920) $y86515920) (* (* (* (* 15 $y86515920) $y86515920) $y86515920) $y86515920)) (* (* (* 10 $y86515920) $y86515920) $y86515920)) (* 30 $x86615921)) $y86515920) 0) 1 0))
             (not (= 1 0))
             ($main_inv298 $k86415919 $y86515920 $x86615921 $c86715922))
        ($main_sum298 $k86415919 $y86515920 $x86615921 $c86715922))))

; if else
(assert
  (forall (($k86415919 Int) ($y86515920 Int) ($x86615921 Int) ($c86715922 Int))
    (=> (and (< $c86715922 $k86415919)
             (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86515920) $y86515920) $y86515920) $y86515920) $y86515920) (* (* (* (* 15 $y86515920) $y86515920) $y86515920) $y86515920)) (* (* (* 10 $y86515920) $y86515920) $y86515920)) (* 30 $x86615921)) $y86515920) 0) 1 0))
             (not (= 1 0))
             ($main_inv298 $k86415919 $y86515920 $x86615921 $c86715922))
        ($main_if783 $k86415919 $y86515920 $x86615921 $c86715922))))

; forwards $main_inv298
(assert
  (forall (($k86415923 Int) ($y86515924 Int) ($x86615925 Int) ($c86715926 Int))
    (=> (and ($main_if783 $k86415923 $y86515924 $x86615925 $c86715926))
        ($main_inv298 $k86415923 (+ $y86515924 1) (+ (* (* (* (+ $y86515924 1) (+ $y86515924 1)) (+ $y86515924 1)) (+ $y86515924 1)) $x86615925) (+ $c86715926 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86515928 Int) ($x86615929 Int) ($k86415927 Int) ($c86715930 Int))
    (=> (and ($main_sum298 $k86415927 $y86515928 $x86615929 $c86715930))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86515928) $y86515928) $y86515928) $y86515928) $y86515928) (* (* (* (* 15 $y86515928) $y86515928) $y86515928) $y86515928)) (* (* (* 10 $y86515928) $y86515928) $y86515928)) (* 30 $x86615929)) $y86515928) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k86415927 Int) ($y86515928 Int) ($x86615929 Int) ($c86715930 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86515928) $y86515928) $y86515928) $y86515928) $y86515928) (* (* (* (* 15 $y86515928) $y86515928) $y86515928) $y86515928)) (* (* (* 10 $y86515928) $y86515928) $y86515928)) (* 30 $x86615929)) $y86515928) 0) 1 0))
             ($main_sum298 $k86415927 $y86515928 $x86615929 $c86715930))
        ($__VERIFIER_assert_pre (ite (= (* $k86415927 $y86515928) (* $y86515928 $y86515928)) 1 0)))))

(check-sat)
