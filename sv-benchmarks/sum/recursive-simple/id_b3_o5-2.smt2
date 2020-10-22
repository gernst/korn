(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3315 (Int Int Int Int) Bool)
(declare-fun $id_if3316 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3317 (Int Int Int Int) Bool)
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
        ($id_if3315 x $ret2385 x $ret2385))))

; id precondition
(assert
  (forall ((x214018 Int) (x Int) ($ret2385 Int) ($ret2385214019 Int))
    (=> (and ($id_if3315 x $ret2385 x214018 $ret2385214019))
        ($id_pre (- x214018 1)))))

; post id
(assert
  (forall (($result214020 Int) (x Int) ($ret2385214019 Int) (x214018 Int) ($ret2385 Int))
    (=> (and (> $ret2385214019 3)
             (= $ret2385214019 (+ $result214020 1))
             (id (- x214018 1) $result214020)
             ($id_if3315 x $ret2385 x214018 $ret2385214019))
        (id x214018 3))))

; if else
(assert
  (forall (($result214020 Int) (x Int) ($ret2385214019 Int) (x214018 Int) ($ret2385 Int))
    (=> (and (not (> $ret2385214019 3))
             (= $ret2385214019 (+ $result214020 1))
             (id (- x214018 1) $result214020)
             ($id_if3315 x $ret2385 x214018 $ret2385214019))
        ($id_if3316 x $ret2385 x214018 $ret2385214019))))

; post id
(assert
  (forall ((x214021 Int) ($ret2385214022 Int) (x Int) ($ret2385 Int))
    (=> (and ($id_if3316 x $ret2385 x214021 $ret2385214022))
        (id x214021 $ret2385214022))))

; id precondition
(assert
  (forall (($input2386 Int) ($int214023 Int))
    (=> (and (= $input2386 $int214023)
             (<= (- 2147483648) $int214023)
             (<= $int214023 2147483647))
        ($id_pre $input2386))))

; label ERROR
(assert
  (forall (($input2386 Int) ($result2387 Int) ($result214024 Int) ($int214023 Int))
    (=> (and (= $result2387 5)
             (= $result2387 $result214024)
             (id $input2386 $result214024)
             (= $input2386 $int214023)
             (<= (- 2147483648) $int214023)
             (<= $int214023 2147483647))
        ($main_ERROR $input2386 $result2387 $input2386 $result2387))))

; error
(assert
  (forall (($input2386 Int) ($result2387 Int) ($input2386214025 Int) ($result2387214026 Int))
    (=> (and ($main_ERROR $input2386 $result2387 $input2386214025 $result2387214026))
        false)))

; if else
(assert
  (forall (($input2386 Int) ($result2387 Int) ($result214024 Int) ($int214023 Int))
    (=> (and (not (= $result2387 5))
             (= $result2387 $result214024)
             (id $input2386 $result214024)
             (= $input2386 $int214023)
             (<= (- 2147483648) $int214023)
             (<= $int214023 2147483647))
        ($main_if3317 $input2386 $result2387 $input2386 $result2387))))

(check-sat)
