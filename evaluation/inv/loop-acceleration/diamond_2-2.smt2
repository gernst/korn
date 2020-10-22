(set-logic HORN)

(declare-fun $main_if473 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv96 (Int Int) Bool)
(declare-fun $main_if478 (Int Int) Bool)
(declare-fun $main_if477 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if470 (Int) Bool)
(declare-fun $main_if480 (Int Int) Bool)
(declare-fun $main_if472 (Int Int) Bool)
(declare-fun $main_if479 (Int Int) Bool)
(declare-fun $main_sum96 (Int Int) Bool)
(declare-fun $main_if476 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if474 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if471 (Int Int) Bool)
(declare-fun $main_if475 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12916 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12916))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if470 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12917 Int))
    (=> (and ($__VERIFIER_assert_if470 cond12917))
        (__VERIFIER_assert cond12917))))

; loop entry $main_inv96
(assert
  (forall (($x404 Int) ($y405 Int) ($uint12918 Int))
    (=> (and (= $y405 $uint12918)
             (<= 0 $uint12918)
             (<= $uint12918 4294967295)
             (= $x404 0))
        ($main_inv96 $x404 $y405))))

; loop term $main_sum96
(assert
  (forall (($x40412919 Int) ($y40512920 Int))
    (=> (and (not (< $x40412919 99))
             ($main_inv96 $x40412919 $y40512920))
        ($main_sum96 $x40412919 $y40512920))))

; if then
(assert
  (forall (($x40412919 Int) ($y40512920 Int))
    (=> (and (= (mod $y40512920 2) 0)
             (< $x40412919 99)
             ($main_inv96 $x40412919 $y40512920))
        ($main_if471 (+ $x40412919 2) $y40512920))))

; if else
(assert
  (forall (($x40412919 Int) ($y40512920 Int))
    (=> (and (not (= (mod $y40512920 2) 0))
             (< $x40412919 99)
             ($main_inv96 $x40412919 $y40512920))
        ($main_if471 (+ $x40412919 1) $y40512920))))

; if then
(assert
  (forall (($x40412921 Int) ($y40512922 Int))
    (=> (and (= (mod $y40512922 2) 0)
             ($main_if471 $x40412921 $y40512922))
        ($main_if472 (+ $x40412921 2) $y40512922))))

; if else
(assert
  (forall (($x40412921 Int) ($y40512922 Int))
    (=> (and (not (= (mod $y40512922 2) 0))
             ($main_if471 $x40412921 $y40512922))
        ($main_if472 (- $x40412921 2) $y40512922))))

; if then
(assert
  (forall (($x40412923 Int) ($y40512924 Int))
    (=> (and (= (mod $y40512924 2) 0)
             ($main_if472 $x40412923 $y40512924))
        ($main_if473 (+ $x40412923 2) $y40512924))))

; if else
(assert
  (forall (($x40412923 Int) ($y40512924 Int))
    (=> (and (not (= (mod $y40512924 2) 0))
             ($main_if472 $x40412923 $y40512924))
        ($main_if473 (+ $x40412923 2) $y40512924))))

; if then
(assert
  (forall (($x40412925 Int) ($y40512926 Int))
    (=> (and (= (mod $y40512926 2) 0)
             ($main_if473 $x40412925 $y40512926))
        ($main_if474 (+ $x40412925 2) $y40512926))))

; if else
(assert
  (forall (($x40412925 Int) ($y40512926 Int))
    (=> (and (not (= (mod $y40512926 2) 0))
             ($main_if473 $x40412925 $y40512926))
        ($main_if474 (- $x40412925 2) $y40512926))))

; if then
(assert
  (forall (($x40412927 Int) ($y40512928 Int))
    (=> (and (= (mod $y40512928 2) 0)
             ($main_if474 $x40412927 $y40512928))
        ($main_if475 (+ $x40412927 2) $y40512928))))

; if else
(assert
  (forall (($x40412927 Int) ($y40512928 Int))
    (=> (and (not (= (mod $y40512928 2) 0))
             ($main_if474 $x40412927 $y40512928))
        ($main_if475 (+ $x40412927 2) $y40512928))))

; if then
(assert
  (forall (($x40412929 Int) ($y40512930 Int))
    (=> (and (= (mod $y40512930 2) 0)
             ($main_if475 $x40412929 $y40512930))
        ($main_if476 (+ $x40412929 2) $y40512930))))

; if else
(assert
  (forall (($x40412929 Int) ($y40512930 Int))
    (=> (and (not (= (mod $y40512930 2) 0))
             ($main_if475 $x40412929 $y40512930))
        ($main_if476 (- $x40412929 4) $y40512930))))

; if then
(assert
  (forall (($x40412931 Int) ($y40512932 Int))
    (=> (and (= (mod $y40512932 2) 0)
             ($main_if476 $x40412931 $y40512932))
        ($main_if477 (+ $x40412931 2) $y40512932))))

; if else
(assert
  (forall (($x40412931 Int) ($y40512932 Int))
    (=> (and (not (= (mod $y40512932 2) 0))
             ($main_if476 $x40412931 $y40512932))
        ($main_if477 (+ $x40412931 4) $y40512932))))

; if then
(assert
  (forall (($x40412933 Int) ($y40512934 Int))
    (=> (and (= (mod $y40512934 2) 0)
             ($main_if477 $x40412933 $y40512934))
        ($main_if478 (+ $x40412933 2) $y40512934))))

; if else
(assert
  (forall (($x40412933 Int) ($y40512934 Int))
    (=> (and (not (= (mod $y40512934 2) 0))
             ($main_if477 $x40412933 $y40512934))
        ($main_if478 (+ $x40412933 2) $y40512934))))

; if then
(assert
  (forall (($x40412935 Int) ($y40512936 Int))
    (=> (and (= (mod $y40512936 2) 0)
             ($main_if478 $x40412935 $y40512936))
        ($main_if479 (+ $x40412935 2) $y40512936))))

; if else
(assert
  (forall (($x40412935 Int) ($y40512936 Int))
    (=> (and (not (= (mod $y40512936 2) 0))
             ($main_if478 $x40412935 $y40512936))
        ($main_if479 (- $x40412935 4) $y40512936))))

; if then
(assert
  (forall (($x40412937 Int) ($y40512938 Int))
    (=> (and (= (mod $y40512938 2) 0)
             ($main_if479 $x40412937 $y40512938))
        ($main_if480 (+ $x40412937 2) $y40512938))))

; if else
(assert
  (forall (($x40412937 Int) ($y40512938 Int))
    (=> (and (not (= (mod $y40512938 2) 0))
             ($main_if479 $x40412937 $y40512938))
        ($main_if480 (- $x40412937 4) $y40512938))))

; forwards $main_inv96
(assert
  (forall (($x40412939 Int) ($y40512940 Int))
    (=> (and ($main_if480 $x40412939 $y40512940))
        ($main_inv96 $x40412939 $y40512940))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40412941 Int) ($y40512942 Int))
    (=> (and ($main_sum96 $x40412941 $y40512942))
        ($__VERIFIER_assert_pre (ite (= (mod $x40412941 2) (mod $y40512942 2)) 1 0)))))

(check-sat)
