(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3339 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3340 (Int Int) Bool)
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
        ($id_if3339 x))))

; id precondition
(assert
  (forall ((x211102 Int))
    (=> (and ($id_if3339 x211102))
        ($id_pre (- x211102 1)))))

; post id
(assert
  (forall ((x211102 Int) ($result211103 Int))
    (=> (and (id (- x211102 1) $result211103)
             ($id_if3339 x211102))
        (id x211102 (+ $result211103 1)))))

; id precondition
(assert
  (forall (($input2409 Int))
    (=> (and (= $input2409 5))
        ($id_pre $input2409))))

; label ERROR
(assert
  (forall (($input2409 Int) ($result2410 Int) ($result211104 Int))
    (=> (and (not (= $result2410 5))
             (= $result2410 $result211104)
             (id $input2409 $result211104)
             (= $input2409 5))
        ($main_ERROR $input2409 $result2410))))

; error
(assert
  (forall (($input2409211105 Int) ($result2410211106 Int))
    (=> (and ($main_ERROR $input2409211105 $result2410211106))
        false)))

; if else
(assert
  (forall (($input2409 Int) ($result2410 Int) ($result211104 Int))
    (=> (and (= $result2410 5)
             (= $result2410 $result211104)
             (id $input2409 $result211104)
             (= $input2409 5))
        ($main_if3340 $input2409 $result2410))))

(check-sat)
