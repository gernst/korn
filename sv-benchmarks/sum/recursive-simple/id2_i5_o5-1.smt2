(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3303 (Int Int) Bool)
(declare-fun $main_if3305 (Int Int Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id2_if3304 (Int Int) Bool)
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
        ($id_if3303 x x))))

; id2 precondition
(assert
  (forall ((x213978 Int) (x Int))
    (=> (and ($id_if3303 x x213978))
        ($id2_pre (- x213978 1)))))

; post id
(assert
  (forall ((x213978 Int) ($result213979 Int) (x Int))
    (=> (and (id2 (- x213978 1) $result213979)
             ($id_if3303 x x213978))
        (id x213978 (+ $result213979 1)))))

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
        ($id2_if3304 x x))))

; id precondition
(assert
  (forall ((x213980 Int) (x Int))
    (=> (and ($id2_if3304 x x213980))
        ($id_pre (- x213980 1)))))

; post id2
(assert
  (forall ((x213980 Int) ($result213981 Int) (x Int))
    (=> (and (id (- x213980 1) $result213981)
             ($id2_if3304 x x213980))
        (id2 x213980 (+ $result213981 1)))))

; id precondition
(assert
  (forall (($input2375 Int))
    (=> (and (= $input2375 5))
        ($id_pre $input2375))))

; label ERROR
(assert
  (forall (($input2375 Int) ($result2376 Int) ($result213982 Int))
    (=> (and (= $result2376 5)
             (= $result2376 $result213982)
             (id $input2375 $result213982)
             (= $input2375 5))
        ($main_ERROR $input2375 $result2376 $input2375 $result2376))))

; error
(assert
  (forall (($input2375 Int) ($result2376 Int) ($input2375213983 Int) ($result2376213984 Int))
    (=> (and ($main_ERROR $input2375 $result2376 $input2375213983 $result2376213984))
        false)))

; if else
(assert
  (forall (($input2375 Int) ($result2376 Int) ($result213982 Int))
    (=> (and (not (= $result2376 5))
             (= $result2376 $result213982)
             (id $input2375 $result213982)
             (= $input2375 5))
        ($main_if3305 $input2375 $result2376 $input2375 $result2376))))

(check-sat)
