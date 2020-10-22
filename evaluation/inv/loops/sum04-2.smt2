(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv525 (Int Int) Bool)
(declare-fun $main_sum525 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if376 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7191 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7191))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if376 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7192 Int))
    (=> (and ($__VERIFIER_assert_if376 cond7192))
        (__VERIFIER_assert cond7192))))

; loop entry $main_inv525
(assert
  (forall (($sn757 Int))
    (=> (and (= $sn757 0))
        ($main_inv525 1 $sn757))))

; loop term $main_sum525
(assert
  (forall (($i7567193 Int) ($sn7577194 Int))
    (=> (and (not (<= $i7567193 8))
             ($main_inv525 $i7567193 $sn7577194))
        ($main_sum525 $i7567193 $sn7577194))))

; forwards $main_inv525
(assert
  (forall (($i7567193 Int) ($sn7577194 Int))
    (=> (and (<= $i7567193 8)
             ($main_inv525 $i7567193 $sn7577194))
        ($main_inv525 (+ $i7567193 1) (+ $sn7577194 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7577196 Int) ($i7567195 Int))
    (=> (and ($main_sum525 $i7567195 $sn7577196))
        ($__VERIFIER_assert_pre (ite (or (= $sn7577196 (* 8 2)) (= $sn7577196 0)) 1 0)))))

(check-sat)
