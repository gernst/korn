(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv233 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if665 (Int Int) Bool)
(declare-fun $main_if668 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum233 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if667 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if666 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if665 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15987 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if665 cond cond15987))
        (assume_abort_if_not cond15987))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15988 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15988))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if666 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15989 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if666 cond cond15989))
        (__VERIFIER_assert cond15989))))

; if else
(assert
  (forall (($int15990 Int) ($i673 Int) ($y675 Int) ($n676 Int) ($x674 Int))
    (=> (and (> $n676 0)
             (= $n676 $int15990)
             (<= (- 2147483648) $int15990)
             (<= $int15990 2147483647)
             (= $y675 0)
             (= $x674 0)
             (= $i673 0))
        ($main_if667 $i673 $x674 $y675 $n676 $i673 $x674 $y675 $n676))))

; loop entry $main_inv233
(assert
  (forall (($i673 Int) ($y675 Int) ($y67515993 Int) ($n676 Int) ($n67615994 Int) ($x674 Int) ($i67315991 Int) ($x67415992 Int))
    (=> (and ($main_if667 $i673 $x674 $y675 $n676 $i67315991 $x67415992 $y67515993 $n67615994))
        ($main_inv233 0 $x67415992 $y67515993 $n67615994))))

; loop term $main_sum233
(assert
  (forall (($i67315995 Int) ($x67415996 Int) ($y67515997 Int) ($n67615998 Int))
    (=> (and (not (< $i67315995 $n67615998)))
        ($main_sum233 $i67315995 $x67415996 $y67515997 $n67615998 $i67315995 $x67415996 $y67515997 $n67615998))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67415996 Int) ($y67515997 Int) ($i67315995 Int) ($n67615998 Int))
    (=> (and (< $i67315995 $n67615998)
             ($main_inv233 $i67315995 $x67415996 $y67515997 $n67615998))
        ($__VERIFIER_assert_pre (ite (= (- $x67415996 $y67515997) 0) 1 0)))))

; if else
(assert
  (forall (($x67415996 Int) ($n67615998 Int) ($y67515997 Int) ($int15999 Int) ($i67315995 Int))
    (=> (and (not (= $int15999 0))
             (<= (- 2147483648) $int15999)
             (<= $int15999 2147483647)
             (__VERIFIER_assert (ite (= (- $x67415996 $y67515997) 0) 1 0))
             (< $i67315995 $n67615998)
             ($main_inv233 $i67315995 $x67415996 $y67515997 $n67615998))
        ($main_if668 $i67315995 $x67415996 $y67515997 $n67615998 $i67315995 (- $x67415996 $y67515997) $int15999 $n67615998))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67415996 Int) ($n67616003 Int) ($n67615998 Int) ($y67515997 Int) ($i67315995 Int) ($x67416001 Int) ($y67516002 Int) ($i67316000 Int))
    (=> (and ($main_if668 $i67315995 $x67415996 $y67515997 $n67615998 $i67316000 $x67416001 $y67516002 $n67616003))
        ($__VERIFIER_assert_pre (ite (not (= (+ $x67416001 $y67516002) 0)) 1 0)))))

; forwards $main_inv233
(assert
  (forall (($x67415996 Int) ($n67616003 Int) ($n67615998 Int) ($y67515997 Int) ($i67315995 Int) ($x67416001 Int) ($y67516002 Int) ($i67316000 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (+ $x67416001 $y67516002) 0)) 1 0))
             ($main_if668 $i67315995 $x67415996 $y67515997 $n67615998 $i67316000 $x67416001 $y67516002 $n67616003))
        ($main_inv233 (+ $i67316000 1) (+ $x67416001 $y67516002) $y67516002 $n67616003))))

; backwards $main_sum233
(assert
  (forall (($x67415996 Int) ($n67616003 Int) ($n67615998 Int) ($n67616007 Int) ($y67515997 Int) ($y67516006 Int) ($x67416005 Int) ($i67316004 Int) ($i67315995 Int) ($x67416001 Int) ($y67516002 Int) ($i67316000 Int))
    (=> (and ($main_sum233 (+ $i67316000 1) (+ $x67416001 $y67516002) $y67516002 $n67616003 $i67316004 $x67416005 $y67516006 $n67616007)
             (__VERIFIER_assert (ite (not (= (+ $x67416001 $y67516002) 0)) 1 0))
             ($main_if668 $i67315995 $x67415996 $y67515997 $n67615998 $i67316000 $x67416001 $y67516002 $n67616003))
        ($main_sum233 $i67315995 $x67415996 $y67515997 $n67615998 $i67316004 $x67416005 $y67516006 $n67616007))))

; __VERIFIER_assert precondition
(assert
  (forall (($n67616011 Int) ($i673 Int) ($y675 Int) ($y67515993 Int) ($n676 Int) ($n67615994 Int) ($i67316008 Int) ($x674 Int) ($i67315991 Int) ($x67415992 Int) ($y67516010 Int) ($x67416009 Int))
    (=> (and ($main_sum233 0 $x67415992 $y67515993 $n67615994 $i67316008 $x67416009 $y67516010 $n67616011)
             ($main_if667 $i673 $x674 $y675 $n676 $i67315991 $x67415992 $y67515993 $n67615994))
        ($__VERIFIER_assert_pre (ite (= $x67416009 0) 1 0)))))

(check-sat)
