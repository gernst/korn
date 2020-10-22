(set-logic HORN)

(declare-fun $__VERIFIER_assert_if125 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv394 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv392 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum392 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum394 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv393 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum393 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5111 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5111))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if125 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5112 Int))
    (=> (and ($__VERIFIER_assert_if125 cond5112))
        (__VERIFIER_assert cond5112))))

; loop entry $main_inv392
(assert
  (forall (($a476 (Array Int Int)) ($b477 (Array Int Int)) ($i478 Int) ($j479 Int))
    (=> (and (= $j479 0)
             (= $i478 0))
        ($main_inv392 $a476 $b477 $i478 $j479))))

; loop term $main_sum392
(assert
  (forall (($a4765113 (Array Int Int)) ($b4775114 (Array Int Int)) ($i4785115 Int) ($j4795116 Int))
    (=> (and (not (< $i4785115 10000))
             ($main_inv392 $a4765113 $b4775114 $i4785115 $j4795116))
        ($main_sum392 $a4765113 $b4775114 $i4785115 $j4795116))))

; forwards $main_inv392
(assert
  (forall (($a4765113 (Array Int Int)) ($int5117 Int) ($b4775114 (Array Int Int)) ($i4785115 Int) ($j4795116 Int))
    (=> (and (<= (- 2147483648) $int5117)
             (<= $int5117 2147483647)
             (< $i4785115 10000)
             ($main_inv392 $a4765113 $b4775114 $i4785115 $j4795116))
        ($main_inv392 $a4765113 (store $b4775114 $i4785115 $int5117) (+ $i4785115 1) $j4795116))))

; loop entry $main_inv393
(assert
  (forall (($a4765118 (Array Int Int)) ($b4775119 (Array Int Int)) ($j4795121 Int) ($i4785120 Int))
    (=> (and ($main_sum392 $a4765118 $b4775119 $i4785120 $j4795121))
        ($main_inv393 $a4765118 $b4775119 1 $j4795121))))

; loop term $main_sum393
(assert
  (forall (($a4765122 (Array Int Int)) ($b4775123 (Array Int Int)) ($i4785124 Int) ($j4795125 Int))
    (=> (and (not (< $i4785124 10000))
             ($main_inv393 $a4765122 $b4775123 $i4785124 $j4795125))
        ($main_sum393 $a4765122 $b4775123 $i4785124 $j4795125))))

; forwards $main_inv393
(assert
  (forall (($a4765122 (Array Int Int)) ($j4795125 Int) ($b4775123 (Array Int Int)) ($i4785124 Int))
    (=> (and (< $i4785124 10000)
             ($main_inv393 $a4765122 $b4775123 $i4785124 $j4795125))
        ($main_inv393 (store $a4765122 $j4795125 (select $b4775123 $i4785124)) $b4775123 (+ $i4785124 6) (+ $j4795125 1)))))

; loop entry $main_inv394
(assert
  (forall (($a4765126 (Array Int Int)) ($b4775127 (Array Int Int)) ($i4785128 Int) ($j4795129 Int))
    (=> (and ($main_sum393 $a4765126 $b4775127 $i4785128 $j4795129))
        ($main_inv394 $a4765126 $b4775127 1 0))))

; loop term $main_sum394
(assert
  (forall (($a4765130 (Array Int Int)) ($b4775131 (Array Int Int)) ($i4785132 Int) ($j4795133 Int))
    (=> (and (not (< $i4785132 10000))
             ($main_inv394 $a4765130 $b4775131 $i4785132 $j4795133))
        ($main_sum394 $a4765130 $b4775131 $i4785132 $j4795133))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4765130 (Array Int Int)) ($j4795133 Int) ($b4775131 (Array Int Int)) ($i4785132 Int))
    (=> (and (< $i4785132 10000)
             ($main_inv394 $a4765130 $b4775131 $i4785132 $j4795133))
        ($__VERIFIER_assert_pre (ite (= (select $a4765130 $j4795133) (select $b4775131 (+ (* 6 $j4795133) 1))) 1 0)))))

; forwards $main_inv394
(assert
  (forall (($a4765130 (Array Int Int)) ($b4775131 (Array Int Int)) ($i4785132 Int) ($j4795133 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4765130 $j4795133) (select $b4775131 (+ (* 6 $j4795133) 1))) 1 0))
             (< $i4785132 10000)
             ($main_inv394 $a4765130 $b4775131 $i4785132 $j4795133))
        ($main_inv394 $a4765130 $b4775131 (+ $i4785132 6) (+ $j4795133 1)))))

(check-sat)
