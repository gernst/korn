(set-logic HORN)

(declare-fun printOdd (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $printOdd_pre (Int) Bool)
(declare-fun $printEven_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv31 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum31 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv29 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum30 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_if15 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum29 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if13 (Int Int) Bool)
(declare-fun $main_if14 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun printEven (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv30 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond590 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond590))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if13 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond591 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if13 cond cond591))
        (__VERIFIER_assert cond591))))

; __VERIFIER_assert precondition
(assert
  (forall ((i Int))
    (=> (and ($printEven_pre i))
        ($__VERIFIER_assert_pre (ite (= (mod i 2) 0) 1 0)))))

; post printEven
(assert
  (forall ((i Int))
    (=> (and (__VERIFIER_assert (ite (= (mod i 2) 0) 1 0))
             ($printEven_pre i))
        (printEven i))))

; __VERIFIER_assert precondition
(assert
  (forall ((i Int))
    (=> (and ($printOdd_pre i))
        ($__VERIFIER_assert_pre (ite (not (= (mod i 2) 0)) 1 0)))))

; post printOdd
(assert
  (forall ((i Int))
    (=> (and (__VERIFIER_assert (ite (not (= (mod i 2) 0)) 1 0))
             ($printOdd_pre i))
        (printOdd i))))

; loop entry $main_inv29
(assert
  (forall (($array79 (Array Int Int)) ($num81 Int) ($int592 Int))
    (=> (and (= $num81 $int592)
             (<= (- 2147483648) $int592)
             (<= $int592 2147483647))
        ($main_inv29 $array79 0 $num81))))

; loop term $main_sum29
(assert
  (forall (($array79593 (Array Int Int)) ($i80594 Int) ($num81595 Int))
    (=> (and (not (< $i80594 $num81595)))
        ($main_sum29 $array79593 $i80594 $num81595 $array79593 $i80594 $num81595))))

; forwards $main_inv29
(assert
  (forall (($array79593 (Array Int Int)) ($i80594 Int) ($int596 Int) ($num81595 Int))
    (=> (and (<= (- 2147483648) $int596)
             (<= $int596 2147483647)
             (< $i80594 $num81595)
             ($main_inv29 $array79593 $i80594 $num81595))
        ($main_inv29 (store $array79593 $i80594 $int596) (+ $i80594 1) $num81595))))

; backwards $main_sum29
(assert
  (forall (($i80598 Int) ($int596 Int) ($array79597 (Array Int Int)) ($array79593 (Array Int Int)) ($num81599 Int) ($i80594 Int) ($num81595 Int))
    (=> (and ($main_sum29 (store $array79593 $i80594 $int596) (+ $i80594 1) $num81595 $array79597 $i80598 $num81599)
             (<= (- 2147483648) $int596)
             (<= $int596 2147483647)
             (< $i80594 $num81595))
        ($main_sum29 $array79593 $i80594 $num81595 $array79597 $i80598 $num81599))))

; loop entry $main_inv30
(assert
  (forall (($num81602 Int) ($num81 Int) ($int592 Int) ($array79600 (Array Int Int)) ($i80601 Int) ($array79 (Array Int Int)))
    (=> (and ($main_sum29 $array79 0 $num81 $array79600 $i80601 $num81602)
             (= $num81 $int592)
             (<= (- 2147483648) $int592)
             (<= $int592 2147483647))
        ($main_inv30 $array79600 0 $num81602))))

; loop term $main_sum30
(assert
  (forall (($array79603 (Array Int Int)) ($i80604 Int) ($num81605 Int))
    (=> (and (not (< $i80604 $num81605)))
        ($main_sum30 $array79603 $i80604 $num81605 $array79603 $i80604 $num81605))))

; printEven precondition
(assert
  (forall (($array79603 (Array Int Int)) ($i80604 Int) ($num81605 Int))
    (=> (and (= (mod (select $array79603 $i80604) 2) 0)
             (< $i80604 $num81605)
             ($main_inv30 $array79603 $i80604 $num81605))
        ($printEven_pre (select $array79603 $i80604)))))

; if then
(assert
  (forall (($array79603 (Array Int Int)) ($i80604 Int) ($num81605 Int))
    (=> (and (printEven (select $array79603 $i80604))
             (= (mod (select $array79603 $i80604) 2) 0)
             (< $i80604 $num81605)
             ($main_inv30 $array79603 $i80604 $num81605))
        ($main_if14 $array79603 $i80604 $num81605 $array79603 $i80604 $num81605))))

; if else
(assert
  (forall (($array79603 (Array Int Int)) ($i80604 Int) ($num81605 Int))
    (=> (and (not (= (mod (select $array79603 $i80604) 2) 0))
             (< $i80604 $num81605)
             ($main_inv30 $array79603 $i80604 $num81605))
        ($main_if14 $array79603 $i80604 $num81605 $array79603 $i80604 $num81605))))

; forwards $main_inv30
(assert
  (forall (($num81608 Int) ($i80604 Int) ($num81605 Int) ($array79606 (Array Int Int)) ($i80607 Int) ($array79603 (Array Int Int)))
    (=> (and ($main_if14 $array79603 $i80604 $num81605 $array79606 $i80607 $num81608))
        ($main_inv30 $array79606 (+ $i80607 1) $num81608))))

; backwards $main_sum30
(assert
  (forall (($num81611 Int) ($i80610 Int) ($num81608 Int) ($i80604 Int) ($num81605 Int) ($array79606 (Array Int Int)) ($i80607 Int) ($array79609 (Array Int Int)) ($array79603 (Array Int Int)))
    (=> (and ($main_sum30 $array79606 (+ $i80607 1) $num81608 $array79609 $i80610 $num81611)
             ($main_if14 $array79603 $i80604 $num81605 $array79606 $i80607 $num81608))
        ($main_sum30 $array79603 $i80604 $num81605 $array79609 $i80610 $num81611))))

; loop entry $main_inv31
(assert
  (forall (($num81602 Int) ($num81 Int) ($int592 Int) ($array79600 (Array Int Int)) ($i80601 Int) ($i80613 Int) ($array79 (Array Int Int)) ($num81614 Int) ($array79612 (Array Int Int)))
    (=> (and ($main_sum30 $array79600 0 $num81602 $array79612 $i80613 $num81614)
             ($main_sum29 $array79 0 $num81 $array79600 $i80601 $num81602)
             (= $num81 $int592)
             (<= (- 2147483648) $int592)
             (<= $int592 2147483647))
        ($main_inv31 $array79612 0 $num81614))))

; loop term $main_sum31
(assert
  (forall (($array79615 (Array Int Int)) ($i80616 Int) ($num81617 Int))
    (=> (and (not (< $i80616 $num81617)))
        ($main_sum31 $array79615 $i80616 $num81617 $array79615 $i80616 $num81617))))

; printOdd precondition
(assert
  (forall (($array79615 (Array Int Int)) ($i80616 Int) ($num81617 Int))
    (=> (and (not (= (mod (select $array79615 $i80616) 2) 0))
             (< $i80616 $num81617)
             ($main_inv31 $array79615 $i80616 $num81617))
        ($printOdd_pre (select $array79615 $i80616)))))

; if then
(assert
  (forall (($array79615 (Array Int Int)) ($i80616 Int) ($num81617 Int))
    (=> (and (printOdd (select $array79615 $i80616))
             (not (= (mod (select $array79615 $i80616) 2) 0))
             (< $i80616 $num81617)
             ($main_inv31 $array79615 $i80616 $num81617))
        ($main_if15 $array79615 $i80616 $num81617 $array79615 $i80616 $num81617))))

; if else
(assert
  (forall (($array79615 (Array Int Int)) ($i80616 Int) ($num81617 Int))
    (=> (and (= (mod (select $array79615 $i80616) 2) 0)
             (< $i80616 $num81617)
             ($main_inv31 $array79615 $i80616 $num81617))
        ($main_if15 $array79615 $i80616 $num81617 $array79615 $i80616 $num81617))))

; forwards $main_inv31
(assert
  (forall (($array79618 (Array Int Int)) ($num81617 Int) ($array79615 (Array Int Int)) ($num81620 Int) ($i80616 Int) ($i80619 Int))
    (=> (and ($main_if15 $array79615 $i80616 $num81617 $array79618 $i80619 $num81620))
        ($main_inv31 $array79618 (+ $i80619 1) $num81620))))

; backwards $main_sum31
(assert
  (forall (($array79618 (Array Int Int)) ($num81617 Int) ($array79615 (Array Int Int)) ($num81620 Int) ($i80616 Int) ($num81623 Int) ($array79621 (Array Int Int)) ($i80619 Int) ($i80622 Int))
    (=> (and ($main_sum31 $array79618 (+ $i80619 1) $num81620 $array79621 $i80622 $num81623)
             ($main_if15 $array79615 $i80616 $num81617 $array79618 $i80619 $num81620))
        ($main_sum31 $array79615 $i80616 $num81617 $array79621 $i80622 $num81623))))

(check-sat)
