(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3292 (Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id2_if3290 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3289 (Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3288 (Int Int) Bool)
(declare-fun $id2_if3291 (Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2363 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3288 x $ret2363))))

; id2 precondition
(assert
  (forall ((x210929 Int) ($ret2363210930 Int))
    (=> (and ($id_if3288 x210929 $ret2363210930))
        ($id2_pre (- x210929 1)))))

; post id
(assert
  (forall ((x210929 Int) ($ret2363210930 Int) ($result210931 Int))
    (=> (and (> $ret2363210930 3)
             (= $ret2363210930 (+ $result210931 1))
             (id2 (- x210929 1) $result210931)
             ($id_if3288 x210929 $ret2363210930))
        (id x210929 3))))

; if else
(assert
  (forall ((x210929 Int) ($ret2363210930 Int) ($result210931 Int))
    (=> (and (not (> $ret2363210930 3))
             (= $ret2363210930 (+ $result210931 1))
             (id2 (- x210929 1) $result210931)
             ($id_if3288 x210929 $ret2363210930))
        ($id_if3289 x210929 $ret2363210930))))

; post id
(assert
  (forall ((x210932 Int) ($ret2363210933 Int))
    (=> (and ($id_if3289 x210932 $ret2363210933))
        (id x210932 $ret2363210933))))

; post id2
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id2_pre x))
        (id2 x 0))))

; if else
(assert
  (forall ((x Int) ($ret2364 Int))
    (=> (and (not (= x 0))
             ($id2_pre x))
        ($id2_if3290 x $ret2364))))

; id precondition
(assert
  (forall ((x210934 Int) ($ret2364210935 Int))
    (=> (and ($id2_if3290 x210934 $ret2364210935))
        ($id_pre (- x210934 1)))))

; post id2
(assert
  (forall ((x210934 Int) ($ret2364210935 Int) ($result210936 Int))
    (=> (and (> $ret2364210935 3)
             (= $ret2364210935 (+ $result210936 1))
             (id (- x210934 1) $result210936)
             ($id2_if3290 x210934 $ret2364210935))
        (id2 x210934 3))))

; if else
(assert
  (forall ((x210934 Int) ($ret2364210935 Int) ($result210936 Int))
    (=> (and (not (> $ret2364210935 3))
             (= $ret2364210935 (+ $result210936 1))
             (id (- x210934 1) $result210936)
             ($id2_if3290 x210934 $ret2364210935))
        ($id2_if3291 x210934 $ret2364210935))))

; post id2
(assert
  (forall ((x210937 Int) ($ret2364210938 Int))
    (=> (and ($id2_if3291 x210937 $ret2364210938))
        (id2 x210937 $ret2364210938))))

; id precondition
(assert
  (forall (($input2365 Int) ($uint210939 Int))
    (=> (and (= $input2365 $uint210939)
             (<= 0 $uint210939)
             (<= $uint210939 4294967295))
        ($id_pre $input2365))))

; label ERROR
(assert
  (forall (($input2365 Int) ($result2366 Int) ($result210940 Int) ($uint210939 Int))
    (=> (and (= $result2366 2)
             (= $result2366 $result210940)
             (id $input2365 $result210940)
             (= $input2365 $uint210939)
             (<= 0 $uint210939)
             (<= $uint210939 4294967295))
        ($main_ERROR $input2365 $result2366))))

; error
(assert
  (forall (($input2365210941 Int) ($result2366210942 Int))
    (=> (and ($main_ERROR $input2365210941 $result2366210942))
        false)))

; if else
(assert
  (forall (($input2365 Int) ($result2366 Int) ($result210940 Int) ($uint210939 Int))
    (=> (and (not (= $result2366 2))
             (= $result2366 $result210940)
             (id $input2365 $result210940)
             (= $input2365 $uint210939)
             (<= 0 $uint210939)
             (<= $uint210939 4294967295))
        ($main_if3292 $input2365 $result2366))))

(check-sat)
