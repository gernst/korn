(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3287 (Int Int) Bool)
(declare-fun $id2_if3286 (Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id2_if3285 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3284 (Int Int) Bool)
(declare-fun $id_if3283 (Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2359 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3283 x $ret2359))))

; id2 precondition
(assert
  (forall ((x210913 Int) ($ret2359210914 Int))
    (=> (and ($id_if3283 x210913 $ret2359210914))
        ($id2_pre (- x210913 1)))))

; post id
(assert
  (forall ((x210913 Int) ($ret2359210914 Int) ($result210915 Int))
    (=> (and (> $ret2359210914 2)
             (= $ret2359210914 (+ $result210915 1))
             (id2 (- x210913 1) $result210915)
             ($id_if3283 x210913 $ret2359210914))
        (id x210913 2))))

; if else
(assert
  (forall ((x210913 Int) ($ret2359210914 Int) ($result210915 Int))
    (=> (and (not (> $ret2359210914 2))
             (= $ret2359210914 (+ $result210915 1))
             (id2 (- x210913 1) $result210915)
             ($id_if3283 x210913 $ret2359210914))
        ($id_if3284 x210913 $ret2359210914))))

; post id
(assert
  (forall ((x210916 Int) ($ret2359210917 Int))
    (=> (and ($id_if3284 x210916 $ret2359210917))
        (id x210916 $ret2359210917))))

; post id2
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id2_pre x))
        (id2 x 0))))

; if else
(assert
  (forall ((x Int) ($ret2360 Int))
    (=> (and (not (= x 0))
             ($id2_pre x))
        ($id2_if3285 x $ret2360))))

; id precondition
(assert
  (forall ((x210918 Int) ($ret2360210919 Int))
    (=> (and ($id2_if3285 x210918 $ret2360210919))
        ($id_pre (- x210918 1)))))

; post id2
(assert
  (forall ((x210918 Int) ($ret2360210919 Int) ($result210920 Int))
    (=> (and (> $ret2360210919 2)
             (= $ret2360210919 (+ $result210920 1))
             (id (- x210918 1) $result210920)
             ($id2_if3285 x210918 $ret2360210919))
        (id2 x210918 2))))

; if else
(assert
  (forall ((x210918 Int) ($ret2360210919 Int) ($result210920 Int))
    (=> (and (not (> $ret2360210919 2))
             (= $ret2360210919 (+ $result210920 1))
             (id (- x210918 1) $result210920)
             ($id2_if3285 x210918 $ret2360210919))
        ($id2_if3286 x210918 $ret2360210919))))

; post id2
(assert
  (forall ((x210921 Int) ($ret2360210922 Int))
    (=> (and ($id2_if3286 x210921 $ret2360210922))
        (id2 x210921 $ret2360210922))))

; id precondition
(assert
  (forall (($input2361 Int) ($uint210923 Int))
    (=> (and (= $input2361 $uint210923)
             (<= 0 $uint210923)
             (<= $uint210923 4294967295))
        ($id_pre $input2361))))

; label ERROR
(assert
  (forall (($input2361 Int) ($result2362 Int) ($result210924 Int) ($uint210923 Int))
    (=> (and (= $result2362 3)
             (= $result2362 $result210924)
             (id $input2361 $result210924)
             (= $input2361 $uint210923)
             (<= 0 $uint210923)
             (<= $uint210923 4294967295))
        ($main_ERROR $input2361 $result2362))))

; error
(assert
  (forall (($input2361210925 Int) ($result2362210926 Int))
    (=> (and ($main_ERROR $input2361210925 $result2362210926))
        false)))

; if else
(assert
  (forall (($input2361 Int) ($result2362 Int) ($result210924 Int) ($uint210923 Int))
    (=> (and (not (= $result2362 3))
             (= $result2362 $result210924)
             (id $input2361 $result210924)
             (= $input2361 $uint210923)
             (<= 0 $uint210923)
             (<= $uint210923 4294967295))
        ($main_if3287 $input2361 $result2362))))

(check-sat)
