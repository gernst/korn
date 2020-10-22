(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if202 (Int) Bool)
(declare-fun $main_inv453 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum453 (Int Int Int Int) Bool)
(declare-fun $main_sum454 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if201 (Int) Bool)
(declare-fun $main_inv454 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if201 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5887 Int))
    (=> (and ($assume_abort_if_not_if201 cond5887))
        (assume_abort_if_not cond5887))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5888 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5888))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if202 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5889 Int))
    (=> (and ($__VERIFIER_assert_if202 cond5889))
        (__VERIFIER_assert cond5889))))

; loop entry $main_inv453
(assert
  (forall (($int5890 Int) ($k575 Int) ($i576 Int) ($j577 Int))
    (=> (and (<= (- 2147483648) $int5890)
             (<= $int5890 2147483647)
             (= $i576 0)
             (= $k575 0))
        ($main_inv453 $int5890 $k575 $i576 $j577))))

; loop term $main_sum453
(assert
  (forall (($n5745891 Int) ($k5755892 Int) ($i5765893 Int) ($j5775894 Int))
    (=> (and (not (< $i5765893 $n5745891))
             ($main_inv453 $n5745891 $k5755892 $i5765893 $j5775894))
        ($main_sum453 $n5745891 $k5755892 $i5765893 $j5775894))))

; forwards $main_inv453
(assert
  (forall (($n5745891 Int) ($k5755892 Int) ($i5765893 Int) ($j5775894 Int))
    (=> (and (< $i5765893 $n5745891)
             ($main_inv453 $n5745891 $k5755892 $i5765893 $j5775894))
        ($main_inv453 $n5745891 (+ $k5755892 1) (+ $i5765893 1) $j5775894))))

; loop entry $main_inv454
(assert
  (forall (($n5745895 Int) ($k5755896 Int) ($i5765897 Int) ($j5775898 Int))
    (=> (and (= $j5775898 $n5745895)
             ($main_sum453 $n5745895 $k5755896 $i5765897 $j5775898))
        ($main_inv454 $n5745895 $k5755896 $i5765897 $j5775898))))

; loop term $main_sum454
(assert
  (forall (($n5745899 Int) ($k5755900 Int) ($i5765901 Int) ($j5775902 Int))
    (=> (and (not (> $j5775902 0))
             ($main_inv454 $n5745899 $k5755900 $i5765901 $j5775902))
        ($main_sum454 $n5745899 $k5755900 $i5765901 $j5775902))))

; __VERIFIER_assert precondition
(assert
  (forall (($k5755900 Int) ($j5775902 Int) ($n5745899 Int) ($i5765901 Int))
    (=> (and (> $j5775902 0)
             ($main_inv454 $n5745899 $k5755900 $i5765901 $j5775902))
        ($__VERIFIER_assert_pre (ite (> $k5755900 0) 1 0)))))

; forwards $main_inv454
(assert
  (forall (($n5745899 Int) ($k5755900 Int) ($i5765901 Int) ($j5775902 Int))
    (=> (and (__VERIFIER_assert (ite (> $k5755900 0) 1 0))
             (> $j5775902 0)
             ($main_inv454 $n5745899 $k5755900 $i5765901 $j5775902))
        ($main_inv454 $n5745899 (- $k5755900 1) $i5765901 (- $j5775902 1)))))

(check-sat)
