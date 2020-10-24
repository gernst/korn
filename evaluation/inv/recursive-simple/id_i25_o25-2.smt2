(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3335 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3336 (Int Int) Bool)
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
        ($id_if3335 x))))

; id precondition
(assert
  (forall ((x211088 Int))
    (=> (and ($id_if3335 x211088))
        ($id_pre (- x211088 1)))))

; post id
(assert
  (forall ((x211088 Int) ($result211089 Int))
    (=> (and (id (- x211088 1) $result211089)
             ($id_if3335 x211088))
        (id x211088 (+ $result211089 1)))))

; id precondition
(assert
  (forall (($input2405 Int))
    (=> (and (= $input2405 25))
        ($id_pre $input2405))))

; label ERROR
(assert
  (forall (($input2405 Int) ($result2406 Int) ($result211090 Int))
    (=> (and (= $result2406 25)
             (= $result2406 $result211090)
             (id $input2405 $result211090)
             (= $input2405 25))
        ($main_ERROR $input2405 $result2406))))

; error
(assert
  (forall (($input2405211091 Int) ($result2406211092 Int))
    (=> (and ($main_ERROR $input2405211091 $result2406211092))
        false)))

; if else
(assert
  (forall (($input2405 Int) ($result2406 Int) ($result211090 Int))
    (=> (and (not (= $result2406 25))
             (= $result2406 $result211090)
             (id $input2405 $result211090)
             (= $input2405 25))
        ($main_if3336 $input2405 $result2406))))

(check-sat)
