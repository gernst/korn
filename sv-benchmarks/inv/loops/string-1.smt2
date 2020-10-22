(set-logic HORN)

(declare-fun $main_if362 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum517 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv513 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv516 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if358 (Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $main_sum516 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum513 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum514 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if359 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if361 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum515 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv517 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv515 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv514 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if360 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $assume_abort_if_not_if357 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if357 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond7001 Int))
    (=> (and ($assume_abort_if_not_if357 cond7001))
        (assume_abort_if_not cond7001))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7002 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7002))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if358 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7003 Int))
    (=> (and ($__VERIFIER_assert_if358 cond7003))
        (__VERIFIER_assert cond7003))))

; loop entry $main_inv513
(assert
  (forall (($string_A726 (Array Int Int)) ($found732 Int) ($j729 Int) ($nc_B731 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)))
    (=> (and (= $found732 0))
        ($main_inv513 $string_A726 $string_B727 0 $j729 $nc_A730 $nc_B731 $found732))))

; loop term $main_sum513
(assert
  (forall (($string_A7267004 (Array Int Int)) ($nc_A7307008 Int) ($found7327010 Int) ($string_B7277005 (Array Int Int)) ($nc_B7317009 Int) ($i7287006 Int) ($j7297007 Int))
    (=> (and (not (< $i7287006 5))
             ($main_inv513 $string_A7267004 $string_B7277005 $i7287006 $j7297007 $nc_A7307008 $nc_B7317009 $found7327010))
        ($main_sum513 $string_A7267004 $string_B7277005 $i7287006 $j7297007 $nc_A7307008 $nc_B7317009 $found7327010))))

; forwards $main_inv513
(assert
  (forall (($string_A7267004 (Array Int Int)) ($nc_A7307008 Int) ($found7327010 Int) ($string_B7277005 (Array Int Int)) ($nc_B7317009 Int) ($char7011 Int) ($i7287006 Int) ($j7297007 Int))
    (=> (and (<= (- 128) $char7011)
             (<= $char7011 127)
             (< $i7287006 5)
             ($main_inv513 $string_A7267004 $string_B7277005 $i7287006 $j7297007 $nc_A7307008 $nc_B7317009 $found7327010))
        ($main_inv513 (store $string_A7267004 $i7287006 $char7011) $string_B7277005 (+ $i7287006 1) $j7297007 $nc_A7307008 $nc_B7317009 $found7327010))))

; if else
(assert
  (forall (($found7327018 Int) ($j7297015 Int) ($string_B7277013 (Array Int Int)) ($nc_A7307016 Int) ($string_A7267012 (Array Int Int)) ($nc_B7317017 Int) ($i7287014 Int))
    (=> (and (= (select $string_A7267012 (- 5 1)) 48)
             ($main_sum513 $string_A7267012 $string_B7277013 $i7287014 $j7297015 $nc_A7307016 $nc_B7317017 $found7327018))
        ($main_if359 $string_A7267012 $string_B7277013 $i7287014 $j7297015 $nc_A7307016 $nc_B7317017 $found7327018))))

; loop entry $main_inv514
(assert
  (forall (($j7297022 Int) ($nc_A7307023 Int) ($nc_B7317024 Int) ($string_A7267019 (Array Int Int)) ($i7287021 Int) ($found7327025 Int) ($string_B7277020 (Array Int Int)))
    (=> (and ($main_if359 $string_A7267019 $string_B7277020 $i7287021 $j7297022 $nc_A7307023 $nc_B7317024 $found7327025))
        ($main_inv514 $string_A7267019 $string_B7277020 0 $j7297022 $nc_A7307023 $nc_B7317024 $found7327025))))

; loop term $main_sum514
(assert
  (forall (($nc_B7317031 Int) ($nc_A7307030 Int) ($j7297029 Int) ($found7327032 Int) ($string_B7277027 (Array Int Int)) ($string_A7267026 (Array Int Int)) ($i7287028 Int))
    (=> (and (not (< $i7287028 5))
             ($main_inv514 $string_A7267026 $string_B7277027 $i7287028 $j7297029 $nc_A7307030 $nc_B7317031 $found7327032))
        ($main_sum514 $string_A7267026 $string_B7277027 $i7287028 $j7297029 $nc_A7307030 $nc_B7317031 $found7327032))))

; forwards $main_inv514
(assert
  (forall (($char7033 Int) ($nc_B7317031 Int) ($nc_A7307030 Int) ($j7297029 Int) ($found7327032 Int) ($string_B7277027 (Array Int Int)) ($string_A7267026 (Array Int Int)) ($i7287028 Int))
    (=> (and (<= (- 128) $char7033)
             (<= $char7033 127)
             (< $i7287028 5)
             ($main_inv514 $string_A7267026 $string_B7277027 $i7287028 $j7297029 $nc_A7307030 $nc_B7317031 $found7327032))
        ($main_inv514 $string_A7267026 (store $string_B7277027 $i7287028 $char7033) (+ $i7287028 1) $j7297029 $nc_A7307030 $nc_B7317031 $found7327032))))

; if else
(assert
  (forall (($found7327040 Int) ($string_B7277035 (Array Int Int)) ($nc_B7317039 Int) ($i7287036 Int) ($nc_A7307038 Int) ($string_A7267034 (Array Int Int)) ($j7297037 Int))
    (=> (and (= (select $string_B7277035 (- 5 1)) 48)
             ($main_sum514 $string_A7267034 $string_B7277035 $i7287036 $j7297037 $nc_A7307038 $nc_B7317039 $found7327040))
        ($main_if360 $string_A7267034 $string_B7277035 $i7287036 $j7297037 $nc_A7307038 $nc_B7317039 $found7327040))))

; loop entry $main_inv515
(assert
  (forall (($string_A7267041 (Array Int Int)) ($nc_B7317046 Int) ($j7297044 Int) ($i7287043 Int) ($found7327047 Int) ($nc_A7307045 Int) ($string_B7277042 (Array Int Int)))
    (=> (and ($main_if360 $string_A7267041 $string_B7277042 $i7287043 $j7297044 $nc_A7307045 $nc_B7317046 $found7327047))
        ($main_inv515 $string_A7267041 $string_B7277042 $i7287043 $j7297044 0 $nc_B7317046 $found7327047))))

; loop term $main_sum515
(assert
  (forall (($found7327054 Int) ($i7287050 Int) ($string_A7267048 (Array Int Int)) ($nc_B7317053 Int) ($string_B7277049 (Array Int Int)) ($nc_A7307052 Int) ($j7297051 Int))
    (=> (and (= (select $string_A7267048 $nc_A7307052) 48)
             ($main_inv515 $string_A7267048 $string_B7277049 $i7287050 $j7297051 $nc_A7307052 $nc_B7317053 $found7327054))
        ($main_sum515 $string_A7267048 $string_B7277049 $i7287050 $j7297051 $nc_A7307052 $nc_B7317053 $found7327054))))

; forwards $main_inv515
(assert
  (forall (($found7327054 Int) ($i7287050 Int) ($string_A7267048 (Array Int Int)) ($nc_B7317053 Int) ($string_B7277049 (Array Int Int)) ($nc_A7307052 Int) ($j7297051 Int))
    (=> (and (not (= (select $string_A7267048 $nc_A7307052) 48))
             ($main_inv515 $string_A7267048 $string_B7277049 $i7287050 $j7297051 $nc_A7307052 $nc_B7317053 $found7327054))
        ($main_inv515 $string_A7267048 $string_B7277049 $i7287050 $j7297051 (+ $nc_A7307052 1) $nc_B7317053 $found7327054))))

; loop entry $main_inv516
(assert
  (forall (($j7297058 Int) ($nc_B7317060 Int) ($string_B7277056 (Array Int Int)) ($found7327061 Int) ($i7287057 Int) ($string_A7267055 (Array Int Int)) ($nc_A7307059 Int))
    (=> (and ($main_sum515 $string_A7267055 $string_B7277056 $i7287057 $j7297058 $nc_A7307059 $nc_B7317060 $found7327061))
        ($main_inv516 $string_A7267055 $string_B7277056 $i7287057 $j7297058 $nc_A7307059 0 $found7327061))))

; loop term $main_sum516
(assert
  (forall (($nc_A7307066 Int) ($i7287064 Int) ($found7327068 Int) ($string_A7267062 (Array Int Int)) ($nc_B7317067 Int) ($string_B7277063 (Array Int Int)) ($j7297065 Int))
    (=> (and (= (select $string_B7277063 $nc_B7317067) 48)
             ($main_inv516 $string_A7267062 $string_B7277063 $i7287064 $j7297065 $nc_A7307066 $nc_B7317067 $found7327068))
        ($main_sum516 $string_A7267062 $string_B7277063 $i7287064 $j7297065 $nc_A7307066 $nc_B7317067 $found7327068))))

; forwards $main_inv516
(assert
  (forall (($nc_A7307066 Int) ($i7287064 Int) ($found7327068 Int) ($string_A7267062 (Array Int Int)) ($nc_B7317067 Int) ($string_B7277063 (Array Int Int)) ($j7297065 Int))
    (=> (and (not (= (select $string_B7277063 $nc_B7317067) 48))
             ($main_inv516 $string_A7267062 $string_B7277063 $i7287064 $j7297065 $nc_A7307066 $nc_B7317067 $found7327068))
        ($main_inv516 $string_A7267062 $string_B7277063 $i7287064 $j7297065 $nc_A7307066 (+ $nc_B7317067 1) $found7327068))))

; if else
(assert
  (forall (($nc_A7307073 Int) ($nc_B7317074 Int) ($string_A7267069 (Array Int Int)) ($found7327075 Int) ($string_B7277070 (Array Int Int)) ($i7287071 Int) ($j7297072 Int))
    (=> (and (>= $nc_B7317074 $nc_A7307073)
             ($main_sum516 $string_A7267069 $string_B7277070 $i7287071 $j7297072 $nc_A7307073 $nc_B7317074 $found7327075))
        ($main_if361 $string_A7267069 $string_B7277070 $i7287071 $j7297072 $nc_A7307073 $nc_B7317074 $found7327075))))

; loop entry $main_inv517
(assert
  (forall (($string_A7267076 (Array Int Int)) ($found7327082 Int) ($nc_A7307080 Int) ($nc_B7317081 Int) ($i7287078 Int) ($j7297079 Int) ($string_B7277077 (Array Int Int)))
    (=> (and ($main_if361 $string_A7267076 $string_B7277077 $i7287078 $j7297079 $nc_A7307080 $nc_B7317081 $found7327082))
        ($main_inv517 $string_A7267076 $string_B7277077 0 0 $nc_A7307080 $nc_B7317081 $found7327082))))

; loop term $main_sum517
(assert
  (forall (($nc_B7317088 Int) ($i7287085 Int) ($string_A7267083 (Array Int Int)) ($string_B7277084 (Array Int Int)) ($nc_A7307087 Int) ($j7297086 Int) ($found7327089 Int))
    (=> (and (not (and (< $i7287085 $nc_A7307087) (< $j7297086 $nc_B7317088)))
             ($main_inv517 $string_A7267083 $string_B7277084 $i7287085 $j7297086 $nc_A7307087 $nc_B7317088 $found7327089))
        ($main_sum517 $string_A7267083 $string_B7277084 $i7287085 $j7297086 $nc_A7307087 $nc_B7317088 $found7327089))))

; if then
(assert
  (forall (($nc_B7317088 Int) ($i7287085 Int) ($string_A7267083 (Array Int Int)) ($string_B7277084 (Array Int Int)) ($nc_A7307087 Int) ($j7297086 Int) ($found7327089 Int))
    (=> (and (= (select $string_A7267083 $i7287085) (select $string_B7277084 $j7297086))
             (< $i7287085 $nc_A7307087)
             (< $j7297086 $nc_B7317088)
             ($main_inv517 $string_A7267083 $string_B7277084 $i7287085 $j7297086 $nc_A7307087 $nc_B7317088 $found7327089))
        ($main_if362 $string_A7267083 $string_B7277084 (+ $i7287085 1) (+ $j7297086 1) $nc_A7307087 $nc_B7317088 $found7327089))))

; if else
(assert
  (forall (($nc_B7317088 Int) ($i7287085 Int) ($string_A7267083 (Array Int Int)) ($string_B7277084 (Array Int Int)) ($nc_A7307087 Int) ($j7297086 Int) ($found7327089 Int))
    (=> (and (not (= (select $string_A7267083 $i7287085) (select $string_B7277084 $j7297086)))
             (< $i7287085 $nc_A7307087)
             (< $j7297086 $nc_B7317088)
             ($main_inv517 $string_A7267083 $string_B7277084 $i7287085 $j7297086 $nc_A7307087 $nc_B7317088 $found7327089))
        ($main_if362 $string_A7267083 $string_B7277084 (+ (- $i7287085 $j7297086) 1) 0 $nc_A7307087 $nc_B7317088 $found7327089))))

; forwards $main_inv517
(assert
  (forall (($j7297093 Int) ($string_A7267090 (Array Int Int)) ($i7287092 Int) ($found7327096 Int) ($string_B7277091 (Array Int Int)) ($nc_A7307094 Int) ($nc_B7317095 Int))
    (=> (and ($main_if362 $string_A7267090 $string_B7277091 $i7287092 $j7297093 $nc_A7307094 $nc_B7317095 $found7327096))
        ($main_inv517 $string_A7267090 $string_B7277091 $i7287092 $j7297093 $nc_A7307094 $nc_B7317095 $found7327096))))

; __VERIFIER_assert precondition
(assert
  (forall (($found7327103 Int) ($string_A7267097 (Array Int Int)) ($i7287099 Int) ($nc_B7317102 Int) ($string_B7277098 (Array Int Int)) ($j7297100 Int) ($nc_A7307101 Int))
    (=> (and ($main_sum517 $string_A7267097 $string_B7277098 $i7287099 $j7297100 $nc_A7307101 $nc_B7317102 $found7327103))
        ($__VERIFIER_assert_pre (ite (or (= (ite (> $j7297100 (- $nc_B7317102 1)) 1 0) 0) (= (ite (> $j7297100 (- $nc_B7317102 1)) 1 0) 1)) 1 0)))))

(check-sat)
