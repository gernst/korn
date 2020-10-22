(set-logic HORN)

(declare-fun $id_if3341 (Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3342 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3341 x))))

; id precondition
(assert
  (forall ((x211109 Int))
    (=> (and ($id_if3341 x211109))
        ($id_pre (- x211109 1)))))

; post id
(assert
  (forall ((x211109 Int) ($result211110 Int))
    (=> (and (id (- x211109 1) $result211110)
             ($id_if3341 x211109))
        (id x211109 (+ $result211110 1)))))

; id precondition
(assert
  (forall (($input2411 Int) ($uint211111 Int))
    (=> (and (= $input2411 $uint211111)
             (<= 0 $uint211111)
             (<= $uint211111 4294967295))
        ($id_pre $input2411))))

; label ERROR
(assert
  (forall (($input2411 Int) ($result2412 Int) ($result211112 Int) ($uint211111 Int))
    (=> (and (= $result2412 1000)
             (= $result2412 $result211112)
             (id $input2411 $result211112)
             (= $input2411 $uint211111)
             (<= 0 $uint211111)
             (<= $uint211111 4294967295))
        ($main_ERROR $input2411 $result2412))))

; error
(assert
  (forall (($input2411211113 Int) ($result2412211114 Int))
    (=> (and ($main_ERROR $input2411211113 $result2412211114))
        false)))

; if else
(assert
  (forall (($input2411 Int) ($result2412 Int) ($result211112 Int) ($uint211111 Int))
    (=> (and (not (= $result2412 1000))
             (= $result2412 $result211112)
             (id $input2411 $result211112)
             (= $input2411 $uint211111)
             (<= 0 $uint211111)
             (<= $uint211111 4294967295))
        ($main_if3342 $input2411 $result2412))))

(check-sat)
