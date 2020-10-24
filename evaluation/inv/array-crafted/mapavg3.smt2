(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun $main_if3 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum8 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $mapavg_sum7 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv9 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv8 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_inv7 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum9 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapavg_inv7
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv7 x 0 0))))

; loop term $mapavg_sum7
(assert
  (forall ((x91 (Array Int Int)) ($i1992 Int) ($ret2093 Int))
    (=> (and (not (< $i1992 10000))
             ($mapavg_inv7 x91 $i1992 $ret2093))
        ($mapavg_sum7 x91 $i1992 $ret2093))))

; forwards $mapavg_inv7
(assert
  (forall ((x91 (Array Int Int)) ($i1992 Int) ($ret2093 Int))
    (=> (and (< $i1992 10000)
             ($mapavg_inv7 x91 $i1992 $ret2093))
        ($mapavg_inv7 x91 (+ $i1992 1) (+ (+ $ret2093 $i1992) (select x91 $i1992))))))

; post mapavg
(assert
  (forall ((x94 (Array Int Int)) ($ret2096 Int) ($i1995 Int))
    (=> (and ($mapavg_sum7 x94 $i1995 $ret2096))
        (mapavg x94 (div $ret2096 10000)))))

; loop entry $main_inv8
(assert
  (forall (($ret23 Int) ($x21 (Array Int Int)) ($i27 Int) ($i26 Int) ($ret224 Int) ($ret525 Int) ($temp22 Int))
    (=> (and (= $i26 0))
        ($main_inv8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27))))

; loop term $main_sum8
(assert
  (forall (($ret2399 Int) ($ret224100 Int) ($i26102 Int) ($i27103 Int) ($temp2298 Int) ($ret525101 Int) ($x2197 (Array Int Int)))
    (=> (and (not (< $i26102 10000))
             ($main_inv8 $x2197 $temp2298 $ret2399 $ret224100 $ret525101 $i26102 $i27103))
        ($main_sum8 $x2197 $temp2298 $ret2399 $ret224100 $ret525101 $i26102 $i27103))))

; forwards $main_inv8
(assert
  (forall (($ret2399 Int) ($ret224100 Int) ($i26102 Int) ($i27103 Int) ($temp2298 Int) ($x2197 (Array Int Int)) ($int104 Int) ($ret525101 Int))
    (=> (and (<= (- 2147483648) $int104)
             (<= $int104 2147483647)
             (< $i26102 10000)
             ($main_inv8 $x2197 $temp2298 $ret2399 $ret224100 $ret525101 $i26102 $i27103))
        ($main_inv8 (store $x2197 $i26102 $int104) $temp2298 $ret2399 $ret224100 $ret525101 (+ $i26102 1) $i27103))))

; mapavg precondition
(assert
  (forall (($x21105 (Array Int Int)) ($i27111 Int) ($ret23107 Int) ($ret224108 Int) ($i26110 Int) ($temp22106 Int) ($ret525109 Int))
    (=> (and ($main_sum8 $x21105 $temp22106 $ret23107 $ret224108 $ret525109 $i26110 $i27111))
        ($mapavg_pre $x21105))))

; mapavg precondition
(assert
  (forall (($result112 Int) ($x21105 (Array Int Int)) ($i27111 Int) ($ret23107 Int) ($ret224108 Int) ($i26110 Int) ($temp22106 Int) ($ret525109 Int))
    (=> (and (mapavg $x21105 $result112)
             ($main_sum8 $x21105 $temp22106 $ret23107 $ret224108 $ret525109 $i26110 $i27111))
        ($mapavg_pre (store (store $x21105 0 (select $x21105 1)) 1 (select $x21105 0))))))

; loop entry $main_inv9
(assert
  (forall (($result113 Int) ($result112 Int) ($x21105 (Array Int Int)) ($i27111 Int) ($ret23107 Int) ($ret224108 Int) ($i26110 Int) ($temp22106 Int) ($ret525109 Int))
    (=> (and (= $i27111 0)
             (mapavg (store (store $x21105 0 (select $x21105 1)) 1 (select $x21105 0)) $result113)
             (mapavg $x21105 $result112)
             ($main_sum8 $x21105 $temp22106 $ret23107 $ret224108 $ret525109 $i26110 $i27111))
        ($main_inv9 (store (store $x21105 0 (select $x21105 1)) 1 (select $x21105 0)) (select (store (store $x21105 0 (select $x21105 1)) 1 (select $x21105 0)) 0) $result112 $result113 $ret525109 $i26110 $i27111))))

; loop term $main_sum9
(assert
  (forall (($i26119 Int) ($temp22115 Int) ($i27120 Int) ($ret224117 Int) ($ret525118 Int) ($x21114 (Array Int Int)) ($ret23116 Int))
    (=> (and (not (< $i27120 (- 10000 1)))
             ($main_inv9 $x21114 $temp22115 $ret23116 $ret224117 $ret525118 $i26119 $i27120))
        ($main_sum9 $x21114 $temp22115 $ret23116 $ret224117 $ret525118 $i26119 $i27120))))

; forwards $main_inv9
(assert
  (forall (($i26119 Int) ($temp22115 Int) ($i27120 Int) ($ret224117 Int) ($ret525118 Int) ($x21114 (Array Int Int)) ($ret23116 Int))
    (=> (and (< $i27120 (- 10000 1))
             ($main_inv9 $x21114 $temp22115 $ret23116 $ret224117 $ret525118 $i26119 $i27120))
        ($main_inv9 (store $x21114 $i27120 (select $x21114 (+ $i27120 1))) $temp22115 $ret23116 $ret224117 $ret525118 $i26119 (+ $i27120 1)))))

; mapavg precondition
(assert
  (forall (($i27127 Int) ($ret525125 Int) ($x21121 (Array Int Int)) ($temp22122 Int) ($ret224124 Int) ($i26126 Int) ($ret23123 Int))
    (=> (and ($main_sum9 $x21121 $temp22122 $ret23123 $ret224124 $ret525125 $i26126 $i27127))
        ($mapavg_pre (store $x21121 (- 10000 1) $temp22122)))))

; error
(assert
  (forall (($i27127 Int) ($ret525125 Int) ($x21121 (Array Int Int)) ($result128 Int) ($temp22122 Int) ($ret224124 Int) ($i26126 Int) ($ret23123 Int))
    (=> (and (or (not (= $ret23123 $ret224124)) (not (= $ret23123 $result128)))
             (mapavg (store $x21121 (- 10000 1) $temp22122) $result128)
             ($main_sum9 $x21121 $temp22122 $ret23123 $ret224124 $ret525125 $i26126 $i27127))
        false)))

; if then
(assert
  (forall (($i27127 Int) ($ret525125 Int) ($x21121 (Array Int Int)) ($result128 Int) ($temp22122 Int) ($ret224124 Int) ($i26126 Int) ($ret23123 Int))
    (=> (and (or (not (= $ret23123 $ret224124)) (not (= $ret23123 $result128)))
             (mapavg (store $x21121 (- 10000 1) $temp22122) $result128)
             ($main_sum9 $x21121 $temp22122 $ret23123 $ret224124 $ret525125 $i26126 $i27127))
        ($main_if3 (store $x21121 (- 10000 1) $temp22122) $temp22122 $ret23123 $ret224124 $result128 $i26126 $i27127))))

; if else
(assert
  (forall (($i27127 Int) ($ret525125 Int) ($x21121 (Array Int Int)) ($result128 Int) ($temp22122 Int) ($ret224124 Int) ($i26126 Int) ($ret23123 Int))
    (=> (and (not (or (not (= $ret23123 $ret224124)) (not (= $ret23123 $result128))))
             (mapavg (store $x21121 (- 10000 1) $temp22122) $result128)
             ($main_sum9 $x21121 $temp22122 $ret23123 $ret224124 $ret525125 $i26126 $i27127))
        ($main_if3 (store $x21121 (- 10000 1) $temp22122) $temp22122 $ret23123 $ret224124 $result128 $i26126 $i27127))))

(check-sat)
