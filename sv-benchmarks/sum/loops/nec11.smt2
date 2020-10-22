(set-logic HORN)

(declare-fun $main_sum262 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv262 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if688 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $main_if689 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16563 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16563))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if688 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16564 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if688 cond cond16564))
        (__VERIFIER_assert cond16564))))

; loop entry $main_inv262
(assert
  (forall (($c731 Int) ($i732 Int) ($a729 (Array Int Int)) ($len730 Int) ($bool16565 Int))
    (=> (and (= $c731 $bool16565)
             (or (= $bool16565 0) (= $bool16565 1))
             (= $len730 0))
        ($main_inv262 $a729 $len730 $c731 $i732))))

; loop term $main_sum262
(assert
  (forall (($a72916566 (Array Int Int)) ($len73016567 Int) ($c73116568 Int) ($i73216569 Int))
    (=> (and (= $c73116568 0))
        ($main_sum262 $a72916566 $len73016567 $c73116568 $i73216569 $a72916566 $len73016567 $c73116568 $i73216569))))

; if then
(assert
  (forall (($a72916566 (Array Int Int)) ($len73016567 Int) ($c73116568 Int) ($i73216569 Int))
    (=> (and (= $len73016567 4)
             (not (= $c73116568 0))
             ($main_inv262 $a72916566 $len73016567 $c73116568 $i73216569))
        ($main_if689 $a72916566 $len73016567 $c73116568 $i73216569 $a72916566 0 $c73116568 $i73216569))))

; if else
(assert
  (forall (($a72916566 (Array Int Int)) ($len73016567 Int) ($c73116568 Int) ($i73216569 Int))
    (=> (and (not (= $len73016567 4))
             (not (= $c73116568 0))
             ($main_inv262 $a72916566 $len73016567 $c73116568 $i73216569))
        ($main_if689 $a72916566 $len73016567 $c73116568 $i73216569 $a72916566 $len73016567 $c73116568 $i73216569))))

; forwards $main_inv262
(assert
  (forall (($a72916566 (Array Int Int)) ($i73216573 Int) ($len73016567 Int) ($c73116568 Int) ($i73216569 Int) ($c73116572 Int) ($a72916570 (Array Int Int)) ($len73016571 Int))
    (=> (and ($main_if689 $a72916566 $len73016567 $c73116568 $i73216569 $a72916570 $len73016571 $c73116572 $i73216573))
        ($main_inv262 (store $a72916570 $len73016571 0) (+ $len73016571 1) $c73116572 $i73216573))))

; backwards $main_sum262
(assert
  (forall (($a72916566 (Array Int Int)) ($len73016567 Int) ($c73116576 Int) ($c73116568 Int) ($i73216569 Int) ($len73016575 Int) ($i73216577 Int) ($c73116572 Int) ($a72916570 (Array Int Int)) ($len73016571 Int) ($a72916574 (Array Int Int)) ($i73216573 Int))
    (=> (and ($main_sum262 (store $a72916570 $len73016571 0) (+ $len73016571 1) $c73116572 $i73216573 $a72916574 $len73016575 $c73116576 $i73216577)
             ($main_if689 $a72916566 $len73016567 $c73116568 $i73216569 $a72916570 $len73016571 $c73116572 $i73216573))
        ($main_sum262 $a72916566 $len73016567 $c73116568 $i73216569 $a72916574 $len73016575 $c73116576 $i73216577))))

; __VERIFIER_assert precondition
(assert
  (forall (($c731 Int) ($i732 Int) ($len73016579 Int) ($i73216581 Int) ($bool16565 Int) ($a72916578 (Array Int Int)) ($a729 (Array Int Int)) ($c73116580 Int) ($len730 Int))
    (=> (and ($main_sum262 $a729 $len730 $c731 $i732 $a72916578 $len73016579 $c73116580 $i73216581)
             (= $c731 $bool16565)
             (or (= $bool16565 0) (= $bool16565 1))
             (= $len730 0))
        ($__VERIFIER_assert_pre (ite (= $len73016579 5) 1 0)))))

(check-sat)
