(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if376 (Int Int) Bool)
(declare-fun $main_inv525 (Int Int) Bool)
(declare-fun $main_sum525 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10031 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10031))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if376 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10032 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if376 cond cond10032))
        (__VERIFIER_assert cond10032))))

; loop entry $main_inv525
(assert
  (forall (($sn757 Int))
    (=> (and (= $sn757 0))
        ($main_inv525 1 $sn757))))

; loop term $main_sum525
(assert
  (forall (($i75610033 Int) ($sn75710034 Int))
    (=> (and (not (<= $i75610033 8)))
        ($main_sum525 $i75610033 $sn75710034 $i75610033 $sn75710034))))

; forwards $main_inv525
(assert
  (forall (($i75610033 Int) ($sn75710034 Int))
    (=> (and (<= $i75610033 8)
             ($main_inv525 $i75610033 $sn75710034))
        ($main_inv525 (+ $i75610033 1) (+ $sn75710034 2)))))

; backwards $main_sum525
(assert
  (forall (($i75610033 Int) ($sn75710034 Int) ($i75610035 Int) ($sn75710036 Int))
    (=> (and ($main_sum525 (+ $i75610033 1) (+ $sn75710034 2) $i75610035 $sn75710036)
             (<= $i75610033 8))
        ($main_sum525 $i75610033 $sn75710034 $i75610035 $sn75710036))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn75710038 Int) ($sn757 Int) ($i75610037 Int))
    (=> (and ($main_sum525 1 $sn757 $i75610037 $sn75710038)
             (= $sn757 0))
        ($__VERIFIER_assert_pre (ite (or (= $sn75710038 (* 8 2)) (= $sn75710038 0)) 1 0)))))

(check-sat)
