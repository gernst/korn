(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id2_if3301 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3298 (Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $main_if3302 (Int Int) Bool)
(declare-fun $id_if3299 (Int Int) Bool)
(declare-fun $id2_if3300 (Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2371 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3298 x $ret2371))))

; id2 precondition
(assert
  (forall ((x210961 Int) ($ret2371210962 Int))
    (=> (and ($id_if3298 x210961 $ret2371210962))
        ($id2_pre (- x210961 1)))))

; post id
(assert
  (forall ((x210961 Int) ($ret2371210962 Int) ($result210963 Int))
    (=> (and (> $ret2371210962 5)
             (= $ret2371210962 (+ $result210963 1))
             (id2 (- x210961 1) $result210963)
             ($id_if3298 x210961 $ret2371210962))
        (id x210961 5))))

; if else
(assert
  (forall ((x210961 Int) ($ret2371210962 Int) ($result210963 Int))
    (=> (and (not (> $ret2371210962 5))
             (= $ret2371210962 (+ $result210963 1))
             (id2 (- x210961 1) $result210963)
             ($id_if3298 x210961 $ret2371210962))
        ($id_if3299 x210961 $ret2371210962))))

; post id
(assert
  (forall ((x210964 Int) ($ret2371210965 Int))
    (=> (and ($id_if3299 x210964 $ret2371210965))
        (id x210964 $ret2371210965))))

; post id2
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id2_pre x))
        (id2 x 0))))

; if else
(assert
  (forall ((x Int) ($ret2372 Int))
    (=> (and (not (= x 0))
             ($id2_pre x))
        ($id2_if3300 x $ret2372))))

; id precondition
(assert
  (forall ((x210966 Int) ($ret2372210967 Int))
    (=> (and ($id2_if3300 x210966 $ret2372210967))
        ($id_pre (- x210966 1)))))

; post id2
(assert
  (forall ((x210966 Int) ($ret2372210967 Int) ($result210968 Int))
    (=> (and (> $ret2372210967 5)
             (= $ret2372210967 (+ $result210968 1))
             (id (- x210966 1) $result210968)
             ($id2_if3300 x210966 $ret2372210967))
        (id2 x210966 5))))

; if else
(assert
  (forall ((x210966 Int) ($ret2372210967 Int) ($result210968 Int))
    (=> (and (not (> $ret2372210967 5))
             (= $ret2372210967 (+ $result210968 1))
             (id (- x210966 1) $result210968)
             ($id2_if3300 x210966 $ret2372210967))
        ($id2_if3301 x210966 $ret2372210967))))

; post id2
(assert
  (forall ((x210969 Int) ($ret2372210970 Int))
    (=> (and ($id2_if3301 x210969 $ret2372210970))
        (id2 x210969 $ret2372210970))))

; id precondition
(assert
  (forall (($input2373 Int) ($uint210971 Int))
    (=> (and (= $input2373 $uint210971)
             (<= 0 $uint210971)
             (<= $uint210971 4294967295))
        ($id_pre $input2373))))

; label ERROR
(assert
  (forall (($input2373 Int) ($result2374 Int) ($result210972 Int) ($uint210971 Int))
    (=> (and (= $result2374 10)
             (= $result2374 $result210972)
             (id $input2373 $result210972)
             (= $input2373 $uint210971)
             (<= 0 $uint210971)
             (<= $uint210971 4294967295))
        ($main_ERROR $input2373 $result2374))))

; error
(assert
  (forall (($input2373210973 Int) ($result2374210974 Int))
    (=> (and ($main_ERROR $input2373210973 $result2374210974))
        false)))

; if else
(assert
  (forall (($input2373 Int) ($result2374 Int) ($result210972 Int) ($uint210971 Int))
    (=> (and (not (= $result2374 10))
             (= $result2374 $result210972)
             (id $input2373 $result210972)
             (= $input2373 $uint210971)
             (<= 0 $uint210971)
             (<= $uint210971 4294967295))
        ($main_if3302 $input2373 $result2374))))

(check-sat)
