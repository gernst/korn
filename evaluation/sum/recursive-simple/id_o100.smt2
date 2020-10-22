(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3344 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3343 (Int Int) Bool)
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
        ($id_if3343 x x))))

; id precondition
(assert
  (forall ((x214118 Int) (x Int))
    (=> (and ($id_if3343 x x214118))
        ($id_pre (- x214118 1)))))

; post id
(assert
  (forall ((x214118 Int) ($result214119 Int) (x Int))
    (=> (and (id (- x214118 1) $result214119)
             ($id_if3343 x x214118))
        (id x214118 (+ $result214119 1)))))

; id precondition
(assert
  (forall (($input2413 Int) ($uint214120 Int))
    (=> (and (= $input2413 $uint214120)
             (<= 0 $uint214120)
             (<= $uint214120 4294967295))
        ($id_pre $input2413))))

; label ERROR
(assert
  (forall (($input2413 Int) ($result2414 Int) ($result214121 Int) ($uint214120 Int))
    (=> (and (= $result2414 100)
             (= $result2414 $result214121)
             (id $input2413 $result214121)
             (= $input2413 $uint214120)
             (<= 0 $uint214120)
             (<= $uint214120 4294967295))
        ($main_ERROR $input2413 $result2414 $input2413 $result2414))))

; error
(assert
  (forall (($input2413 Int) ($result2414 Int) ($input2413214122 Int) ($result2414214123 Int))
    (=> (and ($main_ERROR $input2413 $result2414 $input2413214122 $result2414214123))
        false)))

; if else
(assert
  (forall (($input2413 Int) ($result2414 Int) ($result214121 Int) ($uint214120 Int))
    (=> (and (not (= $result2414 100))
             (= $result2414 $result214121)
             (id $input2413 $result214121)
             (= $input2413 $uint214120)
             (<= 0 $uint214120)
             (<= $uint214120 4294967295))
        ($main_if3344 $input2413 $result2414 $input2413 $result2414))))

(check-sat)
