(set-logic HORN)

(declare-fun $main_inv17 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum18 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv18 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $mapsum_sum16 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum17 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if6 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_inv16 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv16
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv16 x 0 0))))

; loop term $mapsum_sum16
(assert
  (forall ((x311 (Array Int Int)) ($i46312 Int) ($ret47313 Int))
    (=> (and (not (< $i46312 1000)))
        ($mapsum_sum16 x311 $i46312 $ret47313 x311 $i46312 $ret47313))))

; forwards $mapsum_inv16
(assert
  (forall ((x311 (Array Int Int)) ($i46312 Int) ($ret47313 Int))
    (=> (and (< $i46312 1000)
             ($mapsum_inv16 x311 $i46312 $ret47313))
        ($mapsum_inv16 x311 (+ $i46312 1) (+ (+ $ret47313 $i46312) (select x311 $i46312))))))

; backwards $mapsum_sum16
(assert
  (forall (($i46312 Int) (x314 (Array Int Int)) (x311 (Array Int Int)) ($ret47316 Int) ($i46315 Int) ($ret47313 Int))
    (=> (and ($mapsum_sum16 x311 (+ $i46312 1) (+ (+ $ret47313 $i46312) (select x311 $i46312)) x314 $i46315 $ret47316)
             (< $i46312 1000))
        ($mapsum_sum16 x311 $i46312 $ret47313 x314 $i46315 $ret47316))))

; post mapsum
(assert
  (forall ((x317 (Array Int Int)) ($ret47319 Int) (x (Array Int Int)) ($i46318 Int))
    (=> (and ($mapsum_sum16 x 0 0 x317 $i46318 $ret47319)
             ($mapsum_pre x))
        (mapsum x317 $ret47319))))

; loop entry $main_inv17
(assert
  (forall (($temp49 Int) ($ret552 Int) ($i54 Int) ($x48 (Array Int Int)) ($ret50 Int) ($i53 Int) ($ret251 Int))
    (=> (and (= $i53 0))
        ($main_inv17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54))))

; loop term $main_sum17
(assert
  (forall (($ret50322 Int) ($ret552324 Int) ($i54326 Int) ($i53325 Int) ($ret251323 Int) ($x48320 (Array Int Int)) ($temp49321 Int))
    (=> (and (not (< $i53325 1000)))
        ($main_sum17 $x48320 $temp49321 $ret50322 $ret251323 $ret552324 $i53325 $i54326 $x48320 $temp49321 $ret50322 $ret251323 $ret552324 $i53325 $i54326))))

; forwards $main_inv17
(assert
  (forall (($ret50322 Int) ($ret552324 Int) ($i54326 Int) ($ret251323 Int) ($x48320 (Array Int Int)) ($temp49321 Int) ($int327 Int) ($i53325 Int))
    (=> (and (<= (- 2147483648) $int327)
             (<= $int327 2147483647)
             (< $i53325 1000)
             ($main_inv17 $x48320 $temp49321 $ret50322 $ret251323 $ret552324 $i53325 $i54326))
        ($main_inv17 (store $x48320 $i53325 $int327) $temp49321 $ret50322 $ret251323 $ret552324 (+ $i53325 1) $i54326))))

; backwards $main_sum17
(assert
  (forall (($ret50330 Int) ($ret50322 Int) ($i53333 Int) ($x48328 (Array Int Int)) ($i54326 Int) ($ret251331 Int) ($ret251323 Int) ($temp49329 Int) ($x48320 (Array Int Int)) ($temp49321 Int) ($ret552324 Int) ($ret552332 Int) ($i54334 Int) ($int327 Int) ($i53325 Int))
    (=> (and ($main_sum17 (store $x48320 $i53325 $int327) $temp49321 $ret50322 $ret251323 $ret552324 (+ $i53325 1) $i54326 $x48328 $temp49329 $ret50330 $ret251331 $ret552332 $i53333 $i54334)
             (<= (- 2147483648) $int327)
             (<= $int327 2147483647)
             (< $i53325 1000))
        ($main_sum17 $x48320 $temp49321 $ret50322 $ret251323 $ret552324 $i53325 $i54326 $x48328 $temp49329 $ret50330 $ret251331 $ret552332 $i53333 $i54334))))

; mapsum precondition
(assert
  (forall (($temp49 Int) ($i54 Int) ($x48 (Array Int Int)) ($ret50 Int) ($i53 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($mapsum_pre $x48335))))

; mapsum precondition
(assert
  (forall (($temp49 Int) ($i54 Int) ($x48 (Array Int Int)) ($ret50 Int) ($i53 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($mapsum_pre (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0))))))

; loop entry $main_inv18
(assert
  (forall (($temp49 Int) ($i54 Int) ($x48 (Array Int Int)) ($ret50 Int) ($i53 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($result343 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and (= $i54341 0)
             (mapsum (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) $result343)
             (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($main_inv18 (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) (select (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) 0) $result342 $result343 $ret552339 $i53340 $i54341))))

; loop term $main_sum18
(assert
  (forall (($i53349 Int) ($ret251347 Int) ($x48344 (Array Int Int)) ($ret552348 Int) ($temp49345 Int) ($ret50346 Int) ($i54350 Int))
    (=> (and (not (< $i54350 (- 1000 1))))
        ($main_sum18 $x48344 $temp49345 $ret50346 $ret251347 $ret552348 $i53349 $i54350 $x48344 $temp49345 $ret50346 $ret251347 $ret552348 $i53349 $i54350))))

; forwards $main_inv18
(assert
  (forall (($i53349 Int) ($ret251347 Int) ($x48344 (Array Int Int)) ($ret552348 Int) ($temp49345 Int) ($ret50346 Int) ($i54350 Int))
    (=> (and (< $i54350 (- 1000 1))
             ($main_inv18 $x48344 $temp49345 $ret50346 $ret251347 $ret552348 $i53349 $i54350))
        ($main_inv18 (store $x48344 $i54350 (select $x48344 (+ $i54350 1))) $temp49345 $ret50346 $ret251347 $ret552348 $i53349 (+ $i54350 1)))))

; backwards $main_sum18
(assert
  (forall (($i53349 Int) ($ret251347 Int) ($x48351 (Array Int Int)) ($ret251354 Int) ($x48344 (Array Int Int)) ($ret552348 Int) ($temp49345 Int) ($i53356 Int) ($temp49352 Int) ($i54357 Int) ($ret50346 Int) ($ret552355 Int) ($ret50353 Int) ($i54350 Int))
    (=> (and ($main_sum18 (store $x48344 $i54350 (select $x48344 (+ $i54350 1))) $temp49345 $ret50346 $ret251347 $ret552348 $i53349 (+ $i54350 1) $x48351 $temp49352 $ret50353 $ret251354 $ret552355 $i53356 $i54357)
             (< $i54350 (- 1000 1)))
        ($main_sum18 $x48344 $temp49345 $ret50346 $ret251347 $ret552348 $i53349 $i54350 $x48351 $temp49352 $ret50353 $ret251354 $ret552355 $i53356 $i54357))))

; mapsum precondition
(assert
  (forall (($temp49 Int) ($x48358 (Array Int Int)) ($i54 Int) ($ret50360 Int) ($ret552362 Int) ($i54364 Int) ($x48 (Array Int Int)) ($ret50 Int) ($ret251361 Int) ($i53 Int) ($temp49359 Int) ($i53363 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($result343 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and ($main_sum18 (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) (select (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) 0) $result342 $result343 $ret552339 $i53340 $i54341 $x48358 $temp49359 $ret50360 $ret251361 $ret552362 $i53363 $i54364)
             (= $i54341 0)
             (mapsum (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) $result343)
             (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($mapsum_pre (store $x48358 (- 1000 1) $temp49359)))))

; error
(assert
  (forall (($temp49 Int) ($x48358 (Array Int Int)) ($i54 Int) ($result365 Int) ($ret50360 Int) ($ret552362 Int) ($i54364 Int) ($x48 (Array Int Int)) ($ret50 Int) ($ret251361 Int) ($i53 Int) ($temp49359 Int) ($i53363 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($result343 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and (or (not (= $ret50360 $ret251361)) (not (= $ret50360 $result365)))
             (mapsum (store $x48358 (- 1000 1) $temp49359) $result365)
             ($main_sum18 (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) (select (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) 0) $result342 $result343 $ret552339 $i53340 $i54341 $x48358 $temp49359 $ret50360 $ret251361 $ret552362 $i53363 $i54364)
             (= $i54341 0)
             (mapsum (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) $result343)
             (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        false)))

; if then
(assert
  (forall (($temp49 Int) ($x48358 (Array Int Int)) ($i54 Int) ($result365 Int) ($ret50360 Int) ($ret552362 Int) ($i54364 Int) ($x48 (Array Int Int)) ($ret50 Int) ($ret251361 Int) ($i53 Int) ($temp49359 Int) ($i53363 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($result343 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and (or (not (= $ret50360 $ret251361)) (not (= $ret50360 $result365)))
             (mapsum (store $x48358 (- 1000 1) $temp49359) $result365)
             ($main_sum18 (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) (select (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) 0) $result342 $result343 $ret552339 $i53340 $i54341 $x48358 $temp49359 $ret50360 $ret251361 $ret552362 $i53363 $i54364)
             (= $i54341 0)
             (mapsum (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) $result343)
             (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($main_if6 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 (store $x48358 (- 1000 1) $temp49359) $temp49359 $ret50360 $ret251361 $result365 $i53363 $i54364))))

; if else
(assert
  (forall (($temp49 Int) ($x48358 (Array Int Int)) ($i54 Int) ($result365 Int) ($ret50360 Int) ($ret552362 Int) ($i54364 Int) ($x48 (Array Int Int)) ($ret50 Int) ($ret251361 Int) ($i53 Int) ($temp49359 Int) ($i53363 Int) ($result342 Int) ($temp49336 Int) ($ret251338 Int) ($ret552339 Int) ($x48335 (Array Int Int)) ($ret552 Int) ($result343 Int) ($i53340 Int) ($ret251 Int) ($i54341 Int) ($ret50337 Int))
    (=> (and (not (or (not (= $ret50360 $ret251361)) (not (= $ret50360 $result365))))
             (mapsum (store $x48358 (- 1000 1) $temp49359) $result365)
             ($main_sum18 (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) (select (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) 0) $result342 $result343 $ret552339 $i53340 $i54341 $x48358 $temp49359 $ret50360 $ret251361 $ret552362 $i53363 $i54364)
             (= $i54341 0)
             (mapsum (store (store $x48335 0 (select $x48335 1)) 1 (select $x48335 0)) $result343)
             (mapsum $x48335 $result342)
             ($main_sum17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 $x48335 $temp49336 $ret50337 $ret251338 $ret552339 $i53340 $i54341)
             (= $i53 0))
        ($main_if6 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54 (store $x48358 (- 1000 1) $temp49359) $temp49359 $ret50360 $ret251361 $result365 $i53363 $i54364))))

(check-sat)
