(set-logic HORN)

(declare-fun $main_inv288 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv293 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum286 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if79 (Int) Bool)
(declare-fun $main_sum294 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum288 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum287 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv290 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv289 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum291 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv294 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv286 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv291 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum293 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum289 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum290 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv292 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv287 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum292 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4031 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4031))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if79 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4032 Int))
    (=> (and ($__VERIFIER_assert_if79 cond4032))
        (__VERIFIER_assert cond4032))))

; loop entry $main_inv286
(assert
  (forall (($a358 (Array Int Int)) ($i359 Int) ($x360 Int))
    (=> (and (= $i359 0))
        ($main_inv286 $a358 $i359 $x360))))

; loop term $main_sum286
(assert
  (forall (($a3584033 (Array Int Int)) ($i3594034 Int) ($x3604035 Int))
    (=> (and (not (< $i3594034 100000))
             ($main_inv286 $a3584033 $i3594034 $x3604035))
        ($main_sum286 $a3584033 $i3594034 $x3604035))))

; forwards $main_inv286
(assert
  (forall (($a3584033 (Array Int Int)) ($i3594034 Int) ($x3604035 Int))
    (=> (and (< $i3594034 100000)
             ($main_inv286 $a3584033 $i3594034 $x3604035))
        ($main_inv286 (store $a3584033 $i3594034 42) (+ $i3594034 1) $x3604035))))

; loop entry $main_inv287
(assert
  (forall (($a3584036 (Array Int Int)) ($x3604038 Int) ($i3594037 Int))
    (=> (and ($main_sum286 $a3584036 $i3594037 $x3604038))
        ($main_inv287 $a3584036 0 $x3604038))))

; loop term $main_sum287
(assert
  (forall (($a3584039 (Array Int Int)) ($i3594040 Int) ($x3604041 Int))
    (=> (and (not (< $i3594040 100000))
             ($main_inv287 $a3584039 $i3594040 $x3604041))
        ($main_sum287 $a3584039 $i3594040 $x3604041))))

; forwards $main_inv287
(assert
  (forall (($a3584039 (Array Int Int)) ($i3594040 Int) ($x3604041 Int))
    (=> (and (< $i3594040 100000)
             ($main_inv287 $a3584039 $i3594040 $x3604041))
        ($main_inv287 (store $a3584039 $i3594040 43) (+ $i3594040 1) $x3604041))))

; loop entry $main_inv288
(assert
  (forall (($a3584042 (Array Int Int)) ($x3604044 Int) ($i3594043 Int))
    (=> (and ($main_sum287 $a3584042 $i3594043 $x3604044))
        ($main_inv288 $a3584042 0 $x3604044))))

; loop term $main_sum288
(assert
  (forall (($a3584045 (Array Int Int)) ($i3594046 Int) ($x3604047 Int))
    (=> (and (not (< $i3594046 100000))
             ($main_inv288 $a3584045 $i3594046 $x3604047))
        ($main_sum288 $a3584045 $i3594046 $x3604047))))

; forwards $main_inv288
(assert
  (forall (($a3584045 (Array Int Int)) ($i3594046 Int) ($x3604047 Int))
    (=> (and (< $i3594046 100000)
             ($main_inv288 $a3584045 $i3594046 $x3604047))
        ($main_inv288 (store $a3584045 $i3594046 44) (+ $i3594046 1) $x3604047))))

; loop entry $main_inv289
(assert
  (forall (($a3584048 (Array Int Int)) ($x3604050 Int) ($i3594049 Int))
    (=> (and ($main_sum288 $a3584048 $i3594049 $x3604050))
        ($main_inv289 $a3584048 0 $x3604050))))

; loop term $main_sum289
(assert
  (forall (($a3584051 (Array Int Int)) ($i3594052 Int) ($x3604053 Int))
    (=> (and (not (< $i3594052 100000))
             ($main_inv289 $a3584051 $i3594052 $x3604053))
        ($main_sum289 $a3584051 $i3594052 $x3604053))))

; forwards $main_inv289
(assert
  (forall (($a3584051 (Array Int Int)) ($i3594052 Int) ($x3604053 Int))
    (=> (and (< $i3594052 100000)
             ($main_inv289 $a3584051 $i3594052 $x3604053))
        ($main_inv289 (store $a3584051 $i3594052 45) (+ $i3594052 1) $x3604053))))

; loop entry $main_inv290
(assert
  (forall (($a3584054 (Array Int Int)) ($x3604056 Int) ($i3594055 Int))
    (=> (and ($main_sum289 $a3584054 $i3594055 $x3604056))
        ($main_inv290 $a3584054 0 $x3604056))))

; loop term $main_sum290
(assert
  (forall (($a3584057 (Array Int Int)) ($i3594058 Int) ($x3604059 Int))
    (=> (and (not (< $i3594058 100000))
             ($main_inv290 $a3584057 $i3594058 $x3604059))
        ($main_sum290 $a3584057 $i3594058 $x3604059))))

; forwards $main_inv290
(assert
  (forall (($a3584057 (Array Int Int)) ($i3594058 Int) ($x3604059 Int))
    (=> (and (< $i3594058 100000)
             ($main_inv290 $a3584057 $i3594058 $x3604059))
        ($main_inv290 (store $a3584057 $i3594058 46) (+ $i3594058 1) $x3604059))))

; loop entry $main_inv291
(assert
  (forall (($a3584060 (Array Int Int)) ($x3604062 Int) ($i3594061 Int))
    (=> (and ($main_sum290 $a3584060 $i3594061 $x3604062))
        ($main_inv291 $a3584060 0 $x3604062))))

; loop term $main_sum291
(assert
  (forall (($a3584063 (Array Int Int)) ($i3594064 Int) ($x3604065 Int))
    (=> (and (not (< $i3594064 100000))
             ($main_inv291 $a3584063 $i3594064 $x3604065))
        ($main_sum291 $a3584063 $i3594064 $x3604065))))

; forwards $main_inv291
(assert
  (forall (($a3584063 (Array Int Int)) ($i3594064 Int) ($x3604065 Int))
    (=> (and (< $i3594064 100000)
             ($main_inv291 $a3584063 $i3594064 $x3604065))
        ($main_inv291 (store $a3584063 $i3594064 47) (+ $i3594064 1) $x3604065))))

; loop entry $main_inv292
(assert
  (forall (($a3584066 (Array Int Int)) ($x3604068 Int) ($i3594067 Int))
    (=> (and ($main_sum291 $a3584066 $i3594067 $x3604068))
        ($main_inv292 $a3584066 0 $x3604068))))

; loop term $main_sum292
(assert
  (forall (($a3584069 (Array Int Int)) ($i3594070 Int) ($x3604071 Int))
    (=> (and (not (< $i3594070 100000))
             ($main_inv292 $a3584069 $i3594070 $x3604071))
        ($main_sum292 $a3584069 $i3594070 $x3604071))))

; forwards $main_inv292
(assert
  (forall (($a3584069 (Array Int Int)) ($i3594070 Int) ($x3604071 Int))
    (=> (and (< $i3594070 100000)
             ($main_inv292 $a3584069 $i3594070 $x3604071))
        ($main_inv292 (store $a3584069 $i3594070 48) (+ $i3594070 1) $x3604071))))

; loop entry $main_inv293
(assert
  (forall (($a3584072 (Array Int Int)) ($x3604074 Int) ($i3594073 Int))
    (=> (and ($main_sum292 $a3584072 $i3594073 $x3604074))
        ($main_inv293 $a3584072 0 $x3604074))))

; loop term $main_sum293
(assert
  (forall (($a3584075 (Array Int Int)) ($i3594076 Int) ($x3604077 Int))
    (=> (and (not (< $i3594076 100000))
             ($main_inv293 $a3584075 $i3594076 $x3604077))
        ($main_sum293 $a3584075 $i3594076 $x3604077))))

; forwards $main_inv293
(assert
  (forall (($a3584075 (Array Int Int)) ($i3594076 Int) ($x3604077 Int))
    (=> (and (< $i3594076 100000)
             ($main_inv293 $a3584075 $i3594076 $x3604077))
        ($main_inv293 (store $a3584075 $i3594076 49) (+ $i3594076 1) $x3604077))))

; loop entry $main_inv294
(assert
  (forall (($a3584078 (Array Int Int)) ($i3594079 Int) ($x3604080 Int))
    (=> (and ($main_sum293 $a3584078 $i3594079 $x3604080))
        ($main_inv294 $a3584078 $i3594079 0))))

; loop term $main_sum294
(assert
  (forall (($a3584081 (Array Int Int)) ($i3594082 Int) ($x3604083 Int))
    (=> (and (not (< $x3604083 100000))
             ($main_inv294 $a3584081 $i3594082 $x3604083))
        ($main_sum294 $a3584081 $i3594082 $x3604083))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3584081 (Array Int Int)) ($x3604083 Int) ($i3594082 Int))
    (=> (and (< $x3604083 100000)
             ($main_inv294 $a3584081 $i3594082 $x3604083))
        ($__VERIFIER_assert_pre (ite (= (select $a3584081 $x3604083) 48) 1 0)))))

; forwards $main_inv294
(assert
  (forall (($a3584081 (Array Int Int)) ($i3594082 Int) ($x3604083 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3584081 $x3604083) 48) 1 0))
             (< $x3604083 100000)
             ($main_inv294 $a3584081 $i3594082 $x3604083))
        ($main_inv294 $a3584081 $i3594082 (+ $x3604083 1)))))

(check-sat)
