(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum507 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if342 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if341 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv507 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if340 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if340 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9675 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if340 cond cond9675))
        (assume_abort_if_not cond9675))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9676 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9676))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if341 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9677 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if341 cond cond9677))
        (__VERIFIER_assert cond9677))))

; if else
(assert
  (forall (($i710 Int) ($k711 Int) ($int9678 Int))
    (=> (and (<= 0 $int9678)
             (<= $int9678 10)
             (<= (- 2147483648) $int9678)
             (<= $int9678 2147483647))
        ($main_if342 $i710 $k711 $i710 $int9678))))

; loop entry $main_inv507
(assert
  (forall (($k7119680 Int) ($i710 Int) ($k711 Int) ($i7109679 Int))
    (=> (and ($main_if342 $i710 $k711 $i7109679 $k7119680))
        ($main_inv507 0 $k7119680))))

; loop term $main_sum507
(assert
  (forall (($i7109681 Int) ($k7119682 Int))
    (=> (and (not (< $i7109681 (* 1000000 $k7119682))))
        ($main_sum507 $i7109681 $k7119682 $i7109681 $k7119682))))

; forwards $main_inv507
(assert
  (forall (($i7109681 Int) ($k7119682 Int))
    (=> (and (< $i7109681 (* 1000000 $k7119682))
             ($main_inv507 $i7109681 $k7119682))
        ($main_inv507 (+ $i7109681 $k7119682) $k7119682))))

; backwards $main_sum507
(assert
  (forall (($i7109681 Int) ($k7119682 Int) ($i7109683 Int) ($k7119684 Int))
    (=> (and ($main_sum507 (+ $i7109681 $k7119682) $k7119682 $i7109683 $k7119684)
             (< $i7109681 (* 1000000 $k7119682)))
        ($main_sum507 $i7109681 $k7119682 $i7109683 $k7119684))))

; __VERIFIER_assert precondition
(assert
  (forall (($i710 Int) ($i7109679 Int) ($k7119686 Int) ($k711 Int) ($i7109685 Int) ($k7119680 Int))
    (=> (and ($main_sum507 0 $k7119680 $i7109685 $k7119686)
             ($main_if342 $i710 $k711 $i7109679 $k7119680))
        ($__VERIFIER_assert_pre (ite (= $i7109685 (* 1000000 $k7119686)) 1 0)))))

(check-sat)
