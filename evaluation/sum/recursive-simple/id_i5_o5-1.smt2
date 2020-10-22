(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3338 (Int Int Int Int) Bool)
(declare-fun $id_if3337 (Int Int) Bool)
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
        ($id_if3337 x x))))

; id precondition
(assert
  (forall ((x214096 Int) (x Int))
    (=> (and ($id_if3337 x x214096))
        ($id_pre (- x214096 1)))))

; post id
(assert
  (forall ((x214096 Int) ($result214097 Int) (x Int))
    (=> (and (id (- x214096 1) $result214097)
             ($id_if3337 x x214096))
        (id x214096 (+ $result214097 1)))))

; id precondition
(assert
  (forall (($input2407 Int))
    (=> (and (= $input2407 5))
        ($id_pre $input2407))))

; label ERROR
(assert
  (forall (($input2407 Int) ($result2408 Int) ($result214098 Int))
    (=> (and (= $result2408 5)
             (= $result2408 $result214098)
             (id $input2407 $result214098)
             (= $input2407 5))
        ($main_ERROR $input2407 $result2408 $input2407 $result2408))))

; error
(assert
  (forall (($input2407 Int) ($result2408 Int) ($input2407214099 Int) ($result2408214100 Int))
    (=> (and ($main_ERROR $input2407 $result2408 $input2407214099 $result2408214100))
        false)))

; if else
(assert
  (forall (($input2407 Int) ($result2408 Int) ($result214098 Int))
    (=> (and (not (= $result2408 5))
             (= $result2408 $result214098)
             (id $input2407 $result214098)
             (= $input2407 5))
        ($main_if3338 $input2407 $result2408 $input2407 $result2408))))

(check-sat)
