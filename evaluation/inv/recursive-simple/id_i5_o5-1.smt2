(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3338 (Int Int) Bool)
(declare-fun $id_if3337 (Int) Bool)
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
        ($id_if3337 x))))

; id precondition
(assert
  (forall ((x211095 Int))
    (=> (and ($id_if3337 x211095))
        ($id_pre (- x211095 1)))))

; post id
(assert
  (forall ((x211095 Int) ($result211096 Int))
    (=> (and (id (- x211095 1) $result211096)
             ($id_if3337 x211095))
        (id x211095 (+ $result211096 1)))))

; id precondition
(assert
  (forall (($input2407 Int))
    (=> (and (= $input2407 5))
        ($id_pre $input2407))))

; label ERROR
(assert
  (forall (($input2407 Int) ($result2408 Int) ($result211097 Int))
    (=> (and (= $result2408 5)
             (= $result2408 $result211097)
             (id $input2407 $result211097)
             (= $input2407 5))
        ($main_ERROR $input2407 $result2408))))

; error
(assert
  (forall (($input2407211098 Int) ($result2408211099 Int))
    (=> (and ($main_ERROR $input2407211098 $result2408211099))
        false)))

; if else
(assert
  (forall (($input2407 Int) ($result2408 Int) ($result211097 Int))
    (=> (and (not (= $result2408 5))
             (= $result2408 $result211097)
             (id $input2407 $result211097)
             (= $input2407 5))
        ($main_if3338 $input2407 $result2408))))

(check-sat)
