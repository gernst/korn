(set-logic HORN)

(declare-fun $main_sum540 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_inv538 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if399 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv539 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $avg_sum538 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_sum539 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv540 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv538
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv538 x 0 0))))

; loop term $avg_sum538
(assert
  (forall ((x10335 (Array Int Int)) ($i78510336 Int) ($ret78610337 Int))
    (=> (and (not (< $i78510336 10)))
        ($avg_sum538 x10335 $i78510336 $ret78610337 x10335 $i78510336 $ret78610337))))

; forwards $avg_inv538
(assert
  (forall ((x10335 (Array Int Int)) ($i78510336 Int) ($ret78610337 Int))
    (=> (and (< $i78510336 10)
             ($avg_inv538 x10335 $i78510336 $ret78610337))
        ($avg_inv538 x10335 (+ $i78510336 1) (+ $ret78610337 (select x10335 $i78510336))))))

; backwards $avg_sum538
(assert
  (forall ((x10335 (Array Int Int)) ($ret78610337 Int) ($i78510339 Int) ($ret78610340 Int) ($i78510336 Int) (x10338 (Array Int Int)))
    (=> (and ($avg_sum538 x10335 (+ $i78510336 1) (+ $ret78610337 (select x10335 $i78510336)) x10338 $i78510339 $ret78610340)
             (< $i78510336 10))
        ($avg_sum538 x10335 $i78510336 $ret78610337 x10338 $i78510339 $ret78610340))))

; post avg
(assert
  (forall ((x10341 (Array Int Int)) ($ret78610343 Int) (x (Array Int Int)) ($i78510342 Int))
    (=> (and ($avg_sum538 x 0 0 x10341 $i78510342 $ret78610343)
             ($avg_pre x))
        (avg x10341 (div $ret78610343 10)))))

; loop entry $main_inv539
(assert
  (forall (($i792 Int) ($x787 (Array Int Int)) ($i793 Int) ($temp788 Int) ($ret5791 Int) ($ret2790 Int) ($ret789 Int))
    (=> (and (= $i792 0))
        ($main_inv539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793))))

; loop term $main_sum539
(assert
  (forall (($x78710344 (Array Int Int)) ($ret579110348 Int) ($i79310350 Int) ($ret78910346 Int) ($ret279010347 Int) ($i79210349 Int) ($temp78810345 Int))
    (=> (and (not (< $i79210349 10)))
        ($main_sum539 $x78710344 $temp78810345 $ret78910346 $ret279010347 $ret579110348 $i79210349 $i79310350 $x78710344 $temp78810345 $ret78910346 $ret279010347 $ret579110348 $i79210349 $i79310350))))

; forwards $main_inv539
(assert
  (forall (($x78710344 (Array Int Int)) ($ret579110348 Int) ($i79310350 Int) ($ret78910346 Int) ($int10351 Int) ($ret279010347 Int) ($i79210349 Int) ($temp78810345 Int))
    (=> (and (<= (- 2147483648) $int10351)
             (<= $int10351 2147483647)
             (< $i79210349 10)
             ($main_inv539 $x78710344 $temp78810345 $ret78910346 $ret279010347 $ret579110348 $i79210349 $i79310350))
        ($main_inv539 (store $x78710344 $i79210349 $int10351) $temp78810345 $ret78910346 $ret279010347 $ret579110348 (+ $i79210349 1) $i79310350))))

; backwards $main_sum539
(assert
  (forall (($x78710344 (Array Int Int)) ($ret279010355 Int) ($temp78810353 Int) ($ret579110356 Int) ($ret579110348 Int) ($i79310350 Int) ($ret78910346 Int) ($i79310358 Int) ($int10351 Int) ($ret78910354 Int) ($x78710352 (Array Int Int)) ($i79210349 Int) ($temp78810345 Int) ($ret279010347 Int) ($i79210357 Int))
    (=> (and ($main_sum539 (store $x78710344 $i79210349 $int10351) $temp78810345 $ret78910346 $ret279010347 $ret579110348 (+ $i79210349 1) $i79310350 $x78710352 $temp78810353 $ret78910354 $ret279010355 $ret579110356 $i79210357 $i79310358)
             (<= (- 2147483648) $int10351)
             (<= $int10351 2147483647)
             (< $i79210349 10))
        ($main_sum539 $x78710344 $temp78810345 $ret78910346 $ret279010347 $ret579110348 $i79210349 $i79310350 $x78710352 $temp78810353 $ret78910354 $ret279010355 $ret579110356 $i79210357 $i79310358))))

; avg precondition
(assert
  (forall (($ret279010362 Int) ($i79310365 Int) ($i792 Int) ($x78710359 (Array Int Int)) ($ret579110363 Int) ($x787 (Array Int Int)) ($i79210364 Int) ($ret5791 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($temp788 Int))
    (=> (and ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($avg_pre $x78710359))))

; avg precondition
(assert
  (forall (($ret279010362 Int) ($i79310365 Int) ($result10366 Int) ($i792 Int) ($x78710359 (Array Int Int)) ($ret579110363 Int) ($x787 (Array Int Int)) ($i79210364 Int) ($ret5791 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($temp788 Int))
    (=> (and (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($avg_pre (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0))))))

; loop entry $main_inv540
(assert
  (forall (($ret279010362 Int) ($i79310365 Int) ($result10366 Int) ($i792 Int) ($x78710359 (Array Int Int)) ($ret579110363 Int) ($x787 (Array Int Int)) ($i79210364 Int) ($ret5791 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($result10367 Int) ($temp788 Int))
    (=> (and (= $i79310365 0)
             (avg (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) $result10367)
             (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($main_inv540 (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) (select (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) 0) $result10366 $result10367 $ret579110363 $i79210364 $i79310365))))

; loop term $main_sum540
(assert
  (forall (($ret78910370 Int) ($i79310374 Int) ($ret279010371 Int) ($i79210373 Int) ($ret579110372 Int) ($temp78810369 Int) ($x78710368 (Array Int Int)))
    (=> (and (not (< $i79310374 (- 10 1))))
        ($main_sum540 $x78710368 $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 $i79310374 $x78710368 $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 $i79310374))))

; forwards $main_inv540
(assert
  (forall (($ret78910370 Int) ($i79310374 Int) ($ret279010371 Int) ($i79210373 Int) ($ret579110372 Int) ($temp78810369 Int) ($x78710368 (Array Int Int)))
    (=> (and (< $i79310374 (- 10 1))
             ($main_inv540 $x78710368 $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 $i79310374))
        ($main_inv540 (store $x78710368 $i79310374 (select $x78710368 (+ $i79310374 1))) $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 (+ $i79310374 1)))))

; backwards $main_sum540
(assert
  (forall (($i79210380 Int) ($ret78910377 Int) ($temp78810376 Int) ($ret78910370 Int) ($i79310381 Int) ($ret579110379 Int) ($i79310374 Int) ($ret279010371 Int) ($x78710375 (Array Int Int)) ($i79210373 Int) ($ret279010378 Int) ($ret579110372 Int) ($temp78810369 Int) ($x78710368 (Array Int Int)))
    (=> (and ($main_sum540 (store $x78710368 $i79310374 (select $x78710368 (+ $i79310374 1))) $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 (+ $i79310374 1) $x78710375 $temp78810376 $ret78910377 $ret279010378 $ret579110379 $i79210380 $i79310381)
             (< $i79310374 (- 10 1)))
        ($main_sum540 $x78710368 $temp78810369 $ret78910370 $ret279010371 $ret579110372 $i79210373 $i79310374 $x78710375 $temp78810376 $ret78910377 $ret279010378 $ret579110379 $i79210380 $i79310381))))

; avg precondition
(assert
  (forall (($i79310365 Int) ($result10366 Int) ($i792 Int) ($x787 (Array Int Int)) ($ret579110386 Int) ($ret5791 Int) ($temp78810383 Int) ($x78710382 (Array Int Int)) ($i79210387 Int) ($ret279010362 Int) ($x78710359 (Array Int Int)) ($i79310388 Int) ($ret279010385 Int) ($ret579110363 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($result10367 Int) ($temp788 Int) ($i79210364 Int) ($ret78910384 Int))
    (=> (and ($main_sum540 (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) (select (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) 0) $result10366 $result10367 $ret579110363 $i79210364 $i79310365 $x78710382 $temp78810383 $ret78910384 $ret279010385 $ret579110386 $i79210387 $i79310388)
             (= $i79310365 0)
             (avg (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) $result10367)
             (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($avg_pre (store $x78710382 (- 10 1) $temp78810383)))))

; error
(assert
  (forall (($i79310365 Int) ($result10366 Int) ($i792 Int) ($x787 (Array Int Int)) ($ret579110386 Int) ($ret5791 Int) ($result10389 Int) ($temp78810383 Int) ($x78710382 (Array Int Int)) ($i79210387 Int) ($ret279010362 Int) ($x78710359 (Array Int Int)) ($i79310388 Int) ($ret279010385 Int) ($ret579110363 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($result10367 Int) ($temp788 Int) ($i79210364 Int) ($ret78910384 Int))
    (=> (and (or (not (= $ret78910384 $ret279010385)) (not (= $ret78910384 $result10389)))
             (avg (store $x78710382 (- 10 1) $temp78810383) $result10389)
             ($main_sum540 (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) (select (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) 0) $result10366 $result10367 $ret579110363 $i79210364 $i79310365 $x78710382 $temp78810383 $ret78910384 $ret279010385 $ret579110386 $i79210387 $i79310388)
             (= $i79310365 0)
             (avg (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) $result10367)
             (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        false)))

; if then
(assert
  (forall (($i79310365 Int) ($result10366 Int) ($i792 Int) ($x787 (Array Int Int)) ($ret579110386 Int) ($ret5791 Int) ($result10389 Int) ($temp78810383 Int) ($x78710382 (Array Int Int)) ($i79210387 Int) ($ret279010362 Int) ($x78710359 (Array Int Int)) ($i79310388 Int) ($ret279010385 Int) ($ret579110363 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($result10367 Int) ($temp788 Int) ($i79210364 Int) ($ret78910384 Int))
    (=> (and (or (not (= $ret78910384 $ret279010385)) (not (= $ret78910384 $result10389)))
             (avg (store $x78710382 (- 10 1) $temp78810383) $result10389)
             ($main_sum540 (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) (select (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) 0) $result10366 $result10367 $ret579110363 $i79210364 $i79310365 $x78710382 $temp78810383 $ret78910384 $ret279010385 $ret579110386 $i79210387 $i79310388)
             (= $i79310365 0)
             (avg (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) $result10367)
             (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($main_if399 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 (store $x78710382 (- 10 1) $temp78810383) $temp78810383 $ret78910384 $ret279010385 $result10389 $i79210387 $i79310388))))

; if else
(assert
  (forall (($i79310365 Int) ($result10366 Int) ($i792 Int) ($x787 (Array Int Int)) ($ret579110386 Int) ($ret5791 Int) ($result10389 Int) ($temp78810383 Int) ($x78710382 (Array Int Int)) ($i79210387 Int) ($ret279010362 Int) ($x78710359 (Array Int Int)) ($i79310388 Int) ($ret279010385 Int) ($ret579110363 Int) ($ret78910361 Int) ($i793 Int) ($ret2790 Int) ($ret789 Int) ($temp78810360 Int) ($result10367 Int) ($temp788 Int) ($i79210364 Int) ($ret78910384 Int))
    (=> (and (not (or (not (= $ret78910384 $ret279010385)) (not (= $ret78910384 $result10389))))
             (avg (store $x78710382 (- 10 1) $temp78810383) $result10389)
             ($main_sum540 (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) (select (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) 0) $result10366 $result10367 $ret579110363 $i79210364 $i79310365 $x78710382 $temp78810383 $ret78910384 $ret279010385 $ret579110386 $i79210387 $i79310388)
             (= $i79310365 0)
             (avg (store (store $x78710359 0 (select $x78710359 1)) 1 (select $x78710359 0)) $result10367)
             (avg $x78710359 $result10366)
             ($main_sum539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 $x78710359 $temp78810360 $ret78910361 $ret279010362 $ret579110363 $i79210364 $i79310365)
             (= $i792 0))
        ($main_if399 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793 (store $x78710382 (- 10 1) $temp78810383) $temp78810383 $ret78910384 $ret279010385 $result10389 $i79210387 $i79310388))))

(check-sat)
