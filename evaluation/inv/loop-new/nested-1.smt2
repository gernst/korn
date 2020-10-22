(set-logic HORN)

(declare-fun $main_inv511 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum512 (Int Int Int Int Int) Bool)
(declare-fun $main_if355 (Int Int Int Int Int) Bool)
(declare-fun $main_sum511 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if354 (Int) Bool)
(declare-fun $main_if356 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if353 (Int) Bool)
(declare-fun $main_inv512 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if353 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6966 Int))
    (=> (and ($assume_abort_if_not_if353 cond6966))
        (assume_abort_if_not cond6966))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6967 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6967))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if354 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6968 Int))
    (=> (and ($__VERIFIER_assert_if354 cond6968))
        (__VERIFIER_assert cond6968))))

; if else
(assert
  (forall (($k723 Int) ($i724 Int) ($j725 Int) ($m722 Int) ($int6970 Int) ($n721 Int) ($int6969 Int))
    (=> (and (<= 10 $n721)
             (<= $n721 10000)
             (= $k723 0)
             (= $m722 $int6970)
             (<= (- 2147483648) $int6970)
             (<= $int6970 2147483647)
             (= $n721 $int6969)
             (<= (- 2147483648) $int6969)
             (<= $int6969 2147483647))
        ($main_if355 $n721 $m722 $k723 $i724 $j725))))

; if else
(assert
  (forall (($i7246974 Int) ($m7226972 Int) ($k7236973 Int) ($j7256975 Int) ($n7216971 Int))
    (=> (and (<= 10 $m7226972)
             (<= $m7226972 10000)
             ($main_if355 $n7216971 $m7226972 $k7236973 $i7246974 $j7256975))
        ($main_if356 $n7216971 $m7226972 $k7236973 $i7246974 $j7256975))))

; loop entry $main_inv511
(assert
  (forall (($i7246979 Int) ($m7226977 Int) ($n7216976 Int) ($j7256980 Int) ($k7236978 Int))
    (=> (and ($main_if356 $n7216976 $m7226977 $k7236978 $i7246979 $j7256980))
        ($main_inv511 $n7216976 $m7226977 $k7236978 0 $j7256980))))

; loop term $main_sum511
(assert
  (forall (($j7256985 Int) ($i7246984 Int) ($n7216981 Int) ($k7236983 Int) ($m7226982 Int))
    (=> (and (not (< $i7246984 $n7216981))
             ($main_inv511 $n7216981 $m7226982 $k7236983 $i7246984 $j7256985))
        ($main_sum511 $n7216981 $m7226982 $k7236983 $i7246984 $j7256985))))

; loop entry $main_inv512
(assert
  (forall (($j7256985 Int) ($i7246984 Int) ($n7216981 Int) ($k7236983 Int) ($m7226982 Int))
    (=> (and (< $i7246984 $n7216981)
             ($main_inv511 $n7216981 $m7226982 $k7236983 $i7246984 $j7256985))
        ($main_inv512 $n7216981 $m7226982 $k7236983 $i7246984 0))))

; loop term $main_sum512
(assert
  (forall (($j7256990 Int) ($n7216986 Int) ($m7226987 Int) ($k7236988 Int) ($i7246989 Int))
    (=> (and (not (< $j7256990 $m7226987))
             ($main_inv512 $n7216986 $m7226987 $k7236988 $i7246989 $j7256990))
        ($main_sum512 $n7216986 $m7226987 $k7236988 $i7246989 $j7256990))))

; forwards $main_inv512
(assert
  (forall (($j7256990 Int) ($n7216986 Int) ($m7226987 Int) ($k7236988 Int) ($i7246989 Int))
    (=> (and (< $j7256990 $m7226987)
             ($main_inv512 $n7216986 $m7226987 $k7236988 $i7246989 $j7256990))
        ($main_inv512 $n7216986 $m7226987 (+ $k7236988 1) $i7246989 (+ $j7256990 1)))))

; forwards $main_inv511
(assert
  (forall (($n7216991 Int) ($i7246994 Int) ($k7236993 Int) ($m7226992 Int) ($j7256995 Int))
    (=> (and ($main_sum512 $n7216991 $m7226992 $k7236993 $i7246994 $j7256995))
        ($main_inv511 $n7216991 $m7226992 $k7236993 (+ $i7246994 1) $j7256995))))

; __VERIFIER_assert precondition
(assert
  (forall (($k7236998 Int) ($i7246999 Int) ($n7216996 Int) ($m7226997 Int) ($j7257000 Int))
    (=> (and ($main_sum511 $n7216996 $m7226997 $k7236998 $i7246999 $j7257000))
        ($__VERIFIER_assert_pre (ite (>= $k7236998 100) 1 0)))))

(check-sat)
