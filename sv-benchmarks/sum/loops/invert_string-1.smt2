(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv249 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv250 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv251 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if680 (Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum249 (Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $main_sum250 (Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if679 (Int Int) Bool)
(declare-fun $main_sum251 (Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16306 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16306))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if679 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16307 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if679 cond cond16307))
        (__VERIFIER_assert cond16307))))

; if else
(assert
  (forall (($str2705 (Array Int Int)) ($i707 Int) ($uint16308 Int) ($str1704 (Array Int Int)) ($j708 Int) ($MAX703 Int) ($cont706 Int))
    (=> (and (> $MAX703 0)
             (= $MAX703 $uint16308)
             (<= 0 $uint16308)
             (<= $uint16308 4294967295))
        ($main_if680 $MAX703 $str1704 $str2705 $cont706 $i707 $j708 $MAX703 $str1704 $str2705 $cont706 $i707 $j708))))

; loop entry $main_inv249
(assert
  (forall (($i70716313 Int) ($str2705 (Array Int Int)) ($j70816314 Int) ($str170416310 (Array Int Int)) ($i707 Int) ($cont70616312 Int) ($MAX70316309 Int) ($str270516311 (Array Int Int)) ($str1704 (Array Int Int)) ($j708 Int) ($MAX703 Int) ($cont706 Int))
    (=> (and ($main_if680 $MAX703 $str1704 $str2705 $cont706 $i707 $j708 $MAX70316309 $str170416310 $str270516311 $cont70616312 $i70716313 $j70816314))
        ($main_inv249 $MAX70316309 $str170416310 $str270516311 0 0 $j70816314))))

; loop term $main_sum249
(assert
  (forall (($str170416316 (Array Int Int)) ($cont70616318 Int) ($str270516317 (Array Int Int)) ($MAX70316315 Int) ($i70716319 Int) ($j70816320 Int))
    (=> (and (not (< $i70716319 $MAX70316315)))
        ($main_sum249 $MAX70316315 $str170416316 $str270516317 $cont70616318 $i70716319 $j70816320 $MAX70316315 $str170416316 $str270516317 $cont70616318 $i70716319 $j70816320))))

; forwards $main_inv249
(assert
  (forall (($str170416316 (Array Int Int)) ($cont70616318 Int) ($str270516317 (Array Int Int)) ($MAX70316315 Int) ($char16321 Int) ($i70716319 Int) ($j70816320 Int))
    (=> (and (<= (- 128) $char16321)
             (<= $char16321 127)
             (< $i70716319 $MAX70316315)
             ($main_inv249 $MAX70316315 $str170416316 $str270516317 $cont70616318 $i70716319 $j70816320))
        ($main_inv249 $MAX70316315 (store $str170416316 $i70716319 $char16321) $str270516317 $cont70616318 (+ $i70716319 1) $j70816320))))

; backwards $main_sum249
(assert
  (forall (($str170416323 (Array Int Int)) ($str170416316 (Array Int Int)) ($cont70616318 Int) ($str270516317 (Array Int Int)) ($MAX70316322 Int) ($j70816327 Int) ($char16321 Int) ($str270516324 (Array Int Int)) ($i70716326 Int) ($i70716319 Int) ($j70816320 Int) ($cont70616325 Int) ($MAX70316315 Int))
    (=> (and ($main_sum249 $MAX70316315 (store $str170416316 $i70716319 $char16321) $str270516317 $cont70616318 (+ $i70716319 1) $j70816320 $MAX70316322 $str170416323 $str270516324 $cont70616325 $i70716326 $j70816327)
             (<= (- 128) $char16321)
             (<= $char16321 127)
             (< $i70716319 $MAX70316315))
        ($main_sum249 $MAX70316315 $str170416316 $str270516317 $cont70616318 $i70716319 $j70816320 $MAX70316322 $str170416323 $str270516324 $cont70616325 $i70716326 $j70816327))))

; loop entry $main_inv250
(assert
  (forall (($i70716313 Int) ($str2705 (Array Int Int)) ($j70816314 Int) ($str170416310 (Array Int Int)) ($str170416329 (Array Int Int)) ($cont70616312 Int) ($MAX70316328 Int) ($MAX70316309 Int) ($str270516311 (Array Int Int)) ($i70716332 Int) ($str1704 (Array Int Int)) ($j708 Int) ($i707 Int) ($cont70616331 Int) ($str270516330 (Array Int Int)) ($j70816333 Int) ($MAX703 Int) ($cont706 Int))
    (=> (and ($main_sum249 $MAX70316309 $str170416310 $str270516311 0 0 $j70816314 $MAX70316328 $str170416329 $str270516330 $cont70616331 $i70716332 $j70816333)
             ($main_if680 $MAX703 $str1704 $str2705 $cont706 $i707 $j708 $MAX70316309 $str170416310 $str270516311 $cont70616312 $i70716313 $j70816314))
        ($main_inv250 $MAX70316328 (store $str170416329 (- $MAX70316328 1) 48) $str270516330 $cont70616331 (- $MAX70316328 1) 0))))

; loop term $main_sum250
(assert
  (forall (($MAX70316334 Int) ($j70816339 Int) ($str270516336 (Array Int Int)) ($str170416335 (Array Int Int)) ($cont70616337 Int) ($i70716338 Int))
    (=> (and (not (>= $i70716338 0)))
        ($main_sum250 $MAX70316334 $str170416335 $str270516336 $cont70616337 $i70716338 $j70816339 $MAX70316334 $str170416335 $str270516336 $cont70616337 $i70716338 $j70816339))))

; forwards $main_inv250
(assert
  (forall (($MAX70316334 Int) ($j70816339 Int) ($str270516336 (Array Int Int)) ($str170416335 (Array Int Int)) ($cont70616337 Int) ($i70716338 Int))
    (=> (and (>= $i70716338 0)
             ($main_inv250 $MAX70316334 $str170416335 $str270516336 $cont70616337 $i70716338 $j70816339))
        ($main_inv250 $MAX70316334 $str170416335 (store $str270516336 $j70816339 (select $str170416335 0)) $cont70616337 (- $i70716338 1) (+ $j70816339 1)))))

; backwards $main_sum250
(assert
  (forall (($cont70616343 Int) ($MAX70316334 Int) ($j70816339 Int) ($str270516336 (Array Int Int)) ($str170416341 (Array Int Int)) ($str170416335 (Array Int Int)) ($cont70616337 Int) ($i70716338 Int) ($j70816345 Int) ($i70716344 Int) ($str270516342 (Array Int Int)) ($MAX70316340 Int))
    (=> (and ($main_sum250 $MAX70316334 $str170416335 (store $str270516336 $j70816339 (select $str170416335 0)) $cont70616337 (- $i70716338 1) (+ $j70816339 1) $MAX70316340 $str170416341 $str270516342 $cont70616343 $i70716344 $j70816345)
             (>= $i70716338 0))
        ($main_sum250 $MAX70316334 $str170416335 $str270516336 $cont70616337 $i70716338 $j70816339 $MAX70316340 $str170416341 $str270516342 $cont70616343 $i70716344 $j70816345))))

; loop entry $main_inv251
(assert
  (forall (($i70716313 Int) ($str2705 (Array Int Int)) ($j70816314 Int) ($str170416310 (Array Int Int)) ($str170416329 (Array Int Int)) ($str170416347 (Array Int Int)) ($MAX70316309 Int) ($str270516311 (Array Int Int)) ($str1704 (Array Int Int)) ($j708 Int) ($MAX70316346 Int) ($i707 Int) ($cont70616331 Int) ($cont70616312 Int) ($str270516348 (Array Int Int)) ($str270516330 (Array Int Int)) ($j70816333 Int) ($i70716350 Int) ($MAX70316328 Int) ($MAX703 Int) ($cont706 Int) ($cont70616349 Int) ($i70716332 Int) ($j70816351 Int))
    (=> (and ($main_sum250 $MAX70316328 (store $str170416329 (- $MAX70316328 1) 48) $str270516330 $cont70616331 (- $MAX70316328 1) 0 $MAX70316346 $str170416347 $str270516348 $cont70616349 $i70716350 $j70816351)
             ($main_sum249 $MAX70316309 $str170416310 $str270516311 0 0 $j70816314 $MAX70316328 $str170416329 $str270516330 $cont70616331 $i70716332 $j70816333)
             ($main_if680 $MAX703 $str1704 $str2705 $cont706 $i707 $j708 $MAX70316309 $str170416310 $str270516311 $cont70616312 $i70716313 $j70816314))
        ($main_inv251 $MAX70316346 $str170416347 $str270516348 $cont70616349 0 (- $MAX70316346 1)))))

; loop term $main_sum251
(assert
  (forall (($i70716356 Int) ($MAX70316352 Int) ($str170416353 (Array Int Int)) ($str270516354 (Array Int Int)) ($j70816357 Int) ($cont70616355 Int))
    (=> (and (not (< $i70716356 $MAX70316352)))
        ($main_sum251 $MAX70316352 $str170416353 $str270516354 $cont70616355 $i70716356 $j70816357 $MAX70316352 $str170416353 $str270516354 $cont70616355 $i70716356 $j70816357))))

; __VERIFIER_assert precondition
(assert
  (forall (($i70716356 Int) ($MAX70316352 Int) ($str170416353 (Array Int Int)) ($str270516354 (Array Int Int)) ($j70816357 Int) ($cont70616355 Int))
    (=> (and (< $i70716356 $MAX70316352)
             ($main_inv251 $MAX70316352 $str170416353 $str270516354 $cont70616355 $i70716356 $j70816357))
        ($__VERIFIER_assert_pre (ite (= (select $str170416353 $i70716356) (select $str270516354 $j70816357)) 1 0)))))

; forwards $main_inv251
(assert
  (forall (($i70716356 Int) ($MAX70316352 Int) ($str170416353 (Array Int Int)) ($str270516354 (Array Int Int)) ($j70816357 Int) ($cont70616355 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $str170416353 $i70716356) (select $str270516354 $j70816357)) 1 0))
             (< $i70716356 $MAX70316352)
             ($main_inv251 $MAX70316352 $str170416353 $str270516354 $cont70616355 $i70716356 $j70816357))
        ($main_inv251 $MAX70316352 $str170416353 $str270516354 $cont70616355 (+ $i70716356 1) (- $j70816357 1)))))

; backwards $main_sum251
(assert
  (forall (($i70716356 Int) ($MAX70316352 Int) ($str170416353 (Array Int Int)) ($j70816363 Int) ($str170416359 (Array Int Int)) ($MAX70316358 Int) ($cont70616361 Int) ($i70716362 Int) ($str270516354 (Array Int Int)) ($j70816357 Int) ($cont70616355 Int) ($str270516360 (Array Int Int)))
    (=> (and ($main_sum251 $MAX70316352 $str170416353 $str270516354 $cont70616355 (+ $i70716356 1) (- $j70816357 1) $MAX70316358 $str170416359 $str270516360 $cont70616361 $i70716362 $j70816363)
             (__VERIFIER_assert (ite (= (select $str170416353 $i70716356) (select $str270516354 $j70816357)) 1 0))
             (< $i70716356 $MAX70316352))
        ($main_sum251 $MAX70316352 $str170416353 $str270516354 $cont70616355 $i70716356 $j70816357 $MAX70316358 $str170416359 $str270516360 $cont70616361 $i70716362 $j70816363))))

(check-sat)
