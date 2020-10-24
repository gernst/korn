(set-logic HORN)

(declare-fun $__VERIFIER_assert_if681 (Int Int) Bool)
(declare-fun $main_inv254 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum254 (Int (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $main_sum253 (Int (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv252 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv253 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $main_sum252 (Int (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16370 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16370))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if681 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16371 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if681 cond cond16371))
        (__VERIFIER_assert cond16371))))

; loop entry $main_inv252
(assert
  (forall (($max709 Int) ($str1710 (Array Int Int)) ($str2711 (Array Int Int)) ($j713 Int))
    (=> (and (= $max709 5))
        ($main_inv252 $max709 $str1710 $str2711 0 $j713))))

; loop term $main_sum252
(assert
  (forall (($i71216375 Int) ($str271116374 (Array Int Int)) ($str171016373 (Array Int Int)) ($j71316376 Int) ($max70916372 Int))
    (=> (and (not (< $i71216375 $max70916372)))
        ($main_sum252 $max70916372 $str171016373 $str271116374 $i71216375 $j71316376 $max70916372 $str171016373 $str271116374 $i71216375 $j71316376))))

; forwards $main_inv252
(assert
  (forall (($i71216375 Int) ($str271116374 (Array Int Int)) ($char16377 Int) ($str171016373 (Array Int Int)) ($j71316376 Int) ($max70916372 Int))
    (=> (and (<= (- 128) $char16377)
             (<= $char16377 127)
             (< $i71216375 $max70916372)
             ($main_inv252 $max70916372 $str171016373 $str271116374 $i71216375 $j71316376))
        ($main_inv252 $max70916372 (store $str171016373 $i71216375 $char16377) $str271116374 (+ $i71216375 1) $j71316376))))

; backwards $main_sum252
(assert
  (forall (($max70916378 Int) ($i71216381 Int) ($str271116380 (Array Int Int)) ($i71216375 Int) ($str271116374 (Array Int Int)) ($char16377 Int) ($str171016373 (Array Int Int)) ($j71316382 Int) ($j71316376 Int) ($max70916372 Int) ($str171016379 (Array Int Int)))
    (=> (and ($main_sum252 $max70916372 (store $str171016373 $i71216375 $char16377) $str271116374 (+ $i71216375 1) $j71316376 $max70916378 $str171016379 $str271116380 $i71216381 $j71316382)
             (<= (- 128) $char16377)
             (<= $char16377 127)
             (< $i71216375 $max70916372))
        ($main_sum252 $max70916372 $str171016373 $str271116374 $i71216375 $j71316376 $max70916378 $str171016379 $str271116380 $i71216381 $j71316382))))

; loop entry $main_inv253
(assert
  (forall (($max70916383 Int) ($j713 Int) ($str171016384 (Array Int Int)) ($i71216386 Int) ($j71316387 Int) ($max709 Int) ($str2711 (Array Int Int)) ($str271116385 (Array Int Int)) ($str1710 (Array Int Int)))
    (=> (and ($main_sum252 $max709 $str1710 $str2711 0 $j713 $max70916383 $str171016384 $str271116385 $i71216386 $j71316387)
             (= $max709 5))
        ($main_inv253 $max70916383 (store $str171016384 (- $max70916383 1) 48) $str271116385 (- $max70916383 1) 0))))

; loop term $main_sum253
(assert
  (forall (($max70916388 Int) ($i71216391 Int) ($str171016389 (Array Int Int)) ($str271116390 (Array Int Int)) ($j71316392 Int))
    (=> (and (not (>= $i71216391 0)))
        ($main_sum253 $max70916388 $str171016389 $str271116390 $i71216391 $j71316392 $max70916388 $str171016389 $str271116390 $i71216391 $j71316392))))

; forwards $main_inv253
(assert
  (forall (($max70916388 Int) ($i71216391 Int) ($str171016389 (Array Int Int)) ($str271116390 (Array Int Int)) ($j71316392 Int))
    (=> (and (>= $i71216391 0)
             ($main_inv253 $max70916388 $str171016389 $str271116390 $i71216391 $j71316392))
        ($main_inv253 $max70916388 $str171016389 (store $str271116390 $j71316392 (select $str171016389 $i71216391)) (- $i71216391 1) (+ $j71316392 1)))))

; backwards $main_sum253
(assert
  (forall (($max70916388 Int) ($i71216391 Int) ($str271116395 (Array Int Int)) ($j71316397 Int) ($str171016389 (Array Int Int)) ($str271116390 (Array Int Int)) ($str171016394 (Array Int Int)) ($j71316392 Int) ($i71216396 Int) ($max70916393 Int))
    (=> (and ($main_sum253 $max70916388 $str171016389 (store $str271116390 $j71316392 (select $str171016389 $i71216391)) (- $i71216391 1) (+ $j71316392 1) $max70916393 $str171016394 $str271116395 $i71216396 $j71316397)
             (>= $i71216391 0))
        ($main_sum253 $max70916388 $str171016389 $str271116390 $i71216391 $j71316392 $max70916393 $str171016394 $str271116395 $i71216396 $j71316397))))

; loop entry $main_inv254
(assert
  (forall (($max70916383 Int) ($j713 Int) ($str171016384 (Array Int Int)) ($str171016399 (Array Int Int)) ($i71216386 Int) ($j71316402 Int) ($j71316387 Int) ($max709 Int) ($str2711 (Array Int Int)) ($str271116385 (Array Int Int)) ($str1710 (Array Int Int)) ($i71216401 Int) ($max70916398 Int) ($str271116400 (Array Int Int)))
    (=> (and ($main_sum253 $max70916383 (store $str171016384 (- $max70916383 1) 48) $str271116385 (- $max70916383 1) 0 $max70916398 $str171016399 $str271116400 $i71216401 $j71316402)
             ($main_sum252 $max709 $str1710 $str2711 0 $j713 $max70916383 $str171016384 $str271116385 $i71216386 $j71316387)
             (= $max709 5))
        ($main_inv254 $max70916398 $str171016399 $str271116400 0 (- $max70916398 1)))))

; loop term $main_sum254
(assert
  (forall (($max70916403 Int) ($j71316407 Int) ($str171016404 (Array Int Int)) ($str271116405 (Array Int Int)) ($i71216406 Int))
    (=> (and (not (< $i71216406 $max70916403)))
        ($main_sum254 $max70916403 $str171016404 $str271116405 $i71216406 $j71316407 $max70916403 $str171016404 $str271116405 $i71216406 $j71316407))))

; __VERIFIER_assert precondition
(assert
  (forall (($max70916403 Int) ($j71316407 Int) ($str171016404 (Array Int Int)) ($str271116405 (Array Int Int)) ($i71216406 Int))
    (=> (and (< $i71216406 $max70916403)
             ($main_inv254 $max70916403 $str171016404 $str271116405 $i71216406 $j71316407))
        ($__VERIFIER_assert_pre (ite (= (select $str171016404 $i71216406) (select $str271116405 $j71316407)) 1 0)))))

; forwards $main_inv254
(assert
  (forall (($max70916403 Int) ($j71316407 Int) ($str171016404 (Array Int Int)) ($str271116405 (Array Int Int)) ($i71216406 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $str171016404 $i71216406) (select $str271116405 $j71316407)) 1 0))
             (< $i71216406 $max70916403)
             ($main_inv254 $max70916403 $str171016404 $str271116405 $i71216406 $j71316407))
        ($main_inv254 $max70916403 $str171016404 $str271116405 (+ $i71216406 1) (- $j71316407 1)))))

; backwards $main_sum254
(assert
  (forall (($max70916403 Int) ($j71316412 Int) ($j71316407 Int) ($str171016409 (Array Int Int)) ($str171016404 (Array Int Int)) ($str271116410 (Array Int Int)) ($str271116405 (Array Int Int)) ($i71216406 Int) ($i71216411 Int) ($max70916408 Int))
    (=> (and ($main_sum254 $max70916403 $str171016404 $str271116405 (+ $i71216406 1) (- $j71316407 1) $max70916408 $str171016409 $str271116410 $i71216411 $j71316412)
             (__VERIFIER_assert (ite (= (select $str171016404 $i71216406) (select $str271116405 $j71316407)) 1 0))
             (< $i71216406 $max70916403))
        ($main_sum254 $max70916403 $str171016404 $str271116405 $i71216406 $j71316407 $max70916408 $str171016409 $str271116410 $i71216411 $j71316412))))

(check-sat)
