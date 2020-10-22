(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3327 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3328 (Int Int) Bool)
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
        ($id_if3327 x))))

; id precondition
(assert
  (forall ((x211060 Int))
    (=> (and ($id_if3327 x211060))
        ($id_pre (- x211060 1)))))

; post id
(assert
  (forall ((x211060 Int) ($result211061 Int))
    (=> (and (id (- x211060 1) $result211061)
             ($id_if3327 x211060))
        (id x211060 (+ $result211061 1)))))

; id precondition
(assert
  (forall (($input2397 Int))
    (=> (and (= $input2397 15))
        ($id_pre $input2397))))

; label ERROR
(assert
  (forall (($input2397 Int) ($result2398 Int) ($result211062 Int))
    (=> (and (= $result2398 15)
             (= $result2398 $result211062)
             (id $input2397 $result211062)
             (= $input2397 15))
        ($main_ERROR $input2397 $result2398))))

; error
(assert
  (forall (($input2397211063 Int) ($result2398211064 Int))
    (=> (and ($main_ERROR $input2397211063 $result2398211064))
        false)))

; if else
(assert
  (forall (($input2397 Int) ($result2398 Int) ($result211062 Int))
    (=> (and (not (= $result2398 15))
             (= $result2398 $result211062)
             (id $input2397 $result211062)
             (= $input2397 15))
        ($main_if3328 $input2397 $result2398))))

(check-sat)
