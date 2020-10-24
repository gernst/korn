(set-logic HORN)

(declare-fun $main_if3346 (Int Int Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3345 (Int Int) Bool)
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
        ($id_if3345 x x))))

; id precondition
(assert
  (forall ((x214126 Int) (x Int))
    (=> (and ($id_if3345 x x214126))
        ($id_pre (- x214126 1)))))

; post id
(assert
  (forall ((x214126 Int) ($result214127 Int) (x Int))
    (=> (and (id (- x214126 1) $result214127)
             ($id_if3345 x x214126))
        (id x214126 (+ $result214127 1)))))

; id precondition
(assert
  (forall (($input2415 Int) ($uint214128 Int))
    (=> (and (= $input2415 $uint214128)
             (<= 0 $uint214128)
             (<= $uint214128 4294967295))
        ($id_pre $input2415))))

; label ERROR
(assert
  (forall (($input2415 Int) ($result2416 Int) ($result214129 Int) ($uint214128 Int))
    (=> (and (= $result2416 10)
             (= $result2416 $result214129)
             (id $input2415 $result214129)
             (= $input2415 $uint214128)
             (<= 0 $uint214128)
             (<= $uint214128 4294967295))
        ($main_ERROR $input2415 $result2416 $input2415 $result2416))))

; error
(assert
  (forall (($input2415 Int) ($result2416 Int) ($input2415214130 Int) ($result2416214131 Int))
    (=> (and ($main_ERROR $input2415 $result2416 $input2415214130 $result2416214131))
        false)))

; if else
(assert
  (forall (($input2415 Int) ($result2416 Int) ($result214129 Int) ($uint214128 Int))
    (=> (and (not (= $result2416 10))
             (= $result2416 $result214129)
             (id $input2415 $result214129)
             (= $input2415 $uint214128)
             (<= 0 $uint214128)
             (<= $uint214128 4294967295))
        ($main_if3346 $input2415 $result2416 $input2415 $result2416))))

(check-sat)
