(set-logic HORN)

(declare-fun $main_if375 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if374 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv524 (Int Int) Bool)
(declare-fun $main_sum524 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7183 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7183))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if374 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7184 Int))
    (=> (and ($__VERIFIER_assert_if374 cond7184))
        (__VERIFIER_assert cond7184))))

; loop entry $main_inv524
(assert
  (forall (($sn755 Int))
    (=> (and (= $sn755 0))
        ($main_inv524 1 $sn755))))

; loop term $main_sum524
(assert
  (forall (($i7547185 Int) ($sn7557186 Int))
    (=> (and (not (<= $i7547185 8))
             ($main_inv524 $i7547185 $sn7557186))
        ($main_sum524 $i7547185 $sn7557186))))

; if then
(assert
  (forall (($i7547185 Int) ($sn7557186 Int))
    (=> (and (< $i7547185 4)
             (<= $i7547185 8)
             ($main_inv524 $i7547185 $sn7557186))
        ($main_if375 $i7547185 (+ $sn7557186 2)))))

; if else
(assert
  (forall (($i7547185 Int) ($sn7557186 Int))
    (=> (and (not (< $i7547185 4))
             (<= $i7547185 8)
             ($main_inv524 $i7547185 $sn7557186))
        ($main_if375 $i7547185 $sn7557186))))

; forwards $main_inv524
(assert
  (forall (($i7547187 Int) ($sn7557188 Int))
    (=> (and ($main_if375 $i7547187 $sn7557188))
        ($main_inv524 (+ $i7547187 1) $sn7557188))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7557190 Int) ($i7547189 Int))
    (=> (and ($main_sum524 $i7547189 $sn7557190))
        ($__VERIFIER_assert_pre (ite (or (= $sn7557190 (* 8 2)) (= $sn7557190 0)) 1 0)))))

(check-sat)
