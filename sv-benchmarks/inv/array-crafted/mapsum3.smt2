(set-logic HORN)

(declare-fun $main_inv21 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $main_sum20 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if7 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum21 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_inv19 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_sum19 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv20 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv19
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv19 x 0 0))))

; loop term $mapsum_sum19
(assert
  (forall ((x271 (Array Int Int)) ($i55272 Int) ($ret56273 Int))
    (=> (and (not (< $i55272 10000))
             ($mapsum_inv19 x271 $i55272 $ret56273))
        ($mapsum_sum19 x271 $i55272 $ret56273))))

; forwards $mapsum_inv19
(assert
  (forall ((x271 (Array Int Int)) ($i55272 Int) ($ret56273 Int))
    (=> (and (< $i55272 10000)
             ($mapsum_inv19 x271 $i55272 $ret56273))
        ($mapsum_inv19 x271 (+ $i55272 1) (+ (+ $ret56273 $i55272) (select x271 $i55272))))))

; post mapsum
(assert
  (forall ((x274 (Array Int Int)) ($ret56276 Int) ($i55275 Int))
    (=> (and ($mapsum_sum19 x274 $i55275 $ret56276))
        (mapsum x274 $ret56276))))

; loop entry $main_inv20
(assert
  (forall (($ret59 Int) ($ret561 Int) ($i63 Int) ($i62 Int) ($ret260 Int) ($x57 (Array Int Int)) ($temp58 Int))
    (=> (and (= $i62 0))
        ($main_inv20 $x57 $temp58 $ret59 $ret260 $ret561 $i62 $i63))))

; loop term $main_sum20
(assert
  (forall (($temp58278 Int) ($x57277 (Array Int Int)) ($ret260280 Int) ($i63283 Int) ($ret561281 Int) ($ret59279 Int) ($i62282 Int))
    (=> (and (not (< $i62282 10000))
             ($main_inv20 $x57277 $temp58278 $ret59279 $ret260280 $ret561281 $i62282 $i63283))
        ($main_sum20 $x57277 $temp58278 $ret59279 $ret260280 $ret561281 $i62282 $i63283))))

; forwards $main_inv20
(assert
  (forall (($temp58278 Int) ($x57277 (Array Int Int)) ($ret260280 Int) ($i63283 Int) ($ret561281 Int) ($int284 Int) ($ret59279 Int) ($i62282 Int))
    (=> (and (<= (- 2147483648) $int284)
             (<= $int284 2147483647)
             (< $i62282 10000)
             ($main_inv20 $x57277 $temp58278 $ret59279 $ret260280 $ret561281 $i62282 $i63283))
        ($main_inv20 (store $x57277 $i62282 $int284) $temp58278 $ret59279 $ret260280 $ret561281 (+ $i62282 1) $i63283))))

; mapsum precondition
(assert
  (forall (($temp58286 Int) ($ret561289 Int) ($ret260288 Int) ($x57285 (Array Int Int)) ($ret59287 Int) ($i62290 Int) ($i63291 Int))
    (=> (and ($main_sum20 $x57285 $temp58286 $ret59287 $ret260288 $ret561289 $i62290 $i63291))
        ($mapsum_pre $x57285))))

; mapsum precondition
(assert
  (forall (($temp58286 Int) ($result292 Int) ($ret561289 Int) ($ret260288 Int) ($x57285 (Array Int Int)) ($ret59287 Int) ($i62290 Int) ($i63291 Int))
    (=> (and (mapsum $x57285 $result292)
             ($main_sum20 $x57285 $temp58286 $ret59287 $ret260288 $ret561289 $i62290 $i63291))
        ($mapsum_pre (store (store $x57285 0 (select $x57285 1)) 1 (select $x57285 0))))))

; loop entry $main_inv21
(assert
  (forall (($result293 Int) ($temp58286 Int) ($result292 Int) ($ret561289 Int) ($ret260288 Int) ($x57285 (Array Int Int)) ($ret59287 Int) ($i62290 Int) ($i63291 Int))
    (=> (and (= $i63291 0)
             (mapsum (store (store $x57285 0 (select $x57285 1)) 1 (select $x57285 0)) $result293)
             (mapsum $x57285 $result292)
             ($main_sum20 $x57285 $temp58286 $ret59287 $ret260288 $ret561289 $i62290 $i63291))
        ($main_inv21 (store (store $x57285 0 (select $x57285 1)) 1 (select $x57285 0)) (select (store (store $x57285 0 (select $x57285 1)) 1 (select $x57285 0)) 0) $result292 $result293 $ret561289 $i62290 $i63291))))

; loop term $main_sum21
(assert
  (forall (($ret561298 Int) ($ret260297 Int) ($i63300 Int) ($i62299 Int) ($temp58295 Int) ($x57294 (Array Int Int)) ($ret59296 Int))
    (=> (and (not (< $i63300 (- 10000 1)))
             ($main_inv21 $x57294 $temp58295 $ret59296 $ret260297 $ret561298 $i62299 $i63300))
        ($main_sum21 $x57294 $temp58295 $ret59296 $ret260297 $ret561298 $i62299 $i63300))))

; forwards $main_inv21
(assert
  (forall (($ret561298 Int) ($ret260297 Int) ($i63300 Int) ($i62299 Int) ($temp58295 Int) ($x57294 (Array Int Int)) ($ret59296 Int))
    (=> (and (< $i63300 (- 10000 1))
             ($main_inv21 $x57294 $temp58295 $ret59296 $ret260297 $ret561298 $i62299 $i63300))
        ($main_inv21 (store $x57294 $i63300 (select $x57294 (+ $i63300 1))) $temp58295 $ret59296 $ret260297 $ret561298 $i62299 (+ $i63300 1)))))

; mapsum precondition
(assert
  (forall (($i62306 Int) ($ret260304 Int) ($i63307 Int) ($temp58302 Int) ($ret561305 Int) ($ret59303 Int) ($x57301 (Array Int Int)))
    (=> (and ($main_sum21 $x57301 $temp58302 $ret59303 $ret260304 $ret561305 $i62306 $i63307))
        ($mapsum_pre (store $x57301 (- 10000 1) $temp58302)))))

; error
(assert
  (forall (($result308 Int) ($i62306 Int) ($ret260304 Int) ($i63307 Int) ($temp58302 Int) ($ret561305 Int) ($ret59303 Int) ($x57301 (Array Int Int)))
    (=> (and (or (not (= $ret59303 $ret260304)) (not (= $ret59303 $result308)))
             (mapsum (store $x57301 (- 10000 1) $temp58302) $result308)
             ($main_sum21 $x57301 $temp58302 $ret59303 $ret260304 $ret561305 $i62306 $i63307))
        false)))

; if then
(assert
  (forall (($result308 Int) ($i62306 Int) ($ret260304 Int) ($i63307 Int) ($temp58302 Int) ($ret561305 Int) ($ret59303 Int) ($x57301 (Array Int Int)))
    (=> (and (or (not (= $ret59303 $ret260304)) (not (= $ret59303 $result308)))
             (mapsum (store $x57301 (- 10000 1) $temp58302) $result308)
             ($main_sum21 $x57301 $temp58302 $ret59303 $ret260304 $ret561305 $i62306 $i63307))
        ($main_if7 (store $x57301 (- 10000 1) $temp58302) $temp58302 $ret59303 $ret260304 $result308 $i62306 $i63307))))

; if else
(assert
  (forall (($result308 Int) ($i62306 Int) ($ret260304 Int) ($i63307 Int) ($temp58302 Int) ($ret561305 Int) ($ret59303 Int) ($x57301 (Array Int Int)))
    (=> (and (not (or (not (= $ret59303 $ret260304)) (not (= $ret59303 $result308))))
             (mapsum (store $x57301 (- 10000 1) $temp58302) $result308)
             ($main_sum21 $x57301 $temp58302 $ret59303 $ret260304 $ret561305 $i62306 $i63307))
        ($main_if7 (store $x57301 (- 10000 1) $temp58302) $temp58302 $ret59303 $ret260304 $result308 $i62306 $i63307))))

(check-sat)
