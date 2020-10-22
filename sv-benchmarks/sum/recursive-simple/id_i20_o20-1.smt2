(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3329 (Int Int) Bool)
(declare-fun $main_if3330 (Int Int Int Int) Bool)
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
        ($id_if3329 x x))))

; id precondition
(assert
  (forall ((x214068 Int) (x Int))
    (=> (and ($id_if3329 x x214068))
        ($id_pre (- x214068 1)))))

; post id
(assert
  (forall ((x214068 Int) ($result214069 Int) (x Int))
    (=> (and (id (- x214068 1) $result214069)
             ($id_if3329 x x214068))
        (id x214068 (+ $result214069 1)))))

; id precondition
(assert
  (forall (($input2399 Int))
    (=> (and (= $input2399 20))
        ($id_pre $input2399))))

; label ERROR
(assert
  (forall (($input2399 Int) ($result2400 Int) ($result214070 Int))
    (=> (and (not (= $result2400 20))
             (= $result2400 $result214070)
             (id $input2399 $result214070)
             (= $input2399 20))
        ($main_ERROR $input2399 $result2400 $input2399 $result2400))))

; error
(assert
  (forall (($input2399 Int) ($result2400 Int) ($input2399214071 Int) ($result2400214072 Int))
    (=> (and ($main_ERROR $input2399 $result2400 $input2399214071 $result2400214072))
        false)))

; if else
(assert
  (forall (($input2399 Int) ($result2400 Int) ($result214070 Int))
    (=> (and (= $result2400 20)
             (= $result2400 $result214070)
             (id $input2399 $result214070)
             (= $input2399 20))
        ($main_if3330 $input2399 $result2400 $input2399 $result2400))))

(check-sat)
