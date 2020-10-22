(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun $main_inv2 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $mapavg_inv1 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if1 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum3 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum1 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum2 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv3 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapavg_inv1
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv1 x 0 0))))

; loop term $mapavg_sum1
(assert
  (forall ((x1 (Array Int Int)) ($i12 Int) ($ret23 Int))
    (=> (and (not (< $i12 100))
             ($mapavg_inv1 x1 $i12 $ret23))
        ($mapavg_sum1 x1 $i12 $ret23))))

; forwards $mapavg_inv1
(assert
  (forall ((x1 (Array Int Int)) ($i12 Int) ($ret23 Int))
    (=> (and (< $i12 100)
             ($mapavg_inv1 x1 $i12 $ret23))
        ($mapavg_inv1 x1 (+ $i12 1) (+ (+ $ret23 $i12) (select x1 $i12))))))

; post mapavg
(assert
  (forall ((x4 (Array Int Int)) ($ret26 Int) ($i15 Int))
    (=> (and ($mapavg_sum1 x4 $i15 $ret26))
        (mapavg x4 (div $ret26 100)))))

; loop entry $main_inv2
(assert
  (forall (($ret26 Int) ($i8 Int) ($ret5 Int) ($temp4 Int) ($x3 (Array Int Int)) ($i9 Int) ($ret57 Int))
    (=> (and (= $i8 0))
        ($main_inv2 $x3 $temp4 $ret5 $ret26 $ret57 $i8 $i9))))

; loop term $main_sum2
(assert
  (forall (($i913 Int) ($temp48 Int) ($i812 Int) ($ret2610 Int) ($ret5711 Int) ($x37 (Array Int Int)) ($ret59 Int))
    (=> (and (not (< $i812 100))
             ($main_inv2 $x37 $temp48 $ret59 $ret2610 $ret5711 $i812 $i913))
        ($main_sum2 $x37 $temp48 $ret59 $ret2610 $ret5711 $i812 $i913))))

; forwards $main_inv2
(assert
  (forall (($i913 Int) ($temp48 Int) ($int14 Int) ($i812 Int) ($ret2610 Int) ($ret5711 Int) ($x37 (Array Int Int)) ($ret59 Int))
    (=> (and (<= (- 2147483648) $int14)
             (<= $int14 2147483647)
             (< $i812 100)
             ($main_inv2 $x37 $temp48 $ret59 $ret2610 $ret5711 $i812 $i913))
        ($main_inv2 (store $x37 $i812 $int14) $temp48 $ret59 $ret2610 $ret5711 (+ $i812 1) $i913))))

; mapavg precondition
(assert
  (forall (($ret2618 Int) ($temp416 Int) ($ret5719 Int) ($x315 (Array Int Int)) ($ret517 Int) ($i820 Int) ($i921 Int))
    (=> (and ($main_sum2 $x315 $temp416 $ret517 $ret2618 $ret5719 $i820 $i921))
        ($mapavg_pre $x315))))

; mapavg precondition
(assert
  (forall (($ret2618 Int) ($ret5719 Int) ($x315 (Array Int Int)) ($ret517 Int) ($i820 Int) ($i921 Int) ($result22 Int) ($temp416 Int))
    (=> (and (mapavg $x315 $result22)
             ($main_sum2 $x315 $temp416 $ret517 $ret2618 $ret5719 $i820 $i921))
        ($mapavg_pre (store (store $x315 0 (select $x315 1)) 1 (select $x315 0))))))

; loop entry $main_inv3
(assert
  (forall (($result23 Int) ($ret2618 Int) ($ret5719 Int) ($x315 (Array Int Int)) ($ret517 Int) ($i820 Int) ($i921 Int) ($result22 Int) ($temp416 Int))
    (=> (and (= $i921 0)
             (mapavg (store (store $x315 0 (select $x315 1)) 1 (select $x315 0)) $result23)
             (mapavg $x315 $result22)
             ($main_sum2 $x315 $temp416 $ret517 $ret2618 $ret5719 $i820 $i921))
        ($main_inv3 (store (store $x315 0 (select $x315 1)) 1 (select $x315 0)) (select (store (store $x315 0 (select $x315 1)) 1 (select $x315 0)) 0) $result22 $result23 $ret5719 $i820 $i921))))

; loop term $main_sum3
(assert
  (forall (($ret2627 Int) ($ret5728 Int) ($i829 Int) ($x324 (Array Int Int)) ($ret526 Int) ($temp425 Int) ($i930 Int))
    (=> (and (not (< $i930 (- 100 1)))
             ($main_inv3 $x324 $temp425 $ret526 $ret2627 $ret5728 $i829 $i930))
        ($main_sum3 $x324 $temp425 $ret526 $ret2627 $ret5728 $i829 $i930))))

; forwards $main_inv3
(assert
  (forall (($ret2627 Int) ($ret5728 Int) ($i829 Int) ($x324 (Array Int Int)) ($ret526 Int) ($temp425 Int) ($i930 Int))
    (=> (and (< $i930 (- 100 1))
             ($main_inv3 $x324 $temp425 $ret526 $ret2627 $ret5728 $i829 $i930))
        ($main_inv3 (store $x324 $i930 (select $x324 (+ $i930 1))) $temp425 $ret526 $ret2627 $ret5728 $i829 (+ $i930 1)))))

; mapavg precondition
(assert
  (forall (($x331 (Array Int Int)) ($i937 Int) ($i836 Int) ($ret2634 Int) ($ret5735 Int) ($ret533 Int) ($temp432 Int))
    (=> (and ($main_sum3 $x331 $temp432 $ret533 $ret2634 $ret5735 $i836 $i937))
        ($mapavg_pre (store $x331 (- 100 1) $temp432)))))

; error
(assert
  (forall (($result38 Int) ($x331 (Array Int Int)) ($i937 Int) ($i836 Int) ($ret2634 Int) ($ret5735 Int) ($ret533 Int) ($temp432 Int))
    (=> (and (or (not (= $ret533 $ret2634)) (not (= $ret533 $result38)))
             (mapavg (store $x331 (- 100 1) $temp432) $result38)
             ($main_sum3 $x331 $temp432 $ret533 $ret2634 $ret5735 $i836 $i937))
        false)))

; if then
(assert
  (forall (($result38 Int) ($x331 (Array Int Int)) ($i937 Int) ($i836 Int) ($ret2634 Int) ($ret5735 Int) ($ret533 Int) ($temp432 Int))
    (=> (and (or (not (= $ret533 $ret2634)) (not (= $ret533 $result38)))
             (mapavg (store $x331 (- 100 1) $temp432) $result38)
             ($main_sum3 $x331 $temp432 $ret533 $ret2634 $ret5735 $i836 $i937))
        ($main_if1 (store $x331 (- 100 1) $temp432) $temp432 $ret533 $ret2634 $result38 $i836 $i937))))

; if else
(assert
  (forall (($result38 Int) ($x331 (Array Int Int)) ($i937 Int) ($i836 Int) ($ret2634 Int) ($ret5735 Int) ($ret533 Int) ($temp432 Int))
    (=> (and (not (or (not (= $ret533 $ret2634)) (not (= $ret533 $result38))))
             (mapavg (store $x331 (- 100 1) $temp432) $result38)
             ($main_sum3 $x331 $temp432 $ret533 $ret2634 $ret5735 $i836 $i937))
        ($main_if1 (store $x331 (- 100 1) $temp432) $temp432 $ret533 $ret2634 $result38 $i836 $i937))))

(check-sat)
