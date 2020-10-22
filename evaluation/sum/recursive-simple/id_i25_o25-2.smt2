(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3335 (Int Int) Bool)
(declare-fun $main_if3336 (Int Int Int Int) Bool)
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
        ($id_if3335 x x))))

; id precondition
(assert
  (forall ((x214089 Int) (x Int))
    (=> (and ($id_if3335 x x214089))
        ($id_pre (- x214089 1)))))

; post id
(assert
  (forall ((x214089 Int) ($result214090 Int) (x Int))
    (=> (and (id (- x214089 1) $result214090)
             ($id_if3335 x x214089))
        (id x214089 (+ $result214090 1)))))

; id precondition
(assert
  (forall (($input2405 Int))
    (=> (and (= $input2405 25))
        ($id_pre $input2405))))

; label ERROR
(assert
  (forall (($input2405 Int) ($result2406 Int) ($result214091 Int))
    (=> (and (= $result2406 25)
             (= $result2406 $result214091)
             (id $input2405 $result214091)
             (= $input2405 25))
        ($main_ERROR $input2405 $result2406 $input2405 $result2406))))

; error
(assert
  (forall (($input2405 Int) ($result2406 Int) ($input2405214092 Int) ($result2406214093 Int))
    (=> (and ($main_ERROR $input2405 $result2406 $input2405214092 $result2406214093))
        false)))

; if else
(assert
  (forall (($input2405 Int) ($result2406 Int) ($result214091 Int))
    (=> (and (not (= $result2406 25))
             (= $result2406 $result214091)
             (id $input2405 $result214091)
             (= $input2405 25))
        ($main_if3336 $input2405 $result2406 $input2405 $result2406))))

(check-sat)
