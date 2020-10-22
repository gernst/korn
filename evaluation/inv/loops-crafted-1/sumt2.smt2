(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if602 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $assume_abort_if_not_if600 (Int) Bool)
(declare-fun $main_if603 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum217 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv217 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if601 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if600 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14022 Int))
    (=> (and ($assume_abort_if_not_if600 cond14022))
        (assume_abort_if_not cond14022))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14023 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14023))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if601 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14024 Int))
    (=> (and ($__VERIFIER_assert_if601 cond14024))
        (__VERIFIER_assert cond14024))))

; if else
(assert
  (forall (($uint14026 Int) ($i593 Int) ($j594 Int) ($l595 Int))
    (=> (and (<= $uint14026 20000001)
             (<= 0 $uint14026)
             (<= $uint14026 4294967295)
             (= $l595 0))
        ($main_if602 $uint14026 $i593 $j594 $l595))))

; loop entry $main_inv217
(assert
  (forall (($n59214027 Int) ($i59314028 Int) ($j59414029 Int) ($l59514030 Int))
    (=> (and ($main_if602 $n59214027 $i59314028 $j59414029 $l59514030))
        ($main_inv217 $n59214027 0 0 0))))

; loop term $main_sum217
(assert
  (forall (($n59214031 Int) ($i59314032 Int) ($j59414033 Int) ($l59514034 Int))
    (=> (and (not (< $l59514034 $n59214031))
             ($main_inv217 $n59214031 $i59314032 $j59414033 $l59514034))
        ($main_sum217 $n59214031 $i59314032 $j59414033 $l59514034))))

; if then
(assert
  (forall (($n59214031 Int) ($i59314032 Int) ($j59414033 Int) ($l59514034 Int))
    (=> (and (= (mod $l59514034 2) 0)
             (< $l59514034 $n59214031)
             ($main_inv217 $n59214031 $i59314032 $j59414033 $l59514034))
        ($main_if603 $n59214031 (+ $i59314032 1) $j59414033 $l59514034))))

; if else
(assert
  (forall (($n59214031 Int) ($i59314032 Int) ($j59414033 Int) ($l59514034 Int))
    (=> (and (not (= (mod $l59514034 2) 0))
             (< $l59514034 $n59214031)
             ($main_inv217 $n59214031 $i59314032 $j59414033 $l59514034))
        ($main_if603 $n59214031 $i59314032 (+ $j59414033 1) $l59514034))))

; forwards $main_inv217
(assert
  (forall (($n59214035 Int) ($i59314036 Int) ($j59414037 Int) ($l59514038 Int))
    (=> (and ($main_if603 $n59214035 $i59314036 $j59414037 $l59514038))
        ($main_inv217 $n59214035 $i59314036 $j59414037 (+ $l59514038 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i59314040 Int) ($j59414041 Int) ($l59514042 Int) ($n59214039 Int))
    (=> (and ($main_sum217 $n59214039 $i59314040 $j59414041 $l59514042))
        ($__VERIFIER_assert_pre (ite (= (+ $i59314040 $j59414041) $l59514042) 1 0)))))

(check-sat)
