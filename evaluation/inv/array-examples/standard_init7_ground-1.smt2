(set-logic HORN)

(declare-fun $main_inv272 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum272 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum277 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv276 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv273 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv275 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum274 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum270 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv274 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum273 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv270 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if77 (Int) Bool)
(declare-fun $main_sum276 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum275 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum271 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv271 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv277 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3931 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3931))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if77 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3932 Int))
    (=> (and ($__VERIFIER_assert_if77 cond3932))
        (__VERIFIER_assert cond3932))))

; loop entry $main_inv270
(assert
  (forall (($a352 (Array Int Int)) ($i353 Int) ($x354 Int))
    (=> (and (= $i353 0))
        ($main_inv270 $a352 $i353 $x354))))

; loop term $main_sum270
(assert
  (forall (($a3523933 (Array Int Int)) ($i3533934 Int) ($x3543935 Int))
    (=> (and (not (< $i3533934 100000))
             ($main_inv270 $a3523933 $i3533934 $x3543935))
        ($main_sum270 $a3523933 $i3533934 $x3543935))))

; forwards $main_inv270
(assert
  (forall (($a3523933 (Array Int Int)) ($i3533934 Int) ($x3543935 Int))
    (=> (and (< $i3533934 100000)
             ($main_inv270 $a3523933 $i3533934 $x3543935))
        ($main_inv270 (store $a3523933 $i3533934 42) (+ $i3533934 1) $x3543935))))

; loop entry $main_inv271
(assert
  (forall (($a3523936 (Array Int Int)) ($x3543938 Int) ($i3533937 Int))
    (=> (and ($main_sum270 $a3523936 $i3533937 $x3543938))
        ($main_inv271 $a3523936 0 $x3543938))))

; loop term $main_sum271
(assert
  (forall (($a3523939 (Array Int Int)) ($i3533940 Int) ($x3543941 Int))
    (=> (and (not (< $i3533940 100000))
             ($main_inv271 $a3523939 $i3533940 $x3543941))
        ($main_sum271 $a3523939 $i3533940 $x3543941))))

; forwards $main_inv271
(assert
  (forall (($a3523939 (Array Int Int)) ($i3533940 Int) ($x3543941 Int))
    (=> (and (< $i3533940 100000)
             ($main_inv271 $a3523939 $i3533940 $x3543941))
        ($main_inv271 (store $a3523939 $i3533940 43) (+ $i3533940 1) $x3543941))))

; loop entry $main_inv272
(assert
  (forall (($a3523942 (Array Int Int)) ($x3543944 Int) ($i3533943 Int))
    (=> (and ($main_sum271 $a3523942 $i3533943 $x3543944))
        ($main_inv272 $a3523942 0 $x3543944))))

; loop term $main_sum272
(assert
  (forall (($a3523945 (Array Int Int)) ($i3533946 Int) ($x3543947 Int))
    (=> (and (not (< $i3533946 100000))
             ($main_inv272 $a3523945 $i3533946 $x3543947))
        ($main_sum272 $a3523945 $i3533946 $x3543947))))

; forwards $main_inv272
(assert
  (forall (($a3523945 (Array Int Int)) ($i3533946 Int) ($x3543947 Int))
    (=> (and (< $i3533946 100000)
             ($main_inv272 $a3523945 $i3533946 $x3543947))
        ($main_inv272 (store $a3523945 $i3533946 44) (+ $i3533946 1) $x3543947))))

; loop entry $main_inv273
(assert
  (forall (($a3523948 (Array Int Int)) ($x3543950 Int) ($i3533949 Int))
    (=> (and ($main_sum272 $a3523948 $i3533949 $x3543950))
        ($main_inv273 $a3523948 0 $x3543950))))

; loop term $main_sum273
(assert
  (forall (($a3523951 (Array Int Int)) ($i3533952 Int) ($x3543953 Int))
    (=> (and (not (< $i3533952 100000))
             ($main_inv273 $a3523951 $i3533952 $x3543953))
        ($main_sum273 $a3523951 $i3533952 $x3543953))))

; forwards $main_inv273
(assert
  (forall (($a3523951 (Array Int Int)) ($i3533952 Int) ($x3543953 Int))
    (=> (and (< $i3533952 100000)
             ($main_inv273 $a3523951 $i3533952 $x3543953))
        ($main_inv273 (store $a3523951 $i3533952 45) (+ $i3533952 1) $x3543953))))

; loop entry $main_inv274
(assert
  (forall (($a3523954 (Array Int Int)) ($x3543956 Int) ($i3533955 Int))
    (=> (and ($main_sum273 $a3523954 $i3533955 $x3543956))
        ($main_inv274 $a3523954 0 $x3543956))))

; loop term $main_sum274
(assert
  (forall (($a3523957 (Array Int Int)) ($i3533958 Int) ($x3543959 Int))
    (=> (and (not (< $i3533958 100000))
             ($main_inv274 $a3523957 $i3533958 $x3543959))
        ($main_sum274 $a3523957 $i3533958 $x3543959))))

; forwards $main_inv274
(assert
  (forall (($a3523957 (Array Int Int)) ($i3533958 Int) ($x3543959 Int))
    (=> (and (< $i3533958 100000)
             ($main_inv274 $a3523957 $i3533958 $x3543959))
        ($main_inv274 (store $a3523957 $i3533958 46) (+ $i3533958 1) $x3543959))))

; loop entry $main_inv275
(assert
  (forall (($a3523960 (Array Int Int)) ($x3543962 Int) ($i3533961 Int))
    (=> (and ($main_sum274 $a3523960 $i3533961 $x3543962))
        ($main_inv275 $a3523960 0 $x3543962))))

; loop term $main_sum275
(assert
  (forall (($a3523963 (Array Int Int)) ($i3533964 Int) ($x3543965 Int))
    (=> (and (not (< $i3533964 100000))
             ($main_inv275 $a3523963 $i3533964 $x3543965))
        ($main_sum275 $a3523963 $i3533964 $x3543965))))

; forwards $main_inv275
(assert
  (forall (($a3523963 (Array Int Int)) ($i3533964 Int) ($x3543965 Int))
    (=> (and (< $i3533964 100000)
             ($main_inv275 $a3523963 $i3533964 $x3543965))
        ($main_inv275 (store $a3523963 $i3533964 47) (+ $i3533964 1) $x3543965))))

; loop entry $main_inv276
(assert
  (forall (($a3523966 (Array Int Int)) ($x3543968 Int) ($i3533967 Int))
    (=> (and ($main_sum275 $a3523966 $i3533967 $x3543968))
        ($main_inv276 $a3523966 0 $x3543968))))

; loop term $main_sum276
(assert
  (forall (($a3523969 (Array Int Int)) ($i3533970 Int) ($x3543971 Int))
    (=> (and (not (< $i3533970 100000))
             ($main_inv276 $a3523969 $i3533970 $x3543971))
        ($main_sum276 $a3523969 $i3533970 $x3543971))))

; forwards $main_inv276
(assert
  (forall (($a3523969 (Array Int Int)) ($i3533970 Int) ($x3543971 Int))
    (=> (and (< $i3533970 100000)
             ($main_inv276 $a3523969 $i3533970 $x3543971))
        ($main_inv276 (store $a3523969 $i3533970 48) (+ $i3533970 1) $x3543971))))

; loop entry $main_inv277
(assert
  (forall (($a3523972 (Array Int Int)) ($i3533973 Int) ($x3543974 Int))
    (=> (and ($main_sum276 $a3523972 $i3533973 $x3543974))
        ($main_inv277 $a3523972 $i3533973 0))))

; loop term $main_sum277
(assert
  (forall (($a3523975 (Array Int Int)) ($i3533976 Int) ($x3543977 Int))
    (=> (and (not (< $x3543977 100000))
             ($main_inv277 $a3523975 $i3533976 $x3543977))
        ($main_sum277 $a3523975 $i3533976 $x3543977))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3523975 (Array Int Int)) ($x3543977 Int) ($i3533976 Int))
    (=> (and (< $x3543977 100000)
             ($main_inv277 $a3523975 $i3533976 $x3543977))
        ($__VERIFIER_assert_pre (ite (= (select $a3523975 $x3543977) 47) 1 0)))))

; forwards $main_inv277
(assert
  (forall (($a3523975 (Array Int Int)) ($i3533976 Int) ($x3543977 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3523975 $x3543977) 47) 1 0))
             (< $x3543977 100000)
             ($main_inv277 $a3523975 $i3533976 $x3543977))
        ($main_inv277 $a3523975 $i3533976 (+ $x3543977 1)))))

(check-sat)
