(set-logic HORN)

(declare-fun $main_sum37 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv36 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $incrementArray_pre ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $incrementArray_inv35 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if18 (Int Int) Bool)
(declare-fun $main_inv37 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun incrementArray ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum36 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $incrementArray_sum35 ((Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond670 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond670))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if18 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond671 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if18 cond cond671))
        (__VERIFIER_assert cond671))))

; loop entry $incrementArray_inv35
(assert
  (forall ((src (Array Int Int)) (dst (Array Int Int)))
    (=> (and ($incrementArray_pre src dst))
        ($incrementArray_inv35 src dst 0))))

; loop term $incrementArray_sum35
(assert
  (forall ((src672 (Array Int Int)) (dst673 (Array Int Int)) ($i86674 Int))
    (=> (and (not (< $i86674 100000)))
        ($incrementArray_sum35 src672 dst673 $i86674 src672 dst673 $i86674))))

; forwards $incrementArray_inv35
(assert
  (forall ((src672 (Array Int Int)) (dst673 (Array Int Int)) ($i86674 Int))
    (=> (and (< $i86674 100000)
             ($incrementArray_inv35 src672 dst673 $i86674))
        ($incrementArray_inv35 src672 (store dst673 $i86674 (+ (select src672 $i86674) 1)) (+ $i86674 1)))))

; backwards $incrementArray_sum35
(assert
  (forall ((dst676 (Array Int Int)) (dst673 (Array Int Int)) ($i86674 Int) (src672 (Array Int Int)) ($i86677 Int) (src675 (Array Int Int)))
    (=> (and ($incrementArray_sum35 src672 (store dst673 $i86674 (+ (select src672 $i86674) 1)) (+ $i86674 1) src675 dst676 $i86677)
             (< $i86674 100000))
        ($incrementArray_sum35 src672 dst673 $i86674 src675 dst676 $i86677))))

; post incrementArray
(assert
  (forall ((src678 (Array Int Int)) (src (Array Int Int)) (dst679 (Array Int Int)) ($i86680 Int) (dst (Array Int Int)))
    (=> (and ($incrementArray_sum35 src dst 0 src678 dst679 $i86680)
             ($incrementArray_pre src dst))
        (incrementArray src678 dst679))))

; loop entry $main_inv36
(assert
  (forall (($src87 (Array Int Int)) ($dst88 (Array Int Int)) ($i89 Int) ($x90 Int))
    (=> (and (= $i89 0))
        ($main_inv36 $src87 $dst88 $i89 $x90))))

; loop term $main_sum36
(assert
  (forall (($src87681 (Array Int Int)) ($dst88682 (Array Int Int)) ($i89683 Int) ($x90684 Int))
    (=> (and (not (< $i89683 100000)))
        ($main_sum36 $src87681 $dst88682 $i89683 $x90684 $src87681 $dst88682 $i89683 $x90684))))

; forwards $main_inv36
(assert
  (forall (($int685 Int) ($x90684 Int) ($i89683 Int) ($src87681 (Array Int Int)) ($dst88682 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int685)
             (<= $int685 2147483647)
             (< $i89683 100000)
             ($main_inv36 $src87681 $dst88682 $i89683 $x90684))
        ($main_inv36 (store $src87681 $i89683 $int685) $dst88682 (+ $i89683 1) $x90684))))

; backwards $main_sum36
(assert
  (forall (($src87686 (Array Int Int)) ($x90689 Int) ($int685 Int) ($x90684 Int) ($i89688 Int) ($dst88687 (Array Int Int)) ($i89683 Int) ($src87681 (Array Int Int)) ($dst88682 (Array Int Int)))
    (=> (and ($main_sum36 (store $src87681 $i89683 $int685) $dst88682 (+ $i89683 1) $x90684 $src87686 $dst88687 $i89688 $x90689)
             (<= (- 2147483648) $int685)
             (<= $int685 2147483647)
             (< $i89683 100000))
        ($main_sum36 $src87681 $dst88682 $i89683 $x90684 $src87686 $dst88687 $i89688 $x90689))))

; incrementArray precondition
(assert
  (forall (($dst88 (Array Int Int)) ($src87690 (Array Int Int)) ($x90693 Int) ($dst88691 (Array Int Int)) ($x90 Int) ($i89692 Int) ($i89 Int) ($src87 (Array Int Int)))
    (=> (and ($main_sum36 $src87 $dst88 $i89 $x90 $src87690 $dst88691 $i89692 $x90693)
             (= $i89 0))
        ($incrementArray_pre $src87690 $dst88691))))

; loop entry $main_inv37
(assert
  (forall (($dst88 (Array Int Int)) ($src87690 (Array Int Int)) ($x90693 Int) ($dst88691 (Array Int Int)) ($x90 Int) ($i89692 Int) ($i89 Int) ($src87 (Array Int Int)))
    (=> (and (incrementArray $src87690 $dst88691)
             ($main_sum36 $src87 $dst88 $i89 $x90 $src87690 $dst88691 $i89692 $x90693)
             (= $i89 0))
        ($main_inv37 $src87690 $dst88691 $i89692 0))))

; loop term $main_sum37
(assert
  (forall (($src87694 (Array Int Int)) ($dst88695 (Array Int Int)) ($i89696 Int) ($x90697 Int))
    (=> (and (not (< $x90697 100000)))
        ($main_sum37 $src87694 $dst88695 $i89696 $x90697 $src87694 $dst88695 $i89696 $x90697))))

; forwards $main_inv37
(assert
  (forall (($src87694 (Array Int Int)) ($x90697 Int) ($dst88695 (Array Int Int)) ($i89696 Int))
    (=> (and (< $x90697 100000)
             ($main_inv37 $src87694 $dst88695 $i89696 $x90697))
        ($main_inv37 (store $src87694 $x90697 (- (select $dst88695 $x90697) 1)) $dst88695 $i89696 (+ $x90697 1)))))

; backwards $main_sum37
(assert
  (forall (($dst88695 (Array Int Int)) ($src87694 (Array Int Int)) ($i89700 Int) ($src87698 (Array Int Int)) ($x90701 Int) ($i89696 Int) ($dst88699 (Array Int Int)) ($x90697 Int))
    (=> (and ($main_sum37 (store $src87694 $x90697 (- (select $dst88695 $x90697) 1)) $dst88695 $i89696 (+ $x90697 1) $src87698 $dst88699 $i89700 $x90701)
             (< $x90697 100000))
        ($main_sum37 $src87694 $dst88695 $i89696 $x90697 $src87698 $dst88699 $i89700 $x90701))))

(check-sat)
