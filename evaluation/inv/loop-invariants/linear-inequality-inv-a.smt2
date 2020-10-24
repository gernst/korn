(set-logic HORN)

(declare-fun $main_if526 (Int Int Int Int) Bool)
(declare-fun $main_sum129 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uchar_pre () Bool)
(declare-fun $main_if528 (Int Int Int Int) Bool)
(declare-fun $main_if527 (Int Int Int Int) Bool)
(declare-fun $main_inv129 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uchar (Int) Bool)

; if else
(assert
  (forall (($s461 Int) ($uchar13164 Int) ($v460 Int) ($i462 Int) ($n459 Int))
    (=> (and (not (= $n459 0))
             (= $n459 $uchar13164)
             (<= 0 $uchar13164)
             (<= $uchar13164 255))
        ($main_if526 $n459 $v460 $s461 $i462))))

; loop entry $main_inv129
(assert
  (forall (($n45913165 Int) ($v46013166 Int) ($s46113167 Int) ($i46213168 Int))
    (=> (and (= $i46213168 0)
             (= $s46113167 0)
             (= $v46013166 0)
             ($main_if526 $n45913165 $v46013166 $s46113167 $i46213168))
        ($main_inv129 $n45913165 $v46013166 $s46113167 $i46213168))))

; loop term $main_sum129
(assert
  (forall (($n45913169 Int) ($v46013170 Int) ($s46113171 Int) ($i46213172 Int))
    (=> (and (not (< $i46213172 $n45913169))
             ($main_inv129 $n45913169 $v46013170 $s46113171 $i46213172))
        ($main_sum129 $n45913169 $v46013170 $s46113171 $i46213172))))

; forwards $main_inv129
(assert
  (forall (($uchar13173 Int) ($n45913169 Int) ($v46013170 Int) ($s46113171 Int) ($i46213172 Int))
    (=> (and (<= 0 $uchar13173)
             (<= $uchar13173 255)
             (< $i46213172 $n45913169)
             ($main_inv129 $n45913169 $v46013170 $s46113171 $i46213172))
        ($main_inv129 $n45913169 $uchar13173 (+ $s46113171 $uchar13173) (+ $i46213172 1)))))

; error
(assert
  (forall (($s46113176 Int) ($v46013175 Int) ($n45913174 Int) ($i46213177 Int))
    (=> (and (< $s46113176 $v46013175)
             ($main_sum129 $n45913174 $v46013175 $s46113176 $i46213177))
        false)))

; if else
(assert
  (forall (($n45913174 Int) ($v46013175 Int) ($s46113176 Int) ($i46213177 Int))
    (=> (and (not (< $s46113176 $v46013175))
             ($main_sum129 $n45913174 $v46013175 $s46113176 $i46213177))
        ($main_if527 $n45913174 $v46013175 $s46113176 $i46213177))))

; error
(assert
  (forall (($s46113180 Int) ($n45913178 Int) ($v46013179 Int) ($i46213181 Int))
    (=> (and (> $s46113180 65025)
             ($main_if527 $n45913178 $v46013179 $s46113180 $i46213181))
        false)))

; if else
(assert
  (forall (($n45913178 Int) ($v46013179 Int) ($s46113180 Int) ($i46213181 Int))
    (=> (and (not (> $s46113180 65025))
             ($main_if527 $n45913178 $v46013179 $s46113180 $i46213181))
        ($main_if528 $n45913178 $v46013179 $s46113180 $i46213181))))

(check-sat)
