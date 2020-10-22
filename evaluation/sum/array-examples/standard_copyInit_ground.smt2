(set-logic HORN)

(declare-fun $__VERIFIER_assert_if59 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum193 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum194 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv195 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum195 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv193 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv194 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond4895 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond4895))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if59 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4896 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if59 cond cond4896))
        (__VERIFIER_assert cond4896))))

; loop entry $main_inv193
(assert
  (forall (($a290 (Array Int Int)) ($b291 (Array Int Int)) ($i292 Int) ($x293 Int))
    (=> (and (= $i292 0))
        ($main_inv193 $a290 $b291 $i292 $x293))))

; loop term $main_sum193
(assert
  (forall (($a2904897 (Array Int Int)) ($b2914898 (Array Int Int)) ($i2924899 Int) ($x2934900 Int))
    (=> (and (not (< $i2924899 100000)))
        ($main_sum193 $a2904897 $b2914898 $i2924899 $x2934900 $a2904897 $b2914898 $i2924899 $x2934900))))

; forwards $main_inv193
(assert
  (forall (($a2904897 (Array Int Int)) ($i2924899 Int) ($b2914898 (Array Int Int)) ($x2934900 Int))
    (=> (and (< $i2924899 100000)
             ($main_inv193 $a2904897 $b2914898 $i2924899 $x2934900))
        ($main_inv193 (store $a2904897 $i2924899 42) $b2914898 (+ $i2924899 1) $x2934900))))

; backwards $main_sum193
(assert
  (forall (($x2934904 Int) ($i2924903 Int) ($a2904897 (Array Int Int)) ($a2904901 (Array Int Int)) ($x2934900 Int) ($i2924899 Int) ($b2914898 (Array Int Int)) ($b2914902 (Array Int Int)))
    (=> (and ($main_sum193 (store $a2904897 $i2924899 42) $b2914898 (+ $i2924899 1) $x2934900 $a2904901 $b2914902 $i2924903 $x2934904)
             (< $i2924899 100000))
        ($main_sum193 $a2904897 $b2914898 $i2924899 $x2934900 $a2904901 $b2914902 $i2924903 $x2934904))))

; loop entry $main_inv194
(assert
  (forall (($x2934908 Int) ($i292 Int) ($a2904905 (Array Int Int)) ($a290 (Array Int Int)) ($b2914906 (Array Int Int)) ($i2924907 Int) ($x293 Int) ($b291 (Array Int Int)))
    (=> (and ($main_sum193 $a290 $b291 $i292 $x293 $a2904905 $b2914906 $i2924907 $x2934908)
             (= $i292 0))
        ($main_inv194 $a2904905 $b2914906 0 $x2934908))))

; loop term $main_sum194
(assert
  (forall (($a2904909 (Array Int Int)) ($b2914910 (Array Int Int)) ($i2924911 Int) ($x2934912 Int))
    (=> (and (not (< $i2924911 100000)))
        ($main_sum194 $a2904909 $b2914910 $i2924911 $x2934912 $a2904909 $b2914910 $i2924911 $x2934912))))

; forwards $main_inv194
(assert
  (forall (($a2904909 (Array Int Int)) ($b2914910 (Array Int Int)) ($i2924911 Int) ($x2934912 Int))
    (=> (and (< $i2924911 100000)
             ($main_inv194 $a2904909 $b2914910 $i2924911 $x2934912))
        ($main_inv194 $a2904909 (store $b2914910 $i2924911 (select $a2904909 $i2924911)) (+ $i2924911 1) $x2934912))))

; backwards $main_sum194
(assert
  (forall (($i2924911 Int) ($b2914910 (Array Int Int)) ($i2924915 Int) ($x2934916 Int) ($a2904909 (Array Int Int)) ($b2914914 (Array Int Int)) ($x2934912 Int) ($a2904913 (Array Int Int)))
    (=> (and ($main_sum194 $a2904909 (store $b2914910 $i2924911 (select $a2904909 $i2924911)) (+ $i2924911 1) $x2934912 $a2904913 $b2914914 $i2924915 $x2934916)
             (< $i2924911 100000))
        ($main_sum194 $a2904909 $b2914910 $i2924911 $x2934912 $a2904913 $b2914914 $i2924915 $x2934916))))

; loop entry $main_inv195
(assert
  (forall (($x2934908 Int) ($i2924919 Int) ($a2904905 (Array Int Int)) ($a290 (Array Int Int)) ($b2914918 (Array Int Int)) ($i2924907 Int) ($x293 Int) ($b291 (Array Int Int)) ($x2934920 Int) ($i292 Int) ($a2904917 (Array Int Int)) ($b2914906 (Array Int Int)))
    (=> (and ($main_sum194 $a2904905 $b2914906 0 $x2934908 $a2904917 $b2914918 $i2924919 $x2934920)
             ($main_sum193 $a290 $b291 $i292 $x293 $a2904905 $b2914906 $i2924907 $x2934908)
             (= $i292 0))
        ($main_inv195 $a2904917 $b2914918 $i2924919 0))))

; loop term $main_sum195
(assert
  (forall (($a2904921 (Array Int Int)) ($b2914922 (Array Int Int)) ($i2924923 Int) ($x2934924 Int))
    (=> (and (not (< $x2934924 100000)))
        ($main_sum195 $a2904921 $b2914922 $i2924923 $x2934924 $a2904921 $b2914922 $i2924923 $x2934924))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2914922 (Array Int Int)) ($x2934924 Int) ($a2904921 (Array Int Int)) ($i2924923 Int))
    (=> (and (< $x2934924 100000)
             ($main_inv195 $a2904921 $b2914922 $i2924923 $x2934924))
        ($__VERIFIER_assert_pre (ite (= (select $b2914922 $x2934924) 42) 1 0)))))

; forwards $main_inv195
(assert
  (forall (($a2904921 (Array Int Int)) ($b2914922 (Array Int Int)) ($i2924923 Int) ($x2934924 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2914922 $x2934924) 42) 1 0))
             (< $x2934924 100000)
             ($main_inv195 $a2904921 $b2914922 $i2924923 $x2934924))
        ($main_inv195 $a2904921 $b2914922 $i2924923 (+ $x2934924 1)))))

; backwards $main_sum195
(assert
  (forall (($x2934924 Int) ($b2914922 (Array Int Int)) ($i2924923 Int) ($a2904921 (Array Int Int)) ($a2904925 (Array Int Int)) ($b2914926 (Array Int Int)) ($i2924927 Int) ($x2934928 Int))
    (=> (and ($main_sum195 $a2904921 $b2914922 $i2924923 (+ $x2934924 1) $a2904925 $b2914926 $i2924927 $x2934928)
             (__VERIFIER_assert (ite (= (select $b2914922 $x2934924) 42) 1 0))
             (< $x2934924 100000))
        ($main_sum195 $a2904921 $b2914922 $i2924923 $x2934924 $a2904925 $b2914926 $i2924927 $x2934928))))

(check-sat)
