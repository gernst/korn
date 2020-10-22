(set-logic HORN)

(declare-fun $main_if3346 (Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun id (Int Int) Bool)
(declare-fun $id_if3345 (Int) Bool)

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
        ($id_if3345 x))))

; id precondition
(assert
  (forall ((x211125 Int))
    (=> (and ($id_if3345 x211125))
        ($id_pre (- x211125 1)))))

; post id
(assert
  (forall ((x211125 Int) ($result211126 Int))
    (=> (and (id (- x211125 1) $result211126)
             ($id_if3345 x211125))
        (id x211125 (+ $result211126 1)))))

; id precondition
(assert
  (forall (($input2415 Int) ($uint211127 Int))
    (=> (and (= $input2415 $uint211127)
             (<= 0 $uint211127)
             (<= $uint211127 4294967295))
        ($id_pre $input2415))))

; label ERROR
(assert
  (forall (($input2415 Int) ($result2416 Int) ($result211128 Int) ($uint211127 Int))
    (=> (and (= $result2416 10)
             (= $result2416 $result211128)
             (id $input2415 $result211128)
             (= $input2415 $uint211127)
             (<= 0 $uint211127)
             (<= $uint211127 4294967295))
        ($main_ERROR $input2415 $result2416))))

; error
(assert
  (forall (($input2415211129 Int) ($result2416211130 Int))
    (=> (and ($main_ERROR $input2415211129 $result2416211130))
        false)))

; if else
(assert
  (forall (($input2415 Int) ($result2416 Int) ($result211128 Int) ($uint211127 Int))
    (=> (and (not (= $result2416 10))
             (= $result2416 $result211128)
             (id $input2415 $result211128)
             (= $input2415 $uint211127)
             (<= 0 $uint211127)
             (<= $uint211127 4294967295))
        ($main_if3346 $input2415 $result2416))))

(check-sat)
