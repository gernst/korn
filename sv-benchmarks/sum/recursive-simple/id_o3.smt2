(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3351 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3352 (Int Int Int Int) Bool)
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
        ($id_if3351 x x))))

; id precondition
(assert
  (forall ((x214150 Int) (x Int))
    (=> (and ($id_if3351 x x214150))
        ($id_pre (- x214150 1)))))

; post id
(assert
  (forall ((x214150 Int) ($result214151 Int) (x Int))
    (=> (and (id (- x214150 1) $result214151)
             ($id_if3351 x x214150))
        (id x214150 (+ $result214151 1)))))

; id precondition
(assert
  (forall (($input2421 Int) ($uint214152 Int))
    (=> (and (= $input2421 $uint214152)
             (<= 0 $uint214152)
             (<= $uint214152 4294967295))
        ($id_pre $input2421))))

; label ERROR
(assert
  (forall (($input2421 Int) ($result2422 Int) ($result214153 Int) ($uint214152 Int))
    (=> (and (= $result2422 3)
             (= $result2422 $result214153)
             (id $input2421 $result214153)
             (= $input2421 $uint214152)
             (<= 0 $uint214152)
             (<= $uint214152 4294967295))
        ($main_ERROR $input2421 $result2422 $input2421 $result2422))))

; error
(assert
  (forall (($input2421 Int) ($result2422 Int) ($input2421214154 Int) ($result2422214155 Int))
    (=> (and ($main_ERROR $input2421 $result2422 $input2421214154 $result2422214155))
        false)))

; if else
(assert
  (forall (($input2421 Int) ($result2422 Int) ($result214153 Int) ($uint214152 Int))
    (=> (and (not (= $result2422 3))
             (= $result2422 $result214153)
             (id $input2421 $result214153)
             (= $input2421 $uint214152)
             (<= 0 $uint214152)
             (<= $uint214152 4294967295))
        ($main_if3352 $input2421 $result2422 $input2421 $result2422))))

(check-sat)
