(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3327 (Int Int) Bool)
(declare-fun $main_if3328 (Int Int Int Int) Bool)
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
        ($id_if3327 x x))))

; id precondition
(assert
  (forall ((x214061 Int) (x Int))
    (=> (and ($id_if3327 x x214061))
        ($id_pre (- x214061 1)))))

; post id
(assert
  (forall ((x214061 Int) ($result214062 Int) (x Int))
    (=> (and (id (- x214061 1) $result214062)
             ($id_if3327 x x214061))
        (id x214061 (+ $result214062 1)))))

; id precondition
(assert
  (forall (($input2397 Int))
    (=> (and (= $input2397 15))
        ($id_pre $input2397))))

; label ERROR
(assert
  (forall (($input2397 Int) ($result2398 Int) ($result214063 Int))
    (=> (and (= $result2398 15)
             (= $result2398 $result214063)
             (id $input2397 $result214063)
             (= $input2397 15))
        ($main_ERROR $input2397 $result2398 $input2397 $result2398))))

; error
(assert
  (forall (($input2397 Int) ($result2398 Int) ($input2397214064 Int) ($result2398214065 Int))
    (=> (and ($main_ERROR $input2397 $result2398 $input2397214064 $result2398214065))
        false)))

; if else
(assert
  (forall (($input2397 Int) ($result2398 Int) ($result214063 Int))
    (=> (and (not (= $result2398 15))
             (= $result2398 $result214063)
             (id $input2397 $result214063)
             (= $input2397 15))
        ($main_if3328 $input2397 $result2398 $input2397 $result2398))))

(check-sat)
