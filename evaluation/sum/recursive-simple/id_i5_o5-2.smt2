(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3339 (Int Int) Bool)
(declare-fun $main_if3340 (Int Int Int Int) Bool)
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
        ($id_if3339 x x))))

; id precondition
(assert
  (forall ((x214103 Int) (x Int))
    (=> (and ($id_if3339 x x214103))
        ($id_pre (- x214103 1)))))

; post id
(assert
  (forall ((x214103 Int) ($result214104 Int) (x Int))
    (=> (and (id (- x214103 1) $result214104)
             ($id_if3339 x x214103))
        (id x214103 (+ $result214104 1)))))

; id precondition
(assert
  (forall (($input2409 Int))
    (=> (and (= $input2409 5))
        ($id_pre $input2409))))

; label ERROR
(assert
  (forall (($input2409 Int) ($result2410 Int) ($result214105 Int))
    (=> (and (not (= $result2410 5))
             (= $result2410 $result214105)
             (id $input2409 $result214105)
             (= $input2409 5))
        ($main_ERROR $input2409 $result2410 $input2409 $result2410))))

; error
(assert
  (forall (($input2409 Int) ($result2410 Int) ($input2409214106 Int) ($result2410214107 Int))
    (=> (and ($main_ERROR $input2409 $result2410 $input2409214106 $result2410214107))
        false)))

; if else
(assert
  (forall (($input2409 Int) ($result2410 Int) ($result214105 Int))
    (=> (and (= $result2410 5)
             (= $result2410 $result214105)
             (id $input2409 $result214105)
             (= $input2409 5))
        ($main_if3340 $input2409 $result2410 $input2409 $result2410))))

(check-sat)
