(set-logic HORN)

(declare-fun $main_inv458 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum459 (Int Int Int Int) Bool)
(declare-fun $main_inv459 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if208 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if209 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if207 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum458 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if207 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5961 Int))
    (=> (and ($assume_abort_if_not_if207 cond5961))
        (assume_abort_if_not cond5961))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5962 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5962))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if208 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5963 Int))
    (=> (and ($__VERIFIER_assert_if208 cond5963))
        (__VERIFIER_assert cond5963))))

; if else
(assert
  (forall (($int5964 Int) ($i585 Int) ($k586 Int) ($j587 Int))
    (=> (and (<= $int5964 1000000)
             (<= (- 2147483648) $int5964)
             (<= $int5964 2147483647))
        ($main_if209 $int5964 $i585 $k586 $j587))))

; loop entry $main_inv458
(assert
  (forall (($n5845965 Int) ($j5875968 Int) ($i5855966 Int) ($k5865967 Int))
    (=> (and ($main_if209 $n5845965 $i5855966 $k5865967 $j5875968))
        ($main_inv458 $n5845965 0 $n5845965 $j5875968))))

; loop term $main_sum458
(assert
  (forall (($n5845969 Int) ($i5855970 Int) ($k5865971 Int) ($j5875972 Int))
    (=> (and (not (< $i5855970 $n5845969))
             ($main_inv458 $n5845969 $i5855970 $k5865971 $j5875972))
        ($main_sum458 $n5845969 $i5855970 $k5865971 $j5875972))))

; forwards $main_inv458
(assert
  (forall (($n5845969 Int) ($i5855970 Int) ($k5865971 Int) ($j5875972 Int))
    (=> (and (< $i5855970 $n5845969)
             ($main_inv458 $n5845969 $i5855970 $k5865971 $j5875972))
        ($main_inv458 $n5845969 (+ $i5855970 2) (- $k5865971 1) $j5875972))))

; loop entry $main_inv459
(assert
  (forall (($n5845973 Int) ($i5855974 Int) ($k5865975 Int) ($j5875976 Int))
    (=> (and (= $j5875976 0)
             ($main_sum458 $n5845973 $i5855974 $k5865975 $j5875976))
        ($main_inv459 $n5845973 $i5855974 $k5865975 $j5875976))))

; loop term $main_sum459
(assert
  (forall (($n5845977 Int) ($i5855978 Int) ($k5865979 Int) ($j5875980 Int))
    (=> (and (not (< $j5875980 (div $n5845977 2)))
             ($main_inv459 $n5845977 $i5855978 $k5865979 $j5875980))
        ($main_sum459 $n5845977 $i5855978 $k5865979 $j5875980))))

; __VERIFIER_assert precondition
(assert
  (forall (($k5865979 Int) ($j5875980 Int) ($n5845977 Int) ($i5855978 Int))
    (=> (and (< $j5875980 (div $n5845977 2))
             ($main_inv459 $n5845977 $i5855978 $k5865979 $j5875980))
        ($__VERIFIER_assert_pre (ite (> $k5865979 0) 1 0)))))

; forwards $main_inv459
(assert
  (forall (($n5845977 Int) ($i5855978 Int) ($k5865979 Int) ($j5875980 Int))
    (=> (and (__VERIFIER_assert (ite (> $k5865979 0) 1 0))
             (< $j5875980 (div $n5845977 2))
             ($main_inv459 $n5845977 $i5855978 $k5865979 $j5875980))
        ($main_inv459 $n5845977 $i5855978 (- $k5865979 1) (+ $j5875980 1)))))

(check-sat)
