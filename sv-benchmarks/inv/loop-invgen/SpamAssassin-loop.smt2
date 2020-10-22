(set-logic HORN)

(declare-fun $assume_abort_if_not_if269 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_ELSE (Int Int Int Int Int) Bool)
(declare-fun $main_if272 (Int Int Int Int Int) Bool)
(declare-fun $main_if273 (Int Int Int Int Int) Bool)
(declare-fun $main_inv482 (Int Int Int Int Int) Bool)
(declare-fun $main_if271 (Int Int Int Int Int) Bool)
(declare-fun $main_sum482 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if270 (Int) Bool)
(declare-fun $main_inv481 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum481 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if269 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6547 Int))
    (=> (and ($assume_abort_if_not_if269 cond6547))
        (assume_abort_if_not cond6547))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6548 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6548))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if270 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6549 Int))
    (=> (and ($__VERIFIER_assert_if270 cond6549))
        (__VERIFIER_assert cond6549))))

; if else
(assert
  (forall (($limit652 Int) ($len648 Int) ($i649 Int) ($int6550 Int) ($j650 Int))
    (=> (and (not (< $int6550 0))
             (<= (- 2147483648) $int6550)
             (<= $int6550 2147483647))
        ($main_if271 $len648 $i649 $j650 $int6550 $limit652))))

; loop entry $main_inv481
(assert
  (forall (($int6556 Int) ($bufsize6516554 Int) ($i6496552 Int) ($limit6526555 Int) ($j6506553 Int) ($len6486551 Int))
    (=> (and (= $limit6526555 (- $bufsize6516554 4))
             (<= (- 2147483648) $int6556)
             (<= $int6556 2147483647)
             ($main_if271 $len6486551 $i6496552 $j6506553 $bufsize6516554 $limit6526555))
        ($main_inv481 $int6556 0 $j6506553 $bufsize6516554 $limit6526555))))

; loop term $main_sum481
(assert
  (forall (($len6486557 Int) ($j6506559 Int) ($limit6526561 Int) ($bufsize6516560 Int) ($i6496558 Int))
    (=> (and (not (< $i6496558 $len6486557))
             ($main_inv481 $len6486557 $i6496558 $j6506559 $bufsize6516560 $limit6526561))
        ($main_sum481 $len6486557 $i6496558 $j6506559 $bufsize6516560 $limit6526561))))

; loop entry $main_inv482
(assert
  (forall (($len6486557 Int) ($j6506559 Int) ($limit6526561 Int) ($bufsize6516560 Int) ($i6496558 Int))
    (=> (and (< $i6496558 $len6486557)
             ($main_inv481 $len6486557 $i6496558 $j6506559 $bufsize6516560 $limit6526561))
        ($main_inv482 $len6486557 $i6496558 0 $bufsize6516560 $limit6526561))))

; loop term $main_sum482
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (not (and (< $i6496563 $len6486562) (< $j6506564 $limit6526566)))
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($main_sum482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (< (+ $i6496563 1) $len6486562)
             (< $i6496563 $len6486562)
             (< $j6506564 $limit6526566)
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($__VERIFIER_assert_pre (ite (< (+ $i6496563 1) $len6486562) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $i6496563 1) $len6486562) 1 0))
             (< (+ $i6496563 1) $len6486562)
             (< $i6496563 $len6486562)
             (< $j6506564 $limit6526566)
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6496563) 1 0)))))

; goto ELSE
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($int6567 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (not (= $int6567 0))
             (<= (- 2147483648) $int6567)
             (<= $int6567 2147483647)
             (__VERIFIER_assert (ite (<= 0 $i6496563) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496563 1) $len6486562) 1 0))
             (< (+ $i6496563 1) $len6486562)
             (< $i6496563 $len6486562)
             (< $j6506564 $limit6526566)
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($main_ELSE $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))))

; if else
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($int6567 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (= $int6567 0)
             (<= (- 2147483648) $int6567)
             (<= $int6567 2147483647)
             (__VERIFIER_assert (ite (<= 0 $i6496563) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496563 1) $len6486562) 1 0))
             (< (+ $i6496563 1) $len6486562)
             (< $i6496563 $len6486562)
             (< $j6506564 $limit6526566)
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($main_if272 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (< $i6496569 $len6486568) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6496569) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (< $j6506570 $bufsize6516571) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6506570) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (< (+ $i6496569 1) $len6486568) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $i6496569 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $i6496569 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (< (+ $j6506570 1) $bufsize6516571) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $j6506570 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6496569 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $j6506570 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $j6506570 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6506570 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6496569 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (< (+ (+ $j6506570 1) 1) $bufsize6516571) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ (+ $j6506570 1) 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $j6506570 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6506570 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6496569 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ (+ $j6506570 1) 1)) 1 0)))))

; label ELSE
(assert
  (forall (($len6486562 Int) ($j6506564 Int) ($bufsize6516565 Int) ($limit6526566 Int) ($i6496563 Int))
    (=> (and (not (< (+ $i6496563 1) $len6486562))
             (< $i6496563 $len6486562)
             (< $j6506564 $limit6526566)
             ($main_inv482 $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))
        ($main_ELSE $len6486562 $i6496563 $j6506564 $bufsize6516565 $limit6526566))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6516576 Int) ($len6486573 Int) ($i6496574 Int) ($j6506575 Int) ($limit6526577 Int))
    (=> (and ($main_ELSE $len6486573 $i6496574 $j6506575 $bufsize6516576 $limit6526577))
        ($__VERIFIER_assert_pre (ite (< $i6496574 $len6486573) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6516576 Int) ($len6486573 Int) ($i6496574 Int) ($j6506575 Int) ($limit6526577 Int))
    (=> (and (__VERIFIER_assert (ite (< $i6496574 $len6486573) 1 0))
             ($main_ELSE $len6486573 $i6496574 $j6506575 $bufsize6516576 $limit6526577))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6496574) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6516576 Int) ($len6486573 Int) ($i6496574 Int) ($j6506575 Int) ($limit6526577 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $i6496574) 1 0))
             (__VERIFIER_assert (ite (< $i6496574 $len6486573) 1 0))
             ($main_ELSE $len6486573 $i6496574 $j6506575 $bufsize6516576 $limit6526577))
        ($__VERIFIER_assert_pre (ite (< $j6506575 $bufsize6516576) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6516576 Int) ($len6486573 Int) ($i6496574 Int) ($j6506575 Int) ($limit6526577 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6506575 $bufsize6516576) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496574) 1 0))
             (__VERIFIER_assert (ite (< $i6496574 $len6486573) 1 0))
             ($main_ELSE $len6486573 $i6496574 $j6506575 $bufsize6516576 $limit6526577))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6506575) 1 0)))))

; if then
(assert
  (forall (($len6486568 Int) ($i6496569 Int) ($j6506570 Int) ($limit6526572 Int) ($bufsize6516571 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ (+ $j6506570 1) 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ (+ $j6506570 1) 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $j6506570 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6506570 1) $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6496569 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6496569 1) $len6486568) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6506570) 1 0))
             (__VERIFIER_assert (ite (< $j6506570 $bufsize6516571) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496569) 1 0))
             (__VERIFIER_assert (ite (< $i6496569 $len6486568) 1 0))
             ($main_if272 $len6486568 $i6496569 $j6506570 $bufsize6516571 $limit6526572))
        ($main_if273 $len6486568 (+ (+ $i6496569 1) 1) (+ (+ (+ $j6506570 1) 1) 1) $bufsize6516571 $limit6526572))))

; if else
(assert
  (forall (($bufsize6516576 Int) ($len6486573 Int) ($i6496574 Int) ($j6506575 Int) ($limit6526577 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6506575) 1 0))
             (__VERIFIER_assert (ite (< $j6506575 $bufsize6516576) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6496574) 1 0))
             (__VERIFIER_assert (ite (< $i6496574 $len6486573) 1 0))
             ($main_ELSE $len6486573 $i6496574 $j6506575 $bufsize6516576 $limit6526577))
        ($main_if273 $len6486573 (+ $i6496574 1) (+ $j6506575 1) $bufsize6516576 $limit6526577))))

; forwards $main_inv482
(assert
  (forall (($bufsize6516581 Int) ($len6486578 Int) ($j6506580 Int) ($i6496579 Int) ($limit6526582 Int))
    (=> (and ($main_if273 $len6486578 $i6496579 $j6506580 $bufsize6516581 $limit6526582))
        ($main_inv482 $len6486578 $i6496579 $j6506580 $bufsize6516581 $limit6526582))))

; forwards $main_inv481
(assert
  (forall (($len6486583 Int) ($j6506585 Int) ($bufsize6516586 Int) ($i6496584 Int) ($limit6526587 Int))
    (=> (and ($main_sum482 $len6486583 $i6496584 $j6506585 $bufsize6516586 $limit6526587))
        ($main_inv481 $len6486583 $i6496584 $j6506585 $bufsize6516586 $limit6526587))))

(check-sat)
