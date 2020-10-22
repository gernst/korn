(set-logic HORN)

(declare-fun $main_inv353 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum353 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if101 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum352 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if100 (Int) Bool)
(declare-fun $main_sum354 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv352 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if102 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv354 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4684 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4684))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if100 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4685 Int))
    (=> (and ($__VERIFIER_assert_if100 cond4685))
        (__VERIFIER_assert cond4685))))

; loop entry $main_inv352
(assert
  (forall (($password416 (Array Int Int)) ($guess417 (Array Int Int)) ($result419 Int) ($x420 Int))
    (=> (and (= $result419 1))
        ($main_inv352 $password416 $guess417 0 $result419 $x420))))

; loop term $main_sum352
(assert
  (forall (($guess4174687 (Array Int Int)) ($password4164686 (Array Int Int)) ($x4204690 Int) ($result4194689 Int) ($i4184688 Int))
    (=> (and (not (< $i4184688 100000))
             ($main_inv352 $password4164686 $guess4174687 $i4184688 $result4194689 $x4204690))
        ($main_sum352 $password4164686 $guess4174687 $i4184688 $result4194689 $x4204690))))

; forwards $main_inv352
(assert
  (forall (($int4691 Int) ($guess4174687 (Array Int Int)) ($int4692 Int) ($password4164686 (Array Int Int)) ($x4204690 Int) ($result4194689 Int) ($i4184688 Int))
    (=> (and (<= (- 2147483648) $int4692)
             (<= $int4692 2147483647)
             (<= (- 2147483648) $int4691)
             (<= $int4691 2147483647)
             (< $i4184688 100000)
             ($main_inv352 $password4164686 $guess4174687 $i4184688 $result4194689 $x4204690))
        ($main_inv352 (store $password4164686 $i4184688 $int4691) (store $guess4174687 $i4184688 $int4692) (+ $i4184688 1) $result4194689 $x4204690))))

; loop entry $main_inv353
(assert
  (forall (($guess4174694 (Array Int Int)) ($password4164693 (Array Int Int)) ($i4184695 Int) ($x4204697 Int) ($result4194696 Int))
    (=> (and ($main_sum352 $password4164693 $guess4174694 $i4184695 $result4194696 $x4204697))
        ($main_inv353 $password4164693 $guess4174694 0 $result4194696 $x4204697))))

; loop term $main_sum353
(assert
  (forall (($password4164698 (Array Int Int)) ($i4184700 Int) ($result4194701 Int) ($guess4174699 (Array Int Int)) ($x4204702 Int))
    (=> (and (not (< $i4184700 100000))
             ($main_inv353 $password4164698 $guess4174699 $i4184700 $result4194701 $x4204702))
        ($main_sum353 $password4164698 $guess4174699 $i4184700 $result4194701 $x4204702))))

; if then
(assert
  (forall (($password4164698 (Array Int Int)) ($i4184700 Int) ($result4194701 Int) ($guess4174699 (Array Int Int)) ($x4204702 Int))
    (=> (and (not (= (select $password4164698 $i4184700) (select $guess4174699 $i4184700)))
             (< $i4184700 100000)
             ($main_inv353 $password4164698 $guess4174699 $i4184700 $result4194701 $x4204702))
        ($main_if101 $password4164698 $guess4174699 $i4184700 0 $x4204702))))

; if else
(assert
  (forall (($password4164698 (Array Int Int)) ($i4184700 Int) ($result4194701 Int) ($guess4174699 (Array Int Int)) ($x4204702 Int))
    (=> (and (= (select $password4164698 $i4184700) (select $guess4174699 $i4184700))
             (< $i4184700 100000)
             ($main_inv353 $password4164698 $guess4174699 $i4184700 $result4194701 $x4204702))
        ($main_if101 $password4164698 $guess4174699 $i4184700 $result4194701 $x4204702))))

; forwards $main_inv353
(assert
  (forall (($x4204707 Int) ($i4184705 Int) ($password4164703 (Array Int Int)) ($result4194706 Int) ($guess4174704 (Array Int Int)))
    (=> (and ($main_if101 $password4164703 $guess4174704 $i4184705 $result4194706 $x4204707))
        ($main_inv353 $password4164703 $guess4174704 (+ $i4184705 1) $result4194706 $x4204707))))

; loop entry $main_inv354
(assert
  (forall (($x4204712 Int) ($password4164708 (Array Int Int)) ($i4184710 Int) ($guess4174709 (Array Int Int)) ($result4194711 Int))
    (=> (and (not (= $result4194711 0))
             ($main_sum353 $password4164708 $guess4174709 $i4184710 $result4194711 $x4204712))
        ($main_inv354 $password4164708 $guess4174709 $i4184710 $result4194711 0))))

; loop term $main_sum354
(assert
  (forall (($x4204717 Int) ($i4184715 Int) ($result4194716 Int) ($guess4174714 (Array Int Int)) ($password4164713 (Array Int Int)))
    (=> (and (not (< $x4204717 100000))
             ($main_inv354 $password4164713 $guess4174714 $i4184715 $result4194716 $x4204717))
        ($main_sum354 $password4164713 $guess4174714 $i4184715 $result4194716 $x4204717))))

; __VERIFIER_assert precondition
(assert
  (forall (($x4204717 Int) ($i4184715 Int) ($result4194716 Int) ($guess4174714 (Array Int Int)) ($password4164713 (Array Int Int)))
    (=> (and (< $x4204717 100000)
             ($main_inv354 $password4164713 $guess4174714 $i4184715 $result4194716 $x4204717))
        ($__VERIFIER_assert_pre (ite (= (select $password4164713 $x4204717) (select $guess4174714 $x4204717)) 1 0)))))

; forwards $main_inv354
(assert
  (forall (($x4204717 Int) ($i4184715 Int) ($result4194716 Int) ($guess4174714 (Array Int Int)) ($password4164713 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $password4164713 $x4204717) (select $guess4174714 $x4204717)) 1 0))
             (< $x4204717 100000)
             ($main_inv354 $password4164713 $guess4174714 $i4184715 $result4194716 $x4204717))
        ($main_inv354 $password4164713 $guess4174714 $i4184715 $result4194716 (+ $x4204717 1)))))

; if then
(assert
  (forall (($password4164718 (Array Int Int)) ($i4184720 Int) ($result4194721 Int) ($guess4174719 (Array Int Int)) ($x4204722 Int))
    (=> (and ($main_sum354 $password4164718 $guess4174719 $i4184720 $result4194721 $x4204722))
        ($main_if102 $password4164718 $guess4174719 $i4184720 $result4194721 $x4204722))))

; if else
(assert
  (forall (($x4204712 Int) ($password4164708 (Array Int Int)) ($i4184710 Int) ($guess4174709 (Array Int Int)) ($result4194711 Int))
    (=> (and (= $result4194711 0)
             ($main_sum353 $password4164708 $guess4174709 $i4184710 $result4194711 $x4204712))
        ($main_if102 $password4164708 $guess4174709 $i4184710 $result4194711 $x4204712))))

(check-sat)
