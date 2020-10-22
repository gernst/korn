(set-logic HORN)

(declare-fun $main_sum260 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv261 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum256 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv259 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum261 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv256 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv260 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum257 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum262 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if75 (Int Int) Bool)
(declare-fun $main_inv262 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv257 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum258 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv258 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum259 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5587 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5587))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if75 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5588 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if75 cond cond5588))
        (__VERIFIER_assert cond5588))))

; loop entry $main_inv256
(assert
  (forall (($a346 (Array Int Int)) ($i347 Int) ($x348 Int))
    (=> (and (= $i347 0))
        ($main_inv256 $a346 $i347 $x348))))

; loop term $main_sum256
(assert
  (forall (($a3465589 (Array Int Int)) ($i3475590 Int) ($x3485591 Int))
    (=> (and (not (< $i3475590 100000)))
        ($main_sum256 $a3465589 $i3475590 $x3485591 $a3465589 $i3475590 $x3485591))))

; forwards $main_inv256
(assert
  (forall (($a3465589 (Array Int Int)) ($i3475590 Int) ($x3485591 Int))
    (=> (and (< $i3475590 100000)
             ($main_inv256 $a3465589 $i3475590 $x3485591))
        ($main_inv256 (store $a3465589 $i3475590 42) (+ $i3475590 1) $x3485591))))

; backwards $main_sum256
(assert
  (forall (($a3465592 (Array Int Int)) ($a3465589 (Array Int Int)) ($x3485591 Int) ($x3485594 Int) ($i3475593 Int) ($i3475590 Int))
    (=> (and ($main_sum256 (store $a3465589 $i3475590 42) (+ $i3475590 1) $x3485591 $a3465592 $i3475593 $x3485594)
             (< $i3475590 100000))
        ($main_sum256 $a3465589 $i3475590 $x3485591 $a3465592 $i3475593 $x3485594))))

; loop entry $main_inv257
(assert
  (forall (($i347 Int) ($i3475596 Int) ($a346 (Array Int Int)) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)))
    (=> (and ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv257 $a3465595 0 $x3485597))))

; loop term $main_sum257
(assert
  (forall (($a3465598 (Array Int Int)) ($i3475599 Int) ($x3485600 Int))
    (=> (and (not (< $i3475599 100000)))
        ($main_sum257 $a3465598 $i3475599 $x3485600 $a3465598 $i3475599 $x3485600))))

; forwards $main_inv257
(assert
  (forall (($a3465598 (Array Int Int)) ($i3475599 Int) ($x3485600 Int))
    (=> (and (< $i3475599 100000)
             ($main_inv257 $a3465598 $i3475599 $x3485600))
        ($main_inv257 (store $a3465598 $i3475599 43) (+ $i3475599 1) $x3485600))))

; backwards $main_sum257
(assert
  (forall (($x3485600 Int) ($i3475602 Int) ($a3465598 (Array Int Int)) ($x3485603 Int) ($a3465601 (Array Int Int)) ($i3475599 Int))
    (=> (and ($main_sum257 (store $a3465598 $i3475599 43) (+ $i3475599 1) $x3485600 $a3465601 $i3475602 $x3485603)
             (< $i3475599 100000))
        ($main_sum257 $a3465598 $i3475599 $x3485600 $a3465601 $i3475602 $x3485603))))

; loop entry $main_inv258
(assert
  (forall (($i347 Int) ($i3475605 Int) ($i3475596 Int) ($a346 (Array Int Int)) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)) ($x3485606 Int) ($a3465604 (Array Int Int)))
    (=> (and ($main_sum257 $a3465595 0 $x3485597 $a3465604 $i3475605 $x3485606)
             ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv258 $a3465604 0 $x3485606))))

; loop term $main_sum258
(assert
  (forall (($a3465607 (Array Int Int)) ($i3475608 Int) ($x3485609 Int))
    (=> (and (not (< $i3475608 100000)))
        ($main_sum258 $a3465607 $i3475608 $x3485609 $a3465607 $i3475608 $x3485609))))

; forwards $main_inv258
(assert
  (forall (($a3465607 (Array Int Int)) ($i3475608 Int) ($x3485609 Int))
    (=> (and (< $i3475608 100000)
             ($main_inv258 $a3465607 $i3475608 $x3485609))
        ($main_inv258 (store $a3465607 $i3475608 44) (+ $i3475608 1) $x3485609))))

; backwards $main_sum258
(assert
  (forall (($i3475611 Int) ($x3485612 Int) ($i3475608 Int) ($x3485609 Int) ($a3465610 (Array Int Int)) ($a3465607 (Array Int Int)))
    (=> (and ($main_sum258 (store $a3465607 $i3475608 44) (+ $i3475608 1) $x3485609 $a3465610 $i3475611 $x3485612)
             (< $i3475608 100000))
        ($main_sum258 $a3465607 $i3475608 $x3485609 $a3465610 $i3475611 $x3485612))))

; loop entry $main_inv259
(assert
  (forall (($i347 Int) ($i3475605 Int) ($i3475596 Int) ($a346 (Array Int Int)) ($a3465613 (Array Int Int)) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)) ($i3475614 Int) ($x3485606 Int) ($x3485615 Int) ($a3465604 (Array Int Int)))
    (=> (and ($main_sum258 $a3465604 0 $x3485606 $a3465613 $i3475614 $x3485615)
             ($main_sum257 $a3465595 0 $x3485597 $a3465604 $i3475605 $x3485606)
             ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv259 $a3465613 0 $x3485615))))

; loop term $main_sum259
(assert
  (forall (($a3465616 (Array Int Int)) ($i3475617 Int) ($x3485618 Int))
    (=> (and (not (< $i3475617 100000)))
        ($main_sum259 $a3465616 $i3475617 $x3485618 $a3465616 $i3475617 $x3485618))))

; forwards $main_inv259
(assert
  (forall (($a3465616 (Array Int Int)) ($i3475617 Int) ($x3485618 Int))
    (=> (and (< $i3475617 100000)
             ($main_inv259 $a3465616 $i3475617 $x3485618))
        ($main_inv259 (store $a3465616 $i3475617 45) (+ $i3475617 1) $x3485618))))

; backwards $main_sum259
(assert
  (forall (($i3475617 Int) ($a3465619 (Array Int Int)) ($a3465616 (Array Int Int)) ($x3485618 Int) ($x3485621 Int) ($i3475620 Int))
    (=> (and ($main_sum259 (store $a3465616 $i3475617 45) (+ $i3475617 1) $x3485618 $a3465619 $i3475620 $x3485621)
             (< $i3475617 100000))
        ($main_sum259 $a3465616 $i3475617 $x3485618 $a3465619 $i3475620 $x3485621))))

; loop entry $main_inv260
(assert
  (forall (($x3485624 Int) ($i347 Int) ($i3475605 Int) ($i3475596 Int) ($a346 (Array Int Int)) ($i3475623 Int) ($a3465613 (Array Int Int)) ($a3465622 (Array Int Int)) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)) ($i3475614 Int) ($x3485606 Int) ($x3485615 Int) ($a3465604 (Array Int Int)))
    (=> (and ($main_sum259 $a3465613 0 $x3485615 $a3465622 $i3475623 $x3485624)
             ($main_sum258 $a3465604 0 $x3485606 $a3465613 $i3475614 $x3485615)
             ($main_sum257 $a3465595 0 $x3485597 $a3465604 $i3475605 $x3485606)
             ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv260 $a3465622 0 $x3485624))))

; loop term $main_sum260
(assert
  (forall (($a3465625 (Array Int Int)) ($i3475626 Int) ($x3485627 Int))
    (=> (and (not (< $i3475626 100000)))
        ($main_sum260 $a3465625 $i3475626 $x3485627 $a3465625 $i3475626 $x3485627))))

; forwards $main_inv260
(assert
  (forall (($a3465625 (Array Int Int)) ($i3475626 Int) ($x3485627 Int))
    (=> (and (< $i3475626 100000)
             ($main_inv260 $a3465625 $i3475626 $x3485627))
        ($main_inv260 (store $a3465625 $i3475626 46) (+ $i3475626 1) $x3485627))))

; backwards $main_sum260
(assert
  (forall (($a3465628 (Array Int Int)) ($i3475629 Int) ($i3475626 Int) ($x3485627 Int) ($x3485630 Int) ($a3465625 (Array Int Int)))
    (=> (and ($main_sum260 (store $a3465625 $i3475626 46) (+ $i3475626 1) $x3485627 $a3465628 $i3475629 $x3485630)
             (< $i3475626 100000))
        ($main_sum260 $a3465625 $i3475626 $x3485627 $a3465628 $i3475629 $x3485630))))

; loop entry $main_inv261
(assert
  (forall (($x3485624 Int) ($i3475632 Int) ($i347 Int) ($i3475605 Int) ($i3475596 Int) ($i3475623 Int) ($a3465613 (Array Int Int)) ($a3465622 (Array Int Int)) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)) ($i3475614 Int) ($x3485606 Int) ($a3465631 (Array Int Int)) ($x3485615 Int) ($a3465604 (Array Int Int)) ($a346 (Array Int Int)) ($x3485633 Int))
    (=> (and ($main_sum260 $a3465622 0 $x3485624 $a3465631 $i3475632 $x3485633)
             ($main_sum259 $a3465613 0 $x3485615 $a3465622 $i3475623 $x3485624)
             ($main_sum258 $a3465604 0 $x3485606 $a3465613 $i3475614 $x3485615)
             ($main_sum257 $a3465595 0 $x3485597 $a3465604 $i3475605 $x3485606)
             ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv261 $a3465631 0 $x3485633))))

; loop term $main_sum261
(assert
  (forall (($a3465634 (Array Int Int)) ($i3475635 Int) ($x3485636 Int))
    (=> (and (not (< $i3475635 100000)))
        ($main_sum261 $a3465634 $i3475635 $x3485636 $a3465634 $i3475635 $x3485636))))

; forwards $main_inv261
(assert
  (forall (($a3465634 (Array Int Int)) ($i3475635 Int) ($x3485636 Int))
    (=> (and (< $i3475635 100000)
             ($main_inv261 $a3465634 $i3475635 $x3485636))
        ($main_inv261 (store $a3465634 $i3475635 47) (+ $i3475635 1) $x3485636))))

; backwards $main_sum261
(assert
  (forall (($x3485639 Int) ($i3475638 Int) ($a3465634 (Array Int Int)) ($x3485636 Int) ($a3465637 (Array Int Int)) ($i3475635 Int))
    (=> (and ($main_sum261 (store $a3465634 $i3475635 47) (+ $i3475635 1) $x3485636 $a3465637 $i3475638 $x3485639)
             (< $i3475635 100000))
        ($main_sum261 $a3465634 $i3475635 $x3485636 $a3465637 $i3475638 $x3485639))))

; loop entry $main_inv262
(assert
  (forall (($x3485624 Int) ($i3475632 Int) ($i347 Int) ($i3475605 Int) ($i3475623 Int) ($x3485597 Int) ($x348 Int) ($a3465595 (Array Int Int)) ($i3475614 Int) ($x3485606 Int) ($a3465631 (Array Int Int)) ($x3485615 Int) ($a3465604 (Array Int Int)) ($i3475596 Int) ($x3485642 Int) ($a346 (Array Int Int)) ($x3485633 Int) ($a3465613 (Array Int Int)) ($a3465640 (Array Int Int)) ($a3465622 (Array Int Int)) ($i3475641 Int))
    (=> (and ($main_sum261 $a3465631 0 $x3485633 $a3465640 $i3475641 $x3485642)
             ($main_sum260 $a3465622 0 $x3485624 $a3465631 $i3475632 $x3485633)
             ($main_sum259 $a3465613 0 $x3485615 $a3465622 $i3475623 $x3485624)
             ($main_sum258 $a3465604 0 $x3485606 $a3465613 $i3475614 $x3485615)
             ($main_sum257 $a3465595 0 $x3485597 $a3465604 $i3475605 $x3485606)
             ($main_sum256 $a346 $i347 $x348 $a3465595 $i3475596 $x3485597)
             (= $i347 0))
        ($main_inv262 $a3465640 $i3475641 0))))

; loop term $main_sum262
(assert
  (forall (($a3465643 (Array Int Int)) ($i3475644 Int) ($x3485645 Int))
    (=> (and (not (< $x3485645 100000)))
        ($main_sum262 $a3465643 $i3475644 $x3485645 $a3465643 $i3475644 $x3485645))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3465643 (Array Int Int)) ($x3485645 Int) ($i3475644 Int))
    (=> (and (< $x3485645 100000)
             ($main_inv262 $a3465643 $i3475644 $x3485645))
        ($__VERIFIER_assert_pre (ite (= (select $a3465643 $x3485645) 46) 1 0)))))

; forwards $main_inv262
(assert
  (forall (($a3465643 (Array Int Int)) ($i3475644 Int) ($x3485645 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3465643 $x3485645) 46) 1 0))
             (< $x3485645 100000)
             ($main_inv262 $a3465643 $i3475644 $x3485645))
        ($main_inv262 $a3465643 $i3475644 (+ $x3485645 1)))))

; backwards $main_sum262
(assert
  (forall (($i3475647 Int) ($a3465643 (Array Int Int)) ($x3485648 Int) ($i3475644 Int) ($x3485645 Int) ($a3465646 (Array Int Int)))
    (=> (and ($main_sum262 $a3465643 $i3475644 (+ $x3485645 1) $a3465646 $i3475647 $x3485648)
             (__VERIFIER_assert (ite (= (select $a3465643 $x3485645) 46) 1 0))
             (< $x3485645 100000))
        ($main_sum262 $a3465643 $i3475644 $x3485645 $a3465646 $i3475647 $x3485648))))

(check-sat)
