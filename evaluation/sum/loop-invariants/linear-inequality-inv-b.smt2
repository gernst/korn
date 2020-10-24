(set-logic HORN)

(declare-fun $main_if529 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if530 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if531 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uchar_pre () Bool)
(declare-fun $main_inv130 (Int Int Int Int) Bool)
(declare-fun $main_sum130 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uchar (Int) Bool)

; if else
(assert
  (forall (($n463 Int) ($v464 Int) ($uchar14031 Int) ($i466 Int) ($s465 Int))
    (=> (and (not (= $n463 0))
             (= $n463 $uchar14031)
             (<= 0 $uchar14031)
             (<= $uchar14031 255))
        ($main_if529 $n463 $v464 $s465 $i466 $n463 $v464 $s465 $i466))))

; loop entry $main_inv130
(assert
  (forall (($n463 Int) ($v46414033 Int) ($n46314032 Int) ($s465 Int) ($i46614035 Int) ($v464 Int) ($s46514034 Int) ($i466 Int))
    (=> (and (= $i46614035 0)
             (= $s46514034 0)
             (= $v46414033 0)
             ($main_if529 $n463 $v464 $s465 $i466 $n46314032 $v46414033 $s46514034 $i46614035))
        ($main_inv130 $n46314032 $v46414033 $s46514034 $i46614035))))

; loop term $main_sum130
(assert
  (forall (($n46314036 Int) ($v46414037 Int) ($s46514038 Int) ($i46614039 Int))
    (=> (and (not (< $i46614039 $n46314036)))
        ($main_sum130 $n46314036 $v46414037 $s46514038 $i46614039 $n46314036 $v46414037 $s46514038 $i46614039))))

; forwards $main_inv130
(assert
  (forall (($uchar14040 Int) ($v46414037 Int) ($s46514038 Int) ($n46314036 Int) ($i46614039 Int))
    (=> (and (<= 0 $uchar14040)
             (<= $uchar14040 255)
             (< $i46614039 $n46314036)
             ($main_inv130 $n46314036 $v46414037 $s46514038 $i46614039))
        ($main_inv130 $n46314036 $uchar14040 (+ $s46514038 $uchar14040) (+ $i46614039 1)))))

; backwards $main_sum130
(assert
  (forall (($uchar14040 Int) ($n46314041 Int) ($v46414042 Int) ($v46414037 Int) ($i46614044 Int) ($s46514038 Int) ($s46514043 Int) ($n46314036 Int) ($i46614039 Int))
    (=> (and ($main_sum130 $n46314036 $uchar14040 (+ $s46514038 $uchar14040) (+ $i46614039 1) $n46314041 $v46414042 $s46514043 $i46614044)
             (<= 0 $uchar14040)
             (<= $uchar14040 255)
             (< $i46614039 $n46314036))
        ($main_sum130 $n46314036 $v46414037 $s46514038 $i46614039 $n46314041 $v46414042 $s46514043 $i46614044))))

; error
(assert
  (forall (($n463 Int) ($v46414046 Int) ($s46514047 Int) ($n46314032 Int) ($i46614035 Int) ($v464 Int) ($v46414033 Int) ($n46314045 Int) ($s46514034 Int) ($i466 Int) ($i46614048 Int) ($s465 Int))
    (=> (and (< $s46514047 $v46414046)
             ($main_sum130 $n46314032 $v46414033 $s46514034 $i46614035 $n46314045 $v46414046 $s46514047 $i46614048)
             (= $i46614035 0)
             (= $s46514034 0)
             (= $v46414033 0)
             ($main_if529 $n463 $v464 $s465 $i466 $n46314032 $v46414033 $s46514034 $i46614035))
        false)))

; if else
(assert
  (forall (($n463 Int) ($v46414046 Int) ($s46514047 Int) ($n46314032 Int) ($i46614035 Int) ($v464 Int) ($v46414033 Int) ($n46314045 Int) ($s46514034 Int) ($i466 Int) ($i46614048 Int) ($s465 Int))
    (=> (and (not (< $s46514047 $v46414046))
             ($main_sum130 $n46314032 $v46414033 $s46514034 $i46614035 $n46314045 $v46414046 $s46514047 $i46614048)
             (= $i46614035 0)
             (= $s46514034 0)
             (= $v46414033 0)
             ($main_if529 $n463 $v464 $s465 $i466 $n46314032 $v46414033 $s46514034 $i46614035))
        ($main_if530 $n463 $v464 $s465 $i466 $n46314045 $v46414046 $s46514047 $i46614048))))

; error
(assert
  (forall (($n463 Int) ($n46314049 Int) ($v464 Int) ($v46414050 Int) ($i466 Int) ($s465 Int) ($s46514051 Int) ($i46614052 Int))
    (=> (and (> $s46514051 65025)
             ($main_if530 $n463 $v464 $s465 $i466 $n46314049 $v46414050 $s46514051 $i46614052))
        false)))

; if else
(assert
  (forall (($n463 Int) ($n46314049 Int) ($v464 Int) ($v46414050 Int) ($i466 Int) ($s465 Int) ($s46514051 Int) ($i46614052 Int))
    (=> (and (not (> $s46514051 65025))
             ($main_if530 $n463 $v464 $s465 $i466 $n46314049 $v46414050 $s46514051 $i46614052))
        ($main_if531 $n463 $v464 $s465 $i466 $n46314049 $v46414050 $s46514051 $i46614052))))

(check-sat)
