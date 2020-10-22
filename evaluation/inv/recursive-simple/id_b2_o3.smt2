(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id_if3309 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3310 (Int Int) Bool)
(declare-fun $main_if3311 (Int Int) Bool)
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
        ($id_if3309 x $ret2379))))

; id precondition
(assert
  (forall ((x210995 Int) ($ret2379210996 Int))
    (=> (and ($id_if3309 x210995 $ret2379210996))
        ($id_pre (- x210995 1)))))

; post id
(assert
  (forall ((x210995 Int) ($ret2379210996 Int) ($result210997 Int))
    (=> (and (> $ret2379210996 2)
             (= $ret2379210996 (+ $result210997 1))
             (id (- x210995 1) $result210997)
             ($id_if3309 x210995 $ret2379210996))
        (id x210995 2))))

; if else
(assert
  (forall ((x210995 Int) ($ret2379210996 Int) ($result210997 Int))
    (=> (and (not (> $ret2379210996 2))
             (= $ret2379210996 (+ $result210997 1))
             (id (- x210995 1) $result210997)
             ($id_if3309 x210995 $ret2379210996))
        ($id_if3310 x210995 $ret2379210996))))

; post id
(assert
  (forall ((x210998 Int) ($ret2379210999 Int))
    (=> (and ($id_if3310 x210998 $ret2379210999))
        (id x210998 $ret2379210999))))

; id precondition
(assert
  (forall (($input2380 Int) ($uint211000 Int))
    (=> (and (= $input2380 $uint211000)
             (<= 0 $uint211000)
             (<= $uint211000 4294967295))
        ($id_pre $input2380))))

; label ERROR
(assert
  (forall (($input2380 Int) ($result2381 Int) ($result211001 Int) ($uint211000 Int))
    (=> (and (= $result2381 3)
             (= $result2381 $result211001)
             (id $input2380 $result211001)
             (= $input2380 $uint211000)
             (<= 0 $uint211000)
             (<= $uint211000 4294967295))
        ($main_ERROR $input2380 $result2381))))

; error
(assert
  (forall (($input2380211002 Int) ($result2381211003 Int))
    (=> (and ($main_ERROR $input2380211002 $result2381211003))
        false)))

; if else
(assert
  (forall (($input2380 Int) ($result2381 Int) ($result211001 Int) ($uint211000 Int))
    (=> (and (not (= $result2381 3))
             (= $result2381 $result211001)
             (id $input2380 $result211001)
             (= $input2380 $uint211000)
             (<= 0 $uint211000)
             (<= $uint211000 4294967295))
        ($main_if3311 $input2380 $result2381))))

(check-sat)
