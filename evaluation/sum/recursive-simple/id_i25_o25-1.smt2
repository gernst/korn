(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3334 (Int Int Int Int) Bool)
(declare-fun $id_if3333 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
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
        ($id_if3333 x x))))

; id precondition
(assert
  (forall ((x214082 Int) (x Int))
    (=> (and ($id_if3333 x x214082))
        ($id_pre (- x214082 1)))))

; post id
(assert
  (forall ((x214082 Int) ($result214083 Int) (x Int))
    (=> (and (id (- x214082 1) $result214083)
             ($id_if3333 x x214082))
        (id x214082 (+ $result214083 1)))))

; id precondition
(assert
  (forall (($input2403 Int))
    (=> (and (= $input2403 25))
        ($id_pre $input2403))))

; label ERROR
(assert
  (forall (($input2403 Int) ($result2404 Int) ($result214084 Int))
    (=> (and (not (= $result2404 25))
             (= $result2404 $result214084)
             (id $input2403 $result214084)
             (= $input2403 25))
        ($main_ERROR $input2403 $result2404 $input2403 $result2404))))

; error
(assert
  (forall (($input2403 Int) ($result2404 Int) ($input2403214085 Int) ($result2404214086 Int))
    (=> (and ($main_ERROR $input2403 $result2404 $input2403214085 $result2404214086))
        false)))

; if else
(assert
  (forall (($input2403 Int) ($result2404 Int) ($result214084 Int))
    (=> (and (= $result2404 25)
             (= $result2404 $result214084)
             (id $input2403 $result214084)
             (= $input2403 25))
        ($main_if3334 $input2403 $result2404 $input2403 $result2404))))

(check-sat)
