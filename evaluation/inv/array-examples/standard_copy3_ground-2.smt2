(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum111 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if48 (Int) Bool)
(declare-fun $main_inv112 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum112 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv111 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv109 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum109 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv108 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum110 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum108 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv110 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1621 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1621))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if48 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1622 Int))
    (=> (and ($__VERIFIER_assert_if48 cond1622))
        (__VERIFIER_assert cond1622))))

; loop entry $main_inv108
(assert
  (forall (($a3185 (Array Int Int)) ($i188 Int) ($a2184 (Array Int Int)) ($a1183 (Array Int Int)) ($a4186 (Array Int Int)) ($x189 Int))
        ($main_inv108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189)))

; loop term $main_sum108
(assert
  (forall (($a31851625 (Array Int Int)) ($a41861626 (Array Int Int)) ($i1881628 Int) ($a21841624 (Array Int Int)) ($a1871627 Int) ($x1891629 Int) ($a11831623 (Array Int Int)))
    (=> (and (not (< $a1871627 100000))
             ($main_inv108 $a11831623 $a21841624 $a31851625 $a41861626 $a1871627 $i1881628 $x1891629))
        ($main_sum108 $a11831623 $a21841624 $a31851625 $a41861626 $a1871627 $i1881628 $x1891629))))

; forwards $main_inv108
(assert
  (forall (($int1630 Int) ($a31851625 (Array Int Int)) ($a41861626 (Array Int Int)) ($int1631 Int) ($i1881628 Int) ($a21841624 (Array Int Int)) ($a1871627 Int) ($x1891629 Int) ($a11831623 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int1631)
             (<= $int1631 2147483647)
             (<= (- 2147483648) $int1630)
             (<= $int1630 2147483647)
             (< $a1871627 100000)
             ($main_inv108 $a11831623 $a21841624 $a31851625 $a41861626 $a1871627 $i1881628 $x1891629))
        ($main_inv108 (store $a11831623 $a1871627 $int1630) $a21841624 (store $a31851625 $a1871627 $int1631) $a41861626 (+ $a1871627 1) $i1881628 $x1891629))))

; loop entry $main_inv109
(assert
  (forall (($a41861635 (Array Int Int)) ($x1891638 Int) ($i1881637 Int) ($a21841633 (Array Int Int)) ($a31851634 (Array Int Int)) ($a11831632 (Array Int Int)) ($a1871636 Int))
    (=> (and ($main_sum108 $a11831632 $a21841633 $a31851634 $a41861635 $a1871636 $i1881637 $x1891638))
        ($main_inv109 $a11831632 $a21841633 $a31851634 $a41861635 $a1871636 0 $x1891638))))

; loop term $main_sum109
(assert
  (forall (($a41861642 (Array Int Int)) ($x1891645 Int) ($a31851641 (Array Int Int)) ($i1881644 Int) ($a11831639 (Array Int Int)) ($a21841640 (Array Int Int)) ($a1871643 Int))
    (=> (and (not (< $i1881644 100000))
             ($main_inv109 $a11831639 $a21841640 $a31851641 $a41861642 $a1871643 $i1881644 $x1891645))
        ($main_sum109 $a11831639 $a21841640 $a31851641 $a41861642 $a1871643 $i1881644 $x1891645))))

; forwards $main_inv109
(assert
  (forall (($a41861642 (Array Int Int)) ($x1891645 Int) ($a31851641 (Array Int Int)) ($i1881644 Int) ($a11831639 (Array Int Int)) ($a21841640 (Array Int Int)) ($a1871643 Int))
    (=> (and (< $i1881644 100000)
             ($main_inv109 $a11831639 $a21841640 $a31851641 $a41861642 $a1871643 $i1881644 $x1891645))
        ($main_inv109 $a11831639 (store $a21841640 $i1881644 (select $a11831639 $i1881644)) $a31851641 $a41861642 $a1871643 (+ $i1881644 1) $x1891645))))

; loop entry $main_inv110
(assert
  (forall (($a31851648 (Array Int Int)) ($x1891652 Int) ($i1881651 Int) ($a11831646 (Array Int Int)) ($a1871650 Int) ($a21841647 (Array Int Int)) ($a41861649 (Array Int Int)))
    (=> (and ($main_sum109 $a11831646 $a21841647 $a31851648 $a41861649 $a1871650 $i1881651 $x1891652))
        ($main_inv110 $a11831646 $a21841647 $a31851648 $a41861649 $a1871650 0 $x1891652))))

; loop term $main_sum110
(assert
  (forall (($a1871657 Int) ($a41861656 (Array Int Int)) ($a11831653 (Array Int Int)) ($a21841654 (Array Int Int)) ($i1881658 Int) ($a31851655 (Array Int Int)) ($x1891659 Int))
    (=> (and (not (< $i1881658 100000))
             ($main_inv110 $a11831653 $a21841654 $a31851655 $a41861656 $a1871657 $i1881658 $x1891659))
        ($main_sum110 $a11831653 $a21841654 $a31851655 $a41861656 $a1871657 $i1881658 $x1891659))))

; forwards $main_inv110
(assert
  (forall (($a1871657 Int) ($a41861656 (Array Int Int)) ($a11831653 (Array Int Int)) ($a21841654 (Array Int Int)) ($i1881658 Int) ($a31851655 (Array Int Int)) ($x1891659 Int))
    (=> (and (< $i1881658 100000)
             ($main_inv110 $a11831653 $a21841654 $a31851655 $a41861656 $a1871657 $i1881658 $x1891659))
        ($main_inv110 $a11831653 $a21841654 $a31851655 (store $a41861656 $i1881658 (select $a21841654 $i1881658)) $a1871657 (+ $i1881658 1) $x1891659))))

; loop entry $main_inv111
(assert
  (forall (($i1881665 Int) ($a21841661 (Array Int Int)) ($a1871664 Int) ($a31851662 (Array Int Int)) ($a11831660 (Array Int Int)) ($x1891666 Int) ($a41861663 (Array Int Int)))
    (=> (and ($main_sum110 $a11831660 $a21841661 $a31851662 $a41861663 $a1871664 $i1881665 $x1891666))
        ($main_inv111 $a11831660 $a21841661 $a31851662 $a41861663 $a1871664 0 $x1891666))))

; loop term $main_sum111
(assert
  (forall (($x1891673 Int) ($a11831667 (Array Int Int)) ($i1881672 Int) ($a1871671 Int) ($a21841668 (Array Int Int)) ($a31851669 (Array Int Int)) ($a41861670 (Array Int Int)))
    (=> (and (not (< $i1881672 100000))
             ($main_inv111 $a11831667 $a21841668 $a31851669 $a41861670 $a1871671 $i1881672 $x1891673))
        ($main_sum111 $a11831667 $a21841668 $a31851669 $a41861670 $a1871671 $i1881672 $x1891673))))

; forwards $main_inv111
(assert
  (forall (($x1891673 Int) ($a11831667 (Array Int Int)) ($i1881672 Int) ($a1871671 Int) ($a21841668 (Array Int Int)) ($a31851669 (Array Int Int)) ($a41861670 (Array Int Int)))
    (=> (and (< $i1881672 100000)
             ($main_inv111 $a11831667 $a21841668 $a31851669 $a41861670 $a1871671 $i1881672 $x1891673))
        ($main_inv111 $a11831667 $a21841668 $a31851669 (store $a41861670 $i1881672 (select $a31851669 $i1881672)) $a1871671 (+ $i1881672 1) $x1891673))))

; loop entry $main_inv112
(assert
  (forall (($a11831674 (Array Int Int)) ($a1871678 Int) ($a21841675 (Array Int Int)) ($a41861677 (Array Int Int)) ($a31851676 (Array Int Int)) ($x1891680 Int) ($i1881679 Int))
    (=> (and ($main_sum111 $a11831674 $a21841675 $a31851676 $a41861677 $a1871678 $i1881679 $x1891680))
        ($main_inv112 $a11831674 $a21841675 $a31851676 $a41861677 $a1871678 $i1881679 0))))

; loop term $main_sum112
(assert
  (forall (($a1871685 Int) ($a21841682 (Array Int Int)) ($a11831681 (Array Int Int)) ($a31851683 (Array Int Int)) ($i1881686 Int) ($x1891687 Int) ($a41861684 (Array Int Int)))
    (=> (and (not (< $x1891687 100000))
             ($main_inv112 $a11831681 $a21841682 $a31851683 $a41861684 $a1871685 $i1881686 $x1891687))
        ($main_sum112 $a11831681 $a21841682 $a31851683 $a41861684 $a1871685 $i1881686 $x1891687))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1871685 Int) ($a21841682 (Array Int Int)) ($a11831681 (Array Int Int)) ($a31851683 (Array Int Int)) ($i1881686 Int) ($x1891687 Int) ($a41861684 (Array Int Int)))
    (=> (and (< $x1891687 100000)
             ($main_inv112 $a11831681 $a21841682 $a31851683 $a41861684 $a1871685 $i1881686 $x1891687))
        ($__VERIFIER_assert_pre (ite (= (select $a11831681 $x1891687) (select $a41861684 $x1891687)) 1 0)))))

; forwards $main_inv112
(assert
  (forall (($a1871685 Int) ($a21841682 (Array Int Int)) ($a11831681 (Array Int Int)) ($a31851683 (Array Int Int)) ($i1881686 Int) ($x1891687 Int) ($a41861684 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11831681 $x1891687) (select $a41861684 $x1891687)) 1 0))
             (< $x1891687 100000)
             ($main_inv112 $a11831681 $a21841682 $a31851683 $a41861684 $a1871685 $i1881686 $x1891687))
        ($main_inv112 $a11831681 $a21841682 $a31851683 $a41861684 $a1871685 $i1881686 (+ $x1891687 1)))))

(check-sat)
