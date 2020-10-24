(set-logic HORN)

(declare-fun $main_if3326 (Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3325 (Int) Bool)
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
        ($id_if3325 x))))

; id precondition
(assert
  (forall ((x211053 Int))
    (=> (and ($id_if3325 x211053))
        ($id_pre (- x211053 1)))))

; post id
(assert
  (forall ((x211053 Int) ($result211054 Int))
    (=> (and (id (- x211053 1) $result211054)
             ($id_if3325 x211053))
        (id x211053 (+ $result211054 1)))))

; id precondition
(assert
  (forall (($input2395 Int))
    (=> (and (= $input2395 15))
        ($id_pre $input2395))))

; label ERROR
(assert
  (forall (($input2395 Int) ($result2396 Int) ($result211055 Int))
    (=> (and (not (= $result2396 15))
             (= $result2396 $result211055)
             (id $input2395 $result211055)
             (= $input2395 15))
        ($main_ERROR $input2395 $result2396))))

; error
(assert
  (forall (($input2395211056 Int) ($result2396211057 Int))
    (=> (and ($main_ERROR $input2395211056 $result2396211057))
        false)))

; if else
(assert
  (forall (($input2395 Int) ($result2396 Int) ($result211055 Int))
    (=> (and (= $result2396 15)
             (= $result2396 $result211055)
             (id $input2395 $result211055)
             (= $input2395 15))
        ($main_if3326 $input2395 $result2396))))

(check-sat)
