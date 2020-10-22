(set-logic HORN)

(declare-fun $main_if516 (Int Int Int Int) Bool)
(declare-fun $main_if515 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if517 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum124 (Int Int Int Int) Bool)
(declare-fun $main_if518 (Int Int Int Int) Bool)
(declare-fun $main_inv124 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if514 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13934 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13934))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if514 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13935 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if514 cond cond13935))
        (__VERIFIER_assert cond13935))))

; loop entry $main_inv124
(assert
  (forall (($x447 Int) ($y448 Int))
    (=> (and (= $y448 1))
        ($main_inv124 $x447 $y448))))

; loop term $main_sum124
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($int13938 Int))
    (=> (and (= $int13938 0)
             (<= (- 2147483648) $int13938)
             (<= $int13938 2147483647))
        ($main_sum124 $x44713936 $y44813937 $x44713936 $y44813937))))

; if then
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($int13939 Int) ($int13938 Int))
    (=> (and (not (= $int13939 0))
             (<= (- 2147483648) $int13939)
             (<= $int13939 2147483647)
             (not (= (mod $x44713936 3) 2))
             (not (= (mod $x44713936 3) 1))
             (not (= $int13938 0))
             (<= (- 2147483648) $int13938)
             (<= $int13938 2147483647)
             ($main_inv124 $x44713936 $y44813937))
        ($main_if515 $x44713936 $y44813937 (+ $x44713936 4) 1))))

; if else
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($int13939 Int) ($int13938 Int))
    (=> (and (= $int13939 0)
             (<= (- 2147483648) $int13939)
             (<= $int13939 2147483647)
             (not (= (mod $x44713936 3) 2))
             (not (= (mod $x44713936 3) 1))
             (not (= $int13938 0))
             (<= (- 2147483648) $int13938)
             (<= $int13938 2147483647)
             ($main_inv124 $x44713936 $y44813937))
        ($main_if515 $x44713936 $y44813937 (+ $x44713936 5) 1))))

; if then
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($int13938 Int))
    (=> (and (= (mod $x44713936 3) 2)
             (not (= (mod $x44713936 3) 1))
             (not (= $int13938 0))
             (<= (- 2147483648) $int13938)
             (<= $int13938 2147483647)
             ($main_inv124 $x44713936 $y44813937))
        ($main_if516 $x44713936 $y44813937 (+ $x44713936 1) 0))))

; if else
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($x44713940 Int) ($y44813941 Int))
    (=> (and ($main_if515 $x44713936 $y44813937 $x44713940 $y44813941))
        ($main_if516 $x44713936 $y44813937 $x44713940 $y44813941))))

; if then
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($int13938 Int))
    (=> (and (= (mod $x44713936 3) 1)
             (not (= $int13938 0))
             (<= (- 2147483648) $int13938)
             (<= $int13938 2147483647)
             ($main_inv124 $x44713936 $y44813937))
        ($main_if517 $x44713936 $y44813937 (+ $x44713936 2) 0))))

; if else
(assert
  (forall (($x44713936 Int) ($y44813937 Int) ($x44713942 Int) ($y44813943 Int))
    (=> (and ($main_if516 $x44713936 $y44813937 $x44713942 $y44813943))
        ($main_if517 $x44713936 $y44813937 $x44713942 $y44813943))))

; forwards $main_inv124
(assert
  (forall (($x44713944 Int) ($y44813945 Int) ($x44713936 Int) ($y44813937 Int))
    (=> (and ($main_if517 $x44713936 $y44813937 $x44713944 $y44813945))
        ($main_inv124 $x44713944 $y44813945))))

; backwards $main_sum124
(assert
  (forall (($x44713946 Int) ($y44813945 Int) ($x44713944 Int) ($y44813947 Int) ($x44713936 Int) ($y44813937 Int))
    (=> (and ($main_sum124 $x44713944 $y44813945 $x44713946 $y44813947)
             ($main_if517 $x44713936 $y44813937 $x44713944 $y44813945))
        ($main_sum124 $x44713936 $y44813937 $x44713946 $y44813947))))

; __VERIFIER_assert precondition
(assert
  (forall (($x44713948 Int) ($y44813949 Int) ($x447 Int) ($y448 Int))
    (=> (and (= $y44813949 0)
             ($main_sum124 $x447 $y448 $x44713948 $y44813949)
             (= $y448 1))
        ($__VERIFIER_assert_pre (ite (= (mod $x44713948 3) 0) 1 0)))))

; if then
(assert
  (forall (($x447 Int) ($y448 Int) ($x44713948 Int) ($y44813949 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $x44713948 3) 0) 1 0))
             (= $y44813949 0)
             ($main_sum124 $x447 $y448 $x44713948 $y44813949)
             (= $y448 1))
        ($main_if518 $x447 $y448 $x44713948 $y44813949))))

; if else
(assert
  (forall (($x447 Int) ($y448 Int) ($x44713948 Int) ($y44813949 Int))
    (=> (and (not (= $y44813949 0))
             ($main_sum124 $x447 $y448 $x44713948 $y44813949)
             (= $y448 1))
        ($main_if518 $x447 $y448 $x44713948 $y44813949))))

(check-sat)
