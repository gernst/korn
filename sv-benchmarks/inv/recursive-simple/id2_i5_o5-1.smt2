(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $main_if3305 (Int Int) Bool)
(declare-fun $id2_if3304 (Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3303 (Int) Bool)
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
        ($id_if3303 x))))

; id2 precondition
(assert
  (forall ((x210977 Int))
    (=> (and ($id_if3303 x210977))
        ($id2_pre (- x210977 1)))))

; post id
(assert
  (forall ((x210977 Int) ($result210978 Int))
    (=> (and (id2 (- x210977 1) $result210978)
             ($id_if3303 x210977))
        (id x210977 (+ $result210978 1)))))

; post id2
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id2_pre x))
        (id2 x 0))))

; if else
(assert
  (forall ((x Int))
    (=> (and (not (= x 0))
             ($id2_pre x))
        ($id2_if3304 x))))

; id precondition
(assert
  (forall ((x210979 Int))
    (=> (and ($id2_if3304 x210979))
        ($id_pre (- x210979 1)))))

; post id2
(assert
  (forall ((x210979 Int) ($result210980 Int))
    (=> (and (id (- x210979 1) $result210980)
             ($id2_if3304 x210979))
        (id2 x210979 (+ $result210980 1)))))

; id precondition
(assert
  (forall (($input2375 Int))
    (=> (and (= $input2375 5))
        ($id_pre $input2375))))

; label ERROR
(assert
  (forall (($input2375 Int) ($result2376 Int) ($result210981 Int))
    (=> (and (= $result2376 5)
             (= $result2376 $result210981)
             (id $input2375 $result210981)
             (= $input2375 5))
        ($main_ERROR $input2375 $result2376))))

; error
(assert
  (forall (($input2375210982 Int) ($result2376210983 Int))
    (=> (and ($main_ERROR $input2375210982 $result2376210983))
        false)))

; if else
(assert
  (forall (($input2375 Int) ($result2376 Int) ($result210981 Int))
    (=> (and (not (= $result2376 5))
             (= $result2376 $result210981)
             (id $input2375 $result210981)
             (= $input2375 5))
        ($main_if3305 $input2375 $result2376))))

(check-sat)
