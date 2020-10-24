(set-logic HORN)

(declare-fun $main_if3326 (Int Int Int Int) Bool)
(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3325 (Int Int) Bool)
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
        ($id_if3325 x x))))

; id precondition
(assert
  (forall ((x214054 Int) (x Int))
    (=> (and ($id_if3325 x x214054))
        ($id_pre (- x214054 1)))))

; post id
(assert
  (forall ((x214054 Int) ($result214055 Int) (x Int))
    (=> (and (id (- x214054 1) $result214055)
             ($id_if3325 x x214054))
        (id x214054 (+ $result214055 1)))))

; id precondition
(assert
  (forall (($input2395 Int))
    (=> (and (= $input2395 15))
        ($id_pre $input2395))))

; label ERROR
(assert
  (forall (($input2395 Int) ($result2396 Int) ($result214056 Int))
    (=> (and (not (= $result2396 15))
             (= $result2396 $result214056)
             (id $input2395 $result214056)
             (= $input2395 15))
        ($main_ERROR $input2395 $result2396 $input2395 $result2396))))

; error
(assert
  (forall (($input2395 Int) ($result2396 Int) ($input2395214057 Int) ($result2396214058 Int))
    (=> (and ($main_ERROR $input2395 $result2396 $input2395214057 $result2396214058))
        false)))

; if else
(assert
  (forall (($input2395 Int) ($result2396 Int) ($result214056 Int))
    (=> (and (= $result2396 15)
             (= $result2396 $result214056)
             (id $input2395 $result214056)
             (= $input2395 15))
        ($main_if3326 $input2395 $result2396 $input2395 $result2396))))

(check-sat)
