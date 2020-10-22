(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3329 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3330 (Int Int) Bool)
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
        ($id_if3329 x))))

; id precondition
(assert
  (forall ((x211067 Int))
    (=> (and ($id_if3329 x211067))
        ($id_pre (- x211067 1)))))

; post id
(assert
  (forall ((x211067 Int) ($result211068 Int))
    (=> (and (id (- x211067 1) $result211068)
             ($id_if3329 x211067))
        (id x211067 (+ $result211068 1)))))

; id precondition
(assert
  (forall (($input2399 Int))
    (=> (and (= $input2399 20))
        ($id_pre $input2399))))

; label ERROR
(assert
  (forall (($input2399 Int) ($result2400 Int) ($result211069 Int))
    (=> (and (not (= $result2400 20))
             (= $result2400 $result211069)
             (id $input2399 $result211069)
             (= $input2399 20))
        ($main_ERROR $input2399 $result2400))))

; error
(assert
  (forall (($input2399211070 Int) ($result2400211071 Int))
    (=> (and ($main_ERROR $input2399211070 $result2400211071))
        false)))

; if else
(assert
  (forall (($input2399 Int) ($result2400 Int) ($result211069 Int))
    (=> (and (= $result2400 20)
             (= $result2400 $result211069)
             (id $input2399 $result211069)
             (= $input2399 20))
        ($main_if3330 $input2399 $result2400))))

(check-sat)
