(set-logic HORN)

(declare-fun $main_if516 (Int Int) Bool)
(declare-fun $main_if515 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if517 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if514 (Int) Bool)
(declare-fun $main_sum124 (Int Int) Bool)
(declare-fun $main_if518 (Int Int) Bool)
(declare-fun $main_inv124 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13105 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13105))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if514 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13106 Int))
    (=> (and ($__VERIFIER_assert_if514 cond13106))
        (__VERIFIER_assert cond13106))))

; loop entry $main_inv124
(assert
  (forall (($x447 Int) ($y448 Int))
    (=> (and (= $y448 1))
        ($main_inv124 $x447 $y448))))

; loop term $main_sum124
(assert
  (forall (($x44713107 Int) ($y44813108 Int) ($int13109 Int))
    (=> (and (= $int13109 0)
             (<= (- 2147483648) $int13109)
             (<= $int13109 2147483647)
             ($main_inv124 $x44713107 $y44813108))
        ($main_sum124 $x44713107 $y44813108))))

; if then
(assert
  (forall (($x44713107 Int) ($int13110 Int) ($int13109 Int) ($y44813108 Int))
    (=> (and (not (= $int13110 0))
             (<= (- 2147483648) $int13110)
             (<= $int13110 2147483647)
             (not (= (mod $x44713107 3) 2))
             (not (= (mod $x44713107 3) 1))
             (not (= $int13109 0))
             (<= (- 2147483648) $int13109)
             (<= $int13109 2147483647)
             ($main_inv124 $x44713107 $y44813108))
        ($main_if515 (+ $x44713107 4) 1))))

; if else
(assert
  (forall (($x44713107 Int) ($int13110 Int) ($int13109 Int) ($y44813108 Int))
    (=> (and (= $int13110 0)
             (<= (- 2147483648) $int13110)
             (<= $int13110 2147483647)
             (not (= (mod $x44713107 3) 2))
             (not (= (mod $x44713107 3) 1))
             (not (= $int13109 0))
             (<= (- 2147483648) $int13109)
             (<= $int13109 2147483647)
             ($main_inv124 $x44713107 $y44813108))
        ($main_if515 (+ $x44713107 5) 1))))

; if then
(assert
  (forall (($x44713107 Int) ($int13109 Int) ($y44813108 Int))
    (=> (and (= (mod $x44713107 3) 2)
             (not (= (mod $x44713107 3) 1))
             (not (= $int13109 0))
             (<= (- 2147483648) $int13109)
             (<= $int13109 2147483647)
             ($main_inv124 $x44713107 $y44813108))
        ($main_if516 (+ $x44713107 1) 0))))

; if else
(assert
  (forall (($x44713111 Int) ($y44813112 Int))
    (=> (and ($main_if515 $x44713111 $y44813112))
        ($main_if516 $x44713111 $y44813112))))

; if then
(assert
  (forall (($x44713107 Int) ($int13109 Int) ($y44813108 Int))
    (=> (and (= (mod $x44713107 3) 1)
             (not (= $int13109 0))
             (<= (- 2147483648) $int13109)
             (<= $int13109 2147483647)
             ($main_inv124 $x44713107 $y44813108))
        ($main_if517 (+ $x44713107 2) 0))))

; if else
(assert
  (forall (($x44713113 Int) ($y44813114 Int))
    (=> (and ($main_if516 $x44713113 $y44813114))
        ($main_if517 $x44713113 $y44813114))))

; forwards $main_inv124
(assert
  (forall (($x44713115 Int) ($y44813116 Int))
    (=> (and ($main_if517 $x44713115 $y44813116))
        ($main_inv124 $x44713115 $y44813116))))

; __VERIFIER_assert precondition
(assert
  (forall (($x44713117 Int) ($y44813118 Int))
    (=> (and (= $y44813118 0)
             ($main_sum124 $x44713117 $y44813118))
        ($__VERIFIER_assert_pre (ite (= (mod $x44713117 3) 0) 1 0)))))

; if then
(assert
  (forall (($x44713117 Int) ($y44813118 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $x44713117 3) 0) 1 0))
             (= $y44813118 0)
             ($main_sum124 $x44713117 $y44813118))
        ($main_if518 $x44713117 $y44813118))))

; if else
(assert
  (forall (($x44713117 Int) ($y44813118 Int))
    (=> (and (not (= $y44813118 0))
             ($main_sum124 $x44713117 $y44813118))
        ($main_if518 $x44713117 $y44813118))))

(check-sat)
