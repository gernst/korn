(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id2_if3301 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3298 (Int Int Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $main_if3302 (Int Int Int Int) Bool)
(declare-fun $id_if3299 (Int Int Int Int) Bool)
(declare-fun $id2_if3300 (Int Int Int Int) Bool)
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
        ($id_if3298 x $ret2371 x $ret2371))))

; id2 precondition
(assert
  (forall ((x213962 Int) (x Int) ($ret2371 Int) ($ret2371213963 Int))
    (=> (and ($id_if3298 x $ret2371 x213962 $ret2371213963))
        ($id2_pre (- x213962 1)))))

; post id
(assert
  (forall (($ret2371213963 Int) (x Int) (x213962 Int) ($ret2371 Int) ($result213964 Int))
    (=> (and (> $ret2371213963 5)
             (= $ret2371213963 (+ $result213964 1))
             (id2 (- x213962 1) $result213964)
             ($id_if3298 x $ret2371 x213962 $ret2371213963))
        (id x213962 5))))

; if else
(assert
  (forall (($ret2371213963 Int) (x Int) (x213962 Int) ($ret2371 Int) ($result213964 Int))
    (=> (and (not (> $ret2371213963 5))
             (= $ret2371213963 (+ $result213964 1))
             (id2 (- x213962 1) $result213964)
             ($id_if3298 x $ret2371 x213962 $ret2371213963))
        ($id_if3299 x $ret2371 x213962 $ret2371213963))))

; post id
(assert
  (forall ((x213965 Int) ($ret2371213966 Int) (x Int) ($ret2371 Int))
    (=> (and ($id_if3299 x $ret2371 x213965 $ret2371213966))
        (id x213965 $ret2371213966))))

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
        ($id2_if3300 x $ret2372 x $ret2372))))

; id precondition
(assert
  (forall ((x213967 Int) (x Int) ($ret2372 Int) ($ret2372213968 Int))
    (=> (and ($id2_if3300 x $ret2372 x213967 $ret2372213968))
        ($id_pre (- x213967 1)))))

; post id2
(assert
  (forall ((x213967 Int) (x Int) ($ret2372213968 Int) ($result213969 Int) ($ret2372 Int))
    (=> (and (> $ret2372213968 5)
             (= $ret2372213968 (+ $result213969 1))
             (id (- x213967 1) $result213969)
             ($id2_if3300 x $ret2372 x213967 $ret2372213968))
        (id2 x213967 5))))

; if else
(assert
  (forall ((x213967 Int) (x Int) ($ret2372213968 Int) ($result213969 Int) ($ret2372 Int))
    (=> (and (not (> $ret2372213968 5))
             (= $ret2372213968 (+ $result213969 1))
             (id (- x213967 1) $result213969)
             ($id2_if3300 x $ret2372 x213967 $ret2372213968))
        ($id2_if3301 x $ret2372 x213967 $ret2372213968))))

; post id2
(assert
  (forall ((x213970 Int) ($ret2372213971 Int) (x Int) ($ret2372 Int))
    (=> (and ($id2_if3301 x $ret2372 x213970 $ret2372213971))
        (id2 x213970 $ret2372213971))))

; id precondition
(assert
  (forall (($input2373 Int) ($uint213972 Int))
    (=> (and (= $input2373 $uint213972)
             (<= 0 $uint213972)
             (<= $uint213972 4294967295))
        ($id_pre $input2373))))

; label ERROR
(assert
  (forall (($input2373 Int) ($result2374 Int) ($result213973 Int) ($uint213972 Int))
    (=> (and (= $result2374 10)
             (= $result2374 $result213973)
             (id $input2373 $result213973)
             (= $input2373 $uint213972)
             (<= 0 $uint213972)
             (<= $uint213972 4294967295))
        ($main_ERROR $input2373 $result2374 $input2373 $result2374))))

; error
(assert
  (forall (($input2373 Int) ($result2374 Int) ($input2373213974 Int) ($result2374213975 Int))
    (=> (and ($main_ERROR $input2373 $result2374 $input2373213974 $result2374213975))
        false)))

; if else
(assert
  (forall (($input2373 Int) ($result2374 Int) ($result213973 Int) ($uint213972 Int))
    (=> (and (not (= $result2374 10))
             (= $result2374 $result213973)
             (id $input2373 $result213973)
             (= $input2373 $uint213972)
             (<= 0 $uint213972)
             (<= $uint213972 4294967295))
        ($main_if3302 $input2373 $result2374 $input2373 $result2374))))

(check-sat)
