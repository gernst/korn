(set-logic HORN)

(declare-fun $main_sum127 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if524 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv127 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13147 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13147))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if524 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13148 Int))
    (=> (and ($__VERIFIER_assert_if524 cond13148))
        (__VERIFIER_assert cond13148))))

; loop entry $main_inv127
(assert
  (forall (($uint13149 Int) ($y456 Int) ($z457 Int) ($x455 Int) ($w454 Int))
    (=> (and (= $z457 (+ $x455 1))
             (= $y456 (+ $w454 1))
             (= $x455 $w454)
             (= $w454 $uint13149)
             (<= 0 $uint13149)
             (<= $uint13149 4294967295))
        ($main_inv127 $w454 $x455 $y456 $z457))))

; loop term $main_sum127
(assert
  (forall (($w45413150 Int) ($x45513151 Int) ($y45613152 Int) ($z45713153 Int) ($uint13154 Int))
    (=> (and (= $uint13154 0)
             (<= 0 $uint13154)
             (<= $uint13154 4294967295)
             ($main_inv127 $w45413150 $x45513151 $y45613152 $z45713153))
        ($main_sum127 $w45413150 $x45513151 $y45613152 $z45713153))))

; forwards $main_inv127
(assert
  (forall (($w45413150 Int) ($x45513151 Int) ($y45613152 Int) ($z45713153 Int) ($uint13154 Int))
    (=> (and (not (= $uint13154 0))
             (<= 0 $uint13154)
             (<= $uint13154 4294967295)
             ($main_inv127 $w45413150 $x45513151 $y45613152 $z45713153))
        ($main_inv127 $w45413150 $x45513151 (+ $y45613152 1) (+ $z45713153 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y45613157 Int) ($z45713158 Int) ($w45413155 Int) ($x45513156 Int))
    (=> (and ($main_sum127 $w45413155 $x45513156 $y45613157 $z45713158))
        ($__VERIFIER_assert_pre (ite (= $y45613157 $z45713158) 1 0)))))

(check-sat)
