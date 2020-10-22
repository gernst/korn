(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $sum_if3375 (Int Int) Bool)
(declare-fun $main_if3376 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; post sum
(assert
  (forall ((n Int) (m Int))
    (=> (and (= n 0)
             ($sum_pre n m))
        (sum n m m))))

; sum precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (= n 0))
             ($sum_pre n m))
        ($sum_pre (- n 1) (+ m 1)))))

; post sum
(assert
  (forall ((n Int) (m Int) ($result211269 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211269)
             (not (= n 0))
             ($sum_pre n m))
        (sum n m $result211269))))

; post sum
(assert
  (forall ((n211270 Int) (m211271 Int))
    (=> (and ($sum_if3375 n211270 m211271))
        (sum n211270 m211271 0))))

; sum precondition
(assert
  (forall (($a2456 Int) ($b2457 Int) ($uint211273 Int) ($uint211272 Int))
    (=> (and (= $b2457 $uint211273)
             (<= 0 $uint211273)
             (<= $uint211273 4294967295)
             (= $a2456 $uint211272)
             (<= 0 $uint211272)
             (<= $uint211272 4294967295))
        ($sum_pre $a2456 $b2457))))

; label ERROR
(assert
  (forall (($uint211273 Int) ($b2457 Int) ($result2458 Int) ($a2456 Int) ($result211274 Int) ($uint211272 Int))
    (=> (and (= $result2458 (+ $a2456 $b2457))
             (= $result2458 $result211274)
             (sum $a2456 $b2457 $result211274)
             (= $b2457 $uint211273)
             (<= 0 $uint211273)
             (<= $uint211273 4294967295)
             (= $a2456 $uint211272)
             (<= 0 $uint211272)
             (<= $uint211272 4294967295))
        ($main_ERROR $a2456 $b2457 $result2458))))

; error
(assert
  (forall (($a2456211275 Int) ($b2457211276 Int) ($result2458211277 Int))
    (=> (and ($main_ERROR $a2456211275 $b2457211276 $result2458211277))
        false)))

; if else
(assert
  (forall (($uint211273 Int) ($b2457 Int) ($result2458 Int) ($a2456 Int) ($result211274 Int) ($uint211272 Int))
    (=> (and (not (= $result2458 (+ $a2456 $b2457)))
             (= $result2458 $result211274)
             (sum $a2456 $b2457 $result211274)
             (= $b2457 $uint211273)
             (<= 0 $uint211273)
             (<= $uint211273 4294967295)
             (= $a2456 $uint211272)
             (<= 0 $uint211272)
             (<= $uint211272 4294967295))
        ($main_if3376 $a2456 $b2457 $result2458))))

(check-sat)
