(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum413 (Int (Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_if135 (Int (Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_if134 (Int (Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv412 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv413 (Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if133 (Int Int) Bool)
(declare-fun $main_sum412 (Int (Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7653 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7653))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if133 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7654 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if133 cond cond7654))
        (__VERIFIER_assert cond7654))))

; loop entry $main_inv412
(assert
  (forall (($a504 (Array Int Int)) ($b505 (Array Int Int)))
        ($main_inv412 0 $a504 $b505)))

; loop term $main_sum412
(assert
  (forall (($i5037655 Int) ($a5047656 (Array Int Int)) ($b5057657 (Array Int Int)))
    (=> (and (not (< $i5037655 100000)))
        ($main_sum412 $i5037655 $a5047656 $b5057657 $i5037655 $a5047656 $b5057657))))

; if then
(assert
  (forall (($i5037655 Int) ($a5047656 (Array Int Int)) ($b5057657 (Array Int Int)) ($int7658 Int))
    (=> (and (= (select (store $a5047656 $i5037655 $int7658) $i5037655) 10)
             (<= (- 2147483648) $int7658)
             (<= $int7658 2147483647)
             (< $i5037655 100000)
             ($main_inv412 $i5037655 $a5047656 $b5057657))
        ($main_if134 $i5037655 $a5047656 $b5057657 $i5037655 (store $a5047656 $i5037655 $int7658) (store $b5057657 $i5037655 20)))))

; if else
(assert
  (forall (($i5037655 Int) ($a5047656 (Array Int Int)) ($b5057657 (Array Int Int)) ($int7658 Int))
    (=> (and (not (= (select (store $a5047656 $i5037655 $int7658) $i5037655) 10))
             (<= (- 2147483648) $int7658)
             (<= $int7658 2147483647)
             (< $i5037655 100000)
             ($main_inv412 $i5037655 $a5047656 $b5057657))
        ($main_if134 $i5037655 $a5047656 $b5057657 $i5037655 (store $a5047656 $i5037655 $int7658) $b5057657))))

; forwards $main_inv412
(assert
  (forall (($i5037659 Int) ($b5057661 (Array Int Int)) ($i5037655 Int) ($a5047660 (Array Int Int)) ($a5047656 (Array Int Int)) ($b5057657 (Array Int Int)))
    (=> (and ($main_if134 $i5037655 $a5047656 $b5057657 $i5037659 $a5047660 $b5057661))
        ($main_inv412 (+ $i5037659 2) $a5047660 $b5057661))))

; backwards $main_sum412
(assert
  (forall (($i5037659 Int) ($i5037655 Int) ($b5057664 (Array Int Int)) ($a5047660 (Array Int Int)) ($a5047663 (Array Int Int)) ($i5037662 Int) ($b5057661 (Array Int Int)) ($a5047656 (Array Int Int)) ($b5057657 (Array Int Int)))
    (=> (and ($main_sum412 (+ $i5037659 2) $a5047660 $b5057661 $i5037662 $a5047663 $b5057664)
             ($main_if134 $i5037655 $a5047656 $b5057657 $i5037659 $a5047660 $b5057661))
        ($main_sum412 $i5037655 $a5047656 $b5057657 $i5037662 $a5047663 $b5057664))))

; loop entry $main_inv413
(assert
  (forall (($a5047666 (Array Int Int)) ($b505 (Array Int Int)) ($a504 (Array Int Int)) ($b5057667 (Array Int Int)) ($i5037665 Int))
    (=> (and ($main_sum412 0 $a504 $b505 $i5037665 $a5047666 $b5057667))
        ($main_inv413 0 $a5047666 $b5057667))))

; loop term $main_sum413
(assert
  (forall (($i5037668 Int) ($a5047669 (Array Int Int)) ($b5057670 (Array Int Int)))
    (=> (and (not (< $i5037668 100000)))
        ($main_sum413 $i5037668 $a5047669 $b5057670 $i5037668 $a5047669 $b5057670))))

; __VERIFIER_assert precondition
(assert
  (forall (($b5057670 (Array Int Int)) ($i5037668 Int) ($a5047669 (Array Int Int)))
    (=> (and (= (select $a5047669 $i5037668) 10)
             (< $i5037668 100000)
             ($main_inv413 $i5037668 $a5047669 $b5057670))
        ($__VERIFIER_assert_pre (ite (= (select $b5057670 $i5037668) 20) 1 0)))))

; if then
(assert
  (forall (($i5037668 Int) ($a5047669 (Array Int Int)) ($b5057670 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $b5057670 $i5037668) 20) 1 0))
             (= (select $a5047669 $i5037668) 10)
             (< $i5037668 100000)
             ($main_inv413 $i5037668 $a5047669 $b5057670))
        ($main_if135 $i5037668 $a5047669 $b5057670 $i5037668 $a5047669 $b5057670))))

; if else
(assert
  (forall (($i5037668 Int) ($a5047669 (Array Int Int)) ($b5057670 (Array Int Int)))
    (=> (and (not (= (select $a5047669 $i5037668) 10))
             (< $i5037668 100000)
             ($main_inv413 $i5037668 $a5047669 $b5057670))
        ($main_if135 $i5037668 $a5047669 $b5057670 $i5037668 $a5047669 $b5057670))))

; forwards $main_inv413
(assert
  (forall (($i5037668 Int) ($a5047672 (Array Int Int)) ($i5037671 Int) ($a5047669 (Array Int Int)) ($b5057670 (Array Int Int)) ($b5057673 (Array Int Int)))
    (=> (and ($main_if135 $i5037668 $a5047669 $b5057670 $i5037671 $a5047672 $b5057673))
        ($main_inv413 (+ $i5037671 2) $a5047672 $b5057673))))

; backwards $main_sum413
(assert
  (forall (($i5037668 Int) ($i5037674 Int) ($a5047675 (Array Int Int)) ($a5047672 (Array Int Int)) ($b5057676 (Array Int Int)) ($i5037671 Int) ($a5047669 (Array Int Int)) ($b5057670 (Array Int Int)) ($b5057673 (Array Int Int)))
    (=> (and ($main_sum413 (+ $i5037671 2) $a5047672 $b5057673 $i5037674 $a5047675 $b5057676)
             ($main_if135 $i5037668 $a5047669 $b5057670 $i5037671 $a5047672 $b5057673))
        ($main_sum413 $i5037668 $a5047669 $b5057670 $i5037674 $a5047675 $b5057676))))

(check-sat)
