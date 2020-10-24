(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3352 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3351 (Int) Bool)
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
        ($id_if3351 x))))

; id precondition
(assert
  (forall ((x211149 Int))
    (=> (and ($id_if3351 x211149))
        ($id_pre (- x211149 1)))))

; post id
(assert
  (forall ((x211149 Int) ($result211150 Int))
    (=> (and (id (- x211149 1) $result211150)
             ($id_if3351 x211149))
        (id x211149 (+ $result211150 1)))))

; id precondition
(assert
  (forall (($input2421 Int) ($uint211151 Int))
    (=> (and (= $input2421 $uint211151)
             (<= 0 $uint211151)
             (<= $uint211151 4294967295))
        ($id_pre $input2421))))

; label ERROR
(assert
  (forall (($input2421 Int) ($result2422 Int) ($result211152 Int) ($uint211151 Int))
    (=> (and (= $result2422 3)
             (= $result2422 $result211152)
             (id $input2421 $result211152)
             (= $input2421 $uint211151)
             (<= 0 $uint211151)
             (<= $uint211151 4294967295))
        ($main_ERROR $input2421 $result2422))))

; error
(assert
  (forall (($input2421211153 Int) ($result2422211154 Int))
    (=> (and ($main_ERROR $input2421211153 $result2422211154))
        false)))

; if else
(assert
  (forall (($input2421 Int) ($result2422 Int) ($result211152 Int) ($uint211151 Int))
    (=> (and (not (= $result2422 3))
             (= $result2422 $result211152)
             (id $input2421 $result211152)
             (= $input2421 $uint211151)
             (<= 0 $uint211151)
             (<= $uint211151 4294967295))
        ($main_if3352 $input2421 $result2422))))

(check-sat)
