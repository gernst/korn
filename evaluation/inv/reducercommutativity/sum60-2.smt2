(set-logic HORN)

(declare-fun $main_if417 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv578 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum578 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum579 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $sum_inv577 ((Array Int Int) Int Int) Bool)
(declare-fun $sum_sum577 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv579 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv577
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv577 x 0 0))))

; loop term $sum_sum577
(assert
  (forall ((x8032 (Array Int Int)) ($i9028033 Int) ($ret9038034 Int))
    (=> (and (not (< $i9028033 60))
             ($sum_inv577 x8032 $i9028033 $ret9038034))
        ($sum_sum577 x8032 $i9028033 $ret9038034))))

; forwards $sum_inv577
(assert
  (forall ((x8032 (Array Int Int)) ($i9028033 Int) ($ret9038034 Int))
    (=> (and (< $i9028033 60)
             ($sum_inv577 x8032 $i9028033 $ret9038034))
        ($sum_inv577 x8032 (+ $i9028033 1) (+ $ret9038034 (select x8032 $i9028033))))))

; post sum
(assert
  (forall ((x8035 (Array Int Int)) ($ret9038037 Int) ($i9028036 Int))
    (=> (and ($sum_sum577 x8035 $i9028036 $ret9038037))
        (sum x8035 $ret9038037))))

; loop entry $main_inv578
(assert
  (forall (($ret5908 Int) ($i910 Int) ($temp905 Int) ($i909 Int) ($ret2907 Int) ($ret906 Int) ($x904 (Array Int Int)))
    (=> (and (= $i909 0))
        ($main_inv578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910))))

; loop term $main_sum578
(assert
  (forall (($x9048038 (Array Int Int)) ($ret29078041 Int) ($temp9058039 Int) ($i9098043 Int) ($ret59088042 Int) ($ret9068040 Int) ($i9108044 Int))
    (=> (and (not (< $i9098043 60))
             ($main_inv578 $x9048038 $temp9058039 $ret9068040 $ret29078041 $ret59088042 $i9098043 $i9108044))
        ($main_sum578 $x9048038 $temp9058039 $ret9068040 $ret29078041 $ret59088042 $i9098043 $i9108044))))

; forwards $main_inv578
(assert
  (forall (($x9048038 (Array Int Int)) ($ret29078041 Int) ($i9098043 Int) ($ret59088042 Int) ($temp9058039 Int) ($int8045 Int) ($ret9068040 Int) ($i9108044 Int))
    (=> (and (<= (- 2147483648) $int8045)
             (<= $int8045 2147483647)
             (< $i9098043 60)
             ($main_inv578 $x9048038 $temp9058039 $ret9068040 $ret29078041 $ret59088042 $i9098043 $i9108044))
        ($main_inv578 (store $x9048038 $i9098043 $int8045) $temp9058039 $ret9068040 $ret29078041 $ret59088042 (+ $i9098043 1) $i9108044))))

; sum precondition
(assert
  (forall (($ret59088050 Int) ($ret9068048 Int) ($i9098051 Int) ($temp9058047 Int) ($i9108052 Int) ($ret29078049 Int) ($x9048046 (Array Int Int)))
    (=> (and ($main_sum578 $x9048046 $temp9058047 $ret9068048 $ret29078049 $ret59088050 $i9098051 $i9108052))
        ($sum_pre $x9048046))))

; sum precondition
(assert
  (forall (($ret59088050 Int) ($result8053 Int) ($ret9068048 Int) ($i9098051 Int) ($temp9058047 Int) ($i9108052 Int) ($ret29078049 Int) ($x9048046 (Array Int Int)))
    (=> (and (sum $x9048046 $result8053)
             ($main_sum578 $x9048046 $temp9058047 $ret9068048 $ret29078049 $ret59088050 $i9098051 $i9108052))
        ($sum_pre (store (store $x9048046 0 (select $x9048046 1)) 1 (select $x9048046 0))))))

; loop entry $main_inv579
(assert
  (forall (($ret59088050 Int) ($result8053 Int) ($ret9068048 Int) ($i9098051 Int) ($result8054 Int) ($temp9058047 Int) ($i9108052 Int) ($ret29078049 Int) ($x9048046 (Array Int Int)))
    (=> (and (= $i9108052 0)
             (sum (store (store $x9048046 0 (select $x9048046 1)) 1 (select $x9048046 0)) $result8054)
             (sum $x9048046 $result8053)
             ($main_sum578 $x9048046 $temp9058047 $ret9068048 $ret29078049 $ret59088050 $i9098051 $i9108052))
        ($main_inv579 (store (store $x9048046 0 (select $x9048046 1)) 1 (select $x9048046 0)) (select (store (store $x9048046 0 (select $x9048046 1)) 1 (select $x9048046 0)) 0) $result8053 $result8054 $ret59088050 $i9098051 $i9108052))))

; loop term $main_sum579
(assert
  (forall (($ret29078058 Int) ($ret59088059 Int) ($i9108061 Int) ($i9098060 Int) ($ret9068057 Int) ($temp9058056 Int) ($x9048055 (Array Int Int)))
    (=> (and (not (< $i9108061 (- 60 1)))
             ($main_inv579 $x9048055 $temp9058056 $ret9068057 $ret29078058 $ret59088059 $i9098060 $i9108061))
        ($main_sum579 $x9048055 $temp9058056 $ret9068057 $ret29078058 $ret59088059 $i9098060 $i9108061))))

; forwards $main_inv579
(assert
  (forall (($ret29078058 Int) ($ret59088059 Int) ($i9108061 Int) ($i9098060 Int) ($ret9068057 Int) ($temp9058056 Int) ($x9048055 (Array Int Int)))
    (=> (and (< $i9108061 (- 60 1))
             ($main_inv579 $x9048055 $temp9058056 $ret9068057 $ret29078058 $ret59088059 $i9098060 $i9108061))
        ($main_inv579 (store $x9048055 $i9108061 (select $x9048055 (+ $i9108061 1))) $temp9058056 $ret9068057 $ret29078058 $ret59088059 $i9098060 (+ $i9108061 1)))))

; sum precondition
(assert
  (forall (($ret29078065 Int) ($i9108068 Int) ($ret9068064 Int) ($i9098067 Int) ($x9048062 (Array Int Int)) ($temp9058063 Int) ($ret59088066 Int))
    (=> (and ($main_sum579 $x9048062 $temp9058063 $ret9068064 $ret29078065 $ret59088066 $i9098067 $i9108068))
        ($sum_pre (store $x9048062 (- 60 1) $temp9058063)))))

; error
(assert
  (forall (($result8069 Int) ($ret29078065 Int) ($i9108068 Int) ($ret9068064 Int) ($i9098067 Int) ($x9048062 (Array Int Int)) ($temp9058063 Int) ($ret59088066 Int))
    (=> (and (or (not (= $ret9068064 $ret29078065)) (not (= $ret9068064 $result8069)))
             (sum (store $x9048062 (- 60 1) $temp9058063) $result8069)
             ($main_sum579 $x9048062 $temp9058063 $ret9068064 $ret29078065 $ret59088066 $i9098067 $i9108068))
        false)))

; if then
(assert
  (forall (($result8069 Int) ($ret29078065 Int) ($i9108068 Int) ($ret9068064 Int) ($i9098067 Int) ($x9048062 (Array Int Int)) ($temp9058063 Int) ($ret59088066 Int))
    (=> (and (or (not (= $ret9068064 $ret29078065)) (not (= $ret9068064 $result8069)))
             (sum (store $x9048062 (- 60 1) $temp9058063) $result8069)
             ($main_sum579 $x9048062 $temp9058063 $ret9068064 $ret29078065 $ret59088066 $i9098067 $i9108068))
        ($main_if417 (store $x9048062 (- 60 1) $temp9058063) $temp9058063 $ret9068064 $ret29078065 $result8069 $i9098067 $i9108068))))

; if else
(assert
  (forall (($result8069 Int) ($ret29078065 Int) ($i9108068 Int) ($ret9068064 Int) ($i9098067 Int) ($x9048062 (Array Int Int)) ($temp9058063 Int) ($ret59088066 Int))
    (=> (and (not (or (not (= $ret9068064 $ret29078065)) (not (= $ret9068064 $result8069))))
             (sum (store $x9048062 (- 60 1) $temp9058063) $result8069)
             ($main_sum579 $x9048062 $temp9058063 $ret9068064 $ret29078065 $ret59088066 $i9098067 $i9108068))
        ($main_if417 (store $x9048062 (- 60 1) $temp9058063) $temp9058063 $ret9068064 $ret29078065 $result8069 $i9098067 $i9108068))))

(check-sat)
