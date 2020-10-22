(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum307 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv310 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum308 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum313 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv312 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum305 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum306 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv308 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum304 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv305 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv309 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv307 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum309 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if81 (Int Int) Bool)
(declare-fun $main_inv313 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum310 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv306 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum311 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum312 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv304 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv311 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6031 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6031))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if81 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6032 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if81 cond cond6032))
        (__VERIFIER_assert cond6032))))

; loop entry $main_inv304
(assert
  (forall (($a364 (Array Int Int)) ($i365 Int) ($x366 Int))
    (=> (and (= $i365 0))
        ($main_inv304 $a364 $i365 $x366))))

; loop term $main_sum304
(assert
  (forall (($a3646033 (Array Int Int)) ($i3656034 Int) ($x3666035 Int))
    (=> (and (not (< $i3656034 100000)))
        ($main_sum304 $a3646033 $i3656034 $x3666035 $a3646033 $i3656034 $x3666035))))

; forwards $main_inv304
(assert
  (forall (($a3646033 (Array Int Int)) ($i3656034 Int) ($x3666035 Int))
    (=> (and (< $i3656034 100000)
             ($main_inv304 $a3646033 $i3656034 $x3666035))
        ($main_inv304 (store $a3646033 $i3656034 42) (+ $i3656034 1) $x3666035))))

; backwards $main_sum304
(assert
  (forall (($x3666038 Int) ($a3646036 (Array Int Int)) ($x3666035 Int) ($a3646033 (Array Int Int)) ($i3656037 Int) ($i3656034 Int))
    (=> (and ($main_sum304 (store $a3646033 $i3656034 42) (+ $i3656034 1) $x3666035 $a3646036 $i3656037 $x3666038)
             (< $i3656034 100000))
        ($main_sum304 $a3646033 $i3656034 $x3666035 $a3646036 $i3656037 $x3666038))))

; loop entry $main_inv305
(assert
  (forall (($x3666041 Int) ($i365 Int) ($x366 Int) ($a364 (Array Int Int)) ($a3646039 (Array Int Int)) ($i3656040 Int))
    (=> (and ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv305 $a3646039 0 $x3666041))))

; loop term $main_sum305
(assert
  (forall (($a3646042 (Array Int Int)) ($i3656043 Int) ($x3666044 Int))
    (=> (and (not (< $i3656043 100000)))
        ($main_sum305 $a3646042 $i3656043 $x3666044 $a3646042 $i3656043 $x3666044))))

; forwards $main_inv305
(assert
  (forall (($a3646042 (Array Int Int)) ($i3656043 Int) ($x3666044 Int))
    (=> (and (< $i3656043 100000)
             ($main_inv305 $a3646042 $i3656043 $x3666044))
        ($main_inv305 (store $a3646042 $i3656043 43) (+ $i3656043 1) $x3666044))))

; backwards $main_sum305
(assert
  (forall (($i3656043 Int) ($a3646042 (Array Int Int)) ($a3646045 (Array Int Int)) ($x3666047 Int) ($x3666044 Int) ($i3656046 Int))
    (=> (and ($main_sum305 (store $a3646042 $i3656043 43) (+ $i3656043 1) $x3666044 $a3646045 $i3656046 $x3666047)
             (< $i3656043 100000))
        ($main_sum305 $a3646042 $i3656043 $x3666044 $a3646045 $i3656046 $x3666047))))

; loop entry $main_inv306
(assert
  (forall (($x3666041 Int) ($i365 Int) ($i3656049 Int) ($a3646048 (Array Int Int)) ($x366 Int) ($a364 (Array Int Int)) ($x3666050 Int) ($a3646039 (Array Int Int)) ($i3656040 Int))
    (=> (and ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv306 $a3646048 0 $x3666050))))

; loop term $main_sum306
(assert
  (forall (($a3646051 (Array Int Int)) ($i3656052 Int) ($x3666053 Int))
    (=> (and (not (< $i3656052 100000)))
        ($main_sum306 $a3646051 $i3656052 $x3666053 $a3646051 $i3656052 $x3666053))))

; forwards $main_inv306
(assert
  (forall (($a3646051 (Array Int Int)) ($i3656052 Int) ($x3666053 Int))
    (=> (and (< $i3656052 100000)
             ($main_inv306 $a3646051 $i3656052 $x3666053))
        ($main_inv306 (store $a3646051 $i3656052 44) (+ $i3656052 1) $x3666053))))

; backwards $main_sum306
(assert
  (forall (($x3666056 Int) ($i3656055 Int) ($a3646051 (Array Int Int)) ($i3656052 Int) ($x3666053 Int) ($a3646054 (Array Int Int)))
    (=> (and ($main_sum306 (store $a3646051 $i3656052 44) (+ $i3656052 1) $x3666053 $a3646054 $i3656055 $x3666056)
             (< $i3656052 100000))
        ($main_sum306 $a3646051 $i3656052 $x3666053 $a3646054 $i3656055 $x3666056))))

; loop entry $main_inv307
(assert
  (forall (($x3666041 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($i3656049 Int) ($x3666059 Int) ($a3646048 (Array Int Int)) ($i3656058 Int) ($x366 Int) ($a364 (Array Int Int)) ($x3666050 Int) ($a3646039 (Array Int Int)) ($i3656040 Int))
    (=> (and ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv307 $a3646057 0 $x3666059))))

; loop term $main_sum307
(assert
  (forall (($a3646060 (Array Int Int)) ($i3656061 Int) ($x3666062 Int))
    (=> (and (not (< $i3656061 100000)))
        ($main_sum307 $a3646060 $i3656061 $x3666062 $a3646060 $i3656061 $x3666062))))

; forwards $main_inv307
(assert
  (forall (($a3646060 (Array Int Int)) ($i3656061 Int) ($x3666062 Int))
    (=> (and (< $i3656061 100000)
             ($main_inv307 $a3646060 $i3656061 $x3666062))
        ($main_inv307 (store $a3646060 $i3656061 45) (+ $i3656061 1) $x3666062))))

; backwards $main_sum307
(assert
  (forall (($i3656064 Int) ($i3656061 Int) ($a3646063 (Array Int Int)) ($x3666065 Int) ($x3666062 Int) ($a3646060 (Array Int Int)))
    (=> (and ($main_sum307 (store $a3646060 $i3656061 45) (+ $i3656061 1) $x3666062 $a3646063 $i3656064 $x3666065)
             (< $i3656061 100000))
        ($main_sum307 $a3646060 $i3656061 $x3666062 $a3646063 $i3656064 $x3666065))))

; loop entry $main_inv308
(assert
  (forall (($x3666068 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($i3656049 Int) ($x3666059 Int) ($a3646048 (Array Int Int)) ($x366 Int) ($a364 (Array Int Int)) ($x3666050 Int) ($x3666041 Int) ($i3656067 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($i3656058 Int) ($a3646066 (Array Int Int)))
    (=> (and ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv308 $a3646066 0 $x3666068))))

; loop term $main_sum308
(assert
  (forall (($a3646069 (Array Int Int)) ($i3656070 Int) ($x3666071 Int))
    (=> (and (not (< $i3656070 100000)))
        ($main_sum308 $a3646069 $i3656070 $x3666071 $a3646069 $i3656070 $x3666071))))

; forwards $main_inv308
(assert
  (forall (($a3646069 (Array Int Int)) ($i3656070 Int) ($x3666071 Int))
    (=> (and (< $i3656070 100000)
             ($main_inv308 $a3646069 $i3656070 $x3666071))
        ($main_inv308 (store $a3646069 $i3656070 46) (+ $i3656070 1) $x3666071))))

; backwards $main_sum308
(assert
  (forall (($a3646069 (Array Int Int)) ($i3656070 Int) ($i3656073 Int) ($x3666071 Int) ($x3666074 Int) ($a3646072 (Array Int Int)))
    (=> (and ($main_sum308 (store $a3646069 $i3656070 46) (+ $i3656070 1) $x3666071 $a3646072 $i3656073 $x3666074)
             (< $i3656070 100000))
        ($main_sum308 $a3646069 $i3656070 $x3666071 $a3646072 $i3656073 $x3666074))))

; loop entry $main_inv309
(assert
  (forall (($x3666068 Int) ($x3666077 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($i3656049 Int) ($i3656076 Int) ($x3666059 Int) ($a3646048 (Array Int Int)) ($x366 Int) ($a364 (Array Int Int)) ($a3646075 (Array Int Int)) ($x3666050 Int) ($x3666041 Int) ($i3656067 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($i3656058 Int) ($a3646066 (Array Int Int)))
    (=> (and ($main_sum308 $a3646066 0 $x3666068 $a3646075 $i3656076 $x3666077)
             ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv309 $a3646075 0 $x3666077))))

; loop term $main_sum309
(assert
  (forall (($a3646078 (Array Int Int)) ($i3656079 Int) ($x3666080 Int))
    (=> (and (not (< $i3656079 100000)))
        ($main_sum309 $a3646078 $i3656079 $x3666080 $a3646078 $i3656079 $x3666080))))

; forwards $main_inv309
(assert
  (forall (($a3646078 (Array Int Int)) ($i3656079 Int) ($x3666080 Int))
    (=> (and (< $i3656079 100000)
             ($main_inv309 $a3646078 $i3656079 $x3666080))
        ($main_inv309 (store $a3646078 $i3656079 47) (+ $i3656079 1) $x3666080))))

; backwards $main_sum309
(assert
  (forall (($x3666080 Int) ($a3646081 (Array Int Int)) ($a3646078 (Array Int Int)) ($i3656079 Int) ($x3666083 Int) ($i3656082 Int))
    (=> (and ($main_sum309 (store $a3646078 $i3656079 47) (+ $i3656079 1) $x3666080 $a3646081 $i3656082 $x3666083)
             (< $i3656079 100000))
        ($main_sum309 $a3646078 $i3656079 $x3666080 $a3646081 $i3656082 $x3666083))))

; loop entry $main_inv310
(assert
  (forall (($x3666068 Int) ($x3666077 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($i3656049 Int) ($i3656076 Int) ($a3646048 (Array Int Int)) ($x366 Int) ($a364 (Array Int Int)) ($a3646075 (Array Int Int)) ($x3666086 Int) ($x3666050 Int) ($x3666041 Int) ($i3656067 Int) ($a3646084 (Array Int Int)) ($i3656085 Int) ($x3666059 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($i3656058 Int) ($a3646066 (Array Int Int)))
    (=> (and ($main_sum309 $a3646075 0 $x3666077 $a3646084 $i3656085 $x3666086)
             ($main_sum308 $a3646066 0 $x3666068 $a3646075 $i3656076 $x3666077)
             ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv310 $a3646084 0 $x3666086))))

; loop term $main_sum310
(assert
  (forall (($a3646087 (Array Int Int)) ($i3656088 Int) ($x3666089 Int))
    (=> (and (not (< $i3656088 100000)))
        ($main_sum310 $a3646087 $i3656088 $x3666089 $a3646087 $i3656088 $x3666089))))

; forwards $main_inv310
(assert
  (forall (($a3646087 (Array Int Int)) ($i3656088 Int) ($x3666089 Int))
    (=> (and (< $i3656088 100000)
             ($main_inv310 $a3646087 $i3656088 $x3666089))
        ($main_inv310 (store $a3646087 $i3656088 48) (+ $i3656088 1) $x3666089))))

; backwards $main_sum310
(assert
  (forall (($i3656088 Int) ($x3666089 Int) ($a3646090 (Array Int Int)) ($x3666092 Int) ($a3646087 (Array Int Int)) ($i3656091 Int))
    (=> (and ($main_sum310 (store $a3646087 $i3656088 48) (+ $i3656088 1) $x3666089 $a3646090 $i3656091 $x3666092)
             (< $i3656088 100000))
        ($main_sum310 $a3646087 $i3656088 $x3666089 $a3646090 $i3656091 $x3666092))))

; loop entry $main_inv311
(assert
  (forall (($x3666068 Int) ($x3666077 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($x3666095 Int) ($i3656049 Int) ($i3656076 Int) ($i3656094 Int) ($a3646048 (Array Int Int)) ($x366 Int) ($a364 (Array Int Int)) ($x3666086 Int) ($x3666050 Int) ($x3666041 Int) ($i3656067 Int) ($a3646084 (Array Int Int)) ($i3656085 Int) ($x3666059 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($i3656058 Int) ($a3646066 (Array Int Int)) ($a3646075 (Array Int Int)) ($a3646093 (Array Int Int)))
    (=> (and ($main_sum310 $a3646084 0 $x3666086 $a3646093 $i3656094 $x3666095)
             ($main_sum309 $a3646075 0 $x3666077 $a3646084 $i3656085 $x3666086)
             ($main_sum308 $a3646066 0 $x3666068 $a3646075 $i3656076 $x3666077)
             ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv311 $a3646093 0 $x3666095))))

; loop term $main_sum311
(assert
  (forall (($a3646096 (Array Int Int)) ($i3656097 Int) ($x3666098 Int))
    (=> (and (not (< $i3656097 100000)))
        ($main_sum311 $a3646096 $i3656097 $x3666098 $a3646096 $i3656097 $x3666098))))

; forwards $main_inv311
(assert
  (forall (($a3646096 (Array Int Int)) ($i3656097 Int) ($x3666098 Int))
    (=> (and (< $i3656097 100000)
             ($main_inv311 $a3646096 $i3656097 $x3666098))
        ($main_inv311 (store $a3646096 $i3656097 49) (+ $i3656097 1) $x3666098))))

; backwards $main_sum311
(assert
  (forall (($x3666098 Int) ($x3666101 Int) ($a3646096 (Array Int Int)) ($i3656097 Int) ($i3656100 Int) ($a3646099 (Array Int Int)))
    (=> (and ($main_sum311 (store $a3646096 $i3656097 49) (+ $i3656097 1) $x3666098 $a3646099 $i3656100 $x3666101)
             (< $i3656097 100000))
        ($main_sum311 $a3646096 $i3656097 $x3666098 $a3646099 $i3656100 $x3666101))))

; loop entry $main_inv312
(assert
  (forall (($x3666068 Int) ($x3666077 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($x3666095 Int) ($i3656049 Int) ($i3656076 Int) ($i3656094 Int) ($a3646048 (Array Int Int)) ($a364 (Array Int Int)) ($x3666104 Int) ($x3666086 Int) ($x3666041 Int) ($i3656067 Int) ($a3646084 (Array Int Int)) ($i3656085 Int) ($x3666059 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($i3656058 Int) ($a3646066 (Array Int Int)) ($a3646102 (Array Int Int)) ($x366 Int) ($a3646075 (Array Int Int)) ($a3646093 (Array Int Int)) ($x3666050 Int) ($i3656103 Int))
    (=> (and ($main_sum311 $a3646093 0 $x3666095 $a3646102 $i3656103 $x3666104)
             ($main_sum310 $a3646084 0 $x3666086 $a3646093 $i3656094 $x3666095)
             ($main_sum309 $a3646075 0 $x3666077 $a3646084 $i3656085 $x3666086)
             ($main_sum308 $a3646066 0 $x3666068 $a3646075 $i3656076 $x3666077)
             ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv312 $a3646102 0 $x3666104))))

; loop term $main_sum312
(assert
  (forall (($a3646105 (Array Int Int)) ($i3656106 Int) ($x3666107 Int))
    (=> (and (not (< $i3656106 100000)))
        ($main_sum312 $a3646105 $i3656106 $x3666107 $a3646105 $i3656106 $x3666107))))

; forwards $main_inv312
(assert
  (forall (($a3646105 (Array Int Int)) ($i3656106 Int) ($x3666107 Int))
    (=> (and (< $i3656106 100000)
             ($main_inv312 $a3646105 $i3656106 $x3666107))
        ($main_inv312 (store $a3646105 $i3656106 50) (+ $i3656106 1) $x3666107))))

; backwards $main_sum312
(assert
  (forall (($i3656109 Int) ($a3646105 (Array Int Int)) ($x3666107 Int) ($a3646108 (Array Int Int)) ($x3666110 Int) ($i3656106 Int))
    (=> (and ($main_sum312 (store $a3646105 $i3656106 50) (+ $i3656106 1) $x3666107 $a3646108 $i3656109 $x3666110)
             (< $i3656106 100000))
        ($main_sum312 $a3646105 $i3656106 $x3666107 $a3646108 $i3656109 $x3666110))))

; loop entry $main_inv313
(assert
  (forall (($i3656112 Int) ($x3666077 Int) ($i365 Int) ($a3646057 (Array Int Int)) ($x3666095 Int) ($i3656049 Int) ($i3656076 Int) ($i3656094 Int) ($a3646048 (Array Int Int)) ($a364 (Array Int Int)) ($x3666104 Int) ($x3666086 Int) ($x3666041 Int) ($i3656067 Int) ($x3666113 Int) ($x3666068 Int) ($a3646084 (Array Int Int)) ($i3656085 Int) ($x3666059 Int) ($a3646039 (Array Int Int)) ($i3656040 Int) ($a3646111 (Array Int Int)) ($i3656058 Int) ($a3646066 (Array Int Int)) ($a3646102 (Array Int Int)) ($x366 Int) ($a3646075 (Array Int Int)) ($a3646093 (Array Int Int)) ($x3666050 Int) ($i3656103 Int))
    (=> (and ($main_sum312 $a3646102 0 $x3666104 $a3646111 $i3656112 $x3666113)
             ($main_sum311 $a3646093 0 $x3666095 $a3646102 $i3656103 $x3666104)
             ($main_sum310 $a3646084 0 $x3666086 $a3646093 $i3656094 $x3666095)
             ($main_sum309 $a3646075 0 $x3666077 $a3646084 $i3656085 $x3666086)
             ($main_sum308 $a3646066 0 $x3666068 $a3646075 $i3656076 $x3666077)
             ($main_sum307 $a3646057 0 $x3666059 $a3646066 $i3656067 $x3666068)
             ($main_sum306 $a3646048 0 $x3666050 $a3646057 $i3656058 $x3666059)
             ($main_sum305 $a3646039 0 $x3666041 $a3646048 $i3656049 $x3666050)
             ($main_sum304 $a364 $i365 $x366 $a3646039 $i3656040 $x3666041)
             (= $i365 0))
        ($main_inv313 $a3646111 $i3656112 0))))

; loop term $main_sum313
(assert
  (forall (($a3646114 (Array Int Int)) ($i3656115 Int) ($x3666116 Int))
    (=> (and (not (< $x3666116 100000)))
        ($main_sum313 $a3646114 $i3656115 $x3666116 $a3646114 $i3656115 $x3666116))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3646114 (Array Int Int)) ($x3666116 Int) ($i3656115 Int))
    (=> (and (< $x3666116 100000)
             ($main_inv313 $a3646114 $i3656115 $x3666116))
        ($__VERIFIER_assert_pre (ite (= (select $a3646114 $x3666116) 49) 1 0)))))

; forwards $main_inv313
(assert
  (forall (($a3646114 (Array Int Int)) ($i3656115 Int) ($x3666116 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3646114 $x3666116) 49) 1 0))
             (< $x3666116 100000)
             ($main_inv313 $a3646114 $i3656115 $x3666116))
        ($main_inv313 $a3646114 $i3656115 (+ $x3666116 1)))))

; backwards $main_sum313
(assert
  (forall (($x3666119 Int) ($x3666116 Int) ($i3656118 Int) ($i3656115 Int) ($a3646114 (Array Int Int)) ($a3646117 (Array Int Int)))
    (=> (and ($main_sum313 $a3646114 $i3656115 (+ $x3666116 1) $a3646117 $i3656118 $x3666119)
             (__VERIFIER_assert (ite (= (select $a3646114 $x3666116) 49) 1 0))
             (< $x3666116 100000))
        ($main_sum313 $a3646114 $i3656115 $x3666116 $a3646117 $i3656118 $x3666119))))

(check-sat)
