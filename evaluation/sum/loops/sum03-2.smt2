(set-logic HORN)

(declare-fun $__VERIFIER_assert_if373 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum523 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv523 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10005 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10005))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if373 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10006 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if373 cond cond10006))
        (__VERIFIER_assert cond10006))))

; loop entry $main_inv523
(assert
  (forall (($x753 Int) ($sn750 Int) ($uint10007 Int) ($n1752 Int) ($loop1751 Int) ($uint10008 Int))
    (=> (and (= $x753 0)
             (= $n1752 $uint10008)
             (<= 0 $uint10008)
             (<= $uint10008 4294967295)
             (= $loop1751 $uint10007)
             (<= 0 $uint10007)
             (<= $uint10007 4294967295)
             (= $sn750 0))
        ($main_inv523 $sn750 $loop1751 $n1752 $x753))))

; loop term $main_sum523
(assert
  (forall (($sn75010009 Int) ($loop175110010 Int) ($n175210011 Int) ($x75310012 Int))
    (=> (and (= 1 0))
        ($main_sum523 $sn75010009 $loop175110010 $n175210011 $x75310012 $sn75010009 $loop175110010 $n175210011 $x75310012))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn75010009 Int) ($x75310012 Int) ($loop175110010 Int) ($n175210011 Int))
    (=> (and (not (= 1 0))
             ($main_inv523 $sn75010009 $loop175110010 $n175210011 $x75310012))
        ($__VERIFIER_assert_pre (ite (or (= (+ $sn75010009 2) (* (+ $x75310012 1) 2)) (= (+ $sn75010009 2) 0)) 1 0)))))

; forwards $main_inv523
(assert
  (forall (($sn75010009 Int) ($loop175110010 Int) ($n175210011 Int) ($x75310012 Int))
    (=> (and (__VERIFIER_assert (ite (or (= (+ $sn75010009 2) (* (+ $x75310012 1) 2)) (= (+ $sn75010009 2) 0)) 1 0))
             (not (= 1 0))
             ($main_inv523 $sn75010009 $loop175110010 $n175210011 $x75310012))
        ($main_inv523 (+ $sn75010009 2) $loop175110010 $n175210011 (+ $x75310012 1)))))

; backwards $main_sum523
(assert
  (forall (($sn75010009 Int) ($n175210011 Int) ($loop175110010 Int) ($x75310012 Int) ($sn75010013 Int) ($x75310016 Int) ($n175210015 Int) ($loop175110014 Int))
    (=> (and ($main_sum523 (+ $sn75010009 2) $loop175110010 $n175210011 (+ $x75310012 1) $sn75010013 $loop175110014 $n175210015 $x75310016)
             (__VERIFIER_assert (ite (or (= (+ $sn75010009 2) (* (+ $x75310012 1) 2)) (= (+ $sn75010009 2) 0)) 1 0))
             (not (= 1 0)))
        ($main_sum523 $sn75010009 $loop175110010 $n175210011 $x75310012 $sn75010013 $loop175110014 $n175210015 $x75310016))))

(check-sat)
