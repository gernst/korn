(set-logic HORN)

(declare-fun $main_if3322 (Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3321 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
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
        ($id_if3321 x))))

; id precondition
(assert
  (forall ((x211039 Int))
    (=> (and ($id_if3321 x211039))
        ($id_pre (- x211039 1)))))

; post id
(assert
  (forall ((x211039 Int) ($result211040 Int))
    (=> (and (id (- x211039 1) $result211040)
             ($id_if3321 x211039))
        (id x211039 (+ $result211040 1)))))

; id precondition
(assert
  (forall (($input2391 Int))
    (=> (and (= $input2391 10))
        ($id_pre $input2391))))

; label ERROR
(assert
  (forall (($input2391 Int) ($result2392 Int) ($result211041 Int))
    (=> (and (= $result2392 10)
             (= $result2392 $result211041)
             (id $input2391 $result211041)
             (= $input2391 10))
        ($main_ERROR $input2391 $result2392))))

; error
(assert
  (forall (($input2391211042 Int) ($result2392211043 Int))
    (=> (and ($main_ERROR $input2391211042 $result2392211043))
        false)))

; if else
(assert
  (forall (($input2391 Int) ($result2392 Int) ($result211041 Int))
    (=> (and (not (= $result2392 10))
             (= $result2392 $result211041)
             (id $input2391 $result211041)
             (= $input2391 10))
        ($main_if3322 $input2391 $result2392))))

(check-sat)
