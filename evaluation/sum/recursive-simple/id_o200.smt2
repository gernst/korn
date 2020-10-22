(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3348 (Int Int Int Int) Bool)
(declare-fun $id_if3347 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
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
        ($id_if3347 x x))))

; id precondition
(assert
  (forall ((x214134 Int) (x Int))
    (=> (and ($id_if3347 x x214134))
        ($id_pre (- x214134 1)))))

; post id
(assert
  (forall ((x214134 Int) ($result214135 Int) (x Int))
    (=> (and (id (- x214134 1) $result214135)
             ($id_if3347 x x214134))
        (id x214134 (+ $result214135 1)))))

; id precondition
(assert
  (forall (($input2417 Int) ($uint214136 Int))
    (=> (and (= $input2417 $uint214136)
             (<= 0 $uint214136)
             (<= $uint214136 4294967295))
        ($id_pre $input2417))))

; label ERROR
(assert
  (forall (($input2417 Int) ($result2418 Int) ($result214137 Int) ($uint214136 Int))
    (=> (and (= $result2418 200)
             (= $result2418 $result214137)
             (id $input2417 $result214137)
             (= $input2417 $uint214136)
             (<= 0 $uint214136)
             (<= $uint214136 4294967295))
        ($main_ERROR $input2417 $result2418 $input2417 $result2418))))

; error
(assert
  (forall (($input2417 Int) ($result2418 Int) ($input2417214138 Int) ($result2418214139 Int))
    (=> (and ($main_ERROR $input2417 $result2418 $input2417214138 $result2418214139))
        false)))

; if else
(assert
  (forall (($input2417 Int) ($result2418 Int) ($result214137 Int) ($uint214136 Int))
    (=> (and (not (= $result2418 200))
             (= $result2418 $result214137)
             (id $input2417 $result214137)
             (= $input2417 $uint214136)
             (<= 0 $uint214136)
             (<= $uint214136 4294967295))
        ($main_if3348 $input2417 $result2418 $input2417 $result2418))))

(check-sat)
