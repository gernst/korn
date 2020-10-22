(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3323 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3324 (Int Int Int Int) Bool)
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
        ($id_if3323 x x))))

; id precondition
(assert
  (forall ((x214047 Int) (x Int))
    (=> (and ($id_if3323 x x214047))
        ($id_pre (- x214047 1)))))

; post id
(assert
  (forall ((x214047 Int) ($result214048 Int) (x Int))
    (=> (and (id (- x214047 1) $result214048)
             ($id_if3323 x x214047))
        (id x214047 (+ $result214048 1)))))

; id precondition
(assert
  (forall (($input2393 Int))
    (=> (and (= $input2393 10))
        ($id_pre $input2393))))

; label ERROR
(assert
  (forall (($input2393 Int) ($result2394 Int) ($result214049 Int))
    (=> (and (not (= $result2394 10))
             (= $result2394 $result214049)
             (id $input2393 $result214049)
             (= $input2393 10))
        ($main_ERROR $input2393 $result2394 $input2393 $result2394))))

; error
(assert
  (forall (($input2393 Int) ($result2394 Int) ($input2393214050 Int) ($result2394214051 Int))
    (=> (and ($main_ERROR $input2393 $result2394 $input2393214050 $result2394214051))
        false)))

; if else
(assert
  (forall (($input2393 Int) ($result2394 Int) ($result214049 Int))
    (=> (and (= $result2394 10)
             (= $result2394 $result214049)
             (id $input2393 $result214049)
             (= $input2393 10))
        ($main_if3324 $input2393 $result2394 $input2393 $result2394))))

(check-sat)
