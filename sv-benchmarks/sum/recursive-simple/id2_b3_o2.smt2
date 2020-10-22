(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3292 (Int Int Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id2_if3290 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3289 (Int Int Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3288 (Int Int Int Int) Bool)
(declare-fun $id2_if3291 (Int Int Int Int) Bool)
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
        ($id_if3288 x $ret2363 x $ret2363))))

; id2 precondition
(assert
  (forall ((x213930 Int) (x Int) ($ret2363 Int) ($ret2363213931 Int))
    (=> (and ($id_if3288 x $ret2363 x213930 $ret2363213931))
        ($id2_pre (- x213930 1)))))

; post id
(assert
  (forall ((x Int) ($ret2363 Int) ($result213932 Int) (x213930 Int) ($ret2363213931 Int))
    (=> (and (> $ret2363213931 3)
             (= $ret2363213931 (+ $result213932 1))
             (id2 (- x213930 1) $result213932)
             ($id_if3288 x $ret2363 x213930 $ret2363213931))
        (id x213930 3))))

; if else
(assert
  (forall ((x Int) ($ret2363 Int) ($result213932 Int) (x213930 Int) ($ret2363213931 Int))
    (=> (and (not (> $ret2363213931 3))
             (= $ret2363213931 (+ $result213932 1))
             (id2 (- x213930 1) $result213932)
             ($id_if3288 x $ret2363 x213930 $ret2363213931))
        ($id_if3289 x $ret2363 x213930 $ret2363213931))))

; post id
(assert
  (forall ((x213933 Int) ($ret2363213934 Int) (x Int) ($ret2363 Int))
    (=> (and ($id_if3289 x $ret2363 x213933 $ret2363213934))
        (id x213933 $ret2363213934))))

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
        ($id2_if3290 x $ret2364 x $ret2364))))

; id precondition
(assert
  (forall ((x213935 Int) (x Int) ($ret2364 Int) ($ret2364213936 Int))
    (=> (and ($id2_if3290 x $ret2364 x213935 $ret2364213936))
        ($id_pre (- x213935 1)))))

; post id2
(assert
  (forall ((x Int) ($ret2364 Int) ($result213937 Int) ($ret2364213936 Int) (x213935 Int))
    (=> (and (> $ret2364213936 3)
             (= $ret2364213936 (+ $result213937 1))
             (id (- x213935 1) $result213937)
             ($id2_if3290 x $ret2364 x213935 $ret2364213936))
        (id2 x213935 3))))

; if else
(assert
  (forall ((x Int) ($ret2364 Int) ($result213937 Int) ($ret2364213936 Int) (x213935 Int))
    (=> (and (not (> $ret2364213936 3))
             (= $ret2364213936 (+ $result213937 1))
             (id (- x213935 1) $result213937)
             ($id2_if3290 x $ret2364 x213935 $ret2364213936))
        ($id2_if3291 x $ret2364 x213935 $ret2364213936))))

; post id2
(assert
  (forall ((x213938 Int) ($ret2364213939 Int) (x Int) ($ret2364 Int))
    (=> (and ($id2_if3291 x $ret2364 x213938 $ret2364213939))
        (id2 x213938 $ret2364213939))))

; id precondition
(assert
  (forall (($input2365 Int) ($uint213940 Int))
    (=> (and (= $input2365 $uint213940)
             (<= 0 $uint213940)
             (<= $uint213940 4294967295))
        ($id_pre $input2365))))

; label ERROR
(assert
  (forall (($input2365 Int) ($result2366 Int) ($result213941 Int) ($uint213940 Int))
    (=> (and (= $result2366 2)
             (= $result2366 $result213941)
             (id $input2365 $result213941)
             (= $input2365 $uint213940)
             (<= 0 $uint213940)
             (<= $uint213940 4294967295))
        ($main_ERROR $input2365 $result2366 $input2365 $result2366))))

; error
(assert
  (forall (($input2365 Int) ($result2366 Int) ($input2365213942 Int) ($result2366213943 Int))
    (=> (and ($main_ERROR $input2365 $result2366 $input2365213942 $result2366213943))
        false)))

; if else
(assert
  (forall (($input2365 Int) ($result2366 Int) ($result213941 Int) ($uint213940 Int))
    (=> (and (not (= $result2366 2))
             (= $result2366 $result213941)
             (id $input2365 $result213941)
             (= $input2365 $uint213940)
             (<= 0 $uint213940)
             (<= $uint213940 4294967295))
        ($main_if3292 $input2365 $result2366 $input2365 $result2366))))

(check-sat)
