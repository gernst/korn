(set-logic HORN)

(declare-fun $__VERIFIER_assert_if174 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if175 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv448 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum448 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum447 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if173 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv447 ((Array Int Int) Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if173 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8232 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if173 cond cond8232))
        (assume_abort_if_not cond8232))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8233 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8233))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if174 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8234 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if174 cond cond8234))
        (__VERIFIER_assert cond8234))))

; assume_abort_if_not precondition
(assert
  (forall (($uint8235 Int) ($loop_entered566 Int))
    (=> (and (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($assume_abort_if_not_pre (ite (< $uint8235 100000) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($uint8236 Int) ($uint8235 Int) ($loop_entered566 Int))
    (=> (and (<= 0 $uint8236)
             (<= $uint8236 4294967295)
             (assume_abort_if_not (ite (< $uint8235 100000) 1 0))
             (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($assume_abort_if_not_pre (ite (< $uint8236 100000) 1 0)))))

; loop entry $main_inv447
(assert
  (forall (($array563 (Array Int Int)) ($uint8235 Int) ($uint8236 Int) ($loop_entered566 Int))
    (=> (and (assume_abort_if_not (ite (< $uint8236 100000) 1 0))
             (<= 0 $uint8236)
             (<= $uint8236 4294967295)
             (assume_abort_if_not (ite (< $uint8235 100000) 1 0))
             (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($main_inv447 $array563 $uint8235 $uint8236 $loop_entered566))))

; loop term $main_sum447
(assert
  (forall (($array5638237 (Array Int Int)) ($index15648238 Int) ($index25658239 Int) ($loop_entered5668240 Int))
    (=> (and (not (< $index15648238 $index25658239)))
        ($main_sum447 $array5638237 $index15648238 $index25658239 $loop_entered5668240 $array5638237 $index15648238 $index25658239 $loop_entered5668240))))

; __VERIFIER_assert precondition
(assert
  (forall (($index15648238 Int) ($index25658239 Int) ($array5638237 (Array Int Int)) ($loop_entered5668240 Int))
    (=> (and (< $index15648238 $index25658239)
             ($main_inv447 $array5638237 $index15648238 $index25658239 $loop_entered5668240))
        ($__VERIFIER_assert_pre (ite (and (< $index15648238 100000) (< $index25658239 100000)) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($array5638237 (Array Int Int)) ($index15648238 Int) ($index25658239 Int) ($loop_entered5668240 Int))
    (=> (and (__VERIFIER_assert (ite (and (< $index15648238 100000) (< $index25658239 100000)) 1 0))
             (< $index15648238 $index25658239)
             ($main_inv447 $array5638237 $index15648238 $index25658239 $loop_entered5668240))
        ($assume_abort_if_not_pre (ite (= (select $array5638237 $index15648238) (select $array5638237 $index25658239)) 1 0)))))

; forwards $main_inv447
(assert
  (forall (($array5638237 (Array Int Int)) ($index15648238 Int) ($index25658239 Int) ($loop_entered5668240 Int))
    (=> (and (assume_abort_if_not (ite (= (select $array5638237 $index15648238) (select $array5638237 $index25658239)) 1 0))
             (__VERIFIER_assert (ite (and (< $index15648238 100000) (< $index25658239 100000)) 1 0))
             (< $index15648238 $index25658239)
             ($main_inv447 $array5638237 $index15648238 $index25658239 $loop_entered5668240))
        ($main_inv447 $array5638237 (+ $index15648238 1) (- $index25658239 1) 1))))

; backwards $main_sum447
(assert
  (forall (($index25658239 Int) ($index15648238 Int) ($index15648242 Int) ($array5638237 (Array Int Int)) ($index25658243 Int) ($array5638241 (Array Int Int)) ($loop_entered5668244 Int) ($loop_entered5668240 Int))
    (=> (and ($main_sum447 $array5638237 (+ $index15648238 1) (- $index25658239 1) 1 $array5638241 $index15648242 $index25658243 $loop_entered5668244)
             (assume_abort_if_not (ite (= (select $array5638237 $index15648238) (select $array5638237 $index25658239)) 1 0))
             (__VERIFIER_assert (ite (and (< $index15648238 100000) (< $index25658239 100000)) 1 0))
             (< $index15648238 $index25658239))
        ($main_sum447 $array5638237 $index15648238 $index25658239 $loop_entered5668240 $array5638241 $index15648242 $index25658243 $loop_entered5668244))))

; loop entry $main_inv448
(assert
  (forall (($uint8235 Int) ($array563 (Array Int Int)) ($array5638245 (Array Int Int)) ($loop_entered566 Int) ($index25658247 Int) ($index15648246 Int) ($loop_entered5668248 Int) ($uint8236 Int))
    (=> (and (not (= $loop_entered5668248 0))
             ($main_sum447 $array563 $uint8235 $uint8236 $loop_entered566 $array5638245 $index15648246 $index25658247 $loop_entered5668248)
             (assume_abort_if_not (ite (< $uint8236 100000) 1 0))
             (<= 0 $uint8236)
             (<= $uint8236 4294967295)
             (assume_abort_if_not (ite (< $uint8235 100000) 1 0))
             (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($main_inv448 $array5638245 $index15648246 $index25658247 $loop_entered5668248))))

; loop term $main_sum448
(assert
  (forall (($array5638249 (Array Int Int)) ($index15648250 Int) ($index25658251 Int) ($loop_entered5668252 Int))
    (=> (and (not (< $index25658251 $index15648250)))
        ($main_sum448 $array5638249 $index15648250 $index25658251 $loop_entered5668252 $array5638249 $index15648250 $index25658251 $loop_entered5668252))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5638249 (Array Int Int)) ($index15648250 Int) ($index25658251 Int) ($loop_entered5668252 Int))
    (=> (and (< $index25658251 $index15648250)
             ($main_inv448 $array5638249 $index15648250 $index25658251 $loop_entered5668252))
        ($__VERIFIER_assert_pre (ite (= (select $array5638249 $index15648250) (select $array5638249 $index25658251)) 1 0)))))

; forwards $main_inv448
(assert
  (forall (($array5638249 (Array Int Int)) ($index15648250 Int) ($index25658251 Int) ($loop_entered5668252 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $array5638249 $index15648250) (select $array5638249 $index25658251)) 1 0))
             (< $index25658251 $index15648250)
             ($main_inv448 $array5638249 $index15648250 $index25658251 $loop_entered5668252))
        ($main_inv448 $array5638249 (- $index15648250 1) (+ $index25658251 1) $loop_entered5668252))))

; backwards $main_sum448
(assert
  (forall (($loop_entered5668256 Int) ($index25658255 Int) ($array5638249 (Array Int Int)) ($array5638253 (Array Int Int)) ($loop_entered5668252 Int) ($index15648250 Int) ($index25658251 Int) ($index15648254 Int))
    (=> (and ($main_sum448 $array5638249 (- $index15648250 1) (+ $index25658251 1) $loop_entered5668252 $array5638253 $index15648254 $index25658255 $loop_entered5668256)
             (__VERIFIER_assert (ite (= (select $array5638249 $index15648250) (select $array5638249 $index25658251)) 1 0))
             (< $index25658251 $index15648250))
        ($main_sum448 $array5638249 $index15648250 $index25658251 $loop_entered5668252 $array5638253 $index15648254 $index25658255 $loop_entered5668256))))

; if then
(assert
  (forall (($index15648258 Int) ($uint8235 Int) ($array563 (Array Int Int)) ($array5638257 (Array Int Int)) ($index2565 Int) ($array5638245 (Array Int Int)) ($loop_entered5668260 Int) ($loop_entered566 Int) ($index25658247 Int) ($index15648246 Int) ($loop_entered5668248 Int) ($uint8236 Int) ($index25658259 Int) ($index1564 Int))
    (=> (and ($main_sum448 $array5638245 $index15648246 $index25658247 $loop_entered5668248 $array5638257 $index15648258 $index25658259 $loop_entered5668260)
             (not (= $loop_entered5668248 0))
             ($main_sum447 $array563 $uint8235 $uint8236 $loop_entered566 $array5638245 $index15648246 $index25658247 $loop_entered5668248)
             (assume_abort_if_not (ite (< $uint8236 100000) 1 0))
             (<= 0 $uint8236)
             (<= $uint8236 4294967295)
             (assume_abort_if_not (ite (< $uint8235 100000) 1 0))
             (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($main_if175 $array563 $index1564 $index2565 $loop_entered566 $array5638257 $index15648258 $index25658259 $loop_entered5668260))))

; if else
(assert
  (forall (($index1564 Int) ($uint8235 Int) ($array563 (Array Int Int)) ($index2565 Int) ($array5638245 (Array Int Int)) ($loop_entered566 Int) ($index25658247 Int) ($index15648246 Int) ($loop_entered5668248 Int) ($uint8236 Int))
    (=> (and (= $loop_entered5668248 0)
             ($main_sum447 $array563 $uint8235 $uint8236 $loop_entered566 $array5638245 $index15648246 $index25658247 $loop_entered5668248)
             (assume_abort_if_not (ite (< $uint8236 100000) 1 0))
             (<= 0 $uint8236)
             (<= $uint8236 4294967295)
             (assume_abort_if_not (ite (< $uint8235 100000) 1 0))
             (<= 0 $uint8235)
             (<= $uint8235 4294967295)
             (= $loop_entered566 0))
        ($main_if175 $array563 $index1564 $index2565 $loop_entered566 $array5638245 $index15648246 $index25658247 $loop_entered5668248))))

(check-sat)
