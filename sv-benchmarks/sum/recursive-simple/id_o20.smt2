(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3349 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3350 (Int Int Int Int) Bool)
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
        ($id_if3349 x x))))

; id precondition
(assert
  (forall ((x214142 Int) (x Int))
    (=> (and ($id_if3349 x x214142))
        ($id_pre (- x214142 1)))))

; post id
(assert
  (forall ((x214142 Int) ($result214143 Int) (x Int))
    (=> (and (id (- x214142 1) $result214143)
             ($id_if3349 x x214142))
        (id x214142 (+ $result214143 1)))))

; id precondition
(assert
  (forall (($input2419 Int) ($uint214144 Int))
    (=> (and (= $input2419 $uint214144)
             (<= 0 $uint214144)
             (<= $uint214144 4294967295))
        ($id_pre $input2419))))

; label ERROR
(assert
  (forall (($input2419 Int) ($result2420 Int) ($result214145 Int) ($uint214144 Int))
    (=> (and (= $result2420 20)
             (= $result2420 $result214145)
             (id $input2419 $result214145)
             (= $input2419 $uint214144)
             (<= 0 $uint214144)
             (<= $uint214144 4294967295))
        ($main_ERROR $input2419 $result2420 $input2419 $result2420))))

; error
(assert
  (forall (($input2419 Int) ($result2420 Int) ($input2419214146 Int) ($result2420214147 Int))
    (=> (and ($main_ERROR $input2419 $result2420 $input2419214146 $result2420214147))
        false)))

; if else
(assert
  (forall (($input2419 Int) ($result2420 Int) ($result214145 Int) ($uint214144 Int))
    (=> (and (not (= $result2420 20))
             (= $result2420 $result214145)
             (id $input2419 $result214145)
             (= $input2419 $uint214144)
             (<= 0 $uint214144)
             (<= $uint214144 4294967295))
        ($main_if3350 $input2419 $result2420 $input2419 $result2420))))

(check-sat)
