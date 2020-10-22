(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if737 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if736 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv282 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum281 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv281 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if738 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if735 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum282 (Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if735 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15509 Int))
    (=> (and ($assume_abort_if_not_if735 cond15509))
        (assume_abort_if_not cond15509))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15510 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15510))
        false)))

; if then
(assert
  (forall ((cond15510 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15510))
        ($__VERIFIER_assert_if736 cond15510))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if736 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15511 Int))
    (=> (and ($__VERIFIER_assert_if736 cond15511))
        (__VERIFIER_assert cond15511))))

; assume_abort_if_not precondition
(assert
  (forall (($int15512 Int) ($int15513 Int))
    (=> (and (<= (- 2147483648) $int15513)
             (<= $int15513 2147483647)
             (<= (- 2147483648) $int15512)
             (<= $int15512 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15512 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15513 Int) ($int15512 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15512 1) 1 0))
             (<= (- 2147483648) $int15513)
             (<= $int15513 2147483647)
             (<= (- 2147483648) $int15512)
             (<= $int15512 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15513 1) 1 0)))))

; loop entry $main_inv281
(assert
  (forall (($int15512 Int) ($int15513 Int) ($temp803 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15513 1) 1 0))
             (assume_abort_if_not (ite (>= $int15512 1) 1 0))
             (<= (- 2147483648) $int15513)
             (<= $int15513 2147483647)
             (<= (- 2147483648) $int15512)
             (<= $int15512 2147483647))
        ($main_inv281 $int15512 $int15513 $int15512 $int15513 1 0 0 1 0 0 $temp803))))

; loop term $main_sum281
(assert
  (forall (($p79715518 Int) ($r79915520 Int) ($b79615517 Int) ($c80115522 Int) ($a79515516 Int) ($q79815519 Int) ($s80015521 Int) ($temp80315524 Int) ($x79315514 Int) ($y79415515 Int) ($k80215523 Int))
    (=> (and (= 1 0)
             ($main_inv281 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))
        ($main_sum281 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))))

; break $main_sum281
(assert
  (forall (($p79715518 Int) ($r79915520 Int) ($b79615517 Int) ($c80115522 Int) ($a79515516 Int) ($q79815519 Int) ($s80015521 Int) ($temp80315524 Int) ($x79315514 Int) ($y79415515 Int) ($k80215523 Int))
    (=> (and (= $b79615517 0)
             (not (= 1 0))
             ($main_inv281 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))
        ($main_sum281 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))))

; if else
(assert
  (forall (($p79715518 Int) ($r79915520 Int) ($b79615517 Int) ($c80115522 Int) ($a79515516 Int) ($q79815519 Int) ($s80015521 Int) ($temp80315524 Int) ($x79315514 Int) ($y79415515 Int) ($k80215523 Int))
    (=> (and (not (= $b79615517 0))
             (not (= 1 0))
             ($main_inv281 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))
        ($main_if737 $x79315514 $y79415515 $a79515516 $b79615517 $p79715518 $q79815519 $r79915520 $s80015521 $c80115522 $k80215523 $temp80315524))))

; loop entry $main_inv282
(assert
  (forall (($b79615528 Int) ($temp80315535 Int) ($r79915531 Int) ($s80015532 Int) ($a79515527 Int) ($y79415526 Int) ($q79815530 Int) ($x79315525 Int) ($p79715529 Int) ($k80215534 Int) ($c80115533 Int))
    (=> (and ($main_if737 $x79315525 $y79415526 $a79515527 $b79615528 $p79715529 $q79815530 $r79915531 $s80015532 $c80115533 $k80215534 $temp80315535))
        ($main_inv282 $x79315525 $y79415526 $a79515527 $b79615528 $p79715529 $q79815530 $r79915531 $s80015532 $a79515527 0 $temp80315535))))

; loop term $main_sum282
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (= 1 0)
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($main_sum282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($__VERIFIER_assert_pre (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (__VERIFIER_assert (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($__VERIFIER_assert_pre (ite (= $a79515538 (+ (* $y79415537 $r79915542) (* $x79315536 $p79715540))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (__VERIFIER_assert (ite (= $a79515538 (+ (* $y79415537 $r79915542) (* $x79315536 $p79715540))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($__VERIFIER_assert_pre (ite (= $b79615539 (+ (* $x79315536 $q79815541) (* $y79415537 $s80015543))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (__VERIFIER_assert (ite (= $b79615539 (+ (* $x79315536 $q79815541) (* $y79415537 $s80015543))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $y79415537 $r79915542) (* $x79315536 $p79715540))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (- (+ (* (* $q79815541 $x79315536) $y79415537) (* (* $s80015543 $y79415537) $y79415537)) (* $q79815541 $x79315536)) (* $b79615539 $y79415537)) (* $s80015543 $y79415537)) $b79615539) 0) 1 0)))))

; break $main_sum282
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (not (>= $c80115544 $b79615539))
             (__VERIFIER_assert (ite (= (+ (- (- (- (+ (* (* $q79815541 $x79315536) $y79415537) (* (* $s80015543 $y79415537) $y79415537)) (* $q79815541 $x79315536)) (* $b79615539 $y79415537)) (* $s80015543 $y79415537)) $b79615539) 0) 1 0))
             (__VERIFIER_assert (ite (= $b79615539 (+ (* $x79315536 $q79815541) (* $y79415537 $s80015543))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $y79415537 $r79915542) (* $x79315536 $p79715540))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($main_sum282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))))

; if else
(assert
  (forall (($q79815541 Int) ($y79415537 Int) ($c80115544 Int) ($a79515538 Int) ($b79615539 Int) ($x79315536 Int) ($temp80315546 Int) ($s80015543 Int) ($r79915542 Int) ($p79715540 Int) ($k80215545 Int))
    (=> (and (>= $c80115544 $b79615539)
             (__VERIFIER_assert (ite (= (+ (- (- (- (+ (* (* $q79815541 $x79315536) $y79415537) (* (* $s80015543 $y79415537) $y79415537)) (* $q79815541 $x79315536)) (* $b79615539 $y79415537)) (* $s80015543 $y79415537)) $b79615539) 0) 1 0))
             (__VERIFIER_assert (ite (= $b79615539 (+ (* $x79315536 $q79815541) (* $y79415537 $s80015543))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $y79415537 $r79915542) (* $x79315536 $p79715540))) 1 0))
             (__VERIFIER_assert (ite (= $a79515538 (+ (* $k80215545 $b79615539) $c80115544)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))
        ($main_if738 $x79315536 $y79415537 $a79515538 $b79615539 $p79715540 $q79815541 $r79915542 $s80015543 $c80115544 $k80215545 $temp80315546))))

; forwards $main_inv282
(assert
  (forall (($a79515549 Int) ($x79315547 Int) ($r79915553 Int) ($c80115555 Int) ($y79415548 Int) ($b79615550 Int) ($q79815552 Int) ($k80215556 Int) ($temp80315557 Int) ($p79715551 Int) ($s80015554 Int))
    (=> (and ($main_if738 $x79315547 $y79415548 $a79515549 $b79615550 $p79715551 $q79815552 $r79915553 $s80015554 $c80115555 $k80215556 $temp80315557))
        ($main_inv282 $x79315547 $y79415548 $a79515549 $b79615550 $p79715551 $q79815552 $r79915553 $s80015554 (- $c80115555 $b79615550) (+ $k80215556 1) $temp80315557))))

; forwards $main_inv281
(assert
  (forall (($q79815563 Int) ($temp80315568 Int) ($a79515560 Int) ($x79315558 Int) ($y79415559 Int) ($p79715562 Int) ($r79915564 Int) ($c80115566 Int) ($b79615561 Int) ($k80215567 Int) ($s80015565 Int))
    (=> (and ($main_sum282 $x79315558 $y79415559 $a79515560 $b79615561 $p79715562 $q79815563 $r79915564 $s80015565 $c80115566 $k80215567 $temp80315568))
        ($main_inv281 $x79315558 $y79415559 $b79615561 $c80115566 $q79815563 (- $p79715562 (* $q79815563 $k80215567)) $s80015565 (- $r79915564 (* $s80015565 $k80215567)) $c80115566 $k80215567 $r79915564))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815574 Int) ($c80115577 Int) ($k80215578 Int) ($a79515571 Int) ($x79315569 Int) ($b79615572 Int) ($temp80315579 Int) ($r79915575 Int) ($s80015576 Int) ($p79715573 Int) ($y79415570 Int))
    (=> (and ($main_sum281 $x79315569 $y79415570 $a79515571 $b79615572 $p79715573 $q79815574 $r79915575 $s80015576 $c80115577 $k80215578 $temp80315579))
        ($__VERIFIER_assert_pre (ite (= (+ (* $q79815574 $x79315569) (* $s80015576 $y79415570)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q79815574 Int) ($c80115577 Int) ($k80215578 Int) ($a79515571 Int) ($x79315569 Int) ($b79615572 Int) ($temp80315579 Int) ($r79915575 Int) ($s80015576 Int) ($p79715573 Int) ($y79415570 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (* $q79815574 $x79315569) (* $s80015576 $y79415570)) 0) 1 0))
             ($main_sum281 $x79315569 $y79415570 $a79515571 $b79615572 $p79715573 $q79815574 $r79915575 $s80015576 $c80115577 $k80215578 $temp80315579))
        ($__VERIFIER_assert_pre (ite (= (+ (* $p79715573 $x79315569) (* $r79915575 $y79415570)) $a79515571) 1 0)))))

(check-sat)
