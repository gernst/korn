(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $main_if3320 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $id_if3318 (Int Int) Bool)
(declare-fun $id_if3319 (Int Int) Bool)
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
        ($id_if3318 x $ret2388))))

; id precondition
(assert
  (forall ((x211028 Int) ($ret2388211029 Int))
    (=> (and ($id_if3318 x211028 $ret2388211029))
        ($id_pre (- x211028 1)))))

; post id
(assert
  (forall ((x211028 Int) ($ret2388211029 Int) ($result211030 Int))
    (=> (and (> $ret2388211029 5)
             (= $ret2388211029 (+ $result211030 1))
             (id (- x211028 1) $result211030)
             ($id_if3318 x211028 $ret2388211029))
        (id x211028 5))))

; if else
(assert
  (forall ((x211028 Int) ($ret2388211029 Int) ($result211030 Int))
    (=> (and (not (> $ret2388211029 5))
             (= $ret2388211029 (+ $result211030 1))
             (id (- x211028 1) $result211030)
             ($id_if3318 x211028 $ret2388211029))
        ($id_if3319 x211028 $ret2388211029))))

; post id
(assert
  (forall ((x211031 Int) ($ret2388211032 Int))
    (=> (and ($id_if3319 x211031 $ret2388211032))
        (id x211031 $ret2388211032))))

; id precondition
(assert
  (forall (($input2389 Int) ($int211033 Int))
    (=> (and (= $input2389 $int211033)
             (<= (- 2147483648) $int211033)
             (<= $int211033 2147483647))
        ($id_pre $input2389))))

; label ERROR
(assert
  (forall (($input2389 Int) ($result2390 Int) ($result211034 Int) ($int211033 Int))
    (=> (and (= $result2390 10)
             (= $result2390 $result211034)
             (id $input2389 $result211034)
             (= $input2389 $int211033)
             (<= (- 2147483648) $int211033)
             (<= $int211033 2147483647))
        ($main_ERROR $input2389 $result2390))))

; error
(assert
  (forall (($input2389211035 Int) ($result2390211036 Int))
    (=> (and ($main_ERROR $input2389211035 $result2390211036))
        false)))

; if else
(assert
  (forall (($input2389 Int) ($result2390 Int) ($result211034 Int) ($int211033 Int))
    (=> (and (not (= $result2390 10))
             (= $result2390 $result211034)
             (id $input2389 $result211034)
             (= $input2389 $int211033)
             (<= (- 2147483648) $int211033)
             (<= $int211033 2147483647))
        ($main_if3320 $input2389 $result2390))))

(check-sat)
