(set-logic HORN)

(declare-fun $id_if3343 (Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3344 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
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
        ($id_if3343 x))))

; id precondition
(assert
  (forall ((x211117 Int))
    (=> (and ($id_if3343 x211117))
        ($id_pre (- x211117 1)))))

; post id
(assert
  (forall ((x211117 Int) ($result211118 Int))
    (=> (and (id (- x211117 1) $result211118)
             ($id_if3343 x211117))
        (id x211117 (+ $result211118 1)))))

; id precondition
(assert
  (forall (($input2413 Int) ($uint211119 Int))
    (=> (and (= $input2413 $uint211119)
             (<= 0 $uint211119)
             (<= $uint211119 4294967295))
        ($id_pre $input2413))))

; label ERROR
(assert
  (forall (($input2413 Int) ($result2414 Int) ($result211120 Int) ($uint211119 Int))
    (=> (and (= $result2414 100)
             (= $result2414 $result211120)
             (id $input2413 $result211120)
             (= $input2413 $uint211119)
             (<= 0 $uint211119)
             (<= $uint211119 4294967295))
        ($main_ERROR $input2413 $result2414))))

; error
(assert
  (forall (($input2413211121 Int) ($result2414211122 Int))
    (=> (and ($main_ERROR $input2413211121 $result2414211122))
        false)))

; if else
(assert
  (forall (($input2413 Int) ($result2414 Int) ($result211120 Int) ($uint211119 Int))
    (=> (and (not (= $result2414 100))
             (= $result2414 $result211120)
             (id $input2413 $result211120)
             (= $input2413 $uint211119)
             (<= 0 $uint211119)
             (<= $uint211119 4294967295))
        ($main_if3344 $input2413 $result2414))))

(check-sat)
