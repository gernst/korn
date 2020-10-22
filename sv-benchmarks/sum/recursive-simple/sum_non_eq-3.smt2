(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $sum_if3375 (Int Int Int Int) Bool)
(declare-fun $main_if3376 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214270 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214270)
             (not (= n 0))
             ($sum_pre n m))
        (sum n m $result214270))))

; post sum
(assert
  (forall ((n214271 Int) (m214272 Int) (n Int) (m Int))
    (=> (and ($sum_if3375 n m n214271 m214272))
        (sum n214271 m214272 0))))

; sum precondition
(assert
  (forall (($a2456 Int) ($b2457 Int) ($uint214274 Int) ($uint214273 Int))
    (=> (and (= $b2457 $uint214274)
             (<= 0 $uint214274)
             (<= $uint214274 4294967295)
             (= $a2456 $uint214273)
             (<= 0 $uint214273)
             (<= $uint214273 4294967295))
        ($sum_pre $a2456 $b2457))))

; label ERROR
(assert
  (forall (($b2457 Int) ($result2458 Int) ($result214275 Int) ($uint214274 Int) ($uint214273 Int) ($a2456 Int))
    (=> (and (= $result2458 (+ $a2456 $b2457))
             (= $result2458 $result214275)
             (sum $a2456 $b2457 $result214275)
             (= $b2457 $uint214274)
             (<= 0 $uint214274)
             (<= $uint214274 4294967295)
             (= $a2456 $uint214273)
             (<= 0 $uint214273)
             (<= $uint214273 4294967295))
        ($main_ERROR $a2456 $b2457 $result2458 $a2456 $b2457 $result2458))))

; error
(assert
  (forall (($b2457 Int) ($result2458 Int) ($a2456 Int) ($b2457214277 Int) ($result2458214278 Int) ($a2456214276 Int))
    (=> (and ($main_ERROR $a2456 $b2457 $result2458 $a2456214276 $b2457214277 $result2458214278))
        false)))

; if else
(assert
  (forall (($b2457 Int) ($result2458 Int) ($result214275 Int) ($uint214274 Int) ($uint214273 Int) ($a2456 Int))
    (=> (and (not (= $result2458 (+ $a2456 $b2457)))
             (= $result2458 $result214275)
             (sum $a2456 $b2457 $result214275)
             (= $b2457 $uint214274)
             (<= 0 $uint214274)
             (<= $uint214274 4294967295)
             (= $a2456 $uint214273)
             (<= 0 $uint214273)
             (<= $uint214273 4294967295))
        ($main_if3376 $a2456 $b2457 $result2458 $a2456 $b2457 $result2458))))

(check-sat)
