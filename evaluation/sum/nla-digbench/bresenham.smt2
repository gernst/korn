(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv277 (Int Int Int Int Int) Bool)
(declare-fun $main_if726 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum277 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if723 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if725 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if724 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if723 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16942 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if723 cond cond16942))
        (assume_abort_if_not cond16942))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16943 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16943))
        false)))

; if then
(assert
  (forall ((cond Int) (cond16943 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16943))
        ($__VERIFIER_assert_if724 cond cond16943))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if724 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16944 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if724 cond cond16944))
        (__VERIFIER_assert cond16944))))

; loop entry $main_inv277
(assert
  (forall (($int16945 Int) ($int16946 Int))
    (=> (and (<= (- 2147483648) $int16946)
             (<= $int16946 2147483647)
             (<= (- 2147483648) $int16945)
             (<= $int16945 2147483647))
        ($main_inv277 $int16945 $int16946 (- (* 2 $int16946) $int16945) 0 0))))

; loop term $main_sum277
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($X77816947 Int) ($y78216951 Int) ($Y77916948 Int))
    (=> (and (= 1 0))
        ($main_sum277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($X77816947 Int) ($y78216951 Int) ($Y77916948 Int))
    (=> (and (not (= 1 0))
             ($main_inv277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* (* 2 $Y77916948) $x78116950) (* (* 2 $X77816947) $y78216951)) $X77816947) (* 2 $Y77916948)) $v78016949) 0) 1 0)))))

; break $main_sum277
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($X77816947 Int) ($y78216951 Int) ($Y77916948 Int))
    (=> (and (not (<= $x78116950 $X77816947))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* (* 2 $Y77916948) $x78116950) (* (* 2 $X77816947) $y78216951)) $X77816947) (* 2 $Y77916948)) $v78016949) 0) 1 0))
             (not (= 1 0))
             ($main_inv277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))
        ($main_sum277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))))

; if else
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($X77816947 Int) ($y78216951 Int) ($Y77916948 Int))
    (=> (and (<= $x78116950 $X77816947)
             (__VERIFIER_assert (ite (= (- (+ (- (- (* (* 2 $Y77916948) $x78116950) (* (* 2 $X77816947) $y78216951)) $X77816947) (* 2 $Y77916948)) $v78016949) 0) 1 0))
             (not (= 1 0))
             ($main_inv277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))
        ($main_if725 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951))))

; if then
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($x78116955 Int) ($Y77916948 Int) ($X77816952 Int) ($Y77916953 Int) ($X77816947 Int) ($v78016954 Int) ($y78216956 Int) ($y78216951 Int))
    (=> (and (< $v78016954 0)
             ($main_if725 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816952 $Y77916953 $v78016954 $x78116955 $y78216956))
        ($main_if726 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816952 $Y77916953 (+ $v78016954 (* 2 $Y77916953)) $x78116955 $y78216956))))

; if else
(assert
  (forall (($x78116950 Int) ($v78016949 Int) ($x78116955 Int) ($Y77916948 Int) ($X77816952 Int) ($Y77916953 Int) ($X77816947 Int) ($v78016954 Int) ($y78216956 Int) ($y78216951 Int))
    (=> (and (not (< $v78016954 0))
             ($main_if725 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816952 $Y77916953 $v78016954 $x78116955 $y78216956))
        ($main_if726 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816952 $Y77916953 (+ $v78016954 (* 2 (- $Y77916953 $X77816952))) $x78116955 (+ $y78216956 1)))))

; forwards $main_inv277
(assert
  (forall (($v78016949 Int) ($y78216961 Int) ($X77816947 Int) ($x78116960 Int) ($y78216951 Int) ($Y77916948 Int) ($Y77916958 Int) ($v78016959 Int) ($x78116950 Int) ($X77816957 Int))
    (=> (and ($main_if726 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816957 $Y77916958 $v78016959 $x78116960 $y78216961))
        ($main_inv277 $X77816957 $Y77916958 $v78016959 (+ $x78116960 1) $y78216961))))

; backwards $main_sum277
(assert
  (forall (($v78016949 Int) ($y78216961 Int) ($X77816962 Int) ($X77816947 Int) ($x78116960 Int) ($y78216951 Int) ($Y77916948 Int) ($Y77916963 Int) ($x78116965 Int) ($y78216966 Int) ($Y77916958 Int) ($v78016964 Int) ($v78016959 Int) ($x78116950 Int) ($X77816957 Int))
    (=> (and ($main_sum277 $X77816957 $Y77916958 $v78016959 (+ $x78116960 1) $y78216961 $X77816962 $Y77916963 $v78016964 $x78116965 $y78216966)
             ($main_if726 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816957 $Y77916958 $v78016959 $x78116960 $y78216961))
        ($main_sum277 $X77816947 $Y77916948 $v78016949 $x78116950 $y78216951 $X77816962 $Y77916963 $v78016964 $x78116965 $y78216966))))

; __VERIFIER_assert precondition
(assert
  (forall (($Y77916968 Int) ($int16946 Int) ($X77816967 Int) ($y78216971 Int) ($v78016969 Int) ($x78116970 Int) ($int16945 Int))
    (=> (and ($main_sum277 $int16945 $int16946 (- (* 2 $int16946) $int16945) 0 0 $X77816967 $Y77916968 $v78016969 $x78116970 $y78216971)
             (<= (- 2147483648) $int16946)
             (<= $int16946 2147483647)
             (<= (- 2147483648) $int16945)
             (<= $int16945 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (- (+ (- (- (* (* 2 $Y77916968) $x78116970) (* (* 2 $x78116970) $y78216971)) $X77816967) (* 2 $Y77916968)) $v78016969) (* 2 $y78216971)) 0) 1 0)))))

(check-sat)
