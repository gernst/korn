(set-logic HORN)

(declare-fun $avg_inv535 ((Array Int Int) Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_inv537 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if398 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum537 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv536 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum536 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $avg_sum535 ((Array Int Int) Int Int) Bool)

; loop entry $avg_inv535
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv535 x 0 0))))

; loop term $avg_sum535
(assert
  (forall ((x7387 (Array Int Int)) ($i7767388 Int) ($ret7777389 Int))
    (=> (and (not (< $i7767388 5))
             ($avg_inv535 x7387 $i7767388 $ret7777389))
        ($avg_sum535 x7387 $i7767388 $ret7777389))))

; forwards $avg_inv535
(assert
  (forall ((x7387 (Array Int Int)) ($i7767388 Int) ($ret7777389 Int))
    (=> (and (< $i7767388 5)
             ($avg_inv535 x7387 $i7767388 $ret7777389))
        ($avg_inv535 x7387 (+ $i7767388 1) (+ $ret7777389 (select x7387 $i7767388))))))

; post avg
(assert
  (forall ((x7390 (Array Int Int)) ($ret7777392 Int) ($i7767391 Int))
    (=> (and ($avg_sum535 x7390 $i7767391 $ret7777392))
        (avg x7390 (div $ret7777392 5)))))

; loop entry $main_inv536
(assert
  (forall (($temp779 Int) ($ret780 Int) ($i784 Int) ($ret5782 Int) ($i783 Int) ($ret2781 Int) ($x778 (Array Int Int)))
    (=> (and (= $i783 0))
        ($main_inv536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784))))

; loop term $main_sum536
(assert
  (forall (($i7847399 Int) ($i7837398 Int) ($temp7797394 Int) ($ret27817396 Int) ($ret7807395 Int) ($x7787393 (Array Int Int)) ($ret57827397 Int))
    (=> (and (not (< $i7837398 5))
             ($main_inv536 $x7787393 $temp7797394 $ret7807395 $ret27817396 $ret57827397 $i7837398 $i7847399))
        ($main_sum536 $x7787393 $temp7797394 $ret7807395 $ret27817396 $ret57827397 $i7837398 $i7847399))))

; forwards $main_inv536
(assert
  (forall (($i7847399 Int) ($i7837398 Int) ($temp7797394 Int) ($int7400 Int) ($ret27817396 Int) ($ret7807395 Int) ($x7787393 (Array Int Int)) ($ret57827397 Int))
    (=> (and (<= (- 2147483648) $int7400)
             (<= $int7400 2147483647)
             (< $i7837398 5)
             ($main_inv536 $x7787393 $temp7797394 $ret7807395 $ret27817396 $ret57827397 $i7837398 $i7847399))
        ($main_inv536 (store $x7787393 $i7837398 $int7400) $temp7797394 $ret7807395 $ret27817396 $ret57827397 (+ $i7837398 1) $i7847399))))

; avg precondition
(assert
  (forall (($i7837406 Int) ($ret57827405 Int) ($ret7807403 Int) ($x7787401 (Array Int Int)) ($temp7797402 Int) ($ret27817404 Int) ($i7847407 Int))
    (=> (and ($main_sum536 $x7787401 $temp7797402 $ret7807403 $ret27817404 $ret57827405 $i7837406 $i7847407))
        ($avg_pre $x7787401))))

; avg precondition
(assert
  (forall (($i7837406 Int) ($ret57827405 Int) ($result7408 Int) ($ret7807403 Int) ($x7787401 (Array Int Int)) ($temp7797402 Int) ($ret27817404 Int) ($i7847407 Int))
    (=> (and (avg $x7787401 $result7408)
             ($main_sum536 $x7787401 $temp7797402 $ret7807403 $ret27817404 $ret57827405 $i7837406 $i7847407))
        ($avg_pre (store (store $x7787401 0 (select $x7787401 1)) 1 (select $x7787401 0))))))

; loop entry $main_inv537
(assert
  (forall (($i7837406 Int) ($ret57827405 Int) ($result7408 Int) ($result7409 Int) ($ret7807403 Int) ($x7787401 (Array Int Int)) ($temp7797402 Int) ($ret27817404 Int) ($i7847407 Int))
    (=> (and (= $i7847407 0)
             (avg (store (store $x7787401 0 (select $x7787401 1)) 1 (select $x7787401 0)) $result7409)
             (avg $x7787401 $result7408)
             ($main_sum536 $x7787401 $temp7797402 $ret7807403 $ret27817404 $ret57827405 $i7837406 $i7847407))
        ($main_inv537 (store (store $x7787401 0 (select $x7787401 1)) 1 (select $x7787401 0)) (select (store (store $x7787401 0 (select $x7787401 1)) 1 (select $x7787401 0)) 0) $result7408 $result7409 $ret57827405 $i7837406 $i7847407))))

; loop term $main_sum537
(assert
  (forall (($i7847416 Int) ($ret57827414 Int) ($ret27817413 Int) ($temp7797411 Int) ($i7837415 Int) ($x7787410 (Array Int Int)) ($ret7807412 Int))
    (=> (and (not (< $i7847416 (- 5 1)))
             ($main_inv537 $x7787410 $temp7797411 $ret7807412 $ret27817413 $ret57827414 $i7837415 $i7847416))
        ($main_sum537 $x7787410 $temp7797411 $ret7807412 $ret27817413 $ret57827414 $i7837415 $i7847416))))

; forwards $main_inv537
(assert
  (forall (($i7847416 Int) ($ret57827414 Int) ($ret27817413 Int) ($temp7797411 Int) ($i7837415 Int) ($x7787410 (Array Int Int)) ($ret7807412 Int))
    (=> (and (< $i7847416 (- 5 1))
             ($main_inv537 $x7787410 $temp7797411 $ret7807412 $ret27817413 $ret57827414 $i7837415 $i7847416))
        ($main_inv537 (store $x7787410 $i7847416 (select $x7787410 (+ $i7847416 1))) $temp7797411 $ret7807412 $ret27817413 $ret57827414 $i7837415 (+ $i7847416 1)))))

; avg precondition
(assert
  (forall (($ret7807419 Int) ($ret27817420 Int) ($ret57827421 Int) ($temp7797418 Int) ($i7847423 Int) ($i7837422 Int) ($x7787417 (Array Int Int)))
    (=> (and ($main_sum537 $x7787417 $temp7797418 $ret7807419 $ret27817420 $ret57827421 $i7837422 $i7847423))
        ($avg_pre (store $x7787417 (- 5 1) $temp7797418)))))

; error
(assert
  (forall (($ret7807419 Int) ($ret27817420 Int) ($ret57827421 Int) ($temp7797418 Int) ($i7847423 Int) ($x7787417 (Array Int Int)) ($i7837422 Int) ($result7424 Int))
    (=> (and (or (not (= $ret7807419 $ret27817420)) (not (= $ret7807419 $result7424)))
             (avg (store $x7787417 (- 5 1) $temp7797418) $result7424)
             ($main_sum537 $x7787417 $temp7797418 $ret7807419 $ret27817420 $ret57827421 $i7837422 $i7847423))
        false)))

; if then
(assert
  (forall (($ret7807419 Int) ($ret27817420 Int) ($ret57827421 Int) ($temp7797418 Int) ($i7847423 Int) ($x7787417 (Array Int Int)) ($i7837422 Int) ($result7424 Int))
    (=> (and (or (not (= $ret7807419 $ret27817420)) (not (= $ret7807419 $result7424)))
             (avg (store $x7787417 (- 5 1) $temp7797418) $result7424)
             ($main_sum537 $x7787417 $temp7797418 $ret7807419 $ret27817420 $ret57827421 $i7837422 $i7847423))
        ($main_if398 (store $x7787417 (- 5 1) $temp7797418) $temp7797418 $ret7807419 $ret27817420 $result7424 $i7837422 $i7847423))))

; if else
(assert
  (forall (($ret7807419 Int) ($ret27817420 Int) ($ret57827421 Int) ($temp7797418 Int) ($i7847423 Int) ($x7787417 (Array Int Int)) ($i7837422 Int) ($result7424 Int))
    (=> (and (not (or (not (= $ret7807419 $ret27817420)) (not (= $ret7807419 $result7424))))
             (avg (store $x7787417 (- 5 1) $temp7797418) $result7424)
             ($main_sum537 $x7787417 $temp7797418 $ret7807419 $ret27817420 $ret57827421 $i7837422 $i7847423))
        ($main_if398 (store $x7787417 (- 5 1) $temp7797418) $temp7797418 $ret7807419 $ret27817420 $result7424 $i7837422 $i7847423))))

(check-sat)
