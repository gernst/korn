(set-logic HORN)

(declare-fun $main_if3322 (Int Int Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3321 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
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
        ($id_if3321 x x))))

; id precondition
(assert
  (forall ((x214040 Int) (x Int))
    (=> (and ($id_if3321 x x214040))
        ($id_pre (- x214040 1)))))

; post id
(assert
  (forall ((x214040 Int) ($result214041 Int) (x Int))
    (=> (and (id (- x214040 1) $result214041)
             ($id_if3321 x x214040))
        (id x214040 (+ $result214041 1)))))

; id precondition
(assert
  (forall (($input2391 Int))
    (=> (and (= $input2391 10))
        ($id_pre $input2391))))

; label ERROR
(assert
  (forall (($input2391 Int) ($result2392 Int) ($result214042 Int))
    (=> (and (= $result2392 10)
             (= $result2392 $result214042)
             (id $input2391 $result214042)
             (= $input2391 10))
        ($main_ERROR $input2391 $result2392 $input2391 $result2392))))

; error
(assert
  (forall (($input2391 Int) ($result2392 Int) ($input2391214043 Int) ($result2392214044 Int))
    (=> (and ($main_ERROR $input2391 $result2392 $input2391214043 $result2392214044))
        false)))

; if else
(assert
  (forall (($input2391 Int) ($result2392 Int) ($result214042 Int))
    (=> (and (not (= $result2392 10))
             (= $result2392 $result214042)
             (id $input2391 $result214042)
             (= $input2391 10))
        ($main_if3322 $input2391 $result2392 $input2391 $result2392))))

(check-sat)
