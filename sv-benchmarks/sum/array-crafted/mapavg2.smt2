(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $main_inv6 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum5 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum6 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if2 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum4 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $mapavg_inv4 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv5 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapavg_inv4
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv4 x 0 0))))

; loop term $mapavg_sum4
(assert
  (forall ((x63 (Array Int Int)) ($i1064 Int) ($ret1165 Int))
    (=> (and (not (< $i1064 1000)))
        ($mapavg_sum4 x63 $i1064 $ret1165 x63 $i1064 $ret1165))))

; forwards $mapavg_inv4
(assert
  (forall ((x63 (Array Int Int)) ($i1064 Int) ($ret1165 Int))
    (=> (and (< $i1064 1000)
             ($mapavg_inv4 x63 $i1064 $ret1165))
        ($mapavg_inv4 x63 (+ $i1064 1) (+ (+ $ret1165 $i1064) (select x63 $i1064))))))

; backwards $mapavg_sum4
(assert
  (forall ((x63 (Array Int Int)) ($i1064 Int) ($i1067 Int) (x66 (Array Int Int)) ($ret1165 Int) ($ret1168 Int))
    (=> (and ($mapavg_sum4 x63 (+ $i1064 1) (+ (+ $ret1165 $i1064) (select x63 $i1064)) x66 $i1067 $ret1168)
             (< $i1064 1000))
        ($mapavg_sum4 x63 $i1064 $ret1165 x66 $i1067 $ret1168))))

; post mapavg
(assert
  (forall ((x69 (Array Int Int)) ($ret1171 Int) (x (Array Int Int)) ($i1070 Int))
    (=> (and ($mapavg_sum4 x 0 0 x69 $i1070 $ret1171)
             ($mapavg_pre x))
        (mapavg x69 (div $ret1171 1000)))))

; loop entry $main_inv5
(assert
  (forall (($i17 Int) ($ret14 Int) ($temp13 Int) ($i18 Int) ($ret215 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (= $i17 0))
        ($main_inv5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18))))

; loop term $main_sum5
(assert
  (forall (($temp1373 Int) ($i1777 Int) ($ret21575 Int) ($x1272 (Array Int Int)) ($i1878 Int) ($ret51676 Int) ($ret1474 Int))
    (=> (and (not (< $i1777 1000)))
        ($main_sum5 $x1272 $temp1373 $ret1474 $ret21575 $ret51676 $i1777 $i1878 $x1272 $temp1373 $ret1474 $ret21575 $ret51676 $i1777 $i1878))))

; forwards $main_inv5
(assert
  (forall (($i1777 Int) ($ret21575 Int) ($temp1373 Int) ($int79 Int) ($x1272 (Array Int Int)) ($i1878 Int) ($ret51676 Int) ($ret1474 Int))
    (=> (and (<= (- 2147483648) $int79)
             (<= $int79 2147483647)
             (< $i1777 1000)
             ($main_inv5 $x1272 $temp1373 $ret1474 $ret21575 $ret51676 $i1777 $i1878))
        ($main_inv5 (store $x1272 $i1777 $int79) $temp1373 $ret1474 $ret21575 $ret51676 (+ $i1777 1) $i1878))))

; backwards $main_sum5
(assert
  (forall (($i1886 Int) ($ret1482 Int) ($ret21583 Int) ($i1777 Int) ($i1785 Int) ($temp1373 Int) ($int79 Int) ($x1272 (Array Int Int)) ($i1878 Int) ($ret51684 Int) ($ret51676 Int) ($ret1474 Int) ($ret21575 Int) ($temp1381 Int) ($x1280 (Array Int Int)))
    (=> (and ($main_sum5 (store $x1272 $i1777 $int79) $temp1373 $ret1474 $ret21575 $ret51676 (+ $i1777 1) $i1878 $x1280 $temp1381 $ret1482 $ret21583 $ret51684 $i1785 $i1886)
             (<= (- 2147483648) $int79)
             (<= $int79 2147483647)
             (< $i1777 1000))
        ($main_sum5 $x1272 $temp1373 $ret1474 $ret21575 $ret51676 $i1777 $i1878 $x1280 $temp1381 $ret1482 $ret21583 $ret51684 $i1785 $i1886))))

; mapavg precondition
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($i18 Int) ($ret215 Int) ($i1893 Int) ($i17 Int) ($ret21590 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($mapavg_pre $x1287))))

; mapavg precondition
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($i18 Int) ($ret215 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($ret21590 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($mapavg_pre (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0))))))

; loop entry $main_inv6
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($i18 Int) ($result95 Int) ($ret215 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($ret21590 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (= $i1893 0)
             (mapavg (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) $result95)
             (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($main_inv6 (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) (select (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) 0) $result94 $result95 $ret51691 $i1792 $i1893))))

; loop term $main_sum6
(assert
  (forall (($ret516100 Int) ($ret21599 Int) ($ret1498 Int) ($x1296 (Array Int Int)) ($i17101 Int) ($temp1397 Int) ($i18102 Int))
    (=> (and (not (< $i18102 (- 1000 1))))
        ($main_sum6 $x1296 $temp1397 $ret1498 $ret21599 $ret516100 $i17101 $i18102 $x1296 $temp1397 $ret1498 $ret21599 $ret516100 $i17101 $i18102))))

; forwards $main_inv6
(assert
  (forall (($ret516100 Int) ($ret21599 Int) ($ret1498 Int) ($x1296 (Array Int Int)) ($i17101 Int) ($temp1397 Int) ($i18102 Int))
    (=> (and (< $i18102 (- 1000 1))
             ($main_inv6 $x1296 $temp1397 $ret1498 $ret21599 $ret516100 $i17101 $i18102))
        ($main_inv6 (store $x1296 $i18102 (select $x1296 (+ $i18102 1))) $temp1397 $ret1498 $ret21599 $ret516100 $i17101 (+ $i18102 1)))))

; backwards $main_sum6
(assert
  (forall (($x12103 (Array Int Int)) ($ret14105 Int) ($ret516100 Int) ($ret1498 Int) ($i17108 Int) ($x1296 (Array Int Int)) ($temp1397 Int) ($i18109 Int) ($i18102 Int) ($ret516107 Int) ($ret215106 Int) ($ret21599 Int) ($temp13104 Int) ($i17101 Int))
    (=> (and ($main_sum6 (store $x1296 $i18102 (select $x1296 (+ $i18102 1))) $temp1397 $ret1498 $ret21599 $ret516100 $i17101 (+ $i18102 1) $x12103 $temp13104 $ret14105 $ret215106 $ret516107 $i17108 $i18109)
             (< $i18102 (- 1000 1)))
        ($main_sum6 $x1296 $temp1397 $ret1498 $ret21599 $ret516100 $i17101 $i18102 $x12103 $temp13104 $ret14105 $ret215106 $ret516107 $i17108 $i18109))))

; mapavg precondition
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($i18 Int) ($x12110 (Array Int Int)) ($ret516114 Int) ($ret215 Int) ($temp13111 Int) ($ret215113 Int) ($ret14112 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($result95 Int) ($i18116 Int) ($ret21590 Int) ($i17115 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and ($main_sum6 (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) (select (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) 0) $result94 $result95 $ret51691 $i1792 $i1893 $x12110 $temp13111 $ret14112 $ret215113 $ret516114 $i17115 $i18116)
             (= $i1893 0)
             (mapavg (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) $result95)
             (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($mapavg_pre (store $x12110 (- 1000 1) $temp13111)))))

; error
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($x12110 (Array Int Int)) ($ret516114 Int) ($ret215 Int) ($temp13111 Int) ($ret215113 Int) ($ret14112 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($i18 Int) ($result117 Int) ($result95 Int) ($i18116 Int) ($ret21590 Int) ($i17115 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (or (not (= $ret14112 $ret215113)) (not (= $ret14112 $result117)))
             (mapavg (store $x12110 (- 1000 1) $temp13111) $result117)
             ($main_sum6 (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) (select (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) 0) $result94 $result95 $ret51691 $i1792 $i1893 $x12110 $temp13111 $ret14112 $ret215113 $ret516114 $i17115 $i18116)
             (= $i1893 0)
             (mapavg (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) $result95)
             (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        false)))

; if then
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($x12110 (Array Int Int)) ($ret516114 Int) ($ret215 Int) ($temp13111 Int) ($ret215113 Int) ($ret14112 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($i18 Int) ($result117 Int) ($result95 Int) ($i18116 Int) ($ret21590 Int) ($i17115 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (or (not (= $ret14112 $ret215113)) (not (= $ret14112 $result117)))
             (mapavg (store $x12110 (- 1000 1) $temp13111) $result117)
             ($main_sum6 (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) (select (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) 0) $result94 $result95 $ret51691 $i1792 $i1893 $x12110 $temp13111 $ret14112 $ret215113 $ret516114 $i17115 $i18116)
             (= $i1893 0)
             (mapavg (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) $result95)
             (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($main_if2 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 (store $x12110 (- 1000 1) $temp13111) $temp13111 $ret14112 $ret215113 $result117 $i17115 $i18116))))

; if else
(assert
  (forall (($ret1489 Int) ($ret51691 Int) ($ret14 Int) ($i1792 Int) ($x1287 (Array Int Int)) ($temp13 Int) ($temp1388 Int) ($x12110 (Array Int Int)) ($ret516114 Int) ($ret215 Int) ($temp13111 Int) ($ret215113 Int) ($ret14112 Int) ($result94 Int) ($i1893 Int) ($i17 Int) ($i18 Int) ($result117 Int) ($result95 Int) ($i18116 Int) ($ret21590 Int) ($i17115 Int) ($ret516 Int) ($x12 (Array Int Int)))
    (=> (and (not (or (not (= $ret14112 $ret215113)) (not (= $ret14112 $result117))))
             (mapavg (store $x12110 (- 1000 1) $temp13111) $result117)
             ($main_sum6 (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) (select (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) 0) $result94 $result95 $ret51691 $i1792 $i1893 $x12110 $temp13111 $ret14112 $ret215113 $ret516114 $i17115 $i18116)
             (= $i1893 0)
             (mapavg (store (store $x1287 0 (select $x1287 1)) 1 (select $x1287 0)) $result95)
             (mapavg $x1287 $result94)
             ($main_sum5 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 $x1287 $temp1388 $ret1489 $ret21590 $ret51691 $i1792 $i1893)
             (= $i17 0))
        ($main_if2 $x12 $temp13 $ret14 $ret215 $ret516 $i17 $i18 (store $x12110 (- 1000 1) $temp13111) $temp13111 $ret14112 $ret215113 $result117 $i17115 $i18116))))

(check-sat)
