(set-logic HORN)

(declare-fun $main_inv134 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if536 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if537 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_sum134 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14093 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14093))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if536 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14094 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if536 cond cond14094))
        (__VERIFIER_assert cond14094))))

; loop entry $main_inv134
(assert
  (forall (($SIZE474 Int) ($k476 Int) ($array477 (Array Int Int)) ($int14095 Int))
    (=> (and (<= (- 2147483648) $int14095)
             (<= $int14095 2147483647)
             (= $SIZE474 1))
        ($main_inv134 $SIZE474 0 $k476 $array477 $int14095))))

; loop term $main_sum134
(assert
  (forall (($j47514097 Int) ($menor47814100 Int) ($k47614098 Int) ($array47714099 (Array Int Int)) ($SIZE47414096 Int))
    (=> (and (not (< $j47514097 $SIZE47414096)))
        ($main_sum134 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100))))

; if then
(assert
  (forall (($j47514097 Int) ($menor47814100 Int) ($k47614098 Int) ($array47714099 (Array Int Int)) ($SIZE47414096 Int) ($int14101 Int))
    (=> (and (<= (select (store $array47714099 $j47514097 $int14101) $j47514097) $menor47814100)
             (<= (- 2147483648) $int14101)
             (<= $int14101 2147483647)
             (< $j47514097 $SIZE47414096)
             ($main_inv134 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100))
        ($main_if537 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414096 $j47514097 $k47614098 (store $array47714099 $j47514097 $int14101) (select (store $array47714099 $j47514097 $int14101) $j47514097)))))

; if else
(assert
  (forall (($j47514097 Int) ($menor47814100 Int) ($k47614098 Int) ($array47714099 (Array Int Int)) ($SIZE47414096 Int) ($int14101 Int))
    (=> (and (not (<= (select (store $array47714099 $j47514097 $int14101) $j47514097) $menor47814100))
             (<= (- 2147483648) $int14101)
             (<= $int14101 2147483647)
             (< $j47514097 $SIZE47414096)
             ($main_inv134 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100))
        ($main_if537 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414096 $j47514097 $k47614098 (store $array47714099 $j47514097 $int14101) $menor47814100))))

; forwards $main_inv134
(assert
  (forall (($menor47814100 Int) ($SIZE47414102 Int) ($array47714099 (Array Int Int)) ($k47614104 Int) ($menor47814106 Int) ($j47514097 Int) ($array47714105 (Array Int Int)) ($k47614098 Int) ($SIZE47414096 Int) ($j47514103 Int))
    (=> (and ($main_if537 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414102 $j47514103 $k47614104 $array47714105 $menor47814106))
        ($main_inv134 $SIZE47414102 (+ $j47514103 1) $k47614104 $array47714105 $menor47814106))))

; backwards $main_sum134
(assert
  (forall (($array47714110 (Array Int Int)) ($SIZE47414102 Int) ($j47514108 Int) ($menor47814111 Int) ($k47614104 Int) ($menor47814106 Int) ($j47514097 Int) ($menor47814100 Int) ($SIZE47414107 Int) ($array47714105 (Array Int Int)) ($k47614098 Int) ($array47714099 (Array Int Int)) ($k47614109 Int) ($SIZE47414096 Int) ($j47514103 Int))
    (=> (and ($main_sum134 $SIZE47414102 (+ $j47514103 1) $k47614104 $array47714105 $menor47814106 $SIZE47414107 $j47514108 $k47614109 $array47714110 $menor47814111)
             ($main_if537 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414102 $j47514103 $k47614104 $array47714105 $menor47814106))
        ($main_sum134 $SIZE47414096 $j47514097 $k47614098 $array47714099 $menor47814100 $SIZE47414107 $j47514108 $k47614109 $array47714110 $menor47814111))))

; __VERIFIER_assert precondition
(assert
  (forall (($array47714115 (Array Int Int)) ($menor47814116 Int) ($k476 Int) ($SIZE47414112 Int) ($j47514113 Int) ($SIZE474 Int) ($k47614114 Int) ($int14095 Int) ($array477 (Array Int Int)))
    (=> (and ($main_sum134 $SIZE474 0 $k476 $array477 $int14095 $SIZE47414112 $j47514113 $k47614114 $array47714115 $menor47814116)
             (<= (- 2147483648) $int14095)
             (<= $int14095 2147483647)
             (= $SIZE474 1))
        ($__VERIFIER_assert_pre (ite (> (select $array47714115 0) $menor47814116) 1 0)))))

(check-sat)
