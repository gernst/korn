(set-logic HORN)

(declare-fun $main_if607 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if605 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum218 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if608 (Int Int Int Int Int) Bool)
(declare-fun $main_if606 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if604 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv218 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if604 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14043 Int))
    (=> (and ($assume_abort_if_not_if604 cond14043))
        (assume_abort_if_not cond14043))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14044 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14044))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if605 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14045 Int))
    (=> (and ($__VERIFIER_assert_if605 cond14045))
        (__VERIFIER_assert cond14045))))

; if else
(assert
  (forall (($k598 Int) ($uint14047 Int) ($l600 Int) ($i597 Int) ($j599 Int))
    (=> (and (<= $uint14047 20000001)
             (<= 0 $uint14047)
             (<= $uint14047 4294967295)
             (= $l600 0))
        ($main_if606 $uint14047 $i597 $k598 $j599 $l600))))

; loop entry $main_inv218
(assert
  (forall (($n59614048 Int) ($k59814050 Int) ($j59914051 Int) ($l60014052 Int) ($i59714049 Int))
    (=> (and ($main_if606 $n59614048 $i59714049 $k59814050 $j59914051 $l60014052))
        ($main_inv218 $n59614048 0 0 0 0))))

; loop term $main_sum218
(assert
  (forall (($j59914056 Int) ($k59814055 Int) ($l60014057 Int) ($i59714054 Int) ($n59614053 Int))
    (=> (and (not (< $l60014057 $n59614053))
             ($main_inv218 $n59614053 $i59714054 $k59814055 $j59914056 $l60014057))
        ($main_sum218 $n59614053 $i59714054 $k59814055 $j59914056 $l60014057))))

; if then
(assert
  (forall (($j59914056 Int) ($k59814055 Int) ($l60014057 Int) ($i59714054 Int) ($n59614053 Int))
    (=> (and (= (mod $l60014057 2) 0)
             (not (= (mod $l60014057 3) 0))
             (< $l60014057 $n59614053)
             ($main_inv218 $n59614053 $i59714054 $k59814055 $j59914056 $l60014057))
        ($main_if607 $n59614053 $i59714054 $k59814055 (+ $j59914056 1) $l60014057))))

; if else
(assert
  (forall (($j59914056 Int) ($k59814055 Int) ($l60014057 Int) ($i59714054 Int) ($n59614053 Int))
    (=> (and (not (= (mod $l60014057 2) 0))
             (not (= (mod $l60014057 3) 0))
             (< $l60014057 $n59614053)
             ($main_inv218 $n59614053 $i59714054 $k59814055 $j59914056 $l60014057))
        ($main_if607 $n59614053 $i59714054 (+ $k59814055 1) $j59914056 $l60014057))))

; if then
(assert
  (forall (($j59914056 Int) ($k59814055 Int) ($l60014057 Int) ($i59714054 Int) ($n59614053 Int))
    (=> (and (= (mod $l60014057 3) 0)
             (< $l60014057 $n59614053)
             ($main_inv218 $n59614053 $i59714054 $k59814055 $j59914056 $l60014057))
        ($main_if608 $n59614053 (+ $i59714054 1) $k59814055 $j59914056 $l60014057))))

; if else
(assert
  (forall (($k59814060 Int) ($n59614058 Int) ($j59914061 Int) ($i59714059 Int) ($l60014062 Int))
    (=> (and ($main_if607 $n59614058 $i59714059 $k59814060 $j59914061 $l60014062))
        ($main_if608 $n59614058 $i59714059 $k59814060 $j59914061 $l60014062))))

; forwards $main_inv218
(assert
  (forall (($i59714064 Int) ($n59614063 Int) ($l60014067 Int) ($k59814065 Int) ($j59914066 Int))
    (=> (and ($main_if608 $n59614063 $i59714064 $k59814065 $j59914066 $l60014067))
        ($main_inv218 $n59614063 $i59714064 $k59814065 $j59914066 (+ $l60014067 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($j59914071 Int) ($l60014072 Int) ($k59814070 Int) ($i59714069 Int) ($n59614068 Int))
    (=> (and ($main_sum218 $n59614068 $i59714069 $k59814070 $j59914071 $l60014072))
        ($__VERIFIER_assert_pre (ite (= (+ (+ $i59714069 $j59914071) $k59814070) $l60014072) 1 0)))))

(check-sat)
