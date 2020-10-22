(set-logic HORN)

(declare-fun $main_sum127 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if524 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv127 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13983 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13983))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if524 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13984 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if524 cond cond13984))
        (__VERIFIER_assert cond13984))))

; loop entry $main_inv127
(assert
  (forall (($y456 Int) ($z457 Int) ($x455 Int) ($w454 Int) ($uint13985 Int))
    (=> (and (= $z457 (+ $x455 1))
             (= $y456 (+ $w454 1))
             (= $x455 $w454)
             (= $w454 $uint13985)
             (<= 0 $uint13985)
             (<= $uint13985 4294967295))
        ($main_inv127 $w454 $x455 $y456 $z457))))

; loop term $main_sum127
(assert
  (forall (($x45513987 Int) ($uint13990 Int) ($w45413986 Int) ($y45613988 Int) ($z45713989 Int))
    (=> (and (= $uint13990 0)
             (<= 0 $uint13990)
             (<= $uint13990 4294967295))
        ($main_sum127 $w45413986 $x45513987 $y45613988 $z45713989 $w45413986 $x45513987 $y45613988 $z45713989))))

; forwards $main_inv127
(assert
  (forall (($x45513987 Int) ($uint13990 Int) ($w45413986 Int) ($y45613988 Int) ($z45713989 Int))
    (=> (and (not (= $uint13990 0))
             (<= 0 $uint13990)
             (<= $uint13990 4294967295)
             ($main_inv127 $w45413986 $x45513987 $y45613988 $z45713989))
        ($main_inv127 $w45413986 $x45513987 (+ $y45613988 1) (+ $z45713989 1)))))

; backwards $main_sum127
(assert
  (forall (($z45713994 Int) ($uint13990 Int) ($w45413991 Int) ($x45513992 Int) ($w45413986 Int) ($x45513987 Int) ($y45613993 Int) ($y45613988 Int) ($z45713989 Int))
    (=> (and ($main_sum127 $w45413986 $x45513987 (+ $y45613988 1) (+ $z45713989 1) $w45413991 $x45513992 $y45613993 $z45713994)
             (not (= $uint13990 0))
             (<= 0 $uint13990)
             (<= $uint13990 4294967295))
        ($main_sum127 $w45413986 $x45513987 $y45613988 $z45713989 $w45413991 $x45513992 $y45613993 $z45713994))))

; __VERIFIER_assert precondition
(assert
  (forall (($y456 Int) ($y45613997 Int) ($w45413995 Int) ($z457 Int) ($z45713998 Int) ($x45513996 Int) ($x455 Int) ($w454 Int) ($uint13985 Int))
    (=> (and ($main_sum127 $w454 $x455 $y456 $z457 $w45413995 $x45513996 $y45613997 $z45713998)
             (= $z457 (+ $x455 1))
             (= $y456 (+ $w454 1))
             (= $x455 $w454)
             (= $w454 $uint13985)
             (<= 0 $uint13985)
             (<= $uint13985 4294967295))
        ($__VERIFIER_assert_pre (ite (= $y45613997 $z45713998) 1 0)))))

(check-sat)
