(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3287 (Int Int Int Int) Bool)
(declare-fun $id2_if3286 (Int Int Int Int) Bool)
(declare-fun $id2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id2_if3285 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun id2 (Int Int) Bool)
(declare-fun $id_if3284 (Int Int Int Int) Bool)
(declare-fun $id_if3283 (Int Int Int Int) Bool)
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
        ($id_if3283 x $ret2359 x $ret2359))))

; id2 precondition
(assert
  (forall ((x213914 Int) (x Int) ($ret2359 Int) ($ret2359213915 Int))
    (=> (and ($id_if3283 x $ret2359 x213914 $ret2359213915))
        ($id2_pre (- x213914 1)))))

; post id
(assert
  (forall ((x213914 Int) (x Int) ($ret2359213915 Int) ($result213916 Int) ($ret2359 Int))
    (=> (and (> $ret2359213915 2)
             (= $ret2359213915 (+ $result213916 1))
             (id2 (- x213914 1) $result213916)
             ($id_if3283 x $ret2359 x213914 $ret2359213915))
        (id x213914 2))))

; if else
(assert
  (forall ((x213914 Int) (x Int) ($ret2359213915 Int) ($result213916 Int) ($ret2359 Int))
    (=> (and (not (> $ret2359213915 2))
             (= $ret2359213915 (+ $result213916 1))
             (id2 (- x213914 1) $result213916)
             ($id_if3283 x $ret2359 x213914 $ret2359213915))
        ($id_if3284 x $ret2359 x213914 $ret2359213915))))

; post id
(assert
  (forall ((x213917 Int) ($ret2359213918 Int) (x Int) ($ret2359 Int))
    (=> (and ($id_if3284 x $ret2359 x213917 $ret2359213918))
        (id x213917 $ret2359213918))))

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
        ($id2_if3285 x $ret2360 x $ret2360))))

; id precondition
(assert
  (forall ((x213919 Int) (x Int) ($ret2360 Int) ($ret2360213920 Int))
    (=> (and ($id2_if3285 x $ret2360 x213919 $ret2360213920))
        ($id_pre (- x213919 1)))))

; post id2
(assert
  (forall (($result213921 Int) (x Int) ($ret2360 Int) (x213919 Int) ($ret2360213920 Int))
    (=> (and (> $ret2360213920 2)
             (= $ret2360213920 (+ $result213921 1))
             (id (- x213919 1) $result213921)
             ($id2_if3285 x $ret2360 x213919 $ret2360213920))
        (id2 x213919 2))))

; if else
(assert
  (forall (($result213921 Int) (x Int) ($ret2360 Int) (x213919 Int) ($ret2360213920 Int))
    (=> (and (not (> $ret2360213920 2))
             (= $ret2360213920 (+ $result213921 1))
             (id (- x213919 1) $result213921)
             ($id2_if3285 x $ret2360 x213919 $ret2360213920))
        ($id2_if3286 x $ret2360 x213919 $ret2360213920))))

; post id2
(assert
  (forall ((x213922 Int) ($ret2360213923 Int) (x Int) ($ret2360 Int))
    (=> (and ($id2_if3286 x $ret2360 x213922 $ret2360213923))
        (id2 x213922 $ret2360213923))))

; id precondition
(assert
  (forall (($input2361 Int) ($uint213924 Int))
    (=> (and (= $input2361 $uint213924)
             (<= 0 $uint213924)
             (<= $uint213924 4294967295))
        ($id_pre $input2361))))

; label ERROR
(assert
  (forall (($input2361 Int) ($result2362 Int) ($result213925 Int) ($uint213924 Int))
    (=> (and (= $result2362 3)
             (= $result2362 $result213925)
             (id $input2361 $result213925)
             (= $input2361 $uint213924)
             (<= 0 $uint213924)
             (<= $uint213924 4294967295))
        ($main_ERROR $input2361 $result2362 $input2361 $result2362))))

; error
(assert
  (forall (($input2361 Int) ($result2362 Int) ($input2361213926 Int) ($result2362213927 Int))
    (=> (and ($main_ERROR $input2361 $result2362 $input2361213926 $result2362213927))
        false)))

; if else
(assert
  (forall (($input2361 Int) ($result2362 Int) ($result213925 Int) ($uint213924 Int))
    (=> (and (not (= $result2362 3))
             (= $result2362 $result213925)
             (id $input2361 $result213925)
             (= $input2361 $uint213924)
             (<= 0 $uint213924)
             (<= $uint213924 4294967295))
        ($main_if3287 $input2361 $result2362 $input2361 $result2362))))

(check-sat)
