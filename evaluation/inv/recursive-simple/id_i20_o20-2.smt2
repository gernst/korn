(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3332 (Int Int) Bool)
(declare-fun $id_if3331 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
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
        ($id_if3331 x))))

; id precondition
(assert
  (forall ((x211074 Int))
    (=> (and ($id_if3331 x211074))
        ($id_pre (- x211074 1)))))

; post id
(assert
  (forall ((x211074 Int) ($result211075 Int))
    (=> (and (id (- x211074 1) $result211075)
             ($id_if3331 x211074))
        (id x211074 (+ $result211075 1)))))

; id precondition
(assert
  (forall (($input2401 Int))
    (=> (and (= $input2401 20))
        ($id_pre $input2401))))

; label ERROR
(assert
  (forall (($input2401 Int) ($result2402 Int) ($result211076 Int))
    (=> (and (= $result2402 20)
             (= $result2402 $result211076)
             (id $input2401 $result211076)
             (= $input2401 20))
        ($main_ERROR $input2401 $result2402))))

; error
(assert
  (forall (($input2401211077 Int) ($result2402211078 Int))
    (=> (and ($main_ERROR $input2401211077 $result2402211078))
        false)))

; if else
(assert
  (forall (($input2401 Int) ($result2402 Int) ($result211076 Int))
    (=> (and (not (= $result2402 20))
             (= $result2402 $result211076)
             (id $input2401 $result211076)
             (= $input2401 20))
        ($main_if3332 $input2401 $result2402))))

(check-sat)
