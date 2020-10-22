(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3342 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3341 (Int Int) Bool)
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
        ($id_if3341 x x))))

; id precondition
(assert
  (forall ((x214110 Int) (x Int))
    (=> (and ($id_if3341 x x214110))
        ($id_pre (- x214110 1)))))

; post id
(assert
  (forall ((x214110 Int) ($result214111 Int) (x Int))
    (=> (and (id (- x214110 1) $result214111)
             ($id_if3341 x x214110))
        (id x214110 (+ $result214111 1)))))

; id precondition
(assert
  (forall (($input2411 Int) ($uint214112 Int))
    (=> (and (= $input2411 $uint214112)
             (<= 0 $uint214112)
             (<= $uint214112 4294967295))
        ($id_pre $input2411))))

; label ERROR
(assert
  (forall (($input2411 Int) ($result2412 Int) ($result214113 Int) ($uint214112 Int))
    (=> (and (= $result2412 1000)
             (= $result2412 $result214113)
             (id $input2411 $result214113)
             (= $input2411 $uint214112)
             (<= 0 $uint214112)
             (<= $uint214112 4294967295))
        ($main_ERROR $input2411 $result2412 $input2411 $result2412))))

; error
(assert
  (forall (($input2411 Int) ($result2412 Int) ($input2411214114 Int) ($result2412214115 Int))
    (=> (and ($main_ERROR $input2411 $result2412 $input2411214114 $result2412214115))
        false)))

; if else
(assert
  (forall (($input2411 Int) ($result2412 Int) ($result214113 Int) ($uint214112 Int))
    (=> (and (not (= $result2412 1000))
             (= $result2412 $result214113)
             (id $input2411 $result214113)
             (= $input2411 $uint214112)
             (<= 0 $uint214112)
             (<= $uint214112 4294967295))
        ($main_if3342 $input2411 $result2412 $input2411 $result2412))))

(check-sat)
