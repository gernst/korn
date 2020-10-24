(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $main_if4 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv11 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_inv10 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum12 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum11 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv12 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum10 ((Array Int Int) Int Int) Bool)

; loop entry $mapavg_inv10
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv10 x 0 0))))

; loop term $mapavg_sum10
(assert
  (forall ((x136 (Array Int Int)) ($i28137 Int) ($ret29138 Int))
    (=> (and (not (< $i28137 100000))
             ($mapavg_inv10 x136 $i28137 $ret29138))
        ($mapavg_sum10 x136 $i28137 $ret29138))))

; forwards $mapavg_inv10
(assert
  (forall ((x136 (Array Int Int)) ($i28137 Int) ($ret29138 Int))
    (=> (and (< $i28137 100000)
             ($mapavg_inv10 x136 $i28137 $ret29138))
        ($mapavg_inv10 x136 (+ $i28137 1) (+ (+ $ret29138 $i28137) (select x136 $i28137))))))

; post mapavg
(assert
  (forall ((x139 (Array Int Int)) ($ret29141 Int) ($i28140 Int))
    (=> (and ($mapavg_sum10 x139 $i28140 $ret29141))
        (mapavg x139 (div $ret29141 100000)))))

; loop entry $main_inv11
(assert
  (forall (($i35 Int) ($x30 (Array Int Int)) ($ret534 Int) ($ret233 Int) ($ret32 Int) ($i36 Int) ($temp31 Int))
    (=> (and (= $i35 0))
        ($main_inv11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36))))

; loop term $main_sum11
(assert
  (forall (($temp31143 Int) ($ret32144 Int) ($ret534146 Int) ($i35147 Int) ($ret233145 Int) ($i36148 Int) ($x30142 (Array Int Int)))
    (=> (and (not (< $i35147 100000))
             ($main_inv11 $x30142 $temp31143 $ret32144 $ret233145 $ret534146 $i35147 $i36148))
        ($main_sum11 $x30142 $temp31143 $ret32144 $ret233145 $ret534146 $i35147 $i36148))))

; forwards $main_inv11
(assert
  (forall (($temp31143 Int) ($ret32144 Int) ($ret534146 Int) ($i35147 Int) ($ret233145 Int) ($int149 Int) ($i36148 Int) ($x30142 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int149)
             (<= $int149 2147483647)
             (< $i35147 100000)
             ($main_inv11 $x30142 $temp31143 $ret32144 $ret233145 $ret534146 $i35147 $i36148))
        ($main_inv11 (store $x30142 $i35147 $int149) $temp31143 $ret32144 $ret233145 $ret534146 (+ $i35147 1) $i36148))))

; mapavg precondition
(assert
  (forall (($ret233153 Int) ($ret32152 Int) ($x30150 (Array Int Int)) ($temp31151 Int) ($i36156 Int) ($i35155 Int) ($ret534154 Int))
    (=> (and ($main_sum11 $x30150 $temp31151 $ret32152 $ret233153 $ret534154 $i35155 $i36156))
        ($mapavg_pre $x30150))))

; mapavg precondition
(assert
  (forall (($ret233153 Int) ($ret32152 Int) ($x30150 (Array Int Int)) ($temp31151 Int) ($i35155 Int) ($ret534154 Int) ($i36156 Int) ($result157 Int))
    (=> (and (mapavg $x30150 $result157)
             ($main_sum11 $x30150 $temp31151 $ret32152 $ret233153 $ret534154 $i35155 $i36156))
        ($mapavg_pre (store (store $x30150 0 (select $x30150 1)) 1 (select $x30150 0))))))

; loop entry $main_inv12
(assert
  (forall (($ret233153 Int) ($result158 Int) ($ret32152 Int) ($x30150 (Array Int Int)) ($temp31151 Int) ($i35155 Int) ($ret534154 Int) ($i36156 Int) ($result157 Int))
    (=> (and (= $i36156 0)
             (mapavg (store (store $x30150 0 (select $x30150 1)) 1 (select $x30150 0)) $result158)
             (mapavg $x30150 $result157)
             ($main_sum11 $x30150 $temp31151 $ret32152 $ret233153 $ret534154 $i35155 $i36156))
        ($main_inv12 (store (store $x30150 0 (select $x30150 1)) 1 (select $x30150 0)) (select (store (store $x30150 0 (select $x30150 1)) 1 (select $x30150 0)) 0) $result157 $result158 $ret534154 $i35155 $i36156))))

; loop term $main_sum12
(assert
  (forall (($ret233162 Int) ($ret534163 Int) ($x30159 (Array Int Int)) ($temp31160 Int) ($i36165 Int) ($ret32161 Int) ($i35164 Int))
    (=> (and (not (< $i36165 (- 100000 1)))
             ($main_inv12 $x30159 $temp31160 $ret32161 $ret233162 $ret534163 $i35164 $i36165))
        ($main_sum12 $x30159 $temp31160 $ret32161 $ret233162 $ret534163 $i35164 $i36165))))

; forwards $main_inv12
(assert
  (forall (($ret233162 Int) ($ret534163 Int) ($x30159 (Array Int Int)) ($temp31160 Int) ($i36165 Int) ($ret32161 Int) ($i35164 Int))
    (=> (and (< $i36165 (- 100000 1))
             ($main_inv12 $x30159 $temp31160 $ret32161 $ret233162 $ret534163 $i35164 $i36165))
        ($main_inv12 (store $x30159 $i36165 (select $x30159 (+ $i36165 1))) $temp31160 $ret32161 $ret233162 $ret534163 $i35164 (+ $i36165 1)))))

; mapavg precondition
(assert
  (forall (($i36172 Int) ($ret233169 Int) ($i35171 Int) ($ret534170 Int) ($temp31167 Int) ($x30166 (Array Int Int)) ($ret32168 Int))
    (=> (and ($main_sum12 $x30166 $temp31167 $ret32168 $ret233169 $ret534170 $i35171 $i36172))
        ($mapavg_pre (store $x30166 (- 100000 1) $temp31167)))))

; error
(assert
  (forall (($i36172 Int) ($ret233169 Int) ($result173 Int) ($i35171 Int) ($ret534170 Int) ($temp31167 Int) ($x30166 (Array Int Int)) ($ret32168 Int))
    (=> (and (or (not (= $ret32168 $ret233169)) (not (= $ret32168 $result173)))
             (mapavg (store $x30166 (- 100000 1) $temp31167) $result173)
             ($main_sum12 $x30166 $temp31167 $ret32168 $ret233169 $ret534170 $i35171 $i36172))
        false)))

; if then
(assert
  (forall (($i36172 Int) ($ret233169 Int) ($result173 Int) ($i35171 Int) ($ret534170 Int) ($temp31167 Int) ($x30166 (Array Int Int)) ($ret32168 Int))
    (=> (and (or (not (= $ret32168 $ret233169)) (not (= $ret32168 $result173)))
             (mapavg (store $x30166 (- 100000 1) $temp31167) $result173)
             ($main_sum12 $x30166 $temp31167 $ret32168 $ret233169 $ret534170 $i35171 $i36172))
        ($main_if4 (store $x30166 (- 100000 1) $temp31167) $temp31167 $ret32168 $ret233169 $result173 $i35171 $i36172))))

; if else
(assert
  (forall (($i36172 Int) ($ret233169 Int) ($result173 Int) ($i35171 Int) ($ret534170 Int) ($temp31167 Int) ($x30166 (Array Int Int)) ($ret32168 Int))
    (=> (and (not (or (not (= $ret32168 $ret233169)) (not (= $ret32168 $result173))))
             (mapavg (store $x30166 (- 100000 1) $temp31167) $result173)
             ($main_sum12 $x30166 $temp31167 $ret32168 $ret233169 $ret534170 $i35171 $i36172))
        ($main_if4 (store $x30166 (- 100000 1) $temp31167) $temp31167 $ret32168 $ret233169 $result173 $i35171 $i36172))))

(check-sat)
