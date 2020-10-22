(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id_if3309 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3310 (Int Int Int Int) Bool)
(declare-fun $main_if3311 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2379 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3309 x $ret2379 x $ret2379))))

; id precondition
(assert
  (forall ((x213996 Int) (x Int) ($ret2379 Int) ($ret2379213997 Int))
    (=> (and ($id_if3309 x $ret2379 x213996 $ret2379213997))
        ($id_pre (- x213996 1)))))

; post id
(assert
  (forall ((x213996 Int) (x Int) ($result213998 Int) ($ret2379213997 Int) ($ret2379 Int))
    (=> (and (> $ret2379213997 2)
             (= $ret2379213997 (+ $result213998 1))
             (id (- x213996 1) $result213998)
             ($id_if3309 x $ret2379 x213996 $ret2379213997))
        (id x213996 2))))

; if else
(assert
  (forall ((x213996 Int) (x Int) ($result213998 Int) ($ret2379213997 Int) ($ret2379 Int))
    (=> (and (not (> $ret2379213997 2))
             (= $ret2379213997 (+ $result213998 1))
             (id (- x213996 1) $result213998)
             ($id_if3309 x $ret2379 x213996 $ret2379213997))
        ($id_if3310 x $ret2379 x213996 $ret2379213997))))

; post id
(assert
  (forall ((x213999 Int) ($ret2379214000 Int) (x Int) ($ret2379 Int))
    (=> (and ($id_if3310 x $ret2379 x213999 $ret2379214000))
        (id x213999 $ret2379214000))))

; id precondition
(assert
  (forall (($input2380 Int) ($uint214001 Int))
    (=> (and (= $input2380 $uint214001)
             (<= 0 $uint214001)
             (<= $uint214001 4294967295))
        ($id_pre $input2380))))

; label ERROR
(assert
  (forall (($input2380 Int) ($result2381 Int) ($result214002 Int) ($uint214001 Int))
    (=> (and (= $result2381 3)
             (= $result2381 $result214002)
             (id $input2380 $result214002)
             (= $input2380 $uint214001)
             (<= 0 $uint214001)
             (<= $uint214001 4294967295))
        ($main_ERROR $input2380 $result2381 $input2380 $result2381))))

; error
(assert
  (forall (($input2380 Int) ($result2381 Int) ($input2380214003 Int) ($result2381214004 Int))
    (=> (and ($main_ERROR $input2380 $result2381 $input2380214003 $result2381214004))
        false)))

; if else
(assert
  (forall (($input2380 Int) ($result2381 Int) ($result214002 Int) ($uint214001 Int))
    (=> (and (not (= $result2381 3))
             (= $result2381 $result214002)
             (id $input2380 $result214002)
             (= $input2380 $uint214001)
             (<= 0 $uint214001)
             (<= $uint214001 4294967295))
        ($main_if3311 $input2380 $result2381 $input2380 $result2381))))

(check-sat)
