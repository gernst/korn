(set-logic HORN)

(declare-fun $main_inv283 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv279 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum284 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum285 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum280 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if78 (Int) Bool)
(declare-fun $main_sum282 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv282 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv281 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum281 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv280 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv284 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv278 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv285 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum279 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum283 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum278 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3981 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3981))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if78 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3982 Int))
    (=> (and ($__VERIFIER_assert_if78 cond3982))
        (__VERIFIER_assert cond3982))))

; loop entry $main_inv278
(assert
  (forall (($a355 (Array Int Int)) ($i356 Int) ($x357 Int))
    (=> (and (= $i356 0))
        ($main_inv278 $a355 $i356 $x357))))

; loop term $main_sum278
(assert
  (forall (($a3553983 (Array Int Int)) ($i3563984 Int) ($x3573985 Int))
    (=> (and (not (< $i3563984 100000))
             ($main_inv278 $a3553983 $i3563984 $x3573985))
        ($main_sum278 $a3553983 $i3563984 $x3573985))))

; forwards $main_inv278
(assert
  (forall (($a3553983 (Array Int Int)) ($i3563984 Int) ($x3573985 Int))
    (=> (and (< $i3563984 100000)
             ($main_inv278 $a3553983 $i3563984 $x3573985))
        ($main_inv278 (store $a3553983 $i3563984 42) (+ $i3563984 1) $x3573985))))

; loop entry $main_inv279
(assert
  (forall (($a3553986 (Array Int Int)) ($x3573988 Int) ($i3563987 Int))
    (=> (and ($main_sum278 $a3553986 $i3563987 $x3573988))
        ($main_inv279 $a3553986 0 $x3573988))))

; loop term $main_sum279
(assert
  (forall (($a3553989 (Array Int Int)) ($i3563990 Int) ($x3573991 Int))
    (=> (and (not (< $i3563990 100000))
             ($main_inv279 $a3553989 $i3563990 $x3573991))
        ($main_sum279 $a3553989 $i3563990 $x3573991))))

; forwards $main_inv279
(assert
  (forall (($a3553989 (Array Int Int)) ($i3563990 Int) ($x3573991 Int))
    (=> (and (< $i3563990 100000)
             ($main_inv279 $a3553989 $i3563990 $x3573991))
        ($main_inv279 (store $a3553989 $i3563990 43) (+ $i3563990 1) $x3573991))))

; loop entry $main_inv280
(assert
  (forall (($a3553992 (Array Int Int)) ($x3573994 Int) ($i3563993 Int))
    (=> (and ($main_sum279 $a3553992 $i3563993 $x3573994))
        ($main_inv280 $a3553992 0 $x3573994))))

; loop term $main_sum280
(assert
  (forall (($a3553995 (Array Int Int)) ($i3563996 Int) ($x3573997 Int))
    (=> (and (not (< $i3563996 100000))
             ($main_inv280 $a3553995 $i3563996 $x3573997))
        ($main_sum280 $a3553995 $i3563996 $x3573997))))

; forwards $main_inv280
(assert
  (forall (($a3553995 (Array Int Int)) ($i3563996 Int) ($x3573997 Int))
    (=> (and (< $i3563996 100000)
             ($main_inv280 $a3553995 $i3563996 $x3573997))
        ($main_inv280 (store $a3553995 $i3563996 44) (+ $i3563996 1) $x3573997))))

; loop entry $main_inv281
(assert
  (forall (($a3553998 (Array Int Int)) ($x3574000 Int) ($i3563999 Int))
    (=> (and ($main_sum280 $a3553998 $i3563999 $x3574000))
        ($main_inv281 $a3553998 0 $x3574000))))

; loop term $main_sum281
(assert
  (forall (($a3554001 (Array Int Int)) ($i3564002 Int) ($x3574003 Int))
    (=> (and (not (< $i3564002 100000))
             ($main_inv281 $a3554001 $i3564002 $x3574003))
        ($main_sum281 $a3554001 $i3564002 $x3574003))))

; forwards $main_inv281
(assert
  (forall (($a3554001 (Array Int Int)) ($i3564002 Int) ($x3574003 Int))
    (=> (and (< $i3564002 100000)
             ($main_inv281 $a3554001 $i3564002 $x3574003))
        ($main_inv281 (store $a3554001 $i3564002 45) (+ $i3564002 1) $x3574003))))

; loop entry $main_inv282
(assert
  (forall (($a3554004 (Array Int Int)) ($x3574006 Int) ($i3564005 Int))
    (=> (and ($main_sum281 $a3554004 $i3564005 $x3574006))
        ($main_inv282 $a3554004 0 $x3574006))))

; loop term $main_sum282
(assert
  (forall (($a3554007 (Array Int Int)) ($i3564008 Int) ($x3574009 Int))
    (=> (and (not (< $i3564008 100000))
             ($main_inv282 $a3554007 $i3564008 $x3574009))
        ($main_sum282 $a3554007 $i3564008 $x3574009))))

; forwards $main_inv282
(assert
  (forall (($a3554007 (Array Int Int)) ($i3564008 Int) ($x3574009 Int))
    (=> (and (< $i3564008 100000)
             ($main_inv282 $a3554007 $i3564008 $x3574009))
        ($main_inv282 (store $a3554007 $i3564008 46) (+ $i3564008 1) $x3574009))))

; loop entry $main_inv283
(assert
  (forall (($a3554010 (Array Int Int)) ($x3574012 Int) ($i3564011 Int))
    (=> (and ($main_sum282 $a3554010 $i3564011 $x3574012))
        ($main_inv283 $a3554010 0 $x3574012))))

; loop term $main_sum283
(assert
  (forall (($a3554013 (Array Int Int)) ($i3564014 Int) ($x3574015 Int))
    (=> (and (not (< $i3564014 100000))
             ($main_inv283 $a3554013 $i3564014 $x3574015))
        ($main_sum283 $a3554013 $i3564014 $x3574015))))

; forwards $main_inv283
(assert
  (forall (($a3554013 (Array Int Int)) ($i3564014 Int) ($x3574015 Int))
    (=> (and (< $i3564014 100000)
             ($main_inv283 $a3554013 $i3564014 $x3574015))
        ($main_inv283 (store $a3554013 $i3564014 47) (+ $i3564014 1) $x3574015))))

; loop entry $main_inv284
(assert
  (forall (($a3554016 (Array Int Int)) ($x3574018 Int) ($i3564017 Int))
    (=> (and ($main_sum283 $a3554016 $i3564017 $x3574018))
        ($main_inv284 $a3554016 0 $x3574018))))

; loop term $main_sum284
(assert
  (forall (($a3554019 (Array Int Int)) ($i3564020 Int) ($x3574021 Int))
    (=> (and (not (< $i3564020 100000))
             ($main_inv284 $a3554019 $i3564020 $x3574021))
        ($main_sum284 $a3554019 $i3564020 $x3574021))))

; forwards $main_inv284
(assert
  (forall (($a3554019 (Array Int Int)) ($i3564020 Int) ($x3574021 Int))
    (=> (and (< $i3564020 100000)
             ($main_inv284 $a3554019 $i3564020 $x3574021))
        ($main_inv284 (store $a3554019 $i3564020 48) (+ $i3564020 1) $x3574021))))

; loop entry $main_inv285
(assert
  (forall (($a3554022 (Array Int Int)) ($i3564023 Int) ($x3574024 Int))
    (=> (and ($main_sum284 $a3554022 $i3564023 $x3574024))
        ($main_inv285 $a3554022 $i3564023 0))))

; loop term $main_sum285
(assert
  (forall (($a3554025 (Array Int Int)) ($i3564026 Int) ($x3574027 Int))
    (=> (and (not (< $x3574027 100000))
             ($main_inv285 $a3554025 $i3564026 $x3574027))
        ($main_sum285 $a3554025 $i3564026 $x3574027))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3554025 (Array Int Int)) ($x3574027 Int) ($i3564026 Int))
    (=> (and (< $x3574027 100000)
             ($main_inv285 $a3554025 $i3564026 $x3574027))
        ($__VERIFIER_assert_pre (ite (= (select $a3554025 $x3574027) 48) 1 0)))))

; forwards $main_inv285
(assert
  (forall (($a3554025 (Array Int Int)) ($i3564026 Int) ($x3574027 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3554025 $x3574027) 48) 1 0))
             (< $x3574027 100000)
             ($main_inv285 $a3554025 $i3564026 $x3574027))
        ($main_inv285 $a3554025 $i3564026 (+ $x3574027 1)))))

(check-sat)
