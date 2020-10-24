(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3313 (Int Int Int Int) Bool)
(declare-fun $main_if3314 (Int Int Int Int) Bool)
(declare-fun $id_if3312 (Int Int Int Int) Bool)
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
  (forall ((x Int) ($ret2382 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3312 x $ret2382 x $ret2382))))

; id precondition
(assert
  (forall ((x214007 Int) (x Int) ($ret2382 Int) ($ret2382214008 Int))
    (=> (and ($id_if3312 x $ret2382 x214007 $ret2382214008))
        ($id_pre (- x214007 1)))))

; post id
(assert
  (forall ((x Int) ($ret2382 Int) ($ret2382214008 Int) ($result214009 Int) (x214007 Int))
    (=> (and (> $ret2382214008 3)
             (= $ret2382214008 (+ $result214009 1))
             (id (- x214007 1) $result214009)
             ($id_if3312 x $ret2382 x214007 $ret2382214008))
        (id x214007 3))))

; if else
(assert
  (forall ((x Int) ($ret2382 Int) ($ret2382214008 Int) ($result214009 Int) (x214007 Int))
    (=> (and (not (> $ret2382214008 3))
             (= $ret2382214008 (+ $result214009 1))
             (id (- x214007 1) $result214009)
             ($id_if3312 x $ret2382 x214007 $ret2382214008))
        ($id_if3313 x $ret2382 x214007 $ret2382214008))))

; post id
(assert
  (forall ((x214010 Int) ($ret2382214011 Int) (x Int) ($ret2382 Int))
    (=> (and ($id_if3313 x $ret2382 x214010 $ret2382214011))
        (id x214010 $ret2382214011))))

; id precondition
(assert
  (forall (($input2383 Int) ($int214012 Int))
    (=> (and (= $input2383 $int214012)
             (<= (- 2147483648) $int214012)
             (<= $int214012 2147483647))
        ($id_pre $input2383))))

; label ERROR
(assert
  (forall (($input2383 Int) ($result2384 Int) ($result214013 Int) ($int214012 Int))
    (=> (and (= $result2384 2)
             (= $result2384 $result214013)
             (id $input2383 $result214013)
             (= $input2383 $int214012)
             (<= (- 2147483648) $int214012)
             (<= $int214012 2147483647))
        ($main_ERROR $input2383 $result2384 $input2383 $result2384))))

; error
(assert
  (forall (($input2383 Int) ($result2384 Int) ($input2383214014 Int) ($result2384214015 Int))
    (=> (and ($main_ERROR $input2383 $result2384 $input2383214014 $result2384214015))
        false)))

; if else
(assert
  (forall (($input2383 Int) ($result2384 Int) ($result214013 Int) ($int214012 Int))
    (=> (and (not (= $result2384 2))
             (= $result2384 $result214013)
             (id $input2383 $result214013)
             (= $input2383 $int214012)
             (<= (- 2147483648) $int214012)
             (<= $int214012 2147483647))
        ($main_if3314 $input2383 $result2384 $input2383 $result2384))))

(check-sat)
