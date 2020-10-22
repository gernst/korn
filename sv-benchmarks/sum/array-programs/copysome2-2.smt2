(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum430 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if155 (Int Int) Bool)
(declare-fun $main_if157 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv429 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum429 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum428 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv430 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum431 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv428 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv431 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if156 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7993 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7993))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if155 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7994 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if155 cond cond7994))
        (__VERIFIER_assert cond7994))))

; loop entry $main_inv428
(assert
  (forall (($a1532 (Array Int Int)) ($a2533 (Array Int Int)) ($a3534 (Array Int Int)) ($x537 Int))
        ($main_inv428 $a1532 $a2533 $a3534 0 150000 $x537)))

; loop term $main_sum428
(assert
  (forall (($x5378000 Int) ($a25337996 (Array Int Int)) ($a35347997 (Array Int Int)) ($i5357998 Int) ($z5367999 Int) ($a15327995 (Array Int Int)))
    (=> (and (not (< $i5357998 200000)))
        ($main_sum428 $a15327995 $a25337996 $a35347997 $i5357998 $z5367999 $x5378000 $a15327995 $a25337996 $a35347997 $i5357998 $z5367999 $x5378000))))

; forwards $main_inv428
(assert
  (forall (($int8002 Int) ($int8001 Int) ($x5378000 Int) ($int8003 Int) ($a25337996 (Array Int Int)) ($a35347997 (Array Int Int)) ($i5357998 Int) ($z5367999 Int) ($a15327995 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int8003)
             (<= $int8003 2147483647)
             (<= (- 2147483648) $int8002)
             (<= $int8002 2147483647)
             (<= (- 2147483648) $int8001)
             (<= $int8001 2147483647)
             (< $i5357998 200000)
             ($main_inv428 $a15327995 $a25337996 $a35347997 $i5357998 $z5367999 $x5378000))
        ($main_inv428 (store $a15327995 $i5357998 $int8001) (store $a25337996 $i5357998 $int8002) (store $a35347997 $i5357998 $int8003) (+ $i5357998 1) $z5367999 $x5378000))))

; backwards $main_sum428
(assert
  (forall (($z5368008 Int) ($a35348006 (Array Int Int)) ($int8001 Int) ($x5378000 Int) ($int8003 Int) ($a25337996 (Array Int Int)) ($a35347997 (Array Int Int)) ($a25338005 (Array Int Int)) ($i5357998 Int) ($z5367999 Int) ($a15328004 (Array Int Int)) ($a15327995 (Array Int Int)) ($x5378009 Int) ($int8002 Int) ($i5358007 Int))
    (=> (and ($main_sum428 (store $a15327995 $i5357998 $int8001) (store $a25337996 $i5357998 $int8002) (store $a35347997 $i5357998 $int8003) (+ $i5357998 1) $z5367999 $x5378000 $a15328004 $a25338005 $a35348006 $i5358007 $z5368008 $x5378009)
             (<= (- 2147483648) $int8003)
             (<= $int8003 2147483647)
             (<= (- 2147483648) $int8002)
             (<= $int8002 2147483647)
             (<= (- 2147483648) $int8001)
             (<= $int8001 2147483647)
             (< $i5357998 200000))
        ($main_sum428 $a15327995 $a25337996 $a35347997 $i5357998 $z5367999 $x5378000 $a15328004 $a25338005 $a35348006 $i5358007 $z5368008 $x5378009))))

; loop entry $main_inv429
(assert
  (forall (($a25338011 (Array Int Int)) ($x537 Int) ($z5368014 Int) ($a15328010 (Array Int Int)) ($a2533 (Array Int Int)) ($x5378015 Int) ($a1532 (Array Int Int)) ($i5358013 Int) ($a3534 (Array Int Int)) ($a35348012 (Array Int Int)))
    (=> (and ($main_sum428 $a1532 $a2533 $a3534 0 150000 $x537 $a15328010 $a25338011 $a35348012 $i5358013 $z5368014 $x5378015))
        ($main_inv429 $a15328010 $a25338011 $a35348012 0 $z5368014 $x5378015))))

; loop term $main_sum429
(assert
  (forall (($x5378021 Int) ($a25338017 (Array Int Int)) ($i5358019 Int) ($a35348018 (Array Int Int)) ($z5368020 Int) ($a15328016 (Array Int Int)))
    (=> (and (not (< $i5358019 200000)))
        ($main_sum429 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021))))

; if then
(assert
  (forall (($x5378021 Int) ($a25338017 (Array Int Int)) ($i5358019 Int) ($a35348018 (Array Int Int)) ($z5368020 Int) ($a15328016 (Array Int Int)))
    (=> (and (not (= $i5358019 $z5368020))
             (< $i5358019 200000)
             ($main_inv429 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021))
        ($main_if156 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328016 (store $a25338017 $i5358019 (select $a15328016 $i5358019)) $a35348018 $i5358019 $z5368020 $x5378021))))

; if else
(assert
  (forall (($x5378021 Int) ($a25338017 (Array Int Int)) ($i5358019 Int) ($a35348018 (Array Int Int)) ($z5368020 Int) ($a15328016 (Array Int Int)))
    (=> (and (= $i5358019 $z5368020)
             (< $i5358019 200000)
             ($main_inv429 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021))
        ($main_if156 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021))))

; forwards $main_inv429
(assert
  (forall (($x5378021 Int) ($i5358025 Int) ($a25338017 (Array Int Int)) ($i5358019 Int) ($a25338023 (Array Int Int)) ($a35348018 (Array Int Int)) ($z5368020 Int) ($a15328016 (Array Int Int)) ($z5368026 Int) ($a35348024 (Array Int Int)) ($x5378027 Int) ($a15328022 (Array Int Int)))
    (=> (and ($main_if156 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328022 $a25338023 $a35348024 $i5358025 $z5368026 $x5378027))
        ($main_inv429 $a15328022 $a25338023 $a35348024 (+ $i5358025 1) $z5368026 $x5378027))))

; backwards $main_sum429
(assert
  (forall (($x5378021 Int) ($i5358025 Int) ($a25338017 (Array Int Int)) ($i5358031 Int) ($a35348018 (Array Int Int)) ($x5378033 Int) ($z5368020 Int) ($a15328016 (Array Int Int)) ($a25338029 (Array Int Int)) ($z5368026 Int) ($a35348024 (Array Int Int)) ($a35348030 (Array Int Int)) ($x5378027 Int) ($a15328022 (Array Int Int)) ($a15328028 (Array Int Int)) ($i5358019 Int) ($a25338023 (Array Int Int)) ($z5368032 Int))
    (=> (and ($main_sum429 $a15328022 $a25338023 $a35348024 (+ $i5358025 1) $z5368026 $x5378027 $a15328028 $a25338029 $a35348030 $i5358031 $z5368032 $x5378033)
             ($main_if156 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328022 $a25338023 $a35348024 $i5358025 $z5368026 $x5378027))
        ($main_sum429 $a15328016 $a25338017 $a35348018 $i5358019 $z5368020 $x5378021 $a15328028 $a25338029 $a35348030 $i5358031 $z5368032 $x5378033))))

; loop entry $main_inv430
(assert
  (forall (($a25338011 (Array Int Int)) ($x5378039 Int) ($z5368014 Int) ($a15328010 (Array Int Int)) ($a25338035 (Array Int Int)) ($a2533 (Array Int Int)) ($z5368038 Int) ($a35348036 (Array Int Int)) ($a1532 (Array Int Int)) ($i5358013 Int) ($x537 Int) ($i5358037 Int) ($a3534 (Array Int Int)) ($a35348012 (Array Int Int)) ($x5378015 Int) ($a15328034 (Array Int Int)))
    (=> (and ($main_sum429 $a15328010 $a25338011 $a35348012 0 $z5368014 $x5378015 $a15328034 $a25338035 $a35348036 $i5358037 $z5368038 $x5378039)
             ($main_sum428 $a1532 $a2533 $a3534 0 150000 $x537 $a15328010 $a25338011 $a35348012 $i5358013 $z5368014 $x5378015))
        ($main_inv430 $a15328034 $a25338035 $a35348036 0 $z5368038 $x5378039))))

; loop term $main_sum430
(assert
  (forall (($a35348042 (Array Int Int)) ($x5378045 Int) ($a25338041 (Array Int Int)) ($z5368044 Int) ($a15328040 (Array Int Int)) ($i5358043 Int))
    (=> (and (not (< $i5358043 200000)))
        ($main_sum430 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045))))

; if then
(assert
  (forall (($a35348042 (Array Int Int)) ($x5378045 Int) ($a25338041 (Array Int Int)) ($z5368044 Int) ($a15328040 (Array Int Int)) ($i5358043 Int))
    (=> (and (not (= $i5358043 $z5368044))
             (< $i5358043 200000)
             ($main_inv430 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045))
        ($main_if157 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328040 $a25338041 (store $a35348042 $i5358043 (select $a25338041 $i5358043)) $i5358043 $z5368044 $x5378045))))

; if else
(assert
  (forall (($a35348042 (Array Int Int)) ($x5378045 Int) ($a25338041 (Array Int Int)) ($z5368044 Int) ($a15328040 (Array Int Int)) ($i5358043 Int))
    (=> (and (= $i5358043 $z5368044)
             (< $i5358043 200000)
             ($main_inv430 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045))
        ($main_if157 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328040 $a25338041 (store $a35348042 $i5358043 (select $a15328040 $i5358043)) $i5358043 $z5368044 $x5378045))))

; forwards $main_inv430
(assert
  (forall (($a35348042 (Array Int Int)) ($x5378045 Int) ($a15328046 (Array Int Int)) ($z5368050 Int) ($a25338047 (Array Int Int)) ($a25338041 (Array Int Int)) ($x5378051 Int) ($z5368044 Int) ($a15328040 (Array Int Int)) ($i5358043 Int) ($a35348048 (Array Int Int)) ($i5358049 Int))
    (=> (and ($main_if157 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328046 $a25338047 $a35348048 $i5358049 $z5368050 $x5378051))
        ($main_inv430 $a15328046 $a25338047 $a35348048 (+ $i5358049 1) $z5368050 $x5378051))))

; backwards $main_sum430
(assert
  (forall (($a15328052 (Array Int Int)) ($x5378057 Int) ($a35348042 (Array Int Int)) ($i5358055 Int) ($x5378045 Int) ($a25338047 (Array Int Int)) ($a25338041 (Array Int Int)) ($x5378051 Int) ($a25338053 (Array Int Int)) ($z5368044 Int) ($z5368056 Int) ($a15328046 (Array Int Int)) ($a15328040 (Array Int Int)) ($i5358043 Int) ($a35348054 (Array Int Int)) ($z5368050 Int) ($a35348048 (Array Int Int)) ($i5358049 Int))
    (=> (and ($main_sum430 $a15328046 $a25338047 $a35348048 (+ $i5358049 1) $z5368050 $x5378051 $a15328052 $a25338053 $a35348054 $i5358055 $z5368056 $x5378057)
             ($main_if157 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328046 $a25338047 $a35348048 $i5358049 $z5368050 $x5378051))
        ($main_sum430 $a15328040 $a25338041 $a35348042 $i5358043 $z5368044 $x5378045 $a15328052 $a25338053 $a35348054 $i5358055 $z5368056 $x5378057))))

; loop entry $main_inv431
(assert
  (forall (($a25338059 (Array Int Int)) ($a25338011 (Array Int Int)) ($x5378039 Int) ($z5368062 Int) ($i5358061 Int) ($z5368014 Int) ($a15328010 (Array Int Int)) ($a15328058 (Array Int Int)) ($a2533 (Array Int Int)) ($z5368038 Int) ($a35348036 (Array Int Int)) ($a1532 (Array Int Int)) ($i5358013 Int) ($x537 Int) ($i5358037 Int) ($x5378063 Int) ($a3534 (Array Int Int)) ($a35348012 (Array Int Int)) ($a25338035 (Array Int Int)) ($a35348060 (Array Int Int)) ($x5378015 Int) ($a15328034 (Array Int Int)))
    (=> (and ($main_sum430 $a15328034 $a25338035 $a35348036 0 $z5368038 $x5378039 $a15328058 $a25338059 $a35348060 $i5358061 $z5368062 $x5378063)
             ($main_sum429 $a15328010 $a25338011 $a35348012 0 $z5368014 $x5378015 $a15328034 $a25338035 $a35348036 $i5358037 $z5368038 $x5378039)
             ($main_sum428 $a1532 $a2533 $a3534 0 150000 $x537 $a15328010 $a25338011 $a35348012 $i5358013 $z5368014 $x5378015))
        ($main_inv431 $a15328058 $a25338059 $a35348060 $i5358061 $z5368062 0))))

; loop term $main_sum431
(assert
  (forall (($i5358067 Int) ($x5378069 Int) ($a35348066 (Array Int Int)) ($a15328064 (Array Int Int)) ($z5368068 Int) ($a25338065 (Array Int Int)))
    (=> (and (not (< $x5378069 200000)))
        ($main_sum431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 $x5378069 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 $x5378069))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5358067 Int) ($x5378069 Int) ($a35348066 (Array Int Int)) ($a15328064 (Array Int Int)) ($z5368068 Int) ($a25338065 (Array Int Int)))
    (=> (and (< $x5378069 200000)
             ($main_inv431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 $x5378069))
        ($__VERIFIER_assert_pre (ite (= (select $a25338065 $x5378069) (select $a35348066 $x5378069)) 1 0)))))

; forwards $main_inv431
(assert
  (forall (($i5358067 Int) ($x5378069 Int) ($a35348066 (Array Int Int)) ($a15328064 (Array Int Int)) ($z5368068 Int) ($a25338065 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a25338065 $x5378069) (select $a35348066 $x5378069)) 1 0))
             (< $x5378069 200000)
             ($main_inv431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 $x5378069))
        ($main_inv431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 (+ $x5378069 1)))))

; backwards $main_sum431
(assert
  (forall (($z5368074 Int) ($a35348072 (Array Int Int)) ($i5358067 Int) ($a35348066 (Array Int Int)) ($a15328064 (Array Int Int)) ($x5378075 Int) ($z5368068 Int) ($i5358073 Int) ($a15328070 (Array Int Int)) ($a25338065 (Array Int Int)) ($x5378069 Int) ($a25338071 (Array Int Int)))
    (=> (and ($main_sum431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 (+ $x5378069 1) $a15328070 $a25338071 $a35348072 $i5358073 $z5368074 $x5378075)
             (__VERIFIER_assert (ite (= (select $a25338065 $x5378069) (select $a35348066 $x5378069)) 1 0))
             (< $x5378069 200000))
        ($main_sum431 $a15328064 $a25338065 $a35348066 $i5358067 $z5368068 $x5378069 $a15328070 $a25338071 $a35348072 $i5358073 $z5368074 $x5378075))))

(check-sat)
