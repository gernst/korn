(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3306 (Int Int) Bool)
(declare-fun $id2_if3307 (Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3308 (Int Int Int Int) Bool)
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
        ($id_if3306 x x))))

; id2 precondition
(assert
  (forall ((x213987 Int) (x Int))
    (=> (and ($id_if3306 x x213987))
        ($id2_pre (- x213987 1)))))

; post id
(assert
  (forall ((x213987 Int) ($result213988 Int) (x Int))
    (=> (and (id2 (- x213987 1) $result213988)
             ($id_if3306 x x213987))
        (id x213987 (+ $result213988 1)))))

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
        ($id2_if3307 x x))))

; id precondition
(assert
  (forall ((x213989 Int) (x Int))
    (=> (and ($id2_if3307 x x213989))
        ($id_pre (- x213989 1)))))

; post id2
(assert
  (forall ((x213989 Int) ($result213990 Int) (x Int))
    (=> (and (id (- x213989 1) $result213990)
             ($id2_if3307 x x213989))
        (id2 x213989 (+ $result213990 1)))))

; id precondition
(assert
  (forall (($input2377 Int))
    (=> (and (= $input2377 5))
        ($id_pre $input2377))))

; label ERROR
(assert
  (forall (($input2377 Int) ($result2378 Int) ($result213991 Int))
    (=> (and (not (= $result2378 5))
             (= $result2378 $result213991)
             (id $input2377 $result213991)
             (= $input2377 5))
        ($main_ERROR $input2377 $result2378 $input2377 $result2378))))

; error
(assert
  (forall (($input2377 Int) ($result2378 Int) ($input2377213992 Int) ($result2378213993 Int))
    (=> (and ($main_ERROR $input2377 $result2378 $input2377213992 $result2378213993))
        false)))

; if else
(assert
  (forall (($input2377 Int) ($result2378 Int) ($result213991 Int))
    (=> (and (= $result2378 5)
             (= $result2378 $result213991)
             (id $input2377 $result213991)
             (= $input2377 5))
        ($main_if3308 $input2377 $result2378 $input2377 $result2378))))

(check-sat)
