(set-logic HORN)

(declare-fun $main_if529 (Int Int Int Int) Bool)
(declare-fun $main_if530 (Int Int Int Int) Bool)
(declare-fun $main_if531 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uchar_pre () Bool)
(declare-fun $main_inv130 (Int Int Int Int) Bool)
(declare-fun $main_sum130 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uchar (Int) Bool)

; if else
(assert
  (forall (($n463 Int) ($v464 Int) ($i466 Int) ($uchar13186 Int) ($s465 Int))
    (=> (and (not (= $n463 0))
             (= $n463 $uchar13186)
             (<= 0 $uchar13186)
             (<= $uchar13186 255))
        ($main_if529 $n463 $v464 $s465 $i466))))

; loop entry $main_inv130
(assert
  (forall (($n46313187 Int) ($v46413188 Int) ($s46513189 Int) ($i46613190 Int))
    (=> (and (= $i46613190 0)
             (= $s46513189 0)
             (= $v46413188 0)
             ($main_if529 $n46313187 $v46413188 $s46513189 $i46613190))
        ($main_inv130 $n46313187 $v46413188 $s46513189 $i46613190))))

; loop term $main_sum130
(assert
  (forall (($n46313191 Int) ($v46413192 Int) ($s46513193 Int) ($i46613194 Int))
    (=> (and (not (< $i46613194 $n46313191))
             ($main_inv130 $n46313191 $v46413192 $s46513193 $i46613194))
        ($main_sum130 $n46313191 $v46413192 $s46513193 $i46613194))))

; forwards $main_inv130
(assert
  (forall (($v46413192 Int) ($uchar13195 Int) ($n46313191 Int) ($s46513193 Int) ($i46613194 Int))
    (=> (and (<= 0 $uchar13195)
             (<= $uchar13195 255)
             (< $i46613194 $n46313191)
             ($main_inv130 $n46313191 $v46413192 $s46513193 $i46613194))
        ($main_inv130 $n46313191 $uchar13195 (+ $s46513193 $uchar13195) (+ $i46613194 1)))))

; error
(assert
  (forall (($s46513198 Int) ($v46413197 Int) ($n46313196 Int) ($i46613199 Int))
    (=> (and (< $s46513198 $v46413197)
             ($main_sum130 $n46313196 $v46413197 $s46513198 $i46613199))
        false)))

; if else
(assert
  (forall (($n46313196 Int) ($v46413197 Int) ($s46513198 Int) ($i46613199 Int))
    (=> (and (not (< $s46513198 $v46413197))
             ($main_sum130 $n46313196 $v46413197 $s46513198 $i46613199))
        ($main_if530 $n46313196 $v46413197 $s46513198 $i46613199))))

; error
(assert
  (forall (($s46513202 Int) ($n46313200 Int) ($v46413201 Int) ($i46613203 Int))
    (=> (and (> $s46513202 65025)
             ($main_if530 $n46313200 $v46413201 $s46513202 $i46613203))
        false)))

; if else
(assert
  (forall (($n46313200 Int) ($v46413201 Int) ($s46513202 Int) ($i46613203 Int))
    (=> (and (not (> $s46513202 65025))
             ($main_if530 $n46313200 $v46413201 $s46513202 $i46613203))
        ($main_if531 $n46313200 $v46413201 $s46513202 $i46613203))))

(check-sat)
