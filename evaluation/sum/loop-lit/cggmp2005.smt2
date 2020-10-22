(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum492 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if289 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv492 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if290 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if289 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9409 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if289 cond cond9409))
        (assume_abort_if_not cond9409))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9410 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9410))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if290 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9411 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if290 cond cond9411))
        (__VERIFIER_assert cond9411))))

; loop entry $main_inv492
(assert
        ($main_inv492 1 10))

; loop term $main_sum492
(assert
  (forall (($i6689412 Int) ($j6699413 Int))
    (=> (and (not (>= $j6699413 $i6689412)))
        ($main_sum492 $i6689412 $j6699413 $i6689412 $j6699413))))

; forwards $main_inv492
(assert
  (forall (($i6689412 Int) ($j6699413 Int))
    (=> (and (>= $j6699413 $i6689412)
             ($main_inv492 $i6689412 $j6699413))
        ($main_inv492 (+ $i6689412 2) (+ (- 1) $j6699413)))))

; backwards $main_sum492
(assert
  (forall (($i6689412 Int) ($j6699413 Int) ($i6689414 Int) ($j6699415 Int))
    (=> (and ($main_sum492 (+ $i6689412 2) (+ (- 1) $j6699413) $i6689414 $j6699415)
             (>= $j6699413 $i6689412))
        ($main_sum492 $i6689412 $j6699413 $i6689414 $j6699415))))

; __VERIFIER_assert precondition
(assert
  (forall (($j6699417 Int) ($i6689416 Int))
    (=> (and ($main_sum492 1 10 $i6689416 $j6699417))
        ($__VERIFIER_assert_pre (ite (= $j6699417 6) 1 0)))))

(check-sat)
