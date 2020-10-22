(set-logic HORN)

(declare-fun $main_inv364 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum365 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if113 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv365 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if112 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum364 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6999 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6999))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if112 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7000 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if112 cond cond7000))
        (__VERIFIER_assert cond7000))))

; loop entry $main_inv364
(assert
  (forall (($a433 (Array Int Int)) ($i436 Int) ($int7001 Int) ($pos435 Int) ($i437 Int) ($marker434 Int) ($int7002 Int))
    (=> (and (= $i436 0)
             (= $pos435 $int7002)
             (<= (- 2147483648) $int7002)
             (<= $int7002 2147483647)
             (= $marker434 $int7001)
             (<= (- 2147483648) $int7001)
             (<= $int7001 2147483647))
        ($main_inv364 $a433 $marker434 $pos435 $i436 $i437))))

; loop term $main_sum364
(assert
  (forall (($a4337003 (Array Int Int)) ($marker4347004 Int) ($i4367006 Int) ($pos4357005 Int) ($i4377007 Int))
    (=> (and (not (< $i4367006 100000)))
        ($main_sum364 $a4337003 $marker4347004 $pos4357005 $i4367006 $i4377007 $a4337003 $marker4347004 $pos4357005 $i4367006 $i4377007))))

; forwards $main_inv364
(assert
  (forall (($a4337003 (Array Int Int)) ($int7008 Int) ($marker4347004 Int) ($i4367006 Int) ($pos4357005 Int) ($i4377007 Int))
    (=> (and (<= (- 2147483648) $int7008)
             (<= $int7008 2147483647)
             (< $i4367006 100000)
             ($main_inv364 $a4337003 $marker4347004 $pos4357005 $i4367006 $i4377007))
        ($main_inv364 (store $a4337003 $i4367006 $int7008) $marker4347004 $pos4357005 (+ $i4367006 1) $i4377007))))

; backwards $main_sum364
(assert
  (forall (($i4377013 Int) ($int7008 Int) ($marker4347004 Int) ($pos4357011 Int) ($a4337009 (Array Int Int)) ($i4367012 Int) ($a4337003 (Array Int Int)) ($i4367006 Int) ($marker4347010 Int) ($pos4357005 Int) ($i4377007 Int))
    (=> (and ($main_sum364 (store $a4337003 $i4367006 $int7008) $marker4347004 $pos4357005 (+ $i4367006 1) $i4377007 $a4337009 $marker4347010 $pos4357011 $i4367012 $i4377013)
             (<= (- 2147483648) $int7008)
             (<= $int7008 2147483647)
             (< $i4367006 100000))
        ($main_sum364 $a4337003 $marker4347004 $pos4357005 $i4367006 $i4377007 $a4337009 $marker4347010 $pos4357011 $i4367012 $i4377013))))

; loop entry $main_inv365
(assert
  (forall (($i4367017 Int) ($pos4357016 Int) ($a433 (Array Int Int)) ($int7001 Int) ($pos435 Int) ($marker4347015 Int) ($i437 Int) ($int7002 Int) ($i436 Int) ($a4337014 (Array Int Int)) ($i4377018 Int) ($marker434 Int))
    (=> (and (= $i4377018 0)
             (>= $pos4357016 0)
             (< $pos4357016 100000)
             ($main_sum364 $a433 $marker434 $pos435 $i436 $i437 $a4337014 $marker4347015 $pos4357016 $i4367017 $i4377018)
             (= $i436 0)
             (= $pos435 $int7002)
             (<= (- 2147483648) $int7002)
             (<= $int7002 2147483647)
             (= $marker434 $int7001)
             (<= (- 2147483648) $int7001)
             (<= $int7001 2147483647))
        ($main_inv365 (store $a4337014 $pos4357016 $marker4347015) $marker4347015 $pos4357016 $i4367017 $i4377018))))

; loop term $main_sum365
(assert
  (forall (($i4377023 Int) ($a4337019 (Array Int Int)) ($pos4357021 Int) ($marker4347020 Int) ($i4367022 Int))
    (=> (and (= (select $a4337019 $i4377023) $marker4347020))
        ($main_sum365 $a4337019 $marker4347020 $pos4357021 $i4367022 $i4377023 $a4337019 $marker4347020 $pos4357021 $i4367022 $i4377023))))

; forwards $main_inv365
(assert
  (forall (($i4377023 Int) ($a4337019 (Array Int Int)) ($pos4357021 Int) ($marker4347020 Int) ($i4367022 Int))
    (=> (and (not (= (select $a4337019 $i4377023) $marker4347020))
             ($main_inv365 $a4337019 $marker4347020 $pos4357021 $i4367022 $i4377023))
        ($main_inv365 $a4337019 $marker4347020 $pos4357021 $i4367022 (+ $i4377023 1)))))

; backwards $main_sum365
(assert
  (forall (($i4377023 Int) ($marker4347025 Int) ($a4337024 (Array Int Int)) ($a4337019 (Array Int Int)) ($i4377028 Int) ($pos4357021 Int) ($marker4347020 Int) ($i4367022 Int) ($i4367027 Int) ($pos4357026 Int))
    (=> (and ($main_sum365 $a4337019 $marker4347020 $pos4357021 $i4367022 (+ $i4377023 1) $a4337024 $marker4347025 $pos4357026 $i4367027 $i4377028)
             (not (= (select $a4337019 $i4377023) $marker4347020)))
        ($main_sum365 $a4337019 $marker4347020 $pos4357021 $i4367022 $i4377023 $a4337024 $marker4347025 $pos4357026 $i4367027 $i4377028))))

; __VERIFIER_assert precondition
(assert
  (forall (($i4367017 Int) ($pos4357016 Int) ($a433 (Array Int Int)) ($i4367032 Int) ($pos435 Int) ($marker4347015 Int) ($i437 Int) ($pos4357031 Int) ($int7002 Int) ($i436 Int) ($a4337014 (Array Int Int)) ($marker4347030 Int) ($int7001 Int) ($i4377033 Int) ($a4337029 (Array Int Int)) ($i4377018 Int) ($marker434 Int))
    (=> (and ($main_sum365 (store $a4337014 $pos4357016 $marker4347015) $marker4347015 $pos4357016 $i4367017 $i4377018 $a4337029 $marker4347030 $pos4357031 $i4367032 $i4377033)
             (= $i4377018 0)
             (>= $pos4357016 0)
             (< $pos4357016 100000)
             ($main_sum364 $a433 $marker434 $pos435 $i436 $i437 $a4337014 $marker4347015 $pos4357016 $i4367017 $i4377018)
             (= $i436 0)
             (= $pos435 $int7002)
             (<= (- 2147483648) $int7002)
             (<= $int7002 2147483647)
             (= $marker434 $int7001)
             (<= (- 2147483648) $int7001)
             (<= $int7001 2147483647))
        ($__VERIFIER_assert_pre (ite (<= $i4377033 $pos4357031) 1 0)))))

; if then
(assert
  (forall (($i4367017 Int) ($pos4357016 Int) ($a433 (Array Int Int)) ($i4367032 Int) ($pos435 Int) ($marker4347015 Int) ($i437 Int) ($pos4357031 Int) ($int7002 Int) ($i436 Int) ($a4337014 (Array Int Int)) ($marker4347030 Int) ($int7001 Int) ($i4377033 Int) ($a4337029 (Array Int Int)) ($i4377018 Int) ($marker434 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i4377033 $pos4357031) 1 0))
             ($main_sum365 (store $a4337014 $pos4357016 $marker4347015) $marker4347015 $pos4357016 $i4367017 $i4377018 $a4337029 $marker4347030 $pos4357031 $i4367032 $i4377033)
             (= $i4377018 0)
             (>= $pos4357016 0)
             (< $pos4357016 100000)
             ($main_sum364 $a433 $marker434 $pos435 $i436 $i437 $a4337014 $marker4347015 $pos4357016 $i4367017 $i4377018)
             (= $i436 0)
             (= $pos435 $int7002)
             (<= (- 2147483648) $int7002)
             (<= $int7002 2147483647)
             (= $marker434 $int7001)
             (<= (- 2147483648) $int7001)
             (<= $int7001 2147483647))
        ($main_if113 $a433 $marker434 $pos435 $i436 $i437 $a4337029 $marker4347030 $pos4357031 $i4367032 $i4377033))))

; if else
(assert
  (forall (($i4367017 Int) ($pos4357016 Int) ($a433 (Array Int Int)) ($int7001 Int) ($pos435 Int) ($marker4347015 Int) ($i437 Int) ($int7002 Int) ($i436 Int) ($a4337014 (Array Int Int)) ($i4377018 Int) ($marker434 Int))
    (=> (and (not (and (>= $pos4357016 0) (< $pos4357016 100000)))
             ($main_sum364 $a433 $marker434 $pos435 $i436 $i437 $a4337014 $marker4347015 $pos4357016 $i4367017 $i4377018)
             (= $i436 0)
             (= $pos435 $int7002)
             (<= (- 2147483648) $int7002)
             (<= $int7002 2147483647)
             (= $marker434 $int7001)
             (<= (- 2147483648) $int7001)
             (<= $int7001 2147483647))
        ($main_if113 $a433 $marker434 $pos435 $i436 $i437 $a4337014 $marker4347015 $pos4357016 $i4367017 $i4377018))))

(check-sat)
