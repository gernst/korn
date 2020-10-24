(set-logic HORN)

(declare-fun $main_inv280 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum279 (Int Int Int Int Int) Bool)
(declare-fun $main_if732 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if731 (Int) Bool)
(declare-fun $main_if734 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv279 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if730 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if733 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum280 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if730 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15470 Int))
    (=> (and ($assume_abort_if_not_if730 cond15470))
        (assume_abort_if_not cond15470))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15471 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15471))
        false)))

; if then
(assert
  (forall ((cond15471 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15471))
        ($__VERIFIER_assert_if731 cond15471))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if731 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15472 Int))
    (=> (and ($__VERIFIER_assert_if731 cond15472))
        (__VERIFIER_assert cond15472))))

; loop entry $main_inv279
(assert
  (forall (($int15473 Int))
    (=> (and (<= (- 2147483648) $int15473)
             (<= $int15473 2147483647))
        ($main_inv279 $int15473 0 1 $int15473 0))))

; loop term $main_sum279
(assert
  (forall (($q79015476 Int) ($h79215478 Int) ($p78915475 Int) ($r79115477 Int) ($n78815474 Int))
    (=> (and (= 1 0)
             ($main_inv279 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))
        ($main_sum279 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))))

; break $main_sum279
(assert
  (forall (($q79015476 Int) ($h79215478 Int) ($p78915475 Int) ($r79115477 Int) ($n78815474 Int))
    (=> (and (not (<= $q79015476 $n78815474))
             (not (= 1 0))
             ($main_inv279 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))
        ($main_sum279 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))))

; if else
(assert
  (forall (($q79015476 Int) ($h79215478 Int) ($p78915475 Int) ($r79115477 Int) ($n78815474 Int))
    (=> (and (<= $q79015476 $n78815474)
             (not (= 1 0))
             ($main_inv279 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))
        ($main_if732 $n78815474 $p78915475 $q79015476 $r79115477 $h79215478))))

; forwards $main_inv279
(assert
  (forall (($q79015481 Int) ($n78815479 Int) ($h79215483 Int) ($r79115482 Int) ($p78915480 Int))
    (=> (and ($main_if732 $n78815479 $p78915480 $q79015481 $r79115482 $h79215483))
        ($main_inv279 $n78815479 $p78915480 (* 4 $q79015481) $r79115482 $h79215483))))

; loop entry $main_inv280
(assert
  (forall (($r79115487 Int) ($n78815484 Int) ($p78915485 Int) ($h79215488 Int) ($q79015486 Int))
    (=> (and ($main_sum279 $n78815484 $p78915485 $q79015486 $r79115487 $h79215488))
        ($main_inv280 $n78815484 $p78915485 $q79015486 $r79115487 $h79215488))))

; loop term $main_sum280
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (= 1 0)
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($main_sum280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $n78815489) (* (* (* 4 $h79215493) $n78815489) $p78915490)) (* (* 4 (* $n78815489 $n78815489)) $q79015491)) (* (* $n78815489 $q79015491) $q79015491)) (* (* $h79215493 $h79215493) $r79115492)) (* (* (* 4 $h79215493) $p78915490) $r79115492)) (* (* (* 8 $n78815489) $q79015491) $r79115492)) (* (* $q79015491 $q79015491) $r79115492)) (* (* (* 4 $q79015491) $r79115492) $r79115492)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (+ (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $n78815489) (* (* (* 4 $h79215493) $n78815489) $p78915490)) (* (* 4 (* $n78815489 $n78815489)) $q79015491)) (* (* $n78815489 $q79015491) $q79015491)) (* (* $h79215493 $h79215493) $r79115492)) (* (* (* 4 $h79215493) $p78915490) $r79115492)) (* (* (* 8 $n78815489) $q79015491) $r79115492)) (* (* $q79015491 $q79015491) $r79115492)) (* (* (* 4 $q79015491) $r79115492) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (+ (- (* (* $h79215493 $h79215493) $p78915490) (* (* (* 4 $h79215493) $n78815489) $q79015491)) (* (* (* 4 $n78815489) $p78915490) $q79015491)) (* (* $p78915490 $q79015491) $q79015491)) (* (* (* 4 $h79215493) $q79015491) $r79115492)) (* (* (* 4 $p78915490) $q79015491) $r79115492)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (+ (- (* (* $h79215493 $h79215493) $p78915490) (* (* (* 4 $h79215493) $n78815489) $q79015491)) (* (* (* 4 $n78815489) $p78915490) $q79015491)) (* (* $p78915490 $q79015491) $q79015491)) (* (* (* 4 $h79215493) $q79015491) $r79115492)) (* (* (* 4 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (+ (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $n78815489) (* (* (* 4 $h79215493) $n78815489) $p78915490)) (* (* 4 (* $n78815489 $n78815489)) $q79015491)) (* (* $n78815489 $q79015491) $q79015491)) (* (* $h79215493 $h79215493) $r79115492)) (* (* (* 4 $h79215493) $p78915490) $r79115492)) (* (* (* 8 $n78815489) $q79015491) $r79115492)) (* (* $q79015491 $q79015491) $r79115492)) (* (* (* 4 $q79015491) $r79115492) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $p78915490 $p78915490) (* $n78815489 $q79015491)) (* $q79015491 $r79115492)) 0) 1 0)))))

; break $main_sum280
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (= $q79015491 1)
             (__VERIFIER_assert (ite (= (+ (- (* $p78915490 $p78915490) (* $n78815489 $q79015491)) (* $q79015491 $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (+ (- (* (* $h79215493 $h79215493) $p78915490) (* (* (* 4 $h79215493) $n78815489) $q79015491)) (* (* (* 4 $n78815489) $p78915490) $q79015491)) (* (* $p78915490 $q79015491) $q79015491)) (* (* (* 4 $h79215493) $q79015491) $r79115492)) (* (* (* 4 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (+ (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $n78815489) (* (* (* 4 $h79215493) $n78815489) $p78915490)) (* (* 4 (* $n78815489 $n78815489)) $q79015491)) (* (* $n78815489 $q79015491) $q79015491)) (* (* $h79215493 $h79215493) $r79115492)) (* (* (* 4 $h79215493) $p78915490) $r79115492)) (* (* (* 8 $n78815489) $q79015491) $r79115492)) (* (* $q79015491 $q79015491) $r79115492)) (* (* (* 4 $q79015491) $r79115492) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($main_sum280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))))

; if else
(assert
  (forall (($n78815489 Int) ($p78915490 Int) ($h79215493 Int) ($r79115492 Int) ($q79015491 Int))
    (=> (and (not (= $q79015491 1))
             (__VERIFIER_assert (ite (= (+ (- (* $p78915490 $p78915490) (* $n78815489 $q79015491)) (* $q79015491 $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (+ (- (* (* $h79215493 $h79215493) $p78915490) (* (* (* 4 $h79215493) $n78815489) $q79015491)) (* (* (* 4 $n78815489) $p78915490) $q79015491)) (* (* $p78915490 $q79015491) $q79015491)) (* (* (* 4 $h79215493) $q79015491) $r79115492)) (* (* (* 4 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (+ (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $n78815489) (* (* (* 4 $h79215493) $n78815489) $p78915490)) (* (* 4 (* $n78815489 $n78815489)) $q79015491)) (* (* $n78815489 $q79015491) $q79015491)) (* (* $h79215493 $h79215493) $r79115492)) (* (* (* 4 $h79215493) $p78915490) $r79115492)) (* (* (* 8 $n78815489) $q79015491) $r79115492)) (* (* $q79015491 $q79015491) $r79115492)) (* (* (* 4 $q79015491) $r79115492) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (+ (- (* (* $h79215493 $h79215493) $h79215493) (* (* (* 12 $h79215493) $n78815489) $q79015491)) (* (* (* 16 $n78815489) $p78915490) $q79015491)) (* (* $h79215493 $q79015491) $q79015491)) (* (* (* 4 $p78915490) $q79015491) $q79015491)) (* (* (* 12 $h79215493) $q79015491) $r79115492)) (* (* (* 16 $p78915490) $q79015491) $r79115492)) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (* $p78915490 $p78915490) (* $r79115492 $q79015491)) (* $n78815489 $q79015491)) 1 0))
             (__VERIFIER_assert (ite (< $r79115492 (+ (* 2 $p78915490) $q79015491)) 1 0))
             (not (= 1 0))
             ($main_inv280 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))
        ($main_if733 $n78815489 $p78915490 $q79015491 $r79115492 $h79215493))))

; if then
(assert
  (forall (($h79215498 Int) ($p78915495 Int) ($r79115497 Int) ($q79015496 Int) ($n78815494 Int))
    (=> (and (>= $r79115497 (+ $p78915495 (div $q79015496 4)))
             ($main_if733 $n78815494 $p78915495 $q79015496 $r79115497 $h79215498))
        ($main_if734 $n78815494 (+ (div $p78915495 2) (div $q79015496 4)) (div $q79015496 4) (- $r79115497 (+ $p78915495 (div $q79015496 4))) (+ $p78915495 (div $q79015496 4))))))

; if else
(assert
  (forall (($h79215498 Int) ($p78915495 Int) ($r79115497 Int) ($q79015496 Int) ($n78815494 Int))
    (=> (and (not (>= $r79115497 (+ $p78915495 (div $q79015496 4))))
             ($main_if733 $n78815494 $p78915495 $q79015496 $r79115497 $h79215498))
        ($main_if734 $n78815494 (div $p78915495 2) (div $q79015496 4) $r79115497 (+ $p78915495 (div $q79015496 4))))))

; forwards $main_inv280
(assert
  (forall (($r79115502 Int) ($n78815499 Int) ($q79015501 Int) ($h79215503 Int) ($p78915500 Int))
    (=> (and ($main_if734 $n78815499 $p78915500 $q79015501 $r79115502 $h79215503))
        ($main_inv280 $n78815499 $p78915500 $q79015501 $r79115502 $h79215503))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815504 Int) ($p78915505 Int) ($h79215508 Int) ($q79015506 Int) ($r79115507 Int))
    (=> (and ($main_sum280 $n78815504 $p78915505 $q79015506 $r79115507 $h79215508))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (+ (+ (- (* (* $h79215508 $h79215508) $h79215508) (* (* 12 $h79215508) $n78815504)) (* (* 16 $n78815504) $p78915505)) (* (* 12 $h79215508) $r79115507)) (* (* 16 $p78915505) $r79115507)) $h79215508) (* 4 $p78915505)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815504 Int) ($p78915505 Int) ($h79215508 Int) ($q79015506 Int) ($r79115507 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (- (- (+ (+ (- (* (* $h79215508 $h79215508) $h79215508) (* (* 12 $h79215508) $n78815504)) (* (* 16 $n78815504) $p78915505)) (* (* 12 $h79215508) $r79115507)) (* (* 16 $p78915505) $r79115507)) $h79215508) (* 4 $p78915505)) 0) 1 0))
             ($main_sum280 $n78815504 $p78915505 $q79015506 $r79115507 $h79215508))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $p78915505 $p78915505) $n78815504) $r79115507) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n78815504 Int) ($p78915505 Int) ($h79215508 Int) ($q79015506 Int) ($r79115507 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (* $p78915505 $p78915505) $n78815504) $r79115507) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (- (- (+ (+ (- (* (* $h79215508 $h79215508) $h79215508) (* (* 12 $h79215508) $n78815504)) (* (* 16 $n78815504) $p78915505)) (* (* 12 $h79215508) $r79115507)) (* (* 16 $p78915505) $r79115507)) $h79215508) (* 4 $p78915505)) 0) 1 0))
             ($main_sum280 $n78815504 $p78915505 $q79015506 $r79115507 $h79215508))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ (+ (- (* (* $h79215508 $h79215508) $p78915505) (* (* 4 $h79215508) $n78815504)) (* (* 4 $n78815504) $p78915505)) (* (* 4 $h79215508) $r79115507)) (* (* 4 $p78915505) $r79115507)) $p78915505) 0) 1 0)))))

(check-sat)
