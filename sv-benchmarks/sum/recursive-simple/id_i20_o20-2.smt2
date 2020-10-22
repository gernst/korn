(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3332 (Int Int Int Int) Bool)
(declare-fun $id_if3331 (Int Int) Bool)
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
        ($id_if3331 x x))))

; id precondition
(assert
  (forall ((x214075 Int) (x Int))
    (=> (and ($id_if3331 x x214075))
        ($id_pre (- x214075 1)))))

; post id
(assert
  (forall ((x214075 Int) ($result214076 Int) (x Int))
    (=> (and (id (- x214075 1) $result214076)
             ($id_if3331 x x214075))
        (id x214075 (+ $result214076 1)))))

; id precondition
(assert
  (forall (($input2401 Int))
    (=> (and (= $input2401 20))
        ($id_pre $input2401))))

; label ERROR
(assert
  (forall (($input2401 Int) ($result2402 Int) ($result214077 Int))
    (=> (and (= $result2402 20)
             (= $result2402 $result214077)
             (id $input2401 $result214077)
             (= $input2401 20))
        ($main_ERROR $input2401 $result2402 $input2401 $result2402))))

; error
(assert
  (forall (($input2401 Int) ($result2402 Int) ($input2401214078 Int) ($result2402214079 Int))
    (=> (and ($main_ERROR $input2401 $result2402 $input2401214078 $result2402214079))
        false)))

; if else
(assert
  (forall (($input2401 Int) ($result2402 Int) ($result214077 Int))
    (=> (and (not (= $result2402 20))
             (= $result2402 $result214077)
             (id $input2401 $result214077)
             (= $input2401 20))
        ($main_if3332 $input2401 $result2402 $input2401 $result2402))))

(check-sat)
