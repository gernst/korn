(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv36 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum36 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $incrementArray_pre ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $incrementArray_inv35 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv37 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if18 (Int) Bool)
(declare-fun $main_sum37 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun incrementArray ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $incrementArray_sum35 ((Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond489 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond489))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if18 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond490 Int))
    (=> (and ($__VERIFIER_assert_if18 cond490))
        (__VERIFIER_assert cond490))))

; loop entry $incrementArray_inv35
(assert
  (forall ((src (Array Int Int)) (dst (Array Int Int)))
    (=> (and ($incrementArray_pre src dst))
        ($incrementArray_inv35 src dst 0))))

; loop term $incrementArray_sum35
(assert
  (forall ((src491 (Array Int Int)) (dst492 (Array Int Int)) ($i86493 Int))
    (=> (and (not (< $i86493 100000))
             ($incrementArray_inv35 src491 dst492 $i86493))
        ($incrementArray_sum35 src491 dst492 $i86493))))

; forwards $incrementArray_inv35
(assert
  (forall ((src491 (Array Int Int)) (dst492 (Array Int Int)) ($i86493 Int))
    (=> (and (< $i86493 100000)
             ($incrementArray_inv35 src491 dst492 $i86493))
        ($incrementArray_inv35 src491 (store dst492 $i86493 (+ (select src491 $i86493) 1)) (+ $i86493 1)))))

; post incrementArray
(assert
  (forall ((src494 (Array Int Int)) (dst495 (Array Int Int)) ($i86496 Int))
    (=> (and ($incrementArray_sum35 src494 dst495 $i86496))
        (incrementArray src494 dst495))))

; loop entry $main_inv36
(assert
  (forall (($src87 (Array Int Int)) ($dst88 (Array Int Int)) ($i89 Int) ($x90 Int))
    (=> (and (= $i89 0))
        ($main_inv36 $src87 $dst88 $i89 $x90))))

; loop term $main_sum36
(assert
  (forall (($src87497 (Array Int Int)) ($dst88498 (Array Int Int)) ($i89499 Int) ($x90500 Int))
    (=> (and (not (< $i89499 100000))
             ($main_inv36 $src87497 $dst88498 $i89499 $x90500))
        ($main_sum36 $src87497 $dst88498 $i89499 $x90500))))

; forwards $main_inv36
(assert
  (forall (($src87497 (Array Int Int)) ($int501 Int) ($dst88498 (Array Int Int)) ($x90500 Int) ($i89499 Int))
    (=> (and (<= (- 2147483648) $int501)
             (<= $int501 2147483647)
             (< $i89499 100000)
             ($main_inv36 $src87497 $dst88498 $i89499 $x90500))
        ($main_inv36 (store $src87497 $i89499 $int501) $dst88498 (+ $i89499 1) $x90500))))

; incrementArray precondition
(assert
  (forall (($src87502 (Array Int Int)) ($dst88503 (Array Int Int)) ($i89504 Int) ($x90505 Int))
    (=> (and ($main_sum36 $src87502 $dst88503 $i89504 $x90505))
        ($incrementArray_pre $src87502 $dst88503))))

; loop entry $main_inv37
(assert
  (forall (($src87502 (Array Int Int)) ($dst88503 (Array Int Int)) ($i89504 Int) ($x90505 Int))
    (=> (and (incrementArray $src87502 $dst88503)
             ($main_sum36 $src87502 $dst88503 $i89504 $x90505))
        ($main_inv37 $src87502 $dst88503 $i89504 0))))

; loop term $main_sum37
(assert
  (forall (($src87506 (Array Int Int)) ($dst88507 (Array Int Int)) ($i89508 Int) ($x90509 Int))
    (=> (and (not (< $x90509 100000))
             ($main_inv37 $src87506 $dst88507 $i89508 $x90509))
        ($main_sum37 $src87506 $dst88507 $i89508 $x90509))))

; forwards $main_inv37
(assert
  (forall (($src87506 (Array Int Int)) ($x90509 Int) ($dst88507 (Array Int Int)) ($i89508 Int))
    (=> (and (< $x90509 100000)
             ($main_inv37 $src87506 $dst88507 $i89508 $x90509))
        ($main_inv37 (store $src87506 $x90509 (- (select $dst88507 $x90509) 1)) $dst88507 $i89508 (+ $x90509 1)))))

(check-sat)
