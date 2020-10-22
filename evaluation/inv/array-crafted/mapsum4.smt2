(set-logic HORN)

(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $main_inv23 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum24 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_inv22 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum23 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_sum22 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv24 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if8 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv22
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv22 x 0 0))))

; loop term $mapsum_sum22
(assert
  (forall ((x316 (Array Int Int)) ($i64317 Int) ($ret65318 Int))
    (=> (and (not (< $i64317 100000))
             ($mapsum_inv22 x316 $i64317 $ret65318))
        ($mapsum_sum22 x316 $i64317 $ret65318))))

; forwards $mapsum_inv22
(assert
  (forall ((x316 (Array Int Int)) ($i64317 Int) ($ret65318 Int))
    (=> (and (< $i64317 100000)
             ($mapsum_inv22 x316 $i64317 $ret65318))
        ($mapsum_inv22 x316 (+ $i64317 1) (+ (+ $ret65318 $i64317) (select x316 $i64317))))))

; post mapsum
(assert
  (forall ((x319 (Array Int Int)) ($ret65321 Int) ($i64320 Int))
    (=> (and ($mapsum_sum22 x319 $i64320 $ret65321))
        (mapsum x319 $ret65321))))

; loop entry $main_inv23
(assert
  (forall (($temp67 Int) ($i72 Int) ($ret68 Int) ($ret570 Int) ($i71 Int) ($ret269 Int) ($x66 (Array Int Int)))
    (=> (and (= $i71 0))
        ($main_inv23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72))))

; loop term $main_sum23
(assert
  (forall (($i72328 Int) ($x66322 (Array Int Int)) ($i71327 Int) ($ret570326 Int) ($ret68324 Int) ($ret269325 Int) ($temp67323 Int))
    (=> (and (not (< $i71327 100000))
             ($main_inv23 $x66322 $temp67323 $ret68324 $ret269325 $ret570326 $i71327 $i72328))
        ($main_sum23 $x66322 $temp67323 $ret68324 $ret269325 $ret570326 $i71327 $i72328))))

; forwards $main_inv23
(assert
  (forall (($i72328 Int) ($x66322 (Array Int Int)) ($i71327 Int) ($ret570326 Int) ($ret68324 Int) ($ret269325 Int) ($temp67323 Int) ($int329 Int))
    (=> (and (<= (- 2147483648) $int329)
             (<= $int329 2147483647)
             (< $i71327 100000)
             ($main_inv23 $x66322 $temp67323 $ret68324 $ret269325 $ret570326 $i71327 $i72328))
        ($main_inv23 (store $x66322 $i71327 $int329) $temp67323 $ret68324 $ret269325 $ret570326 (+ $i71327 1) $i72328))))

; mapsum precondition
(assert
  (forall (($ret269333 Int) ($ret68332 Int) ($x66330 (Array Int Int)) ($i71335 Int) ($ret570334 Int) ($i72336 Int) ($temp67331 Int))
    (=> (and ($main_sum23 $x66330 $temp67331 $ret68332 $ret269333 $ret570334 $i71335 $i72336))
        ($mapsum_pre $x66330))))

; mapsum precondition
(assert
  (forall (($ret269333 Int) ($ret68332 Int) ($result337 Int) ($x66330 (Array Int Int)) ($i71335 Int) ($ret570334 Int) ($i72336 Int) ($temp67331 Int))
    (=> (and (mapsum $x66330 $result337)
             ($main_sum23 $x66330 $temp67331 $ret68332 $ret269333 $ret570334 $i71335 $i72336))
        ($mapsum_pre (store (store $x66330 0 (select $x66330 1)) 1 (select $x66330 0))))))

; loop entry $main_inv24
(assert
  (forall (($ret269333 Int) ($ret68332 Int) ($result337 Int) ($x66330 (Array Int Int)) ($i71335 Int) ($result338 Int) ($ret570334 Int) ($i72336 Int) ($temp67331 Int))
    (=> (and (= $i72336 0)
             (mapsum (store (store $x66330 0 (select $x66330 1)) 1 (select $x66330 0)) $result338)
             (mapsum $x66330 $result337)
             ($main_sum23 $x66330 $temp67331 $ret68332 $ret269333 $ret570334 $i71335 $i72336))
        ($main_inv24 (store (store $x66330 0 (select $x66330 1)) 1 (select $x66330 0)) (select (store (store $x66330 0 (select $x66330 1)) 1 (select $x66330 0)) 0) $result337 $result338 $ret570334 $i71335 $i72336))))

; loop term $main_sum24
(assert
  (forall (($x66339 (Array Int Int)) ($i72345 Int) ($ret269342 Int) ($ret570343 Int) ($temp67340 Int) ($ret68341 Int) ($i71344 Int))
    (=> (and (not (< $i72345 (- 100000 1)))
             ($main_inv24 $x66339 $temp67340 $ret68341 $ret269342 $ret570343 $i71344 $i72345))
        ($main_sum24 $x66339 $temp67340 $ret68341 $ret269342 $ret570343 $i71344 $i72345))))

; forwards $main_inv24
(assert
  (forall (($x66339 (Array Int Int)) ($i72345 Int) ($ret269342 Int) ($ret570343 Int) ($temp67340 Int) ($ret68341 Int) ($i71344 Int))
    (=> (and (< $i72345 (- 100000 1))
             ($main_inv24 $x66339 $temp67340 $ret68341 $ret269342 $ret570343 $i71344 $i72345))
        ($main_inv24 (store $x66339 $i72345 (select $x66339 (+ $i72345 1))) $temp67340 $ret68341 $ret269342 $ret570343 $i71344 (+ $i72345 1)))))

; mapsum precondition
(assert
  (forall (($x66346 (Array Int Int)) ($i72352 Int) ($temp67347 Int) ($ret68348 Int) ($ret269349 Int) ($i71351 Int) ($ret570350 Int))
    (=> (and ($main_sum24 $x66346 $temp67347 $ret68348 $ret269349 $ret570350 $i71351 $i72352))
        ($mapsum_pre (store $x66346 (- 100000 1) $temp67347)))))

; error
(assert
  (forall (($x66346 (Array Int Int)) ($result353 Int) ($i72352 Int) ($temp67347 Int) ($ret68348 Int) ($ret269349 Int) ($i71351 Int) ($ret570350 Int))
    (=> (and (or (not (= $ret68348 $ret269349)) (not (= $ret68348 $result353)))
             (mapsum (store $x66346 (- 100000 1) $temp67347) $result353)
             ($main_sum24 $x66346 $temp67347 $ret68348 $ret269349 $ret570350 $i71351 $i72352))
        false)))

; if then
(assert
  (forall (($x66346 (Array Int Int)) ($result353 Int) ($i72352 Int) ($temp67347 Int) ($ret68348 Int) ($ret269349 Int) ($i71351 Int) ($ret570350 Int))
    (=> (and (or (not (= $ret68348 $ret269349)) (not (= $ret68348 $result353)))
             (mapsum (store $x66346 (- 100000 1) $temp67347) $result353)
             ($main_sum24 $x66346 $temp67347 $ret68348 $ret269349 $ret570350 $i71351 $i72352))
        ($main_if8 (store $x66346 (- 100000 1) $temp67347) $temp67347 $ret68348 $ret269349 $result353 $i71351 $i72352))))

; if else
(assert
  (forall (($x66346 (Array Int Int)) ($result353 Int) ($i72352 Int) ($temp67347 Int) ($ret68348 Int) ($ret269349 Int) ($i71351 Int) ($ret570350 Int))
    (=> (and (not (or (not (= $ret68348 $ret269349)) (not (= $ret68348 $result353))))
             (mapsum (store $x66346 (- 100000 1) $temp67347) $result353)
             ($main_sum24 $x66346 $temp67347 $ret68348 $ret269349 $ret570350 $i71351 $i72352))
        ($main_if8 (store $x66346 (- 100000 1) $temp67347) $temp67347 $ret68348 $ret269349 $result353 $i71351 $i72352))))

(check-sat)
