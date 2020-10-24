(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv286 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum286 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if750 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if753 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if752 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if749 (Int) Bool)
(declare-fun $main_inv287 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if751 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum287 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if749 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15661 Int))
    (=> (and ($assume_abort_if_not_if749 cond15661))
        (assume_abort_if_not cond15661))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15662 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15662))
        false)))

; if then
(assert
  (forall ((cond15662 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15662))
        ($__VERIFIER_assert_if750 cond15662))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if750 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15663 Int))
    (=> (and ($__VERIFIER_assert_if750 cond15663))
        (__VERIFIER_assert cond15663))))

; loop entry $main_inv286
(assert
  (forall (($int15664 Int))
    (=> (and (<= (- 2147483648) $int15664)
             (<= $int15664 2147483647))
        ($main_inv286 $int15664 1 $int15664 1 1 0))))

; loop term $main_sum286
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (= 1 0)
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($main_sum286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))))

; __VERIFIER_assert precondition
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (not (= 1 0))
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($__VERIFIER_assert_pre (ite (= $q82815670 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (__VERIFIER_assert (ite (= $q82815670 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($__VERIFIER_assert_pre (ite (= $r82515667 $A82315665) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (__VERIFIER_assert (ite (= $r82515667 $A82315665) 1 0))
             (__VERIFIER_assert (ite (= $q82815670 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($__VERIFIER_assert_pre (ite (= $d82615668 (* $B82415666 $p82715669)) 1 0)))))

; break $main_sum286
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (not (>= $r82515667 $d82615668))
             (__VERIFIER_assert (ite (= $d82615668 (* $B82415666 $p82715669)) 1 0))
             (__VERIFIER_assert (ite (= $r82515667 $A82315665) 1 0))
             (__VERIFIER_assert (ite (= $q82815670 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($main_sum286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))))

; if else
(assert
  (forall (($r82515667 Int) ($B82415666 Int) ($d82615668 Int) ($q82815670 Int) ($A82315665 Int) ($p82715669 Int))
    (=> (and (>= $r82515667 $d82615668)
             (__VERIFIER_assert (ite (= $d82615668 (* $B82415666 $p82715669)) 1 0))
             (__VERIFIER_assert (ite (= $r82515667 $A82315665) 1 0))
             (__VERIFIER_assert (ite (= $q82815670 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))
        ($main_if751 $A82315665 $B82415666 $r82515667 $d82615668 $p82715669 $q82815670))))

; forwards $main_inv286
(assert
  (forall (($r82515673 Int) ($q82815676 Int) ($A82315671 Int) ($d82615674 Int) ($p82715675 Int) ($B82415672 Int))
    (=> (and ($main_if751 $A82315671 $B82415672 $r82515673 $d82615674 $p82715675 $q82815676))
        ($main_inv286 $A82315671 $B82415672 $r82515673 (* 2 $d82615674) (* 2 $p82715675) $q82815676))))

; loop entry $main_inv287
(assert
  (forall (($p82715681 Int) ($q82815682 Int) ($d82615680 Int) ($B82415678 Int) ($r82515679 Int) ($A82315677 Int))
    (=> (and ($main_sum286 $A82315677 $B82415678 $r82515679 $d82615680 $p82715681 $q82815682))
        ($main_inv287 $A82315677 $B82415678 $r82515679 $d82615680 $p82715681 $q82815682))))

; loop term $main_sum287
(assert
  (forall (($d82615686 Int) ($A82315683 Int) ($q82815688 Int) ($r82515685 Int) ($B82415684 Int) ($p82715687 Int))
    (=> (and (= 1 0)
             ($main_inv287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))
        ($main_sum287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))))

; __VERIFIER_assert precondition
(assert
  (forall (($d82615686 Int) ($A82315683 Int) ($q82815688 Int) ($r82515685 Int) ($B82415684 Int) ($p82715687 Int))
    (=> (and (not (= 1 0))
             ($main_inv287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))
        ($__VERIFIER_assert_pre (ite (= $A82315683 (+ (* $q82815688 $B82415684) $r82515685)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($d82615686 Int) ($A82315683 Int) ($q82815688 Int) ($r82515685 Int) ($B82415684 Int) ($p82715687 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82315683 (+ (* $q82815688 $B82415684) $r82515685)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))
        ($__VERIFIER_assert_pre (ite (= $d82615686 (* $B82415684 $p82715687)) 1 0)))))

; break $main_sum287
(assert
  (forall (($d82615686 Int) ($A82315683 Int) ($q82815688 Int) ($r82515685 Int) ($B82415684 Int) ($p82715687 Int))
    (=> (and (= $p82715687 1)
             (__VERIFIER_assert (ite (= $d82615686 (* $B82415684 $p82715687)) 1 0))
             (__VERIFIER_assert (ite (= $A82315683 (+ (* $q82815688 $B82415684) $r82515685)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))
        ($main_sum287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))))

; if else
(assert
  (forall (($d82615686 Int) ($A82315683 Int) ($q82815688 Int) ($r82515685 Int) ($B82415684 Int) ($p82715687 Int))
    (=> (and (not (= $p82715687 1))
             (__VERIFIER_assert (ite (= $d82615686 (* $B82415684 $p82715687)) 1 0))
             (__VERIFIER_assert (ite (= $A82315683 (+ (* $q82815688 $B82415684) $r82515685)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))
        ($main_if752 $A82315683 $B82415684 $r82515685 $d82615686 $p82715687 $q82815688))))

; if then
(assert
  (forall (($q82815694 Int) ($p82715693 Int) ($A82315689 Int) ($d82615692 Int) ($r82515691 Int) ($B82415690 Int))
    (=> (and (>= $r82515691 (div $d82615692 2))
             ($main_if752 $A82315689 $B82415690 $r82515691 $d82615692 $p82715693 $q82815694))
        ($main_if753 $A82315689 $B82415690 (- $r82515691 (div $d82615692 2)) (div $d82615692 2) (div $p82715693 2) (+ $q82815694 (div $p82715693 2))))))

; if else
(assert
  (forall (($q82815694 Int) ($p82715693 Int) ($A82315689 Int) ($d82615692 Int) ($r82515691 Int) ($B82415690 Int))
    (=> (and (not (>= $r82515691 (div $d82615692 2)))
             ($main_if752 $A82315689 $B82415690 $r82515691 $d82615692 $p82715693 $q82815694))
        ($main_if753 $A82315689 $B82415690 $r82515691 (div $d82615692 2) (div $p82715693 2) $q82815694))))

; forwards $main_inv287
(assert
  (forall (($d82615698 Int) ($p82715699 Int) ($A82315695 Int) ($q82815700 Int) ($r82515697 Int) ($B82415696 Int))
    (=> (and ($main_if753 $A82315695 $B82415696 $r82515697 $d82615698 $p82715699 $q82815700))
        ($main_inv287 $A82315695 $B82415696 $r82515697 $d82615698 $p82715699 $q82815700))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82315701 Int) ($q82815706 Int) ($d82615704 Int) ($r82515703 Int) ($p82715705 Int) ($B82415702 Int))
    (=> (and ($main_sum287 $A82315701 $B82415702 $r82515703 $d82615704 $p82715705 $q82815706))
        ($__VERIFIER_assert_pre (ite (= $A82315701 (+ (* $d82615704 $q82815706) $r82515703)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82315701 Int) ($q82815706 Int) ($d82615704 Int) ($r82515703 Int) ($p82715705 Int) ($B82415702 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82315701 (+ (* $d82615704 $q82815706) $r82515703)) 1 0))
             ($main_sum287 $A82315701 $B82415702 $r82515703 $d82615704 $p82715705 $q82815706))
        ($__VERIFIER_assert_pre (ite (= $B82415702 $d82615704) 1 0)))))

(check-sat)
