(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun $main_inv2 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $mapavg_sum1 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $mapavg_inv1 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if1 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum3 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum2 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv3 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapavg_inv1
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv1 x 0 0))))

; loop term $mapavg_sum1
(assert
  (forall ((x1 (Array Int Int)) ($i12 Int) ($ret23 Int))
    (=> (and (not (< $i12 100)))
        ($mapavg_sum1 x1 $i12 $ret23 x1 $i12 $ret23))))

; forwards $mapavg_inv1
(assert
  (forall ((x1 (Array Int Int)) ($i12 Int) ($ret23 Int))
    (=> (and (< $i12 100)
             ($mapavg_inv1 x1 $i12 $ret23))
        ($mapavg_inv1 x1 (+ $i12 1) (+ (+ $ret23 $i12) (select x1 $i12))))))

; backwards $mapavg_sum1
(assert
  (forall (($ret23 Int) ($ret26 Int) (x4 (Array Int Int)) ($i15 Int) (x1 (Array Int Int)) ($i12 Int))
    (=> (and ($mapavg_sum1 x1 (+ $i12 1) (+ (+ $ret23 $i12) (select x1 $i12)) x4 $i15 $ret26)
             (< $i12 100))
        ($mapavg_sum1 x1 $i12 $ret23 x4 $i15 $ret26))))

; post mapavg
(assert
  (forall ((x7 (Array Int Int)) ($ret29 Int) (x (Array Int Int)) ($i18 Int))
    (=> (and ($mapavg_sum1 x 0 0 x7 $i18 $ret29)
             ($mapavg_pre x))
        (mapavg x7 (div $ret29 100)))))

; loop entry $main_inv2
(assert
  (forall (($ret26 Int) ($i8 Int) ($ret5 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i9 Int) ($ret57 Int))
    (=> (and (= $i8 0))
        ($main_inv2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9))))

; loop term $main_sum2
(assert
  (forall (($i815 Int) ($x310 (Array Int Int)) ($ret2613 Int) ($ret5714 Int) ($i916 Int) ($temp411 Int) ($ret512 Int))
    (=> (and (not (< $i815 100)))
        ($main_sum2 $x310 $temp411 $ret512 $ret2613 $ret5714 $i815 $i916 $x310 $temp411 $ret512 $ret2613 $ret5714 $i815 $i916))))

; forwards $main_inv2
(assert
  (forall (($i815 Int) ($int17 Int) ($x310 (Array Int Int)) ($ret2613 Int) ($ret5714 Int) ($i916 Int) ($temp411 Int) ($ret512 Int))
    (=> (and (<= (- 2147483648) $int17)
             (<= $int17 2147483647)
             (< $i815 100)
             ($main_inv2 $x310 $temp411 $ret512 $ret2613 $ret5714 $i815 $i916))
        ($main_inv2 (store $x310 $i815 $int17) $temp411 $ret512 $ret2613 $ret5714 (+ $i815 1) $i916))))

; backwards $main_sum2
(assert
  (forall (($ret5722 Int) ($x318 (Array Int Int)) ($i815 Int) ($temp419 Int) ($int17 Int) ($ret520 Int) ($ret2621 Int) ($ret2613 Int) ($i823 Int) ($ret5714 Int) ($i916 Int) ($temp411 Int) ($ret512 Int) ($x310 (Array Int Int)) ($i924 Int))
    (=> (and ($main_sum2 (store $x310 $i815 $int17) $temp411 $ret512 $ret2613 $ret5714 (+ $i815 1) $i916 $x318 $temp419 $ret520 $ret2621 $ret5722 $i823 $i924)
             (<= (- 2147483648) $int17)
             (<= $int17 2147483647)
             (< $i815 100))
        ($main_sum2 $x310 $temp411 $ret512 $ret2613 $ret5714 $i815 $i916 $x318 $temp419 $ret520 $ret2621 $ret5722 $i823 $i924))))

; mapavg precondition
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($i8 Int) ($ret5729 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i830 Int) ($i9 Int) ($ret57 Int) ($temp426 Int) ($ret5 Int))
    (=> (and ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($mapavg_pre $x325))))

; mapavg precondition
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($i8 Int) ($ret5729 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i830 Int) ($ret57 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int))
    (=> (and (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($mapavg_pre (store (store $x325 0 (select $x325 1)) 1 (select $x325 0))))))

; loop entry $main_inv3
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($i8 Int) ($ret5729 Int) ($result33 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i830 Int) ($ret57 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int))
    (=> (and (= $i931 0)
             (mapavg (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) $result33)
             (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($main_inv3 (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) (select (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) 0) $result32 $result33 $ret5729 $i830 $i931))))

; loop term $main_sum3
(assert
  (forall (($i839 Int) ($i940 Int) ($ret5738 Int) ($ret2637 Int) ($temp435 Int) ($x334 (Array Int Int)) ($ret536 Int))
    (=> (and (not (< $i940 (- 100 1))))
        ($main_sum3 $x334 $temp435 $ret536 $ret2637 $ret5738 $i839 $i940 $x334 $temp435 $ret536 $ret2637 $ret5738 $i839 $i940))))

; forwards $main_inv3
(assert
  (forall (($i839 Int) ($i940 Int) ($ret5738 Int) ($ret2637 Int) ($temp435 Int) ($x334 (Array Int Int)) ($ret536 Int))
    (=> (and (< $i940 (- 100 1))
             ($main_inv3 $x334 $temp435 $ret536 $ret2637 $ret5738 $i839 $i940))
        ($main_inv3 (store $x334 $i940 (select $x334 (+ $i940 1))) $temp435 $ret536 $ret2637 $ret5738 $i839 (+ $i940 1)))))

; backwards $main_sum3
(assert
  (forall (($i839 Int) ($ret5745 Int) ($i940 Int) ($ret543 Int) ($temp442 Int) ($ret2644 Int) ($ret2637 Int) ($temp435 Int) ($x334 (Array Int Int)) ($ret536 Int) ($x341 (Array Int Int)) ($i846 Int) ($i947 Int) ($ret5738 Int))
    (=> (and ($main_sum3 (store $x334 $i940 (select $x334 (+ $i940 1))) $temp435 $ret536 $ret2637 $ret5738 $i839 (+ $i940 1) $x341 $temp442 $ret543 $ret2644 $ret5745 $i846 $i947)
             (< $i940 (- 100 1)))
        ($main_sum3 $x334 $temp435 $ret536 $ret2637 $ret5738 $i839 $i940 $x341 $temp442 $ret543 $ret2644 $ret5745 $i846 $i947))))

; mapavg precondition
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($i8 Int) ($ret5729 Int) ($ret550 Int) ($result33 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i954 Int) ($i830 Int) ($ret2651 Int) ($ret5752 Int) ($i853 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int) ($temp449 Int) ($ret57 Int) ($x348 (Array Int Int)))
    (=> (and ($main_sum3 (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) (select (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) 0) $result32 $result33 $ret5729 $i830 $i931 $x348 $temp449 $ret550 $ret2651 $ret5752 $i853 $i954)
             (= $i931 0)
             (mapavg (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) $result33)
             (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($mapavg_pre (store $x348 (- 100 1) $temp449)))))

; error
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($result55 Int) ($i8 Int) ($ret5729 Int) ($ret550 Int) ($result33 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i954 Int) ($i830 Int) ($ret2651 Int) ($ret5752 Int) ($i853 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int) ($temp449 Int) ($ret57 Int) ($x348 (Array Int Int)))
    (=> (and (or (not (= $ret550 $ret2651)) (not (= $ret550 $result55)))
             (mapavg (store $x348 (- 100 1) $temp449) $result55)
             ($main_sum3 (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) (select (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) 0) $result32 $result33 $ret5729 $i830 $i931 $x348 $temp449 $ret550 $ret2651 $ret5752 $i853 $i954)
             (= $i931 0)
             (mapavg (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) $result33)
             (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        false)))

; if then
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($result55 Int) ($i8 Int) ($ret5729 Int) ($ret550 Int) ($result33 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i954 Int) ($i830 Int) ($ret2651 Int) ($ret5752 Int) ($i853 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int) ($temp449 Int) ($ret57 Int) ($x348 (Array Int Int)))
    (=> (and (or (not (= $ret550 $ret2651)) (not (= $ret550 $result55)))
             (mapavg (store $x348 (- 100 1) $temp449) $result55)
             ($main_sum3 (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) (select (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) 0) $result32 $result33 $ret5729 $i830 $i931 $x348 $temp449 $ret550 $ret2651 $ret5752 $i853 $i954)
             (= $i931 0)
             (mapavg (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) $result33)
             (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($main_if1 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 (store $x348 (- 100 1) $temp449) $temp449 $ret550 $ret2651 $result55 $i853 $i954))))

; if else
(assert
  (forall (($ret527 Int) ($x325 (Array Int Int)) ($ret26 Int) ($ret2628 Int) ($i931 Int) ($result55 Int) ($i8 Int) ($ret5729 Int) ($ret550 Int) ($result33 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i954 Int) ($i830 Int) ($ret2651 Int) ($ret5752 Int) ($i853 Int) ($temp426 Int) ($ret5 Int) ($i9 Int) ($result32 Int) ($temp449 Int) ($ret57 Int) ($x348 (Array Int Int)))
    (=> (and (not (or (not (= $ret550 $ret2651)) (not (= $ret550 $result55))))
             (mapavg (store $x348 (- 100 1) $temp449) $result55)
             ($main_sum3 (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) (select (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) 0) $result32 $result33 $ret5729 $i830 $i931 $x348 $temp449 $ret550 $ret2651 $ret5752 $i853 $i954)
             (= $i931 0)
             (mapavg (store (store $x325 0 (select $x325 1)) 1 (select $x325 0)) $result33)
             (mapavg $x325 $result32)
             ($main_sum2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 $x325 $temp426 $ret527 $ret2628 $ret5729 $i830 $i931)
             (= $i8 0))
        ($main_if1 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9 (store $x348 (- 100 1) $temp449) $temp449 $ret550 $ret2651 $result55 $i853 $i954))))

(check-sat)
