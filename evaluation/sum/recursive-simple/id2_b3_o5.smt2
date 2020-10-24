(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id2_if3295 (Int Int Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3293 (Int Int Int Int) Bool)
(declare-fun $main_if3297 (Int Int Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id2_if3296 (Int Int Int Int) Bool)
(declare-fun $id_if3294 (Int Int Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2367 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3293 x $ret2367 x $ret2367))))

; id2 precondition
(assert
  (forall ((x213946 Int) (x Int) ($ret2367 Int) ($ret2367213947 Int))
    (=> (and ($id_if3293 x $ret2367 x213946 $ret2367213947))
        ($id2_pre (- x213946 1)))))

; post id
(assert
  (forall (($ret2367213947 Int) ($result213948 Int) ($ret2367 Int) (x Int) (x213946 Int))
    (=> (and (> $ret2367213947 3)
             (= $ret2367213947 (+ $result213948 1))
             (id2 (- x213946 1) $result213948)
             ($id_if3293 x $ret2367 x213946 $ret2367213947))
        (id x213946 3))))

; if else
(assert
  (forall (($ret2367213947 Int) ($result213948 Int) ($ret2367 Int) (x Int) (x213946 Int))
    (=> (and (not (> $ret2367213947 3))
             (= $ret2367213947 (+ $result213948 1))
             (id2 (- x213946 1) $result213948)
             ($id_if3293 x $ret2367 x213946 $ret2367213947))
        ($id_if3294 x $ret2367 x213946 $ret2367213947))))

; post id
(assert
  (forall ((x213949 Int) ($ret2367213950 Int) (x Int) ($ret2367 Int))
    (=> (and ($id_if3294 x $ret2367 x213949 $ret2367213950))
        (id x213949 $ret2367213950))))

; post id2
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id2_pre x))
        (id2 x 0))))

; if else
(assert
  (forall ((x Int) ($ret2368 Int))
    (=> (and (not (= x 0))
             ($id2_pre x))
        ($id2_if3295 x $ret2368 x $ret2368))))

; id precondition
(assert
  (forall ((x213951 Int) (x Int) ($ret2368 Int) ($ret2368213952 Int))
    (=> (and ($id2_if3295 x $ret2368 x213951 $ret2368213952))
        ($id_pre (- x213951 1)))))

; post id2
(assert
  (forall ((x213951 Int) ($ret2368 Int) ($result213953 Int) (x Int) ($ret2368213952 Int))
    (=> (and (> $ret2368213952 3)
             (= $ret2368213952 (+ $result213953 1))
             (id (- x213951 1) $result213953)
             ($id2_if3295 x $ret2368 x213951 $ret2368213952))
        (id2 x213951 3))))

; if else
(assert
  (forall ((x213951 Int) ($ret2368 Int) ($result213953 Int) (x Int) ($ret2368213952 Int))
    (=> (and (not (> $ret2368213952 3))
             (= $ret2368213952 (+ $result213953 1))
             (id (- x213951 1) $result213953)
             ($id2_if3295 x $ret2368 x213951 $ret2368213952))
        ($id2_if3296 x $ret2368 x213951 $ret2368213952))))

; post id2
(assert
  (forall ((x213954 Int) ($ret2368213955 Int) (x Int) ($ret2368 Int))
    (=> (and ($id2_if3296 x $ret2368 x213954 $ret2368213955))
        (id2 x213954 $ret2368213955))))

; id precondition
(assert
  (forall (($input2369 Int) ($uint213956 Int))
    (=> (and (= $input2369 $uint213956)
             (<= 0 $uint213956)
             (<= $uint213956 4294967295))
        ($id_pre $input2369))))

; label ERROR
(assert
  (forall (($input2369 Int) ($result2370 Int) ($result213957 Int) ($uint213956 Int))
    (=> (and (= $result2370 5)
             (= $result2370 $result213957)
             (id $input2369 $result213957)
             (= $input2369 $uint213956)
             (<= 0 $uint213956)
             (<= $uint213956 4294967295))
        ($main_ERROR $input2369 $result2370 $input2369 $result2370))))

; error
(assert
  (forall (($input2369 Int) ($result2370 Int) ($input2369213958 Int) ($result2370213959 Int))
    (=> (and ($main_ERROR $input2369 $result2370 $input2369213958 $result2370213959))
        false)))

; if else
(assert
  (forall (($input2369 Int) ($result2370 Int) ($result213957 Int) ($uint213956 Int))
    (=> (and (not (= $result2370 5))
             (= $result2370 $result213957)
             (id $input2369 $result213957)
             (= $input2369 $uint213956)
             (<= 0 $uint213956)
             (<= $uint213956 4294967295))
        ($main_if3297 $input2369 $result2370 $input2369 $result2370))))

(check-sat)
