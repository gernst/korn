(set-logic HORN)

(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $mapsum_inv13 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum14 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if5 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum15 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv15 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_sum13 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv14 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapsum_inv13
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv13 x 0 0))))

; loop term $mapsum_sum13
(assert
  (forall ((x249 (Array Int Int)) ($i37250 Int) ($ret38251 Int))
    (=> (and (not (< $i37250 100)))
        ($mapsum_sum13 x249 $i37250 $ret38251 x249 $i37250 $ret38251))))

; forwards $mapsum_inv13
(assert
  (forall ((x249 (Array Int Int)) ($i37250 Int) ($ret38251 Int))
    (=> (and (< $i37250 100)
             ($mapsum_inv13 x249 $i37250 $ret38251))
        ($mapsum_inv13 x249 (+ $i37250 1) (+ (+ $ret38251 $i37250) (select x249 $i37250))))))

; backwards $mapsum_sum13
(assert
  (forall (($ret38251 Int) (x249 (Array Int Int)) ($i37253 Int) ($ret38254 Int) (x252 (Array Int Int)) ($i37250 Int))
    (=> (and ($mapsum_sum13 x249 (+ $i37250 1) (+ (+ $ret38251 $i37250) (select x249 $i37250)) x252 $i37253 $ret38254)
             (< $i37250 100))
        ($mapsum_sum13 x249 $i37250 $ret38251 x252 $i37253 $ret38254))))

; post mapsum
(assert
  (forall ((x255 (Array Int Int)) ($ret38257 Int) (x (Array Int Int)) ($i37256 Int))
    (=> (and ($mapsum_sum13 x 0 0 x255 $i37256 $ret38257)
             ($mapsum_pre x))
        (mapsum x255 $ret38257))))

; loop entry $main_inv14
(assert
  (forall (($x39 (Array Int Int)) ($ret242 Int) ($i45 Int) ($ret41 Int) ($i44 Int) ($ret543 Int) ($temp40 Int))
    (=> (and (= $i44 0))
        ($main_inv14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45))))

; loop term $main_sum14
(assert
  (forall (($ret242261 Int) ($ret41260 Int) ($temp40259 Int) ($x39258 (Array Int Int)) ($i45264 Int) ($ret543262 Int) ($i44263 Int))
    (=> (and (not (< $i44263 100)))
        ($main_sum14 $x39258 $temp40259 $ret41260 $ret242261 $ret543262 $i44263 $i45264 $x39258 $temp40259 $ret41260 $ret242261 $ret543262 $i44263 $i45264))))

; forwards $main_inv14
(assert
  (forall (($ret242261 Int) ($int265 Int) ($ret41260 Int) ($temp40259 Int) ($x39258 (Array Int Int)) ($i45264 Int) ($ret543262 Int) ($i44263 Int))
    (=> (and (<= (- 2147483648) $int265)
             (<= $int265 2147483647)
             (< $i44263 100)
             ($main_inv14 $x39258 $temp40259 $ret41260 $ret242261 $ret543262 $i44263 $i45264))
        ($main_inv14 (store $x39258 $i44263 $int265) $temp40259 $ret41260 $ret242261 $ret543262 (+ $i44263 1) $i45264))))

; backwards $main_sum14
(assert
  (forall (($temp40267 Int) ($ret242261 Int) ($ret543270 Int) ($ret242269 Int) ($temp40259 Int) ($ret41268 Int) ($x39258 (Array Int Int)) ($ret543262 Int) ($i44263 Int) ($i44271 Int) ($int265 Int) ($x39266 (Array Int Int)) ($ret41260 Int) ($i45272 Int) ($i45264 Int))
    (=> (and ($main_sum14 (store $x39258 $i44263 $int265) $temp40259 $ret41260 $ret242261 $ret543262 (+ $i44263 1) $i45264 $x39266 $temp40267 $ret41268 $ret242269 $ret543270 $i44271 $i45272)
             (<= (- 2147483648) $int265)
             (<= $int265 2147483647)
             (< $i44263 100))
        ($main_sum14 $x39258 $temp40259 $ret41260 $ret242261 $ret543262 $i44263 $i45264 $x39266 $temp40267 $ret41268 $ret242269 $ret543270 $i44271 $i45272))))

; mapsum precondition
(assert
  (forall (($temp40274 Int) ($ret242 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($ret242276 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44278 Int) ($x39 (Array Int Int)) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int))
    (=> (and ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($mapsum_pre $x39273))))

; mapsum precondition
(assert
  (forall (($temp40274 Int) ($ret242 Int) ($result280 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($ret242276 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44278 Int) ($x39 (Array Int Int)) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int))
    (=> (and (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($mapsum_pre (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0))))))

; loop entry $main_inv15
(assert
  (forall (($temp40274 Int) ($ret242 Int) ($result280 Int) ($result281 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($ret242276 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44278 Int) ($x39 (Array Int Int)) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int))
    (=> (and (= $i45279 0)
             (mapsum (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) $result281)
             (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($main_inv15 (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) (select (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) 0) $result280 $result281 $ret543277 $i44278 $i45279))))

; loop term $main_sum15
(assert
  (forall (($temp40283 Int) ($ret543286 Int) ($ret41284 Int) ($x39282 (Array Int Int)) ($i44287 Int) ($ret242285 Int) ($i45288 Int))
    (=> (and (not (< $i45288 (- 100 1))))
        ($main_sum15 $x39282 $temp40283 $ret41284 $ret242285 $ret543286 $i44287 $i45288 $x39282 $temp40283 $ret41284 $ret242285 $ret543286 $i44287 $i45288))))

; forwards $main_inv15
(assert
  (forall (($temp40283 Int) ($ret543286 Int) ($ret41284 Int) ($x39282 (Array Int Int)) ($i44287 Int) ($ret242285 Int) ($i45288 Int))
    (=> (and (< $i45288 (- 100 1))
             ($main_inv15 $x39282 $temp40283 $ret41284 $ret242285 $ret543286 $i44287 $i45288))
        ($main_inv15 (store $x39282 $i45288 (select $x39282 (+ $i45288 1))) $temp40283 $ret41284 $ret242285 $ret543286 $i44287 (+ $i45288 1)))))

; backwards $main_sum15
(assert
  (forall (($x39289 (Array Int Int)) ($i44294 Int) ($ret543286 Int) ($ret41291 Int) ($ret41284 Int) ($x39282 (Array Int Int)) ($temp40290 Int) ($ret543293 Int) ($temp40283 Int) ($ret242292 Int) ($i44287 Int) ($i45295 Int) ($ret242285 Int) ($i45288 Int))
    (=> (and ($main_sum15 (store $x39282 $i45288 (select $x39282 (+ $i45288 1))) $temp40283 $ret41284 $ret242285 $ret543286 $i44287 (+ $i45288 1) $x39289 $temp40290 $ret41291 $ret242292 $ret543293 $i44294 $i45295)
             (< $i45288 (- 100 1)))
        ($main_sum15 $x39282 $temp40283 $ret41284 $ret242285 $ret543286 $i44287 $i45288 $x39289 $temp40290 $ret41291 $ret242292 $ret543293 $i44294 $i45295))))

; mapsum precondition
(assert
  (forall (($temp40297 Int) ($x39296 (Array Int Int)) ($ret242299 Int) ($temp40274 Int) ($result280 Int) ($result281 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44301 Int) ($i45302 Int) ($i44278 Int) ($x39 (Array Int Int)) ($ret242 Int) ($ret41298 Int) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int) ($ret242276 Int) ($ret543300 Int))
    (=> (and ($main_sum15 (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) (select (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) 0) $result280 $result281 $ret543277 $i44278 $i45279 $x39296 $temp40297 $ret41298 $ret242299 $ret543300 $i44301 $i45302)
             (= $i45279 0)
             (mapsum (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) $result281)
             (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($mapsum_pre (store $x39296 (- 100 1) $temp40297)))))

; error
(assert
  (forall (($temp40297 Int) ($x39296 (Array Int Int)) ($ret242299 Int) ($temp40274 Int) ($result280 Int) ($result281 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44301 Int) ($i45302 Int) ($i44278 Int) ($x39 (Array Int Int)) ($result303 Int) ($ret242 Int) ($ret41298 Int) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int) ($ret242276 Int) ($ret543300 Int))
    (=> (and (or (not (= $ret41298 $ret242299)) (not (= $ret41298 $result303)))
             (mapsum (store $x39296 (- 100 1) $temp40297) $result303)
             ($main_sum15 (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) (select (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) 0) $result280 $result281 $ret543277 $i44278 $i45279 $x39296 $temp40297 $ret41298 $ret242299 $ret543300 $i44301 $i45302)
             (= $i45279 0)
             (mapsum (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) $result281)
             (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        false)))

; if then
(assert
  (forall (($temp40297 Int) ($x39296 (Array Int Int)) ($ret242299 Int) ($temp40274 Int) ($result280 Int) ($result281 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44301 Int) ($i45302 Int) ($i44278 Int) ($x39 (Array Int Int)) ($result303 Int) ($ret242 Int) ($ret41298 Int) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int) ($ret242276 Int) ($ret543300 Int))
    (=> (and (or (not (= $ret41298 $ret242299)) (not (= $ret41298 $result303)))
             (mapsum (store $x39296 (- 100 1) $temp40297) $result303)
             ($main_sum15 (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) (select (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) 0) $result280 $result281 $ret543277 $i44278 $i45279 $x39296 $temp40297 $ret41298 $ret242299 $ret543300 $i44301 $i45302)
             (= $i45279 0)
             (mapsum (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) $result281)
             (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($main_if5 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 (store $x39296 (- 100 1) $temp40297) $temp40297 $ret41298 $ret242299 $result303 $i44301 $i45302))))

; if else
(assert
  (forall (($temp40297 Int) ($x39296 (Array Int Int)) ($ret242299 Int) ($temp40274 Int) ($result280 Int) ($result281 Int) ($x39273 (Array Int Int)) ($ret41 Int) ($i44 Int) ($ret543277 Int) ($i45279 Int) ($i44301 Int) ($i45302 Int) ($i44278 Int) ($x39 (Array Int Int)) ($result303 Int) ($ret242 Int) ($ret41298 Int) ($ret543 Int) ($temp40 Int) ($ret41275 Int) ($i45 Int) ($ret242276 Int) ($ret543300 Int))
    (=> (and (not (or (not (= $ret41298 $ret242299)) (not (= $ret41298 $result303))))
             (mapsum (store $x39296 (- 100 1) $temp40297) $result303)
             ($main_sum15 (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) (select (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) 0) $result280 $result281 $ret543277 $i44278 $i45279 $x39296 $temp40297 $ret41298 $ret242299 $ret543300 $i44301 $i45302)
             (= $i45279 0)
             (mapsum (store (store $x39273 0 (select $x39273 1)) 1 (select $x39273 0)) $result281)
             (mapsum $x39273 $result280)
             ($main_sum14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 $x39273 $temp40274 $ret41275 $ret242276 $ret543277 $i44278 $i45279)
             (= $i44 0))
        ($main_if5 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45 (store $x39296 (- 100 1) $temp40297) $temp40297 $ret41298 $ret242299 $result303 $i44301 $i45302))))

(check-sat)
