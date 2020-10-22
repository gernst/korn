(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $main_inv6 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum6 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum4 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum5 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if2 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_inv4 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv5 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapavg_inv4
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv4 x 0 0))))

; loop term $mapavg_sum4
(assert
  (forall ((x46 (Array Int Int)) ($i1047 Int) ($ret1148 Int))
    (=> (and (not (< $i1047 1000))
             ($mapavg_inv4 x46 $i1047 $ret1148))
        ($mapavg_sum4 x46 $i1047 $ret1148))))

; forwards $mapavg_inv4
(assert
  (forall ((x46 (Array Int Int)) ($i1047 Int) ($ret1148 Int))
    (=> (and (< $i1047 1000)
             ($mapavg_inv4 x46 $i1047 $ret1148))
        ($mapavg_inv4 x46 (+ $i1047 1) (+ (+ $ret1148 $i1047) (select x46 $i1047))))))

; post mapavg
(assert
  (forall ((x49 (Array Int Int)) ($ret1151 Int) ($i1050 Int))
    (=> (and ($mapavg_sum4 x49 $i1050 $ret1151))
        (mapavg x49 (div $ret1151 1000)))))

; loop entry $main_inv5
(assert
  (forall (($i17 Int) ($ret14 Int) ($temp13 Int) ($i18 Int) ($ret215 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (= $i17 0))
        ($main_inv5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18))))

; loop term $main_sum5
(assert
  (forall (($ret21555 Int) ($i1757 Int) ($ret1454 Int) ($x1252 (Array Int Int)) ($temp1353 Int) ($i1858 Int) ($ret51656 Int))
    (=> (and (not (< $i1757 1000))
             ($main_inv5 $x1252 $temp1353 $ret1454 $ret21555 $ret51656 $i1757 $i1858))
        ($main_sum5 $x1252 $temp1353 $ret1454 $ret21555 $ret51656 $i1757 $i1858))))

; forwards $main_inv5
(assert
  (forall (($ret21555 Int) ($i1757 Int) ($ret1454 Int) ($x1252 (Array Int Int)) ($int59 Int) ($temp1353 Int) ($i1858 Int) ($ret51656 Int))
    (=> (and (<= (- 2147483648) $int59)
             (<= $int59 2147483647)
             (< $i1757 1000)
             ($main_inv5 $x1252 $temp1353 $ret1454 $ret21555 $ret51656 $i1757 $i1858))
        ($main_inv5 (store $x1252 $i1757 $int59) $temp1353 $ret1454 $ret21555 $ret51656 (+ $i1757 1) $i1858))))

; mapavg precondition
(assert
  (forall (($x1260 (Array Int Int)) ($temp1361 Int) ($i1765 Int) ($ret51664 Int) ($i1866 Int) ($ret1462 Int) ($ret21563 Int))
    (=> (and ($main_sum5 $x1260 $temp1361 $ret1462 $ret21563 $ret51664 $i1765 $i1866))
        ($mapavg_pre $x1260))))

; mapavg precondition
(assert
  (forall (($x1260 (Array Int Int)) ($temp1361 Int) ($result67 Int) ($i1765 Int) ($ret51664 Int) ($i1866 Int) ($ret1462 Int) ($ret21563 Int))
    (=> (and (mapavg $x1260 $result67)
             ($main_sum5 $x1260 $temp1361 $ret1462 $ret21563 $ret51664 $i1765 $i1866))
        ($mapavg_pre (store (store $x1260 0 (select $x1260 1)) 1 (select $x1260 0))))))

; loop entry $main_inv6
(assert
  (forall (($x1260 (Array Int Int)) ($temp1361 Int) ($i1765 Int) ($ret51664 Int) ($i1866 Int) ($ret1462 Int) ($ret21563 Int) ($result68 Int) ($result67 Int))
    (=> (and (= $i1866 0)
             (mapavg (store (store $x1260 0 (select $x1260 1)) 1 (select $x1260 0)) $result68)
             (mapavg $x1260 $result67)
             ($main_sum5 $x1260 $temp1361 $ret1462 $ret21563 $ret51664 $i1765 $i1866))
        ($main_inv6 (store (store $x1260 0 (select $x1260 1)) 1 (select $x1260 0)) (select (store (store $x1260 0 (select $x1260 1)) 1 (select $x1260 0)) 0) $result67 $result68 $ret51664 $i1765 $i1866))))

; loop term $main_sum6
(assert
  (forall (($ret51673 Int) ($i1875 Int) ($ret1471 Int) ($ret21572 Int) ($x1269 (Array Int Int)) ($i1774 Int) ($temp1370 Int))
    (=> (and (not (< $i1875 (- 1000 1)))
             ($main_inv6 $x1269 $temp1370 $ret1471 $ret21572 $ret51673 $i1774 $i1875))
        ($main_sum6 $x1269 $temp1370 $ret1471 $ret21572 $ret51673 $i1774 $i1875))))

; forwards $main_inv6
(assert
  (forall (($ret51673 Int) ($i1875 Int) ($ret1471 Int) ($ret21572 Int) ($x1269 (Array Int Int)) ($i1774 Int) ($temp1370 Int))
    (=> (and (< $i1875 (- 1000 1))
             ($main_inv6 $x1269 $temp1370 $ret1471 $ret21572 $ret51673 $i1774 $i1875))
        ($main_inv6 (store $x1269 $i1875 (select $x1269 (+ $i1875 1))) $temp1370 $ret1471 $ret21572 $ret51673 $i1774 (+ $i1875 1)))))

; mapavg precondition
(assert
  (forall (($i1882 Int) ($x1276 (Array Int Int)) ($ret1478 Int) ($ret21579 Int) ($i1781 Int) ($ret51680 Int) ($temp1377 Int))
    (=> (and ($main_sum6 $x1276 $temp1377 $ret1478 $ret21579 $ret51680 $i1781 $i1882))
        ($mapavg_pre (store $x1276 (- 1000 1) $temp1377)))))

; error
(assert
  (forall (($result83 Int) ($i1882 Int) ($x1276 (Array Int Int)) ($ret1478 Int) ($ret21579 Int) ($i1781 Int) ($ret51680 Int) ($temp1377 Int))
    (=> (and (or (not (= $ret1478 $ret21579)) (not (= $ret1478 $result83)))
             (mapavg (store $x1276 (- 1000 1) $temp1377) $result83)
             ($main_sum6 $x1276 $temp1377 $ret1478 $ret21579 $ret51680 $i1781 $i1882))
        false)))

; if then
(assert
  (forall (($result83 Int) ($i1882 Int) ($x1276 (Array Int Int)) ($ret1478 Int) ($ret21579 Int) ($i1781 Int) ($ret51680 Int) ($temp1377 Int))
    (=> (and (or (not (= $ret1478 $ret21579)) (not (= $ret1478 $result83)))
             (mapavg (store $x1276 (- 1000 1) $temp1377) $result83)
             ($main_sum6 $x1276 $temp1377 $ret1478 $ret21579 $ret51680 $i1781 $i1882))
        ($main_if2 (store $x1276 (- 1000 1) $temp1377) $temp1377 $ret1478 $ret21579 $result83 $i1781 $i1882))))

; if else
(assert
  (forall (($result83 Int) ($i1882 Int) ($x1276 (Array Int Int)) ($ret1478 Int) ($ret21579 Int) ($i1781 Int) ($ret51680 Int) ($temp1377 Int))
    (=> (and (not (or (not (= $ret1478 $ret21579)) (not (= $ret1478 $result83))))
             (mapavg (store $x1276 (- 1000 1) $temp1377) $result83)
             ($main_sum6 $x1276 $temp1377 $ret1478 $ret21579 $ret51680 $i1781 $i1882))
        ($main_if2 (store $x1276 (- 1000 1) $temp1377) $temp1377 $ret1478 $ret21579 $result83 $i1781 $i1882))))

(check-sat)
