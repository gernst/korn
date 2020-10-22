(set-logic HORN)

(declare-fun $main_inv147 (Int Int Int Int) Bool)
(declare-fun $main_inv148 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum147 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv149 (Int Int Int Int) Bool)
(declare-fun $main_sum149 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv146 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if548 (Int Int) Bool)
(declare-fun $main_sum146 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum148 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14275 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14275))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if548 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14276 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if548 cond cond14276))
        (__VERIFIER_assert cond14276))))

; loop entry $main_inv146
(assert
  (forall (($uint14277 Int) ($z504 Int) ($y503 Int) ($n501 Int) ($x502 Int))
    (=> (and (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint14277)
             (<= 0 $uint14277)
             (<= $uint14277 4294967295))
        ($main_inv146 $n501 $x502 $y503 $z504))))

; loop term $main_sum146
(assert
  (forall (($n50114278 Int) ($x50214279 Int) ($y50314280 Int) ($z50414281 Int))
    (=> (and (not (> $x50214279 0)))
        ($main_sum146 $n50114278 $x50214279 $y50314280 $z50414281 $n50114278 $x50214279 $y50314280 $z50414281))))

; forwards $main_inv146
(assert
  (forall (($n50114278 Int) ($x50214279 Int) ($y50314280 Int) ($z50414281 Int))
    (=> (and (> $x50214279 0)
             ($main_inv146 $n50114278 $x50214279 $y50314280 $z50414281))
        ($main_inv146 $n50114278 (- $x50214279 1) (+ $y50314280 1) $z50414281))))

; backwards $main_sum146
(assert
  (forall (($x50214279 Int) ($y50314284 Int) ($x50214283 Int) ($z50414285 Int) ($n50114278 Int) ($y50314280 Int) ($n50114282 Int) ($z50414281 Int))
    (=> (and ($main_sum146 $n50114278 (- $x50214279 1) (+ $y50314280 1) $z50414281 $n50114282 $x50214283 $y50314284 $z50414285)
             (> $x50214279 0))
        ($main_sum146 $n50114278 $x50214279 $y50314280 $z50414281 $n50114282 $x50214283 $y50314284 $z50414285))))

; loop entry $main_inv147
(assert
  (forall (($uint14277 Int) ($y503 Int) ($n50114286 Int) ($n501 Int) ($z50414289 Int) ($x502 Int) ($y50314288 Int) ($z504 Int) ($x50214287 Int))
    (=> (and ($main_sum146 $n501 $x502 $y503 $z504 $n50114286 $x50214287 $y50314288 $z50414289)
             (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint14277)
             (<= 0 $uint14277)
             (<= $uint14277 4294967295))
        ($main_inv147 $n50114286 $x50214287 $y50314288 $y50314288))))

; loop term $main_sum147
(assert
  (forall (($n50114290 Int) ($x50214291 Int) ($y50314292 Int) ($z50414293 Int))
    (=> (and (not (> $z50414293 0)))
        ($main_sum147 $n50114290 $x50214291 $y50314292 $z50414293 $n50114290 $x50214291 $y50314292 $z50414293))))

; forwards $main_inv147
(assert
  (forall (($n50114290 Int) ($x50214291 Int) ($y50314292 Int) ($z50414293 Int))
    (=> (and (> $z50414293 0)
             ($main_inv147 $n50114290 $x50214291 $y50314292 $z50414293))
        ($main_inv147 $n50114290 (+ $x50214291 1) $y50314292 (- $z50414293 1)))))

; backwards $main_sum147
(assert
  (forall (($x50214291 Int) ($n50114294 Int) ($z50414297 Int) ($z50414293 Int) ($n50114290 Int) ($y50314292 Int) ($x50214295 Int) ($y50314296 Int))
    (=> (and ($main_sum147 $n50114290 (+ $x50214291 1) $y50314292 (- $z50414293 1) $n50114294 $x50214295 $y50314296 $z50414297)
             (> $z50414293 0))
        ($main_sum147 $n50114290 $x50214291 $y50314292 $z50414293 $n50114294 $x50214295 $y50314296 $z50414297))))

; loop entry $main_inv148
(assert
  (forall (($uint14277 Int) ($y503 Int) ($n50114286 Int) ($n501 Int) ($x502 Int) ($n50114298 Int) ($y50314288 Int) ($y50314300 Int) ($x50214299 Int) ($z504 Int) ($x50214287 Int) ($z50414301 Int) ($z50414289 Int))
    (=> (and ($main_sum147 $n50114286 $x50214287 $y50314288 $y50314288 $n50114298 $x50214299 $y50314300 $z50414301)
             ($main_sum146 $n501 $x502 $y503 $z504 $n50114286 $x50214287 $y50314288 $z50414289)
             (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint14277)
             (<= 0 $uint14277)
             (<= $uint14277 4294967295))
        ($main_inv148 $n50114298 $x50214299 $y50314300 $z50414301))))

; loop term $main_sum148
(assert
  (forall (($n50114302 Int) ($x50214303 Int) ($y50314304 Int) ($z50414305 Int))
    (=> (and (not (> $y50314304 0)))
        ($main_sum148 $n50114302 $x50214303 $y50314304 $z50414305 $n50114302 $x50214303 $y50314304 $z50414305))))

; forwards $main_inv148
(assert
  (forall (($n50114302 Int) ($x50214303 Int) ($y50314304 Int) ($z50414305 Int))
    (=> (and (> $y50314304 0)
             ($main_inv148 $n50114302 $x50214303 $y50314304 $z50414305))
        ($main_inv148 $n50114302 $x50214303 (- $y50314304 1) (+ $z50414305 1)))))

; backwards $main_sum148
(assert
  (forall (($y50314304 Int) ($z50414305 Int) ($y50314308 Int) ($x50214303 Int) ($x50214307 Int) ($n50114306 Int) ($z50414309 Int) ($n50114302 Int))
    (=> (and ($main_sum148 $n50114302 $x50214303 (- $y50314304 1) (+ $z50414305 1) $n50114306 $x50214307 $y50314308 $z50414309)
             (> $y50314304 0))
        ($main_sum148 $n50114302 $x50214303 $y50314304 $z50414305 $n50114306 $x50214307 $y50314308 $z50414309))))

; loop entry $main_inv149
(assert
  (forall (($y503 Int) ($n50114286 Int) ($n501 Int) ($z50414313 Int) ($n50114310 Int) ($x502 Int) ($n50114298 Int) ($x50214311 Int) ($y50314288 Int) ($y50314300 Int) ($x50214299 Int) ($y50314312 Int) ($uint14277 Int) ($z504 Int) ($x50214287 Int) ($z50414301 Int) ($z50414289 Int))
    (=> (and ($main_sum148 $n50114298 $x50214299 $y50314300 $z50414301 $n50114310 $x50214311 $y50314312 $z50414313)
             ($main_sum147 $n50114286 $x50214287 $y50314288 $y50314288 $n50114298 $x50214299 $y50314300 $z50414301)
             ($main_sum146 $n501 $x502 $y503 $z504 $n50114286 $x50214287 $y50314288 $z50414289)
             (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint14277)
             (<= 0 $uint14277)
             (<= $uint14277 4294967295))
        ($main_inv149 $n50114310 $x50214311 $y50314312 $z50414313))))

; loop term $main_sum149
(assert
  (forall (($n50114314 Int) ($x50214315 Int) ($y50314316 Int) ($z50414317 Int))
    (=> (and (not (> $x50214315 0)))
        ($main_sum149 $n50114314 $x50214315 $y50314316 $z50414317 $n50114314 $x50214315 $y50314316 $z50414317))))

; forwards $main_inv149
(assert
  (forall (($n50114314 Int) ($x50214315 Int) ($y50314316 Int) ($z50414317 Int))
    (=> (and (> $x50214315 0)
             ($main_inv149 $n50114314 $x50214315 $y50314316 $z50414317))
        ($main_inv149 $n50114314 (- $x50214315 1) (+ $y50314316 1) $z50414317))))

; backwards $main_sum149
(assert
  (forall (($n50114318 Int) ($z50414317 Int) ($y50314316 Int) ($z50414321 Int) ($y50314320 Int) ($x50214319 Int) ($x50214315 Int) ($n50114314 Int))
    (=> (and ($main_sum149 $n50114314 (- $x50214315 1) (+ $y50314316 1) $z50414317 $n50114318 $x50214319 $y50314320 $z50414321)
             (> $x50214315 0))
        ($main_sum149 $n50114314 $x50214315 $y50314316 $z50414317 $n50114318 $x50214319 $y50314320 $z50414321))))

; __VERIFIER_assert precondition
(assert
  (forall (($y503 Int) ($n50114286 Int) ($n501 Int) ($y50314324 Int) ($z50414313 Int) ($x502 Int) ($n50114298 Int) ($z50414325 Int) ($y50314288 Int) ($y50314300 Int) ($x50214299 Int) ($y50314312 Int) ($uint14277 Int) ($z504 Int) ($x50214287 Int) ($z50414301 Int) ($z50414289 Int) ($n50114310 Int) ($x50214323 Int) ($n50114322 Int) ($x50214311 Int))
    (=> (and ($main_sum149 $n50114310 $x50214311 $y50314312 $z50414313 $n50114322 $x50214323 $y50314324 $z50414325)
             ($main_sum148 $n50114298 $x50214299 $y50314300 $z50414301 $n50114310 $x50214311 $y50314312 $z50414313)
             ($main_sum147 $n50114286 $x50214287 $y50314288 $y50314288 $n50114298 $x50214299 $y50314300 $z50414301)
             ($main_sum146 $n501 $x502 $y503 $z504 $n50114286 $x50214287 $y50314288 $z50414289)
             (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint14277)
             (<= 0 $uint14277)
             (<= $uint14277 4294967295))
        ($__VERIFIER_assert_pre (ite (= $y50314324 $n50114322) 1 0)))))

(check-sat)
