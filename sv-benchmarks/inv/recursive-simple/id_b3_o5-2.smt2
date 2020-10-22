(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3315 (Int Int) Bool)
(declare-fun $id_if3316 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3317 (Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2385 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3315 x $ret2385))))

; id precondition
(assert
  (forall ((x211017 Int) ($ret2385211018 Int))
    (=> (and ($id_if3315 x211017 $ret2385211018))
        ($id_pre (- x211017 1)))))

; post id
(assert
  (forall ((x211017 Int) ($ret2385211018 Int) ($result211019 Int))
    (=> (and (> $ret2385211018 3)
             (= $ret2385211018 (+ $result211019 1))
             (id (- x211017 1) $result211019)
             ($id_if3315 x211017 $ret2385211018))
        (id x211017 3))))

; if else
(assert
  (forall ((x211017 Int) ($ret2385211018 Int) ($result211019 Int))
    (=> (and (not (> $ret2385211018 3))
             (= $ret2385211018 (+ $result211019 1))
             (id (- x211017 1) $result211019)
             ($id_if3315 x211017 $ret2385211018))
        ($id_if3316 x211017 $ret2385211018))))

; post id
(assert
  (forall ((x211020 Int) ($ret2385211021 Int))
    (=> (and ($id_if3316 x211020 $ret2385211021))
        (id x211020 $ret2385211021))))

; id precondition
(assert
  (forall (($input2386 Int) ($int211022 Int))
    (=> (and (= $input2386 $int211022)
             (<= (- 2147483648) $int211022)
             (<= $int211022 2147483647))
        ($id_pre $input2386))))

; label ERROR
(assert
  (forall (($input2386 Int) ($result2387 Int) ($result211023 Int) ($int211022 Int))
    (=> (and (= $result2387 5)
             (= $result2387 $result211023)
             (id $input2386 $result211023)
             (= $input2386 $int211022)
             (<= (- 2147483648) $int211022)
             (<= $int211022 2147483647))
        ($main_ERROR $input2386 $result2387))))

; error
(assert
  (forall (($input2386211024 Int) ($result2387211025 Int))
    (=> (and ($main_ERROR $input2386211024 $result2387211025))
        false)))

; if else
(assert
  (forall (($input2386 Int) ($result2387 Int) ($result211023 Int) ($int211022 Int))
    (=> (and (not (= $result2387 5))
             (= $result2387 $result211023)
             (id $input2386 $result211023)
             (= $input2386 $int211022)
             (<= (- 2147483648) $int211022)
             (<= $int211022 2147483647))
        ($main_if3317 $input2386 $result2387))))

(check-sat)
