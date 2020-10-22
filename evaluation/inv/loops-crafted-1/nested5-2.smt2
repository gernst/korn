(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if599 (Int) Bool)
(declare-fun $main_inv212 (Int Int Int Int Int) Bool)
(declare-fun $main_inv215 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum216 (Int Int Int Int Int) Bool)
(declare-fun $main_inv216 (Int Int Int Int Int) Bool)
(declare-fun $main_inv213 (Int Int Int Int Int) Bool)
(declare-fun $main_sum212 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum214 (Int Int Int Int Int) Bool)
(declare-fun $main_sum213 (Int Int Int Int Int) Bool)
(declare-fun $main_sum215 (Int Int Int Int Int) Bool)
(declare-fun $main_inv214 (Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13970 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13970))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if599 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13971 Int))
    (=> (and ($__VERIFIER_assert_if599 cond13971))
        (__VERIFIER_assert cond13971))))

; loop entry $main_inv212
(assert
  (forall (($v591 Int) ($y588 Int) ($x587 Int) ($z589 Int) ($w590 Int))
    (=> (and (= $v591 0)
             (= $w590 0)
             (= $z589 0)
             (= $y588 0)
             (= $x587 0))
        ($main_inv212 $x587 $y588 $z589 0 $v591))))

; loop term $main_sum212
(assert
  (forall (($x58713972 Int) ($w59013975 Int) ($v59113976 Int) ($z58913974 Int) ($y58813973 Int))
    (=> (and (not (< $w59013975 268435455))
             ($main_inv212 $x58713972 $y58813973 $z58913974 $w59013975 $v59113976))
        ($main_sum212 $x58713972 $y58813973 $z58913974 $w59013975 $v59113976))))

; loop entry $main_inv213
(assert
  (forall (($x58713972 Int) ($w59013975 Int) ($v59113976 Int) ($z58913974 Int) ($y58813973 Int))
    (=> (and (< $w59013975 268435455)
             ($main_inv212 $x58713972 $y58813973 $z58913974 $w59013975 $v59113976))
        ($main_inv213 0 $y58813973 $z58913974 $w59013975 $v59113976))))

; loop term $main_sum213
(assert
  (forall (($x58713977 Int) ($w59013980 Int) ($v59113981 Int) ($y58813978 Int) ($z58913979 Int))
    (=> (and (not (< $x58713977 10))
             ($main_inv213 $x58713977 $y58813978 $z58913979 $w59013980 $v59113981))
        ($main_sum213 $x58713977 $y58813978 $z58913979 $w59013980 $v59113981))))

; loop entry $main_inv214
(assert
  (forall (($x58713977 Int) ($w59013980 Int) ($v59113981 Int) ($y58813978 Int) ($z58913979 Int))
    (=> (and (< $x58713977 10)
             ($main_inv213 $x58713977 $y58813978 $z58913979 $w59013980 $v59113981))
        ($main_inv214 $x58713977 0 $z58913979 $w59013980 $v59113981))))

; loop term $main_sum214
(assert
  (forall (($z58913984 Int) ($y58813983 Int) ($x58713982 Int) ($w59013985 Int) ($v59113986 Int))
    (=> (and (not (< $y58813983 10))
             ($main_inv214 $x58713982 $y58813983 $z58913984 $w59013985 $v59113986))
        ($main_sum214 $x58713982 $y58813983 $z58913984 $w59013985 $v59113986))))

; loop entry $main_inv215
(assert
  (forall (($z58913984 Int) ($y58813983 Int) ($x58713982 Int) ($w59013985 Int) ($v59113986 Int))
    (=> (and (< $y58813983 10)
             ($main_inv214 $x58713982 $y58813983 $z58913984 $w59013985 $v59113986))
        ($main_inv215 $x58713982 $y58813983 0 $w59013985 $v59113986))))

; loop term $main_sum215
(assert
  (forall (($x58713987 Int) ($v59113991 Int) ($y58813988 Int) ($z58913989 Int) ($w59013990 Int))
    (=> (and (not (< $z58913989 10))
             ($main_inv215 $x58713987 $y58813988 $z58913989 $w59013990 $v59113991))
        ($main_sum215 $x58713987 $y58813988 $z58913989 $w59013990 $v59113991))))

; loop entry $main_inv216
(assert
  (forall (($x58713987 Int) ($v59113991 Int) ($y58813988 Int) ($z58913989 Int) ($w59013990 Int))
    (=> (and (< $z58913989 10)
             ($main_inv215 $x58713987 $y58813988 $z58913989 $w59013990 $v59113991))
        ($main_inv216 $x58713987 $y58813988 $z58913989 $w59013990 0))))

; loop term $main_sum216
(assert
  (forall (($y58813993 Int) ($z58913994 Int) ($v59113996 Int) ($x58713992 Int) ($w59013995 Int))
    (=> (and (not (< $v59113996 268435455))
             ($main_inv216 $x58713992 $y58813993 $z58913994 $w59013995 $v59113996))
        ($main_sum216 $x58713992 $y58813993 $z58913994 $w59013995 $v59113996))))

; forwards $main_inv216
(assert
  (forall (($y58813993 Int) ($z58913994 Int) ($v59113996 Int) ($x58713992 Int) ($w59013995 Int))
    (=> (and (< $v59113996 268435455)
             ($main_inv216 $x58713992 $y58813993 $z58913994 $w59013995 $v59113996))
        ($main_inv216 $x58713992 $y58813993 $z58913994 $w59013995 (+ $v59113996 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x58713997 Int) ($y58813998 Int) ($z58913999 Int) ($w59014000 Int) ($v59114001 Int))
    (=> (and ($main_sum216 $x58713997 $y58813998 $z58913999 $w59014000 $v59114001))
        ($__VERIFIER_assert_pre (ite (= (mod $v59114001 4) 0) 1 0)))))

; forwards $main_inv215
(assert
  (forall (($x58713997 Int) ($y58813998 Int) ($z58913999 Int) ($w59014000 Int) ($v59114001 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $v59114001 4) 0) 1 0))
             ($main_sum216 $x58713997 $y58813998 $z58913999 $w59014000 $v59114001))
        ($main_inv215 $x58713997 $y58813998 (+ $z58913999 1) $w59014000 $v59114001))))

; forwards $main_inv214
(assert
  (forall (($y58814003 Int) ($w59014005 Int) ($x58714002 Int) ($v59114006 Int) ($z58914004 Int))
    (=> (and ($main_sum215 $x58714002 $y58814003 $z58914004 $w59014005 $v59114006))
        ($main_inv214 $x58714002 (+ $y58814003 1) $z58914004 $w59014005 $v59114006))))

; forwards $main_inv213
(assert
  (forall (($v59114011 Int) ($z58914009 Int) ($x58714007 Int) ($w59014010 Int) ($y58814008 Int))
    (=> (and ($main_sum214 $x58714007 $y58814008 $z58914009 $w59014010 $v59114011))
        ($main_inv213 (+ $x58714007 1) $y58814008 $z58914009 $w59014010 $v59114011))))

; forwards $main_inv212
(assert
  (forall (($w59014015 Int) ($v59114016 Int) ($x58714012 Int) ($y58814013 Int) ($z58914014 Int))
    (=> (and ($main_sum213 $x58714012 $y58814013 $z58914014 $w59014015 $v59114016))
        ($main_inv212 $x58714012 $y58814013 $z58914014 (+ $w59014015 1) $v59114016))))

(check-sat)
