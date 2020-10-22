(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $id2_if3295 (Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $id_if3293 (Int Int) Bool)
(declare-fun $main_if3297 (Int Int) Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id2_if3296 (Int Int) Bool)
(declare-fun $id_if3294 (Int Int) Bool)
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
        ($id_if3293 x $ret2367))))

; id2 precondition
(assert
  (forall ((x210945 Int) ($ret2367210946 Int))
    (=> (and ($id_if3293 x210945 $ret2367210946))
        ($id2_pre (- x210945 1)))))

; post id
(assert
  (forall ((x210945 Int) ($ret2367210946 Int) ($result210947 Int))
    (=> (and (> $ret2367210946 3)
             (= $ret2367210946 (+ $result210947 1))
             (id2 (- x210945 1) $result210947)
             ($id_if3293 x210945 $ret2367210946))
        (id x210945 3))))

; if else
(assert
  (forall ((x210945 Int) ($ret2367210946 Int) ($result210947 Int))
    (=> (and (not (> $ret2367210946 3))
             (= $ret2367210946 (+ $result210947 1))
             (id2 (- x210945 1) $result210947)
             ($id_if3293 x210945 $ret2367210946))
        ($id_if3294 x210945 $ret2367210946))))

; post id
(assert
  (forall ((x210948 Int) ($ret2367210949 Int))
    (=> (and ($id_if3294 x210948 $ret2367210949))
        (id x210948 $ret2367210949))))

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
        ($id2_if3295 x $ret2368))))

; id precondition
(assert
  (forall ((x210950 Int) ($ret2368210951 Int))
    (=> (and ($id2_if3295 x210950 $ret2368210951))
        ($id_pre (- x210950 1)))))

; post id2
(assert
  (forall ((x210950 Int) ($ret2368210951 Int) ($result210952 Int))
    (=> (and (> $ret2368210951 3)
             (= $ret2368210951 (+ $result210952 1))
             (id (- x210950 1) $result210952)
             ($id2_if3295 x210950 $ret2368210951))
        (id2 x210950 3))))

; if else
(assert
  (forall ((x210950 Int) ($ret2368210951 Int) ($result210952 Int))
    (=> (and (not (> $ret2368210951 3))
             (= $ret2368210951 (+ $result210952 1))
             (id (- x210950 1) $result210952)
             ($id2_if3295 x210950 $ret2368210951))
        ($id2_if3296 x210950 $ret2368210951))))

; post id2
(assert
  (forall ((x210953 Int) ($ret2368210954 Int))
    (=> (and ($id2_if3296 x210953 $ret2368210954))
        (id2 x210953 $ret2368210954))))

; id precondition
(assert
  (forall (($input2369 Int) ($uint210955 Int))
    (=> (and (= $input2369 $uint210955)
             (<= 0 $uint210955)
             (<= $uint210955 4294967295))
        ($id_pre $input2369))))

; label ERROR
(assert
  (forall (($input2369 Int) ($result2370 Int) ($result210956 Int) ($uint210955 Int))
    (=> (and (= $result2370 5)
             (= $result2370 $result210956)
             (id $input2369 $result210956)
             (= $input2369 $uint210955)
             (<= 0 $uint210955)
             (<= $uint210955 4294967295))
        ($main_ERROR $input2369 $result2370))))

; error
(assert
  (forall (($input2369210957 Int) ($result2370210958 Int))
    (=> (and ($main_ERROR $input2369210957 $result2370210958))
        false)))

; if else
(assert
  (forall (($input2369 Int) ($result2370 Int) ($result210956 Int) ($uint210955 Int))
    (=> (and (not (= $result2370 5))
             (= $result2370 $result210956)
             (id $input2369 $result210956)
             (= $input2369 $uint210955)
             (<= 0 $uint210955)
             (<= $uint210955 4294967295))
        ($main_if3297 $input2369 $result2370))))

(check-sat)
