(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv118 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum118 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if508 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13880 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13880))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if508 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13881 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if508 cond cond13881))
        (__VERIFIER_assert cond13881))))

; loop entry $main_inv118
(assert
  (forall (($x433 Int) ($y434 Int))
    (=> (and (= $y434 1)
             (= $x433 0))
        ($main_inv118 $x433 $y434))))

; loop term $main_sum118
(assert
  (forall (($x43313882 Int) ($y43413883 Int))
    (=> (and (not (< $x43313882 6)))
        ($main_sum118 $x43313882 $y43413883 $x43313882 $y43413883))))

; forwards $main_inv118
(assert
  (forall (($x43313882 Int) ($y43413883 Int))
    (=> (and (< $x43313882 6)
             ($main_inv118 $x43313882 $y43413883))
        ($main_inv118 (+ $x43313882 1) (* $y43413883 2)))))

; backwards $main_sum118
(assert
  (forall (($x43313882 Int) ($y43413883 Int) ($x43313884 Int) ($y43413885 Int))
    (=> (and ($main_sum118 (+ $x43313882 1) (* $y43413883 2) $x43313884 $y43413885)
             (< $x43313882 6))
        ($main_sum118 $x43313882 $y43413883 $x43313884 $y43413885))))

; __VERIFIER_assert precondition
(assert
  (forall (($y43413887 Int) ($x433 Int) ($y434 Int) ($x43313886 Int))
    (=> (and ($main_sum118 $x433 $y434 $x43313886 $y43413887)
             (= $y434 1)
             (= $x433 0))
        ($__VERIFIER_assert_pre (ite (not (= $y43413887 64)) 1 0)))))

(check-sat)
