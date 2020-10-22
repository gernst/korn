(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum523 (Int Int Int Int) Bool)
(declare-fun $main_inv523 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if373 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7171 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7171))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if373 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7172 Int))
    (=> (and ($__VERIFIER_assert_if373 cond7172))
        (__VERIFIER_assert cond7172))))

; loop entry $main_inv523
(assert
  (forall (($x753 Int) ($sn750 Int) ($uint7174 Int) ($n1752 Int) ($uint7173 Int) ($loop1751 Int))
    (=> (and (= $x753 0)
             (= $n1752 $uint7174)
             (<= 0 $uint7174)
             (<= $uint7174 4294967295)
             (= $loop1751 $uint7173)
             (<= 0 $uint7173)
             (<= $uint7173 4294967295)
             (= $sn750 0))
        ($main_inv523 $sn750 $loop1751 $n1752 $x753))))

; loop term $main_sum523
(assert
  (forall (($sn7507175 Int) ($loop17517176 Int) ($n17527177 Int) ($x7537178 Int))
    (=> (and (= 1 0)
             ($main_inv523 $sn7507175 $loop17517176 $n17527177 $x7537178))
        ($main_sum523 $sn7507175 $loop17517176 $n17527177 $x7537178))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn7507175 Int) ($x7537178 Int) ($loop17517176 Int) ($n17527177 Int))
    (=> (and (not (= 1 0))
             ($main_inv523 $sn7507175 $loop17517176 $n17527177 $x7537178))
        ($__VERIFIER_assert_pre (ite (or (= (+ $sn7507175 2) (* (+ $x7537178 1) 2)) (= (+ $sn7507175 2) 0)) 1 0)))))

; forwards $main_inv523
(assert
  (forall (($sn7507175 Int) ($loop17517176 Int) ($n17527177 Int) ($x7537178 Int))
    (=> (and (__VERIFIER_assert (ite (or (= (+ $sn7507175 2) (* (+ $x7537178 1) 2)) (= (+ $sn7507175 2) 0)) 1 0))
             (not (= 1 0))
             ($main_inv523 $sn7507175 $loop17517176 $n17527177 $x7537178))
        ($main_inv523 (+ $sn7507175 2) $loop17517176 $n17527177 (+ $x7537178 1)))))

(check-sat)
