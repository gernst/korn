(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun foo () Bool)
(declare-fun $main_if716 (Int Int Int Int) Bool)
(declare-fun $main_if720 (Int Int Int Int) Bool)
(declare-fun $foo_pre () Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $main_if718 (Int Int Int Int) Bool)
(declare-fun $main_if719 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $foo_if715 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if712 (Int) Bool)
(declare-fun $main_sum274 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if717 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $foo_if714 (Int Int Int) Bool)
(declare-fun $main_inv274 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if713 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if712 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15374 Int))
    (=> (and ($assume_abort_if_not_if712 cond15374))
        (assume_abort_if_not cond15374))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15375 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15375))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if713 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15376 Int))
    (=> (and ($__VERIFIER_assert_if713 cond15376))
        (__VERIFIER_assert cond15376))))

; if then
(assert
  (forall (($y769 Int) ($c2771 Int) ($bool15378 Int) ($c1770 Int) ($bool15377 Int))
    (=> (and (not (= $c1770 0))
             (= $c2771 $bool15378)
             (or (= $bool15378 0) (= $bool15378 1))
             (= $c1770 $bool15377)
             (or (= $bool15377 0) (= $bool15377 1))
             (= $y769 0)
             $foo_pre)
        ($foo_if714 (+ $y769 1) $c1770 $c2771))))

; if else
(assert
  (forall (($y769 Int) ($c2771 Int) ($bool15378 Int) ($c1770 Int) ($bool15377 Int))
    (=> (and (= $c1770 0)
             (= $c2771 $bool15378)
             (or (= $bool15378 0) (= $bool15378 1))
             (= $c1770 $bool15377)
             (or (= $bool15377 0) (= $bool15377 1))
             (= $y769 0)
             $foo_pre)
        ($foo_if714 $y769 $c1770 $c2771))))

; if then
(assert
  (forall (($y76915379 Int) ($c177015380 Int) ($c277115381 Int))
    (=> (and (not (= $c277115381 0))
             ($foo_if714 $y76915379 $c177015380 $c277115381))
        ($foo_if715 (- $y76915379 1) $c177015380 $c277115381))))

; if else
(assert
  (forall (($y76915379 Int) ($c177015380 Int) ($c277115381 Int))
    (=> (and (= $c277115381 0)
             ($foo_if714 $y76915379 $c177015380 $c277115381))
        ($foo_if715 (+ $y76915379 10) $c177015380 $c277115381))))

; post foo
(assert
  (forall (($y76915382 Int) ($c177015383 Int) ($c277115384 Int))
    (=> (and ($foo_if715 $y76915382 $c177015383 $c277115384))
        foo)))

; if else
(assert
  (forall (($c2775 Int) ($c1774 Int) ($int15385 Int) ($x773 Int) ($d772 Int))
    (=> (and (<= $x773 1000000)
             (>= $x773 (- 1000000))
             (= $x773 $int15385)
             (<= (- 2147483648) $int15385)
             (<= $int15385 2147483647)
             (= $d772 1))
        ($main_if716 $d772 $x773 $c1774 $c2775))))

; if then
(assert
  (forall (($c277515389 Int) ($bool15390 Int) ($c177415388 Int) ($bool15391 Int) ($x77315387 Int) ($d77215386 Int))
    (=> (and (not (= $c177415388 0))
             (= $c277515389 $bool15391)
             (or (= $bool15391 0) (= $bool15391 1))
             (= $c177415388 $bool15390)
             (or (= $bool15390 0) (= $bool15390 1))
             ($main_if716 $d77215386 $x77315387 $c177415388 $c277515389))
        ($main_if717 (- $d77215386 1) $x77315387 $c177415388 $c277515389))))

; if else
(assert
  (forall (($c277515389 Int) ($bool15390 Int) ($c177415388 Int) ($bool15391 Int) ($x77315387 Int) ($d77215386 Int))
    (=> (and (= $c177415388 0)
             (= $c277515389 $bool15391)
             (or (= $bool15391 0) (= $bool15391 1))
             (= $c177415388 $bool15390)
             (or (= $bool15390 0) (= $bool15390 1))
             ($main_if716 $d77215386 $x77315387 $c177415388 $c277515389))
        ($main_if717 $d77215386 $x77315387 $c177415388 $c277515389))))

; foo precondition
(assert
  (forall (($c277515395 Int) ($d77215392 Int) ($x77315393 Int) ($c177415394 Int))
    (=> (and (not (= $c277515395 0))
             ($main_if717 $d77215392 $x77315393 $c177415394 $c277515395))
        $foo_pre)))

; if then
(assert
  (forall (($d77215392 Int) ($x77315393 Int) ($c177415394 Int) ($c277515395 Int))
    (=> (and foo
             (not (= $c277515395 0))
             ($main_if717 $d77215392 $x77315393 $c177415394 $c277515395))
        ($main_if718 $d77215392 $x77315393 $c177415394 $c277515395))))

; if else
(assert
  (forall (($d77215392 Int) ($x77315393 Int) ($c177415394 Int) ($c277515395 Int))
    (=> (and (= $c277515395 0)
             ($main_if717 $d77215392 $x77315393 $c177415394 $c277515395))
        ($main_if718 $d77215392 $x77315393 $c177415394 $c277515395))))

; foo precondition
(assert
  (forall (($bool15400 Int) ($x77315397 Int) ($c277515399 Int) ($d77215396 Int) ($bool15401 Int) ($c177415398 Int))
    (=> (and (not (= $bool15401 0))
             (or (= $bool15401 0) (= $bool15401 1))
             (or (= $bool15400 0) (= $bool15400 1))
             ($main_if718 $d77215396 $x77315397 $c177415398 $c277515399))
        $foo_pre)))

; if then
(assert
  (forall (($bool15400 Int) ($x77315397 Int) ($c277515399 Int) ($d77215396 Int) ($bool15401 Int) ($c177415398 Int))
    (=> (and foo
             (not (= $bool15401 0))
             (or (= $bool15401 0) (= $bool15401 1))
             (or (= $bool15400 0) (= $bool15400 1))
             ($main_if718 $d77215396 $x77315397 $c177415398 $c277515399))
        ($main_if719 $d77215396 $x77315397 $bool15401 $c277515399))))

; if else
(assert
  (forall (($bool15400 Int) ($x77315397 Int) ($c277515399 Int) ($d77215396 Int) ($bool15401 Int) ($c177415398 Int))
    (=> (and (= $bool15401 0)
             (or (= $bool15401 0) (= $bool15401 1))
             (or (= $bool15400 0) (= $bool15400 1))
             ($main_if718 $d77215396 $x77315397 $c177415398 $c277515399))
        ($main_if719 $d77215396 $x77315397 $bool15401 $c277515399))))

; if then
(assert
  (forall (($d77215402 Int) ($x77315403 Int) ($c177415404 Int) ($c277515405 Int))
    (=> (and (not (= $c277515405 0))
             ($main_if719 $d77215402 $x77315403 $c177415404 $c277515405))
        ($main_if720 (- $d77215402 1) $x77315403 $c177415404 $c277515405))))

; if else
(assert
  (forall (($d77215402 Int) ($x77315403 Int) ($c177415404 Int) ($c277515405 Int))
    (=> (and (= $c277515405 0)
             ($main_if719 $d77215402 $x77315403 $c177415404 $c277515405))
        ($main_if720 $d77215402 $x77315403 $c177415404 $c277515405))))

; loop entry $main_inv274
(assert
  (forall (($d77215406 Int) ($x77315407 Int) ($c177415408 Int) ($c277515409 Int))
    (=> (and ($main_if720 $d77215406 $x77315407 $c177415408 $c277515409))
        ($main_inv274 $d77215406 $x77315407 $c177415408 $c277515409))))

; loop term $main_sum274
(assert
  (forall (($d77215410 Int) ($x77315411 Int) ($c177415412 Int) ($c277515413 Int))
    (=> (and (not (> $x77315411 0))
             ($main_inv274 $d77215410 $x77315411 $c177415412 $c277515413))
        ($main_sum274 $d77215410 $x77315411 $c177415412 $c277515413))))

; forwards $main_inv274
(assert
  (forall (($d77215410 Int) ($x77315411 Int) ($c177415412 Int) ($c277515413 Int))
    (=> (and (> $x77315411 0)
             ($main_inv274 $d77215410 $x77315411 $c177415412 $c277515413))
        ($main_inv274 $d77215410 (- $x77315411 $d77215410) $c177415412 $c277515413))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77315415 Int) ($d77215414 Int) ($c177415416 Int) ($c277515417 Int))
    (=> (and ($main_sum274 $d77215414 $x77315415 $c177415416 $c277515417))
        ($__VERIFIER_assert_pre (ite (<= $x77315415 0) 1 0)))))

(check-sat)
