(set-logic HORN)

(declare-fun $main_inv265 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum263 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv267 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum269 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv264 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv268 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum266 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv266 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum264 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if76 (Int) Bool)
(declare-fun $main_sum267 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum268 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv269 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum265 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv263 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3887 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3887))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if76 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3888 Int))
    (=> (and ($__VERIFIER_assert_if76 cond3888))
        (__VERIFIER_assert cond3888))))

; loop entry $main_inv263
(assert
  (forall (($a349 (Array Int Int)) ($i350 Int) ($x351 Int))
    (=> (and (= $i350 0))
        ($main_inv263 $a349 $i350 $x351))))

; loop term $main_sum263
(assert
  (forall (($a3493889 (Array Int Int)) ($i3503890 Int) ($x3513891 Int))
    (=> (and (not (< $i3503890 100000))
             ($main_inv263 $a3493889 $i3503890 $x3513891))
        ($main_sum263 $a3493889 $i3503890 $x3513891))))

; forwards $main_inv263
(assert
  (forall (($a3493889 (Array Int Int)) ($i3503890 Int) ($x3513891 Int))
    (=> (and (< $i3503890 100000)
             ($main_inv263 $a3493889 $i3503890 $x3513891))
        ($main_inv263 (store $a3493889 $i3503890 42) (+ $i3503890 1) $x3513891))))

; loop entry $main_inv264
(assert
  (forall (($a3493892 (Array Int Int)) ($x3513894 Int) ($i3503893 Int))
    (=> (and ($main_sum263 $a3493892 $i3503893 $x3513894))
        ($main_inv264 $a3493892 0 $x3513894))))

; loop term $main_sum264
(assert
  (forall (($a3493895 (Array Int Int)) ($i3503896 Int) ($x3513897 Int))
    (=> (and (not (< $i3503896 100000))
             ($main_inv264 $a3493895 $i3503896 $x3513897))
        ($main_sum264 $a3493895 $i3503896 $x3513897))))

; forwards $main_inv264
(assert
  (forall (($a3493895 (Array Int Int)) ($i3503896 Int) ($x3513897 Int))
    (=> (and (< $i3503896 100000)
             ($main_inv264 $a3493895 $i3503896 $x3513897))
        ($main_inv264 (store $a3493895 $i3503896 43) (+ $i3503896 1) $x3513897))))

; loop entry $main_inv265
(assert
  (forall (($a3493898 (Array Int Int)) ($x3513900 Int) ($i3503899 Int))
    (=> (and ($main_sum264 $a3493898 $i3503899 $x3513900))
        ($main_inv265 $a3493898 0 $x3513900))))

; loop term $main_sum265
(assert
  (forall (($a3493901 (Array Int Int)) ($i3503902 Int) ($x3513903 Int))
    (=> (and (not (< $i3503902 100000))
             ($main_inv265 $a3493901 $i3503902 $x3513903))
        ($main_sum265 $a3493901 $i3503902 $x3513903))))

; forwards $main_inv265
(assert
  (forall (($a3493901 (Array Int Int)) ($i3503902 Int) ($x3513903 Int))
    (=> (and (< $i3503902 100000)
             ($main_inv265 $a3493901 $i3503902 $x3513903))
        ($main_inv265 (store $a3493901 $i3503902 44) (+ $i3503902 1) $x3513903))))

; loop entry $main_inv266
(assert
  (forall (($a3493904 (Array Int Int)) ($x3513906 Int) ($i3503905 Int))
    (=> (and ($main_sum265 $a3493904 $i3503905 $x3513906))
        ($main_inv266 $a3493904 0 $x3513906))))

; loop term $main_sum266
(assert
  (forall (($a3493907 (Array Int Int)) ($i3503908 Int) ($x3513909 Int))
    (=> (and (not (< $i3503908 100000))
             ($main_inv266 $a3493907 $i3503908 $x3513909))
        ($main_sum266 $a3493907 $i3503908 $x3513909))))

; forwards $main_inv266
(assert
  (forall (($a3493907 (Array Int Int)) ($i3503908 Int) ($x3513909 Int))
    (=> (and (< $i3503908 100000)
             ($main_inv266 $a3493907 $i3503908 $x3513909))
        ($main_inv266 (store $a3493907 $i3503908 45) (+ $i3503908 1) $x3513909))))

; loop entry $main_inv267
(assert
  (forall (($a3493910 (Array Int Int)) ($x3513912 Int) ($i3503911 Int))
    (=> (and ($main_sum266 $a3493910 $i3503911 $x3513912))
        ($main_inv267 $a3493910 0 $x3513912))))

; loop term $main_sum267
(assert
  (forall (($a3493913 (Array Int Int)) ($i3503914 Int) ($x3513915 Int))
    (=> (and (not (< $i3503914 100000))
             ($main_inv267 $a3493913 $i3503914 $x3513915))
        ($main_sum267 $a3493913 $i3503914 $x3513915))))

; forwards $main_inv267
(assert
  (forall (($a3493913 (Array Int Int)) ($i3503914 Int) ($x3513915 Int))
    (=> (and (< $i3503914 100000)
             ($main_inv267 $a3493913 $i3503914 $x3513915))
        ($main_inv267 (store $a3493913 $i3503914 46) (+ $i3503914 1) $x3513915))))

; loop entry $main_inv268
(assert
  (forall (($a3493916 (Array Int Int)) ($x3513918 Int) ($i3503917 Int))
    (=> (and ($main_sum267 $a3493916 $i3503917 $x3513918))
        ($main_inv268 $a3493916 0 $x3513918))))

; loop term $main_sum268
(assert
  (forall (($a3493919 (Array Int Int)) ($i3503920 Int) ($x3513921 Int))
    (=> (and (not (< $i3503920 100000))
             ($main_inv268 $a3493919 $i3503920 $x3513921))
        ($main_sum268 $a3493919 $i3503920 $x3513921))))

; forwards $main_inv268
(assert
  (forall (($a3493919 (Array Int Int)) ($i3503920 Int) ($x3513921 Int))
    (=> (and (< $i3503920 100000)
             ($main_inv268 $a3493919 $i3503920 $x3513921))
        ($main_inv268 (store $a3493919 $i3503920 47) (+ $i3503920 1) $x3513921))))

; loop entry $main_inv269
(assert
  (forall (($a3493922 (Array Int Int)) ($i3503923 Int) ($x3513924 Int))
    (=> (and ($main_sum268 $a3493922 $i3503923 $x3513924))
        ($main_inv269 $a3493922 $i3503923 0))))

; loop term $main_sum269
(assert
  (forall (($a3493925 (Array Int Int)) ($i3503926 Int) ($x3513927 Int))
    (=> (and (not (< $x3513927 100000))
             ($main_inv269 $a3493925 $i3503926 $x3513927))
        ($main_sum269 $a3493925 $i3503926 $x3513927))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3493925 (Array Int Int)) ($x3513927 Int) ($i3503926 Int))
    (=> (and (< $x3513927 100000)
             ($main_inv269 $a3493925 $i3503926 $x3513927))
        ($__VERIFIER_assert_pre (ite (= (select $a3493925 $x3513927) 47) 1 0)))))

; forwards $main_inv269
(assert
  (forall (($a3493925 (Array Int Int)) ($i3503926 Int) ($x3513927 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3493925 $x3513927) 47) 1 0))
             (< $x3513927 100000)
             ($main_inv269 $a3493925 $i3503926 $x3513927))
        ($main_inv269 $a3493925 $i3503926 (+ $x3513927 1)))))

(check-sat)
