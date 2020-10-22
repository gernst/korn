(set-logic HORN)

(declare-fun $main_sum34 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum32 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv32 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv33 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum33 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if17 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv34 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if16 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond627 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond627))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if16 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond628 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if16 cond cond628))
        (__VERIFIER_assert cond628))))

; loop entry $main_inv32
(assert
  (forall (($array82 (Array Int Int)) ($largest84 Int) ($x85 Int))
        ($main_inv32 $array82 0 $largest84 $x85)))

; loop term $main_sum32
(assert
  (forall (($array82629 (Array Int Int)) ($i83630 Int) ($largest84631 Int) ($x85632 Int))
    (=> (and (not (< $i83630 100000)))
        ($main_sum32 $array82629 $i83630 $largest84631 $x85632 $array82629 $i83630 $largest84631 $x85632))))

; forwards $main_inv32
(assert
  (forall (($i83630 Int) ($largest84631 Int) ($x85632 Int) ($int633 Int) ($array82629 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int633)
             (<= $int633 2147483647)
             (< $i83630 100000)
             ($main_inv32 $array82629 $i83630 $largest84631 $x85632))
        ($main_inv32 (store $array82629 $i83630 $int633) (+ $i83630 1) $largest84631 $x85632))))

; backwards $main_sum32
(assert
  (forall (($x85637 Int) ($largest84636 Int) ($i83630 Int) ($largest84631 Int) ($array82634 (Array Int Int)) ($x85632 Int) ($i83635 Int) ($int633 Int) ($array82629 (Array Int Int)))
    (=> (and ($main_sum32 (store $array82629 $i83630 $int633) (+ $i83630 1) $largest84631 $x85632 $array82634 $i83635 $largest84636 $x85637)
             (<= (- 2147483648) $int633)
             (<= $int633 2147483647)
             (< $i83630 100000))
        ($main_sum32 $array82629 $i83630 $largest84631 $x85632 $array82634 $i83635 $largest84636 $x85637))))

; loop entry $main_inv33
(assert
  (forall (($largest84640 Int) ($array82638 (Array Int Int)) ($largest84 Int) ($x85 Int) ($i83639 Int) ($x85641 Int) ($array82 (Array Int Int)))
    (=> (and (= $largest84640 (select $array82638 0))
             ($main_sum32 $array82 0 $largest84 $x85 $array82638 $i83639 $largest84640 $x85641))
        ($main_inv33 $array82638 1 $largest84640 $x85641))))

; loop term $main_sum33
(assert
  (forall (($array82642 (Array Int Int)) ($i83643 Int) ($largest84644 Int) ($x85645 Int))
    (=> (and (not (< $i83643 100000)))
        ($main_sum33 $array82642 $i83643 $largest84644 $x85645 $array82642 $i83643 $largest84644 $x85645))))

; if then
(assert
  (forall (($array82642 (Array Int Int)) ($i83643 Int) ($largest84644 Int) ($x85645 Int))
    (=> (and (< $largest84644 (select $array82642 $i83643))
             (< $i83643 100000)
             ($main_inv33 $array82642 $i83643 $largest84644 $x85645))
        ($main_if17 $array82642 $i83643 $largest84644 $x85645 $array82642 $i83643 (select $array82642 $i83643) $x85645))))

; if else
(assert
  (forall (($array82642 (Array Int Int)) ($i83643 Int) ($largest84644 Int) ($x85645 Int))
    (=> (and (not (< $largest84644 (select $array82642 $i83643)))
             (< $i83643 100000)
             ($main_inv33 $array82642 $i83643 $largest84644 $x85645))
        ($main_if17 $array82642 $i83643 $largest84644 $x85645 $array82642 $i83643 $largest84644 $x85645))))

; forwards $main_inv33
(assert
  (forall (($largest84648 Int) ($i83647 Int) ($i83643 Int) ($x85649 Int) ($array82646 (Array Int Int)) ($x85645 Int) ($largest84644 Int) ($array82642 (Array Int Int)))
    (=> (and ($main_if17 $array82642 $i83643 $largest84644 $x85645 $array82646 $i83647 $largest84648 $x85649))
        ($main_inv33 $array82646 (+ $i83647 1) $largest84648 $x85649))))

; backwards $main_sum33
(assert
  (forall (($largest84648 Int) ($i83647 Int) ($i83643 Int) ($x85649 Int) ($array82646 (Array Int Int)) ($x85645 Int) ($largest84652 Int) ($array82650 (Array Int Int)) ($x85653 Int) ($i83651 Int) ($largest84644 Int) ($array82642 (Array Int Int)))
    (=> (and ($main_sum33 $array82646 (+ $i83647 1) $largest84648 $x85649 $array82650 $i83651 $largest84652 $x85653)
             ($main_if17 $array82642 $i83643 $largest84644 $x85645 $array82646 $i83647 $largest84648 $x85649))
        ($main_sum33 $array82642 $i83643 $largest84644 $x85645 $array82650 $i83651 $largest84652 $x85653))))

; loop entry $main_inv34
(assert
  (forall (($largest84640 Int) ($array82654 (Array Int Int)) ($array82638 (Array Int Int)) ($x85657 Int) ($largest84 Int) ($x85 Int) ($i83639 Int) ($largest84656 Int) ($i83655 Int) ($x85641 Int) ($array82 (Array Int Int)))
    (=> (and ($main_sum33 $array82638 1 $largest84640 $x85641 $array82654 $i83655 $largest84656 $x85657)
             (= $largest84640 (select $array82638 0))
             ($main_sum32 $array82 0 $largest84 $x85 $array82638 $i83639 $largest84640 $x85641))
        ($main_inv34 $array82654 $i83655 $largest84656 0))))

; loop term $main_sum34
(assert
  (forall (($array82658 (Array Int Int)) ($i83659 Int) ($largest84660 Int) ($x85661 Int))
    (=> (and (not (< $x85661 100000)))
        ($main_sum34 $array82658 $i83659 $largest84660 $x85661 $array82658 $i83659 $largest84660 $x85661))))

; __VERIFIER_assert precondition
(assert
  (forall (($largest84660 Int) ($array82658 (Array Int Int)) ($x85661 Int) ($i83659 Int))
    (=> (and (< $x85661 100000)
             ($main_inv34 $array82658 $i83659 $largest84660 $x85661))
        ($__VERIFIER_assert_pre (ite (>= $largest84660 (select $array82658 $x85661)) 1 0)))))

; forwards $main_inv34
(assert
  (forall (($array82658 (Array Int Int)) ($i83659 Int) ($largest84660 Int) ($x85661 Int))
    (=> (and (__VERIFIER_assert (ite (>= $largest84660 (select $array82658 $x85661)) 1 0))
             (< $x85661 100000)
             ($main_inv34 $array82658 $i83659 $largest84660 $x85661))
        ($main_inv34 $array82658 $i83659 $largest84660 (+ $x85661 1)))))

; backwards $main_sum34
(assert
  (forall (($x85665 Int) ($i83659 Int) ($i83663 Int) ($array82658 (Array Int Int)) ($largest84664 Int) ($x85661 Int) ($array82662 (Array Int Int)) ($largest84660 Int))
    (=> (and ($main_sum34 $array82658 $i83659 $largest84660 (+ $x85661 1) $array82662 $i83663 $largest84664 $x85665)
             (__VERIFIER_assert (ite (>= $largest84660 (select $array82658 $x85661)) 1 0))
             (< $x85661 100000))
        ($main_sum34 $array82658 $i83659 $largest84660 $x85661 $array82662 $i83663 $largest84664 $x85665))))

(check-sat)
