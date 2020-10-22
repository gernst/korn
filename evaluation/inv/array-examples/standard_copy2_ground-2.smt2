(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv101 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum99 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum100 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv99 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv100 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if46 (Int) Bool)
(declare-fun $main_inv102 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum102 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum101 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1497 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1497))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if46 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1498 Int))
    (=> (and ($__VERIFIER_assert_if46 cond1498))
        (__VERIFIER_assert cond1498))))

; loop entry $main_inv99
(assert
  (forall (($a2171 (Array Int Int)) ($a3172 (Array Int Int)) ($a1170 (Array Int Int)) ($i174 Int) ($x175 Int))
        ($main_inv99 $a1170 $a2171 $a3172 0 $i174 $x175)))

; loop term $main_sum99
(assert
  (forall (($a1731502 Int) ($a21711500 (Array Int Int)) ($i1741503 Int) ($a31721501 (Array Int Int)) ($x1751504 Int) ($a11701499 (Array Int Int)))
    (=> (and (not (< $a1731502 100000))
             ($main_inv99 $a11701499 $a21711500 $a31721501 $a1731502 $i1741503 $x1751504))
        ($main_sum99 $a11701499 $a21711500 $a31721501 $a1731502 $i1741503 $x1751504))))

; forwards $main_inv99
(assert
  (forall (($a1731502 Int) ($a21711500 (Array Int Int)) ($i1741503 Int) ($a31721501 (Array Int Int)) ($int1505 Int) ($x1751504 Int) ($a11701499 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int1505)
             (<= $int1505 2147483647)
             (< $a1731502 100000)
             ($main_inv99 $a11701499 $a21711500 $a31721501 $a1731502 $i1741503 $x1751504))
        ($main_inv99 (store $a11701499 $a1731502 $int1505) $a21711500 $a31721501 (+ $a1731502 1) $i1741503 $x1751504))))

; loop entry $main_inv100
(assert
  (forall (($a21711507 (Array Int Int)) ($x1751511 Int) ($a11701506 (Array Int Int)) ($i1741510 Int) ($a1731509 Int) ($a31721508 (Array Int Int)))
    (=> (and ($main_sum99 $a11701506 $a21711507 $a31721508 $a1731509 $i1741510 $x1751511))
        ($main_inv100 $a11701506 $a21711507 $a31721508 $a1731509 0 $x1751511))))

; loop term $main_sum100
(assert
  (forall (($a11701512 (Array Int Int)) ($a21711513 (Array Int Int)) ($a31721514 (Array Int Int)) ($a1731515 Int) ($x1751517 Int) ($i1741516 Int))
    (=> (and (not (< $i1741516 100000))
             ($main_inv100 $a11701512 $a21711513 $a31721514 $a1731515 $i1741516 $x1751517))
        ($main_sum100 $a11701512 $a21711513 $a31721514 $a1731515 $i1741516 $x1751517))))

; forwards $main_inv100
(assert
  (forall (($a11701512 (Array Int Int)) ($a21711513 (Array Int Int)) ($a31721514 (Array Int Int)) ($a1731515 Int) ($x1751517 Int) ($i1741516 Int))
    (=> (and (< $i1741516 100000)
             ($main_inv100 $a11701512 $a21711513 $a31721514 $a1731515 $i1741516 $x1751517))
        ($main_inv100 $a11701512 (store $a21711513 $i1741516 (select $a11701512 $i1741516)) $a31721514 $a1731515 (+ $i1741516 1) $x1751517))))

; loop entry $main_inv101
(assert
  (forall (($a1731521 Int) ($x1751523 Int) ($i1741522 Int) ($a31721520 (Array Int Int)) ($a21711519 (Array Int Int)) ($a11701518 (Array Int Int)))
    (=> (and ($main_sum100 $a11701518 $a21711519 $a31721520 $a1731521 $i1741522 $x1751523))
        ($main_inv101 $a11701518 $a21711519 $a31721520 $a1731521 0 $x1751523))))

; loop term $main_sum101
(assert
  (forall (($a11701524 (Array Int Int)) ($a1731527 Int) ($x1751529 Int) ($a31721526 (Array Int Int)) ($a21711525 (Array Int Int)) ($i1741528 Int))
    (=> (and (not (< $i1741528 100000))
             ($main_inv101 $a11701524 $a21711525 $a31721526 $a1731527 $i1741528 $x1751529))
        ($main_sum101 $a11701524 $a21711525 $a31721526 $a1731527 $i1741528 $x1751529))))

; forwards $main_inv101
(assert
  (forall (($a11701524 (Array Int Int)) ($a1731527 Int) ($x1751529 Int) ($a31721526 (Array Int Int)) ($a21711525 (Array Int Int)) ($i1741528 Int))
    (=> (and (< $i1741528 100000)
             ($main_inv101 $a11701524 $a21711525 $a31721526 $a1731527 $i1741528 $x1751529))
        ($main_inv101 $a11701524 $a21711525 (store $a31721526 $i1741528 (select $a21711525 $i1741528)) $a1731527 (+ $i1741528 1) $x1751529))))

; loop entry $main_inv102
(assert
  (forall (($a11701530 (Array Int Int)) ($x1751535 Int) ($a1731533 Int) ($a31721532 (Array Int Int)) ($i1741534 Int) ($a21711531 (Array Int Int)))
    (=> (and ($main_sum101 $a11701530 $a21711531 $a31721532 $a1731533 $i1741534 $x1751535))
        ($main_inv102 $a11701530 $a21711531 $a31721532 $a1731533 $i1741534 0))))

; loop term $main_sum102
(assert
  (forall (($a11701536 (Array Int Int)) ($x1751541 Int) ($a31721538 (Array Int Int)) ($a21711537 (Array Int Int)) ($i1741540 Int) ($a1731539 Int))
    (=> (and (not (< $x1751541 100000))
             ($main_inv102 $a11701536 $a21711537 $a31721538 $a1731539 $i1741540 $x1751541))
        ($main_sum102 $a11701536 $a21711537 $a31721538 $a1731539 $i1741540 $x1751541))))

; __VERIFIER_assert precondition
(assert
  (forall (($a11701536 (Array Int Int)) ($x1751541 Int) ($a31721538 (Array Int Int)) ($a21711537 (Array Int Int)) ($i1741540 Int) ($a1731539 Int))
    (=> (and (< $x1751541 100000)
             ($main_inv102 $a11701536 $a21711537 $a31721538 $a1731539 $i1741540 $x1751541))
        ($__VERIFIER_assert_pre (ite (= (select $a11701536 $x1751541) (select $a31721538 $x1751541)) 1 0)))))

; forwards $main_inv102
(assert
  (forall (($a11701536 (Array Int Int)) ($x1751541 Int) ($a31721538 (Array Int Int)) ($a21711537 (Array Int Int)) ($i1741540 Int) ($a1731539 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a11701536 $x1751541) (select $a31721538 $x1751541)) 1 0))
             (< $x1751541 100000)
             ($main_inv102 $a11701536 $a21711537 $a31721538 $a1731539 $i1741540 $x1751541))
        ($main_inv102 $a11701536 $a21711537 $a31721538 $a1731539 $i1741540 (+ $x1751541 1)))))

(check-sat)
