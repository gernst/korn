(set-logic HORN)

(declare-fun $main_sum20 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv21 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $main_sum21 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_inv19 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_sum19 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_if7 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv20 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv19
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv19 x 0 0))))

; loop term $mapsum_sum19
(assert
  (forall ((x373 (Array Int Int)) ($i55374 Int) ($ret56375 Int))
    (=> (and (not (< $i55374 10000)))
        ($mapsum_sum19 x373 $i55374 $ret56375 x373 $i55374 $ret56375))))

; forwards $mapsum_inv19
(assert
  (forall ((x373 (Array Int Int)) ($i55374 Int) ($ret56375 Int))
    (=> (and (< $i55374 10000)
             ($mapsum_inv19 x373 $i55374 $ret56375))
        ($mapsum_inv19 x373 (+ $i55374 1) (+ (+ $ret56375 $i55374) (select x373 $i55374))))))

; backwards $mapsum_sum19
(assert
  (forall (($ret56378 Int) ($i55377 Int) (x373 (Array Int Int)) ($ret56375 Int) ($i55374 Int) (x376 (Array Int Int)))
    (=> (and ($mapsum_sum19 x373 (+ $i55374 1) (+ (+ $ret56375 $i55374) (select x373 $i55374)) x376 $i55377 $ret56378)
             (< $i55374 10000))
        ($mapsum_sum19 x373 $i55374 $ret56375 x376 $i55377 $ret56378))))

; post mapsum
(assert
  (forall ((x379 (Array Int Int)) ($ret56381 Int) (x (Array Int Int)) ($i55380 Int))
    (=> (and ($mapsum_sum19 x 0 0 x379 $i55380 $ret56381)
             ($mapsum_pre x))
        (mapsum x379 $ret56381))))

; loop entry $main_inv20
(assert
  (forall (($ret59 Int) ($ret561 Int) ($i63 Int) ($i62 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int))
    (=> (and (= $i62 0))
        ($main_inv20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63))))

; loop term $main_sum20
(assert
  (forall (($ret561386 Int) ($ret59384 Int) ($ret260385 Int) ($i62387 Int) ($temp58383 Int) ($i63388 Int) ($x57382 (Array Int Int)))
    (=> (and (not (< $i62387 10000)))
        ($main_sum20 $x57382 $temp58383 $ret59384 $ret260385 $ret561386 $i62387 $i63388 $x57382 $temp58383 $ret59384 $ret260385 $ret561386 $i62387 $i63388))))

; forwards $main_inv20
(assert
  (forall (($int389 Int) ($ret561386 Int) ($ret59384 Int) ($ret260385 Int) ($i62387 Int) ($temp58383 Int) ($i63388 Int) ($x57382 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int389)
             (<= $int389 2147483647)
             (< $i62387 10000)
             ($main_inv20 $x57382 $temp58383 $ret59384 $ret260385 $ret561386 $i62387 $i63388))
        ($main_inv20 (store $x57382 $i62387 $int389) $temp58383 $ret59384 $ret260385 $ret561386 (+ $i62387 1) $i63388))))

; backwards $main_sum20
(assert
  (forall (($int389 Int) ($ret59392 Int) ($ret561386 Int) ($ret260385 Int) ($x57390 (Array Int Int)) ($temp58383 Int) ($i63396 Int) ($ret561394 Int) ($ret59384 Int) ($i62395 Int) ($i63388 Int) ($x57382 (Array Int Int)) ($ret260393 Int) ($i62387 Int) ($temp58391 Int))
    (=> (and ($main_sum20 (store $x57382 $i62387 $int389) $temp58383 $ret59384 $ret260385 $ret561386 (+ $i62387 1) $i63388 $x57390 $temp58391 $ret59392 $ret260393 $ret561394 $i62395 $i63396)
             (<= (- 2147483648) $int389)
             (<= $int389 2147483647)
             (< $i62387 10000))
        ($main_sum20 $x57382 $temp58383 $ret59384 $ret260385 $ret561386 $i62387 $i63388 $x57390 $temp58391 $ret59392 $ret260393 $ret561394 $i62395 $i63396))))

; mapsum precondition
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($i63 Int) ($i62 Int) ($ret260 Int) ($x57 (Array Int Int)) ($ret561401 Int) ($temp58 Int) ($i62402 Int) ($x57397 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($ret561 Int) ($i63403 Int))
    (=> (and ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($mapsum_pre $x57397))))

; mapsum precondition
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($i63 Int) ($i62 Int) ($ret260 Int) ($x57 (Array Int Int)) ($ret561401 Int) ($temp58 Int) ($i62402 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($ret561 Int) ($i63403 Int))
    (=> (and (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($mapsum_pre (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0))))))

; loop entry $main_inv21
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($i63 Int) ($ret260 Int) ($x57 (Array Int Int)) ($ret561401 Int) ($temp58 Int) ($i62402 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($ret561 Int) ($i63403 Int) ($i62 Int) ($result405 Int))
    (=> (and (= $i63403 0)
             (mapsum (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) $result405)
             (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($main_inv21 (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) (select (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) 0) $result404 $result405 $ret561401 $i62402 $i63403))))

; loop term $main_sum21
(assert
  (forall (($x57406 (Array Int Int)) ($i63412 Int) ($ret260409 Int) ($ret561410 Int) ($i62411 Int) ($temp58407 Int) ($ret59408 Int))
    (=> (and (not (< $i63412 (- 10000 1))))
        ($main_sum21 $x57406 $temp58407 $ret59408 $ret260409 $ret561410 $i62411 $i63412 $x57406 $temp58407 $ret59408 $ret260409 $ret561410 $i62411 $i63412))))

; forwards $main_inv21
(assert
  (forall (($x57406 (Array Int Int)) ($i63412 Int) ($ret260409 Int) ($ret561410 Int) ($i62411 Int) ($temp58407 Int) ($ret59408 Int))
    (=> (and (< $i63412 (- 10000 1))
             ($main_inv21 $x57406 $temp58407 $ret59408 $ret260409 $ret561410 $i62411 $i63412))
        ($main_inv21 (store $x57406 $i63412 (select $x57406 (+ $i63412 1))) $temp58407 $ret59408 $ret260409 $ret561410 $i62411 (+ $i63412 1)))))

; backwards $main_sum21
(assert
  (forall (($x57406 (Array Int Int)) ($i63419 Int) ($ret59415 Int) ($ret260409 Int) ($temp58414 Int) ($i62411 Int) ($i62418 Int) ($ret260416 Int) ($i63412 Int) ($x57413 (Array Int Int)) ($ret561410 Int) ($ret561417 Int) ($temp58407 Int) ($ret59408 Int))
    (=> (and ($main_sum21 (store $x57406 $i63412 (select $x57406 (+ $i63412 1))) $temp58407 $ret59408 $ret260409 $ret561410 $i62411 (+ $i63412 1) $x57413 $temp58414 $ret59415 $ret260416 $ret561417 $i62418 $i63419)
             (< $i63412 (- 10000 1)))
        ($main_sum21 $x57406 $temp58407 $ret59408 $ret260409 $ret561410 $i62411 $i63412 $x57413 $temp58414 $ret59415 $ret260416 $ret561417 $i62418 $i63419))))

; mapsum precondition
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($temp58421 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int) ($i62402 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret561424 Int) ($x57420 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($i63403 Int) ($ret260423 Int) ($ret561 Int) ($i63 Int) ($ret59422 Int) ($i63426 Int) ($i62 Int) ($result405 Int) ($i62425 Int) ($ret561401 Int))
    (=> (and ($main_sum21 (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) (select (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) 0) $result404 $result405 $ret561401 $i62402 $i63403 $x57420 $temp58421 $ret59422 $ret260423 $ret561424 $i62425 $i63426)
             (= $i63403 0)
             (mapsum (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) $result405)
             (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($mapsum_pre (store $x57420 (- 10000 1) $temp58421)))))

; error
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($temp58421 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int) ($i62402 Int) ($result427 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret561424 Int) ($x57420 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($i63403 Int) ($ret260423 Int) ($ret561 Int) ($i63 Int) ($ret59422 Int) ($i63426 Int) ($i62 Int) ($result405 Int) ($i62425 Int) ($ret561401 Int))
    (=> (and (or (not (= $ret59422 $ret260423)) (not (= $ret59422 $result427)))
             (mapsum (store $x57420 (- 10000 1) $temp58421) $result427)
             ($main_sum21 (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) (select (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) 0) $result404 $result405 $ret561401 $i62402 $i63403 $x57420 $temp58421 $ret59422 $ret260423 $ret561424 $i62425 $i63426)
             (= $i63403 0)
             (mapsum (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) $result405)
             (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        false)))

; if then
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($temp58421 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int) ($i62402 Int) ($result427 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret561424 Int) ($x57420 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($i63403 Int) ($ret260423 Int) ($ret561 Int) ($i63 Int) ($ret59422 Int) ($i63426 Int) ($i62 Int) ($result405 Int) ($i62425 Int) ($ret561401 Int))
    (=> (and (or (not (= $ret59422 $ret260423)) (not (= $ret59422 $result427)))
             (mapsum (store $x57420 (- 10000 1) $temp58421) $result427)
             ($main_sum21 (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) (select (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) 0) $result404 $result405 $ret561401 $i62402 $i63403 $x57420 $temp58421 $ret59422 $ret260423 $ret561424 $i62425 $i63426)
             (= $i63403 0)
             (mapsum (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) $result405)
             (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($main_if7 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 (store $x57420 (- 10000 1) $temp58421) $temp58421 $ret59422 $ret260423 $result427 $i62425 $i63426))))

; if else
(assert
  (forall (($ret59 Int) ($temp58398 Int) ($temp58421 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int) ($i62402 Int) ($result427 Int) ($result404 Int) ($x57397 (Array Int Int)) ($ret561424 Int) ($x57420 (Array Int Int)) ($ret260400 Int) ($ret59399 Int) ($i63403 Int) ($ret260423 Int) ($ret561 Int) ($i63 Int) ($ret59422 Int) ($i63426 Int) ($i62 Int) ($result405 Int) ($i62425 Int) ($ret561401 Int))
    (=> (and (not (or (not (= $ret59422 $ret260423)) (not (= $ret59422 $result427))))
             (mapsum (store $x57420 (- 10000 1) $temp58421) $result427)
             ($main_sum21 (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) (select (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) 0) $result404 $result405 $ret561401 $i62402 $i63403 $x57420 $temp58421 $ret59422 $ret260423 $ret561424 $i62425 $i63426)
             (= $i63403 0)
             (mapsum (store (store $x57397 0 (select $x57397 1)) 1 (select $x57397 0)) $result405)
             (mapsum $x57397 $result404)
             ($main_sum20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 $x57397 $temp58398 $ret59399 $ret260400 $ret561401 $i62402 $i63403)
             (= $i62 0))
        ($main_if7 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63 (store $x57420 (- 10000 1) $temp58421) $temp58421 $ret59422 $ret260423 $result427 $i62425 $i63426))))

(check-sat)
