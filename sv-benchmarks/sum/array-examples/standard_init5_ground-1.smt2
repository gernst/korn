(set-logic HORN)

(declare-fun $main_sum249 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum245 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv244 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum246 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum247 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum244 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv248 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv249 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if73 (Int Int) Bool)
(declare-fun $main_inv245 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv247 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum248 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv246 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5475 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5475))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if73 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5476 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if73 cond cond5476))
        (__VERIFIER_assert cond5476))))

; loop entry $main_inv244
(assert
  (forall (($a340 (Array Int Int)) ($i341 Int) ($x342 Int))
    (=> (and (= $i341 0))
        ($main_inv244 $a340 $i341 $x342))))

; loop term $main_sum244
(assert
  (forall (($a3405477 (Array Int Int)) ($i3415478 Int) ($x3425479 Int))
    (=> (and (not (< $i3415478 100000)))
        ($main_sum244 $a3405477 $i3415478 $x3425479 $a3405477 $i3415478 $x3425479))))

; forwards $main_inv244
(assert
  (forall (($a3405477 (Array Int Int)) ($i3415478 Int) ($x3425479 Int))
    (=> (and (< $i3415478 100000)
             ($main_inv244 $a3405477 $i3415478 $x3425479))
        ($main_inv244 (store $a3405477 $i3415478 42) (+ $i3415478 1) $x3425479))))

; backwards $main_sum244
(assert
  (forall (($x3425482 Int) ($a3405480 (Array Int Int)) ($i3415481 Int) ($i3415478 Int) ($a3405477 (Array Int Int)) ($x3425479 Int))
    (=> (and ($main_sum244 (store $a3405477 $i3415478 42) (+ $i3415478 1) $x3425479 $a3405480 $i3415481 $x3425482)
             (< $i3415478 100000))
        ($main_sum244 $a3405477 $i3415478 $x3425479 $a3405480 $i3415481 $x3425482))))

; loop entry $main_inv245
(assert
  (forall (($i341 Int) ($x3425485 Int) ($a340 (Array Int Int)) ($i3415484 Int) ($a3405483 (Array Int Int)) ($x342 Int))
    (=> (and ($main_sum244 $a340 $i341 $x342 $a3405483 $i3415484 $x3425485)
             (= $i341 0))
        ($main_inv245 $a3405483 0 $x3425485))))

; loop term $main_sum245
(assert
  (forall (($a3405486 (Array Int Int)) ($i3415487 Int) ($x3425488 Int))
    (=> (and (not (< $i3415487 100000)))
        ($main_sum245 $a3405486 $i3415487 $x3425488 $a3405486 $i3415487 $x3425488))))

; forwards $main_inv245
(assert
  (forall (($a3405486 (Array Int Int)) ($i3415487 Int) ($x3425488 Int))
    (=> (and (< $i3415487 100000)
             ($main_inv245 $a3405486 $i3415487 $x3425488))
        ($main_inv245 (store $a3405486 $i3415487 43) (+ $i3415487 1) $x3425488))))

; backwards $main_sum245
(assert
  (forall (($a3405489 (Array Int Int)) ($x3425488 Int) ($i3415490 Int) ($a3405486 (Array Int Int)) ($x3425491 Int) ($i3415487 Int))
    (=> (and ($main_sum245 (store $a3405486 $i3415487 43) (+ $i3415487 1) $x3425488 $a3405489 $i3415490 $x3425491)
             (< $i3415487 100000))
        ($main_sum245 $a3405486 $i3415487 $x3425488 $a3405489 $i3415490 $x3425491))))

; loop entry $main_inv246
(assert
  (forall (($i341 Int) ($x3425485 Int) ($i3415493 Int) ($a340 (Array Int Int)) ($i3415484 Int) ($x342 Int) ($a3405492 (Array Int Int)) ($a3405483 (Array Int Int)) ($x3425494 Int))
    (=> (and ($main_sum245 $a3405483 0 $x3425485 $a3405492 $i3415493 $x3425494)
             ($main_sum244 $a340 $i341 $x342 $a3405483 $i3415484 $x3425485)
             (= $i341 0))
        ($main_inv246 $a3405492 0 $x3425494))))

; loop term $main_sum246
(assert
  (forall (($a3405495 (Array Int Int)) ($i3415496 Int) ($x3425497 Int))
    (=> (and (not (< $i3415496 100000)))
        ($main_sum246 $a3405495 $i3415496 $x3425497 $a3405495 $i3415496 $x3425497))))

; forwards $main_inv246
(assert
  (forall (($a3405495 (Array Int Int)) ($i3415496 Int) ($x3425497 Int))
    (=> (and (< $i3415496 100000)
             ($main_inv246 $a3405495 $i3415496 $x3425497))
        ($main_inv246 (store $a3405495 $i3415496 44) (+ $i3415496 1) $x3425497))))

; backwards $main_sum246
(assert
  (forall (($i3415496 Int) ($x3425500 Int) ($i3415499 Int) ($a3405498 (Array Int Int)) ($a3405495 (Array Int Int)) ($x3425497 Int))
    (=> (and ($main_sum246 (store $a3405495 $i3415496 44) (+ $i3415496 1) $x3425497 $a3405498 $i3415499 $x3425500)
             (< $i3415496 100000))
        ($main_sum246 $a3405495 $i3415496 $x3425497 $a3405498 $i3415499 $x3425500))))

; loop entry $main_inv247
(assert
  (forall (($i341 Int) ($x3425503 Int) ($a3405501 (Array Int Int)) ($x3425485 Int) ($i3415502 Int) ($i3415493 Int) ($a340 (Array Int Int)) ($i3415484 Int) ($x342 Int) ($a3405492 (Array Int Int)) ($a3405483 (Array Int Int)) ($x3425494 Int))
    (=> (and ($main_sum246 $a3405492 0 $x3425494 $a3405501 $i3415502 $x3425503)
             ($main_sum245 $a3405483 0 $x3425485 $a3405492 $i3415493 $x3425494)
             ($main_sum244 $a340 $i341 $x342 $a3405483 $i3415484 $x3425485)
             (= $i341 0))
        ($main_inv247 $a3405501 0 $x3425503))))

; loop term $main_sum247
(assert
  (forall (($a3405504 (Array Int Int)) ($i3415505 Int) ($x3425506 Int))
    (=> (and (not (< $i3415505 100000)))
        ($main_sum247 $a3405504 $i3415505 $x3425506 $a3405504 $i3415505 $x3425506))))

; forwards $main_inv247
(assert
  (forall (($a3405504 (Array Int Int)) ($i3415505 Int) ($x3425506 Int))
    (=> (and (< $i3415505 100000)
             ($main_inv247 $a3405504 $i3415505 $x3425506))
        ($main_inv247 (store $a3405504 $i3415505 45) (+ $i3415505 1) $x3425506))))

; backwards $main_sum247
(assert
  (forall (($x3425506 Int) ($a3405507 (Array Int Int)) ($a3405504 (Array Int Int)) ($x3425509 Int) ($i3415508 Int) ($i3415505 Int))
    (=> (and ($main_sum247 (store $a3405504 $i3415505 45) (+ $i3415505 1) $x3425506 $a3405507 $i3415508 $x3425509)
             (< $i3415505 100000))
        ($main_sum247 $a3405504 $i3415505 $x3425506 $a3405507 $i3415508 $x3425509))))

; loop entry $main_inv248
(assert
  (forall (($x3425512 Int) ($x3425503 Int) ($a3405501 (Array Int Int)) ($x3425485 Int) ($i3415502 Int) ($i3415493 Int) ($a340 (Array Int Int)) ($i3415484 Int) ($i3415511 Int) ($x342 Int) ($a3405492 (Array Int Int)) ($a3405510 (Array Int Int)) ($i341 Int) ($a3405483 (Array Int Int)) ($x3425494 Int))
    (=> (and ($main_sum247 $a3405501 0 $x3425503 $a3405510 $i3415511 $x3425512)
             ($main_sum246 $a3405492 0 $x3425494 $a3405501 $i3415502 $x3425503)
             ($main_sum245 $a3405483 0 $x3425485 $a3405492 $i3415493 $x3425494)
             ($main_sum244 $a340 $i341 $x342 $a3405483 $i3415484 $x3425485)
             (= $i341 0))
        ($main_inv248 $a3405510 0 $x3425512))))

; loop term $main_sum248
(assert
  (forall (($a3405513 (Array Int Int)) ($i3415514 Int) ($x3425515 Int))
    (=> (and (not (< $i3415514 100000)))
        ($main_sum248 $a3405513 $i3415514 $x3425515 $a3405513 $i3415514 $x3425515))))

; forwards $main_inv248
(assert
  (forall (($a3405513 (Array Int Int)) ($i3415514 Int) ($x3425515 Int))
    (=> (and (< $i3415514 100000)
             ($main_inv248 $a3405513 $i3415514 $x3425515))
        ($main_inv248 (store $a3405513 $i3415514 46) (+ $i3415514 1) $x3425515))))

; backwards $main_sum248
(assert
  (forall (($x3425518 Int) ($i3415514 Int) ($a3405513 (Array Int Int)) ($a3405516 (Array Int Int)) ($i3415517 Int) ($x3425515 Int))
    (=> (and ($main_sum248 (store $a3405513 $i3415514 46) (+ $i3415514 1) $x3425515 $a3405516 $i3415517 $x3425518)
             (< $i3415514 100000))
        ($main_sum248 $a3405513 $i3415514 $x3425515 $a3405516 $i3415517 $x3425518))))

; loop entry $main_inv249
(assert
  (forall (($i3415520 Int) ($x3425512 Int) ($x3425503 Int) ($a3405501 (Array Int Int)) ($a3405519 (Array Int Int)) ($i3415502 Int) ($i3415493 Int) ($a340 (Array Int Int)) ($i3415484 Int) ($i3415511 Int) ($x342 Int) ($a3405492 (Array Int Int)) ($a3405510 (Array Int Int)) ($i341 Int) ($x3425485 Int) ($x3425521 Int) ($a3405483 (Array Int Int)) ($x3425494 Int))
    (=> (and ($main_sum248 $a3405510 0 $x3425512 $a3405519 $i3415520 $x3425521)
             ($main_sum247 $a3405501 0 $x3425503 $a3405510 $i3415511 $x3425512)
             ($main_sum246 $a3405492 0 $x3425494 $a3405501 $i3415502 $x3425503)
             ($main_sum245 $a3405483 0 $x3425485 $a3405492 $i3415493 $x3425494)
             ($main_sum244 $a340 $i341 $x342 $a3405483 $i3415484 $x3425485)
             (= $i341 0))
        ($main_inv249 $a3405519 $i3415520 0))))

; loop term $main_sum249
(assert
  (forall (($a3405522 (Array Int Int)) ($i3415523 Int) ($x3425524 Int))
    (=> (and (not (< $x3425524 100000)))
        ($main_sum249 $a3405522 $i3415523 $x3425524 $a3405522 $i3415523 $x3425524))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3405522 (Array Int Int)) ($x3425524 Int) ($i3415523 Int))
    (=> (and (< $x3425524 100000)
             ($main_inv249 $a3405522 $i3415523 $x3425524))
        ($__VERIFIER_assert_pre (ite (= (select $a3405522 $x3425524) 46) 1 0)))))

; forwards $main_inv249
(assert
  (forall (($a3405522 (Array Int Int)) ($i3415523 Int) ($x3425524 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3405522 $x3425524) 46) 1 0))
             (< $x3425524 100000)
             ($main_inv249 $a3405522 $i3415523 $x3425524))
        ($main_inv249 $a3405522 $i3415523 (+ $x3425524 1)))))

; backwards $main_sum249
(assert
  (forall (($i3415523 Int) ($i3415526 Int) ($a3405522 (Array Int Int)) ($a3405525 (Array Int Int)) ($x3425527 Int) ($x3425524 Int))
    (=> (and ($main_sum249 $a3405522 $i3415523 (+ $x3425524 1) $a3405525 $i3415526 $x3425527)
             (__VERIFIER_assert (ite (= (select $a3405522 $x3425524) 46) 1 0))
             (< $x3425524 100000))
        ($main_sum249 $a3405522 $i3415523 $x3425524 $a3405525 $i3415526 $x3425527))))

(check-sat)
