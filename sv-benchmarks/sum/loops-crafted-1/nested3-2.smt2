(set-logic HORN)

(declare-fun $__VERIFIER_assert_if597 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum206 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv206 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv204 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum204 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv205 (Int Int Int Int) Bool)
(declare-fun $main_sum205 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14995 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14995))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if597 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14996 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if597 cond cond14996))
        (__VERIFIER_assert cond14996))))

; loop entry $main_inv204
(assert
  (forall (($x578 Int) ($y579 Int) ($z580 Int) ($w581 Int))
    (=> (and (= $w581 0)
             (= $z580 0)
             (= $y579 0)
             (= $x578 0))
        ($main_inv204 $x578 $y579 $z580 $w581))))

; loop term $main_sum204
(assert
  (forall (($x57814997 Int) ($y57914998 Int) ($z58014999 Int) ($w58115000 Int))
    (=> (and (not (< $x57814997 268435455)))
        ($main_sum204 $x57814997 $y57914998 $z58014999 $w58115000 $x57814997 $y57914998 $z58014999 $w58115000))))

; loop entry $main_inv205
(assert
  (forall (($x57814997 Int) ($z58014999 Int) ($w58115000 Int) ($y57914998 Int))
    (=> (and (< $x57814997 268435455)
             ($main_inv204 $x57814997 $y57914998 $z58014999 $w58115000))
        ($main_inv205 $x57814997 0 $z58014999 $w58115000))))

; loop term $main_sum205
(assert
  (forall (($x57815001 Int) ($y57915002 Int) ($z58015003 Int) ($w58115004 Int))
    (=> (and (not (< $y57915002 268435455)))
        ($main_sum205 $x57815001 $y57915002 $z58015003 $w58115004 $x57815001 $y57915002 $z58015003 $w58115004))))

; loop entry $main_inv206
(assert
  (forall (($x57815001 Int) ($y57915002 Int) ($w58115004 Int) ($z58015003 Int))
    (=> (and (< $y57915002 268435455)
             ($main_inv205 $x57815001 $y57915002 $z58015003 $w58115004))
        ($main_inv206 $x57815001 $y57915002 0 $w58115004))))

; loop term $main_sum206
(assert
  (forall (($x57815005 Int) ($y57915006 Int) ($z58015007 Int) ($w58115008 Int))
    (=> (and (not (< $z58015007 268435455)))
        ($main_sum206 $x57815005 $y57915006 $z58015007 $w58115008 $x57815005 $y57915006 $z58015007 $w58115008))))

; forwards $main_inv206
(assert
  (forall (($x57815005 Int) ($y57915006 Int) ($z58015007 Int) ($w58115008 Int))
    (=> (and (< $z58015007 268435455)
             ($main_inv206 $x57815005 $y57915006 $z58015007 $w58115008))
        ($main_inv206 $x57815005 $y57915006 (+ $z58015007 1) $w58115008))))

; backwards $main_sum206
(assert
  (forall (($x57815005 Int) ($z58015011 Int) ($w58115012 Int) ($y57915010 Int) ($z58015007 Int) ($w58115008 Int) ($y57915006 Int) ($x57815009 Int))
    (=> (and ($main_sum206 $x57815005 $y57915006 (+ $z58015007 1) $w58115008 $x57815009 $y57915010 $z58015011 $w58115012)
             (< $z58015007 268435455))
        ($main_sum206 $x57815005 $y57915006 $z58015007 $w58115008 $x57815009 $y57915010 $z58015011 $w58115012))))

; __VERIFIER_assert precondition
(assert
  (forall (($w58115016 Int) ($y57915014 Int) ($z58015003 Int) ($w58115004 Int) ($x57815013 Int) ($z58015015 Int) ($x57815001 Int) ($y57915002 Int))
    (=> (and ($main_sum206 $x57815001 $y57915002 0 $w58115004 $x57815013 $y57915014 $z58015015 $w58115016)
             (< $y57915002 268435455)
             ($main_inv205 $x57815001 $y57915002 $z58015003 $w58115004))
        ($__VERIFIER_assert_pre (ite (= (mod $z58015015 4) 0) 1 0)))))

; forwards $main_inv205
(assert
  (forall (($w58115016 Int) ($y57915014 Int) ($z58015003 Int) ($w58115004 Int) ($x57815013 Int) ($z58015015 Int) ($x57815001 Int) ($y57915002 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $z58015015 4) 0) 1 0))
             ($main_sum206 $x57815001 $y57915002 0 $w58115004 $x57815013 $y57915014 $z58015015 $w58115016)
             (< $y57915002 268435455)
             ($main_inv205 $x57815001 $y57915002 $z58015003 $w58115004))
        ($main_inv205 $x57815013 (+ $y57915014 1) $z58015015 $w58115016))))

; backwards $main_sum205
(assert
  (forall (($w58115016 Int) ($y57915014 Int) ($z58015003 Int) ($z58015019 Int) ($x57815017 Int) ($w58115020 Int) ($y57915018 Int) ($w58115004 Int) ($x57815013 Int) ($z58015015 Int) ($x57815001 Int) ($y57915002 Int))
    (=> (and ($main_sum205 $x57815013 (+ $y57915014 1) $z58015015 $w58115016 $x57815017 $y57915018 $z58015019 $w58115020)
             (__VERIFIER_assert (ite (= (mod $z58015015 4) 0) 1 0))
             ($main_sum206 $x57815001 $y57915002 0 $w58115004 $x57815013 $y57915014 $z58015015 $w58115016)
             (< $y57915002 268435455))
        ($main_sum205 $x57815001 $y57915002 $z58015003 $w58115004 $x57815017 $y57915018 $z58015019 $w58115020))))

; __VERIFIER_assert precondition
(assert
  (forall (($x57814997 Int) ($w58115024 Int) ($z58014999 Int) ($z58015023 Int) ($w58115000 Int) ($y57914998 Int) ($y57915022 Int) ($x57815021 Int))
    (=> (and ($main_sum205 $x57814997 0 $z58014999 $w58115000 $x57815021 $y57915022 $z58015023 $w58115024)
             (< $x57814997 268435455)
             ($main_inv204 $x57814997 $y57914998 $z58014999 $w58115000))
        ($__VERIFIER_assert_pre (ite (= (mod $y57915022 2) 0) 1 0)))))

; forwards $main_inv204
(assert
  (forall (($x57814997 Int) ($w58115024 Int) ($z58014999 Int) ($z58015023 Int) ($w58115000 Int) ($y57914998 Int) ($y57915022 Int) ($x57815021 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $y57915022 2) 0) 1 0))
             ($main_sum205 $x57814997 0 $z58014999 $w58115000 $x57815021 $y57915022 $z58015023 $w58115024)
             (< $x57814997 268435455)
             ($main_inv204 $x57814997 $y57914998 $z58014999 $w58115000))
        ($main_inv204 (+ $x57815021 1) $y57915022 $z58015023 $w58115024))))

; backwards $main_sum204
(assert
  (forall (($x57815025 Int) ($z58015027 Int) ($x57814997 Int) ($w58115024 Int) ($z58014999 Int) ($z58015023 Int) ($w58115000 Int) ($y57914998 Int) ($y57915022 Int) ($x57815021 Int) ($y57915026 Int) ($w58115028 Int))
    (=> (and ($main_sum204 (+ $x57815021 1) $y57915022 $z58015023 $w58115024 $x57815025 $y57915026 $z58015027 $w58115028)
             (__VERIFIER_assert (ite (= (mod $y57915022 2) 0) 1 0))
             ($main_sum205 $x57814997 0 $z58014999 $w58115000 $x57815021 $y57915022 $z58015023 $w58115024)
             (< $x57814997 268435455))
        ($main_sum204 $x57814997 $y57914998 $z58014999 $w58115000 $x57815025 $y57915026 $z58015027 $w58115028))))

; __VERIFIER_assert precondition
(assert
  (forall (($z580 Int) ($y579 Int) ($z58015031 Int) ($w58115032 Int) ($x578 Int) ($w581 Int) ($x57815029 Int) ($y57915030 Int))
    (=> (and ($main_sum204 $x578 $y579 $z580 $w581 $x57815029 $y57915030 $z58015031 $w58115032)
             (= $w581 0)
             (= $z580 0)
             (= $y579 0)
             (= $x578 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x57815029 2) 0) 1 0)))))

(check-sat)
