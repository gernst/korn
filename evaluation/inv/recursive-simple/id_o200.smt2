(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3348 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3347 (Int) Bool)
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
        ($id_if3347 x))))

; id precondition
(assert
  (forall ((x211133 Int))
    (=> (and ($id_if3347 x211133))
        ($id_pre (- x211133 1)))))

; post id
(assert
  (forall ((x211133 Int) ($result211134 Int))
    (=> (and (id (- x211133 1) $result211134)
             ($id_if3347 x211133))
        (id x211133 (+ $result211134 1)))))

; id precondition
(assert
  (forall (($input2417 Int) ($uint211135 Int))
    (=> (and (= $input2417 $uint211135)
             (<= 0 $uint211135)
             (<= $uint211135 4294967295))
        ($id_pre $input2417))))

; label ERROR
(assert
  (forall (($input2417 Int) ($result2418 Int) ($result211136 Int) ($uint211135 Int))
    (=> (and (= $result2418 200)
             (= $result2418 $result211136)
             (id $input2417 $result211136)
             (= $input2417 $uint211135)
             (<= 0 $uint211135)
             (<= $uint211135 4294967295))
        ($main_ERROR $input2417 $result2418))))

; error
(assert
  (forall (($input2417211137 Int) ($result2418211138 Int))
    (=> (and ($main_ERROR $input2417211137 $result2418211138))
        false)))

; if else
(assert
  (forall (($input2417 Int) ($result2418 Int) ($result211136 Int) ($uint211135 Int))
    (=> (and (not (= $result2418 200))
             (= $result2418 $result211136)
             (id $input2417 $result211136)
             (= $input2417 $uint211135)
             (<= 0 $uint211135)
             (<= $uint211135 4294967295))
        ($main_if3348 $input2417 $result2418))))

(check-sat)
