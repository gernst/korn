(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3324 (Int Int) Bool)
(declare-fun id (Int Int) Bool)
(declare-fun $id_if3323 (Int) Bool)

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
        ($id_if3323 x))))

; id precondition
(assert
  (forall ((x211046 Int))
    (=> (and ($id_if3323 x211046))
        ($id_pre (- x211046 1)))))

; post id
(assert
  (forall ((x211046 Int) ($result211047 Int))
    (=> (and (id (- x211046 1) $result211047)
             ($id_if3323 x211046))
        (id x211046 (+ $result211047 1)))))

; id precondition
(assert
  (forall (($input2393 Int))
    (=> (and (= $input2393 10))
        ($id_pre $input2393))))

; label ERROR
(assert
  (forall (($input2393 Int) ($result2394 Int) ($result211048 Int))
    (=> (and (not (= $result2394 10))
             (= $result2394 $result211048)
             (id $input2393 $result211048)
             (= $input2393 10))
        ($main_ERROR $input2393 $result2394))))

; error
(assert
  (forall (($input2393211049 Int) ($result2394211050 Int))
    (=> (and ($main_ERROR $input2393211049 $result2394211050))
        false)))

; if else
(assert
  (forall (($input2393 Int) ($result2394 Int) ($result211048 Int))
    (=> (and (= $result2394 10)
             (= $result2394 $result211048)
             (id $input2393 $result211048)
             (= $input2393 10))
        ($main_if3324 $input2393 $result2394))))

(check-sat)
