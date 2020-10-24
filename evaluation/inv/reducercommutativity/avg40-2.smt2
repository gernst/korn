(set-logic HORN)

(declare-fun $avg_sum544 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if401 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $avg_inv544 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv546 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum545 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum546 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_inv545 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv544
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv544 x 0 0))))

; loop term $avg_sum544
(assert
  (forall ((x7522 (Array Int Int)) ($i8037523 Int) ($ret8047524 Int))
    (=> (and (not (< $i8037523 40))
             ($avg_inv544 x7522 $i8037523 $ret8047524))
        ($avg_sum544 x7522 $i8037523 $ret8047524))))

; forwards $avg_inv544
(assert
  (forall ((x7522 (Array Int Int)) ($i8037523 Int) ($ret8047524 Int))
    (=> (and (< $i8037523 40)
             ($avg_inv544 x7522 $i8037523 $ret8047524))
        ($avg_inv544 x7522 (+ $i8037523 1) (+ $ret8047524 (select x7522 $i8037523))))))

; post avg
(assert
  (forall ((x7525 (Array Int Int)) ($ret8047527 Int) ($i8037526 Int))
    (=> (and ($avg_sum544 x7525 $i8037526 $ret8047527))
        (avg x7525 (div $ret8047527 40)))))

; loop entry $main_inv545
(assert
  (forall (($i810 Int) ($temp806 Int) ($x805 (Array Int Int)) ($ret2808 Int) ($ret5809 Int) ($ret807 Int) ($i811 Int))
    (=> (and (= $i810 0))
        ($main_inv545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811))))

; loop term $main_sum545
(assert
  (forall (($temp8067529 Int) ($ret8077530 Int) ($i8117534 Int) ($ret58097532 Int) ($x8057528 (Array Int Int)) ($ret28087531 Int) ($i8107533 Int))
    (=> (and (not (< $i8107533 40))
             ($main_inv545 $x8057528 $temp8067529 $ret8077530 $ret28087531 $ret58097532 $i8107533 $i8117534))
        ($main_sum545 $x8057528 $temp8067529 $ret8077530 $ret28087531 $ret58097532 $i8107533 $i8117534))))

; forwards $main_inv545
(assert
  (forall (($temp8067529 Int) ($ret8077530 Int) ($i8117534 Int) ($ret58097532 Int) ($x8057528 (Array Int Int)) ($ret28087531 Int) ($i8107533 Int) ($int7535 Int))
    (=> (and (<= (- 2147483648) $int7535)
             (<= $int7535 2147483647)
             (< $i8107533 40)
             ($main_inv545 $x8057528 $temp8067529 $ret8077530 $ret28087531 $ret58097532 $i8107533 $i8117534))
        ($main_inv545 (store $x8057528 $i8107533 $int7535) $temp8067529 $ret8077530 $ret28087531 $ret58097532 (+ $i8107533 1) $i8117534))))

; avg precondition
(assert
  (forall (($x8057536 (Array Int Int)) ($i8117542 Int) ($ret8077538 Int) ($temp8067537 Int) ($i8107541 Int) ($ret28087539 Int) ($ret58097540 Int))
    (=> (and ($main_sum545 $x8057536 $temp8067537 $ret8077538 $ret28087539 $ret58097540 $i8107541 $i8117542))
        ($avg_pre $x8057536))))

; avg precondition
(assert
  (forall (($i8117542 Int) ($ret8077538 Int) ($temp8067537 Int) ($i8107541 Int) ($ret28087539 Int) ($ret58097540 Int) ($result7543 Int) ($x8057536 (Array Int Int)))
    (=> (and (avg $x8057536 $result7543)
             ($main_sum545 $x8057536 $temp8067537 $ret8077538 $ret28087539 $ret58097540 $i8107541 $i8117542))
        ($avg_pre (store (store $x8057536 0 (select $x8057536 1)) 1 (select $x8057536 0))))))

; loop entry $main_inv546
(assert
  (forall (($i8117542 Int) ($ret8077538 Int) ($temp8067537 Int) ($i8107541 Int) ($ret28087539 Int) ($ret58097540 Int) ($result7544 Int) ($result7543 Int) ($x8057536 (Array Int Int)))
    (=> (and (= $i8117542 0)
             (avg (store (store $x8057536 0 (select $x8057536 1)) 1 (select $x8057536 0)) $result7544)
             (avg $x8057536 $result7543)
             ($main_sum545 $x8057536 $temp8067537 $ret8077538 $ret28087539 $ret58097540 $i8107541 $i8117542))
        ($main_inv546 (store (store $x8057536 0 (select $x8057536 1)) 1 (select $x8057536 0)) (select (store (store $x8057536 0 (select $x8057536 1)) 1 (select $x8057536 0)) 0) $result7543 $result7544 $ret58097540 $i8107541 $i8117542))))

; loop term $main_sum546
(assert
  (forall (($ret28087548 Int) ($x8057545 (Array Int Int)) ($temp8067546 Int) ($ret8077547 Int) ($ret58097549 Int) ($i8107550 Int) ($i8117551 Int))
    (=> (and (not (< $i8117551 (- 40 1)))
             ($main_inv546 $x8057545 $temp8067546 $ret8077547 $ret28087548 $ret58097549 $i8107550 $i8117551))
        ($main_sum546 $x8057545 $temp8067546 $ret8077547 $ret28087548 $ret58097549 $i8107550 $i8117551))))

; forwards $main_inv546
(assert
  (forall (($ret28087548 Int) ($x8057545 (Array Int Int)) ($temp8067546 Int) ($ret8077547 Int) ($ret58097549 Int) ($i8107550 Int) ($i8117551 Int))
    (=> (and (< $i8117551 (- 40 1))
             ($main_inv546 $x8057545 $temp8067546 $ret8077547 $ret28087548 $ret58097549 $i8107550 $i8117551))
        ($main_inv546 (store $x8057545 $i8117551 (select $x8057545 (+ $i8117551 1))) $temp8067546 $ret8077547 $ret28087548 $ret58097549 $i8107550 (+ $i8117551 1)))))

; avg precondition
(assert
  (forall (($x8057552 (Array Int Int)) ($ret28087555 Int) ($i8117558 Int) ($i8107557 Int) ($ret8077554 Int) ($ret58097556 Int) ($temp8067553 Int))
    (=> (and ($main_sum546 $x8057552 $temp8067553 $ret8077554 $ret28087555 $ret58097556 $i8107557 $i8117558))
        ($avg_pre (store $x8057552 (- 40 1) $temp8067553)))))

; error
(assert
  (forall (($x8057552 (Array Int Int)) ($ret28087555 Int) ($i8117558 Int) ($i8107557 Int) ($ret8077554 Int) ($result7559 Int) ($ret58097556 Int) ($temp8067553 Int))
    (=> (and (or (not (= $ret8077554 $ret28087555)) (not (= $ret8077554 $result7559)))
             (avg (store $x8057552 (- 40 1) $temp8067553) $result7559)
             ($main_sum546 $x8057552 $temp8067553 $ret8077554 $ret28087555 $ret58097556 $i8107557 $i8117558))
        false)))

; if then
(assert
  (forall (($x8057552 (Array Int Int)) ($ret28087555 Int) ($i8117558 Int) ($i8107557 Int) ($ret8077554 Int) ($result7559 Int) ($ret58097556 Int) ($temp8067553 Int))
    (=> (and (or (not (= $ret8077554 $ret28087555)) (not (= $ret8077554 $result7559)))
             (avg (store $x8057552 (- 40 1) $temp8067553) $result7559)
             ($main_sum546 $x8057552 $temp8067553 $ret8077554 $ret28087555 $ret58097556 $i8107557 $i8117558))
        ($main_if401 (store $x8057552 (- 40 1) $temp8067553) $temp8067553 $ret8077554 $ret28087555 $result7559 $i8107557 $i8117558))))

; if else
(assert
  (forall (($x8057552 (Array Int Int)) ($ret28087555 Int) ($i8117558 Int) ($i8107557 Int) ($ret8077554 Int) ($result7559 Int) ($ret58097556 Int) ($temp8067553 Int))
    (=> (and (not (or (not (= $ret8077554 $ret28087555)) (not (= $ret8077554 $result7559))))
             (avg (store $x8057552 (- 40 1) $temp8067553) $result7559)
             ($main_sum546 $x8057552 $temp8067553 $ret8077554 $ret28087555 $ret58097556 $i8107557 $i8117558))
        ($main_if401 (store $x8057552 (- 40 1) $temp8067553) $temp8067553 $ret8077554 $ret28087555 $result7559 $i8107557 $i8117558))))

(check-sat)
