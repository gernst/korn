(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3320 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $id_if3318 (Int Int Int Int) Bool)
(declare-fun $id_if3319 (Int Int Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2388 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3318 x $ret2388 x $ret2388))))

; id precondition
(assert
  (forall ((x214029 Int) (x Int) ($ret2388 Int) ($ret2388214030 Int))
    (=> (and ($id_if3318 x $ret2388 x214029 $ret2388214030))
        ($id_pre (- x214029 1)))))

; post id
(assert
  (forall ((x Int) (x214029 Int) ($ret2388214030 Int) ($ret2388 Int) ($result214031 Int))
    (=> (and (> $ret2388214030 5)
             (= $ret2388214030 (+ $result214031 1))
             (id (- x214029 1) $result214031)
             ($id_if3318 x $ret2388 x214029 $ret2388214030))
        (id x214029 5))))

; if else
(assert
  (forall ((x Int) (x214029 Int) ($ret2388214030 Int) ($ret2388 Int) ($result214031 Int))
    (=> (and (not (> $ret2388214030 5))
             (= $ret2388214030 (+ $result214031 1))
             (id (- x214029 1) $result214031)
             ($id_if3318 x $ret2388 x214029 $ret2388214030))
        ($id_if3319 x $ret2388 x214029 $ret2388214030))))

; post id
(assert
  (forall ((x214032 Int) ($ret2388214033 Int) (x Int) ($ret2388 Int))
    (=> (and ($id_if3319 x $ret2388 x214032 $ret2388214033))
        (id x214032 $ret2388214033))))

; id precondition
(assert
  (forall (($input2389 Int) ($int214034 Int))
    (=> (and (= $input2389 $int214034)
             (<= (- 2147483648) $int214034)
             (<= $int214034 2147483647))
        ($id_pre $input2389))))

; label ERROR
(assert
  (forall (($input2389 Int) ($result2390 Int) ($result214035 Int) ($int214034 Int))
    (=> (and (= $result2390 10)
             (= $result2390 $result214035)
             (id $input2389 $result214035)
             (= $input2389 $int214034)
             (<= (- 2147483648) $int214034)
             (<= $int214034 2147483647))
        ($main_ERROR $input2389 $result2390 $input2389 $result2390))))

; error
(assert
  (forall (($input2389 Int) ($result2390 Int) ($input2389214036 Int) ($result2390214037 Int))
    (=> (and ($main_ERROR $input2389 $result2390 $input2389214036 $result2390214037))
        false)))

; if else
(assert
  (forall (($input2389 Int) ($result2390 Int) ($result214035 Int) ($int214034 Int))
    (=> (and (not (= $result2390 10))
             (= $result2390 $result214035)
             (id $input2389 $result214035)
             (= $input2389 $int214034)
             (<= (- 2147483648) $int214034)
             (<= $int214034 2147483647))
        ($main_if3320 $input2389 $result2390 $input2389 $result2390))))

(check-sat)
