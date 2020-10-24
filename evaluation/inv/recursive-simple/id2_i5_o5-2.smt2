(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3306 (Int) Bool)
(declare-fun $id2_if3307 (Int) Bool)
(declare-fun $main_if3308 (Int Int) Bool)
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
        ($id_if3306 x))))

; id2 precondition
(assert
  (forall ((x210986 Int))
    (=> (and ($id_if3306 x210986))
        ($id2_pre (- x210986 1)))))

; post id
(assert
  (forall ((x210986 Int) ($result210987 Int))
    (=> (and (id2 (- x210986 1) $result210987)
             ($id_if3306 x210986))
        (id x210986 (+ $result210987 1)))))

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
        ($id2_if3307 x))))

; id precondition
(assert
  (forall ((x210988 Int))
    (=> (and ($id2_if3307 x210988))
        ($id_pre (- x210988 1)))))

; post id2
(assert
  (forall ((x210988 Int) ($result210989 Int))
    (=> (and (id (- x210988 1) $result210989)
             ($id2_if3307 x210988))
        (id2 x210988 (+ $result210989 1)))))

; id precondition
(assert
  (forall (($input2377 Int))
    (=> (and (= $input2377 5))
        ($id_pre $input2377))))

; label ERROR
(assert
  (forall (($input2377 Int) ($result2378 Int) ($result210990 Int))
    (=> (and (not (= $result2378 5))
             (= $result2378 $result210990)
             (id $input2377 $result210990)
             (= $input2377 5))
        ($main_ERROR $input2377 $result2378))))

; error
(assert
  (forall (($input2377210991 Int) ($result2378210992 Int))
    (=> (and ($main_ERROR $input2377210991 $result2378210992))
        false)))

; if else
(assert
  (forall (($input2377 Int) ($result2378 Int) ($result210990 Int))
    (=> (and (= $result2378 5)
             (= $result2378 $result210990)
             (id $input2377 $result210990)
             (= $input2377 5))
        ($main_if3308 $input2377 $result2378))))

(check-sat)
