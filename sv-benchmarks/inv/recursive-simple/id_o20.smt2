(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3350 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3349 (Int) Bool)
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
        ($id_if3349 x))))

; id precondition
(assert
  (forall ((x211141 Int))
    (=> (and ($id_if3349 x211141))
        ($id_pre (- x211141 1)))))

; post id
(assert
  (forall ((x211141 Int) ($result211142 Int))
    (=> (and (id (- x211141 1) $result211142)
             ($id_if3349 x211141))
        (id x211141 (+ $result211142 1)))))

; id precondition
(assert
  (forall (($input2419 Int) ($uint211143 Int))
    (=> (and (= $input2419 $uint211143)
             (<= 0 $uint211143)
             (<= $uint211143 4294967295))
        ($id_pre $input2419))))

; label ERROR
(assert
  (forall (($input2419 Int) ($result2420 Int) ($result211144 Int) ($uint211143 Int))
    (=> (and (= $result2420 20)
             (= $result2420 $result211144)
             (id $input2419 $result211144)
             (= $input2419 $uint211143)
             (<= 0 $uint211143)
             (<= $uint211143 4294967295))
        ($main_ERROR $input2419 $result2420))))

; error
(assert
  (forall (($input2419211145 Int) ($result2420211146 Int))
    (=> (and ($main_ERROR $input2419211145 $result2420211146))
        false)))

; if else
(assert
  (forall (($input2419 Int) ($result2420 Int) ($result211144 Int) ($uint211143 Int))
    (=> (and (not (= $result2420 20))
             (= $result2420 $result211144)
             (id $input2419 $result211144)
             (= $input2419 $uint211143)
             (<= 0 $uint211143)
             (<= $uint211143 4294967295))
        ($main_if3350 $input2419 $result2420))))

(check-sat)
