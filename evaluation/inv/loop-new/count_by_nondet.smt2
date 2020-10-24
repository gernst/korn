(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if343 (Int) Bool)
(declare-fun $main_inv508 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum508 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if344 (Int) Bool)
(declare-fun $main_if345 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if343 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6924 Int))
    (=> (and ($assume_abort_if_not_if343 cond6924))
        (assume_abort_if_not cond6924))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6925 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6925))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if344 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6926 Int))
    (=> (and ($__VERIFIER_assert_if344 cond6926))
        (__VERIFIER_assert cond6926))))

; loop entry $main_inv508
(assert
  (forall (($i712 Int) ($k713 Int) ($j714 Int))
    (=> (and (= $k713 0)
             (= $i712 0))
        ($main_inv508 $i712 $k713 $j714))))

; loop term $main_sum508
(assert
  (forall (($i7126927 Int) ($k7136928 Int) ($j7146929 Int))
    (=> (and (not (< $i7126927 1000000))
             ($main_inv508 $i7126927 $k7136928 $j7146929))
        ($main_sum508 $i7126927 $k7136928 $j7146929))))

; if else
(assert
  (forall (($i7126927 Int) ($k7136928 Int) ($j7146929 Int) ($int6930 Int))
    (=> (and (<= 1 $j7146929)
             (< $j7146929 1000000)
             (= $j7146929 $int6930)
             (<= (- 2147483648) $int6930)
             (<= $int6930 2147483647)
             (< $i7126927 1000000)
             ($main_inv508 $i7126927 $k7136928 $j7146929))
        ($main_if345 $i7126927 $k7136928 $j7146929))))

; forwards $main_inv508
(assert
  (forall (($i7126931 Int) ($j7146933 Int) ($k7136932 Int))
    (=> (and ($main_if345 $i7126931 $k7136932 $j7146933))
        ($main_inv508 (+ $i7126931 $j7146933) (+ $k7136932 1) $j7146933))))

; __VERIFIER_assert precondition
(assert
  (forall (($k7136935 Int) ($i7126934 Int) ($j7146936 Int))
    (=> (and ($main_sum508 $i7126934 $k7136935 $j7146936))
        ($__VERIFIER_assert_pre (ite (<= $k7136935 1000000) 1 0)))))

(check-sat)
