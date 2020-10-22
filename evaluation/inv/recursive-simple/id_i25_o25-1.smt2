(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3334 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3333 (Int) Bool)
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
        ($id_if3333 x))))

; id precondition
(assert
  (forall ((x211081 Int))
    (=> (and ($id_if3333 x211081))
        ($id_pre (- x211081 1)))))

; post id
(assert
  (forall ((x211081 Int) ($result211082 Int))
    (=> (and (id (- x211081 1) $result211082)
             ($id_if3333 x211081))
        (id x211081 (+ $result211082 1)))))

; id precondition
(assert
  (forall (($input2403 Int))
    (=> (and (= $input2403 25))
        ($id_pre $input2403))))

; label ERROR
(assert
  (forall (($input2403 Int) ($result2404 Int) ($result211083 Int))
    (=> (and (not (= $result2404 25))
             (= $result2404 $result211083)
             (id $input2403 $result211083)
             (= $input2403 25))
        ($main_ERROR $input2403 $result2404))))

; error
(assert
  (forall (($input2403211084 Int) ($result2404211085 Int))
    (=> (and ($main_ERROR $input2403211084 $result2404211085))
        false)))

; if else
(assert
  (forall (($input2403 Int) ($result2404 Int) ($result211083 Int))
    (=> (and (= $result2404 25)
             (= $result2404 $result211083)
             (id $input2403 $result211083)
             (= $input2403 25))
        ($main_if3334 $input2403 $result2404))))

(check-sat)
