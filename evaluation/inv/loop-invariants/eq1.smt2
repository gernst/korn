(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum126 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if522 (Int) Bool)
(declare-fun $main_inv126 (Int Int Int Int) Bool)
(declare-fun $main_if523 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13129 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13129))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if522 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13130 Int))
    (=> (and ($__VERIFIER_assert_if522 cond13130))
        (__VERIFIER_assert cond13130))))

; loop entry $main_inv126
(assert
  (forall (($z453 Int) ($uint13131 Int) ($y452 Int) ($uint13132 Int) ($x451 Int) ($w450 Int))
    (=> (and (= $z453 $y452)
             (= $y452 $uint13132)
             (<= 0 $uint13132)
             (<= $uint13132 4294967295)
             (= $x451 $w450)
             (= $w450 $uint13131)
             (<= 0 $uint13131)
             (<= $uint13131 4294967295))
        ($main_inv126 $w450 $x451 $y452 $z453))))

; loop term $main_sum126
(assert
  (forall (($w45013133 Int) ($x45113134 Int) ($uint13137 Int) ($y45213135 Int) ($z45313136 Int))
    (=> (and (= $uint13137 0)
             (<= 0 $uint13137)
             (<= $uint13137 4294967295)
             ($main_inv126 $w45013133 $x45113134 $y45213135 $z45313136))
        ($main_sum126 $w45013133 $x45113134 $y45213135 $z45313136))))

; if then
(assert
  (forall (($w45013133 Int) ($x45113134 Int) ($uint13137 Int) ($uint13138 Int) ($y45213135 Int) ($z45313136 Int))
    (=> (and (not (= $uint13138 0))
             (<= 0 $uint13138)
             (<= $uint13138 4294967295)
             (not (= $uint13137 0))
             (<= 0 $uint13137)
             (<= $uint13137 4294967295)
             ($main_inv126 $w45013133 $x45113134 $y45213135 $z45313136))
        ($main_if523 (+ $w45013133 1) (+ $x45113134 1) $y45213135 $z45313136))))

; if else
(assert
  (forall (($w45013133 Int) ($x45113134 Int) ($uint13137 Int) ($uint13138 Int) ($y45213135 Int) ($z45313136 Int))
    (=> (and (= $uint13138 0)
             (<= 0 $uint13138)
             (<= $uint13138 4294967295)
             (not (= $uint13137 0))
             (<= 0 $uint13137)
             (<= $uint13137 4294967295)
             ($main_inv126 $w45013133 $x45113134 $y45213135 $z45313136))
        ($main_if523 $w45013133 $x45113134 (- $y45213135 1) (- $z45313136 1)))))

; forwards $main_inv126
(assert
  (forall (($w45013139 Int) ($x45113140 Int) ($y45213141 Int) ($z45313142 Int))
    (=> (and ($main_if523 $w45013139 $x45113140 $y45213141 $z45313142))
        ($main_inv126 $w45013139 $x45113140 $y45213141 $z45313142))))

; __VERIFIER_assert precondition
(assert
  (forall (($w45013143 Int) ($x45113144 Int) ($y45213145 Int) ($z45313146 Int))
    (=> (and ($main_sum126 $w45013143 $x45113144 $y45213145 $z45313146))
        ($__VERIFIER_assert_pre (ite (and (= $w45013143 $x45113144) (= $y45213145 $z45313146)) 1 0)))))

(check-sat)
