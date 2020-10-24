(set-logic HORN)

(declare-fun $main_sum358 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if105 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv360 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if106 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv359 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if107 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv358 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum360 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if104 (Int Int) Bool)
(declare-fun $main_sum359 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6897 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6897))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if104 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6898 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if104 cond cond6898))
        (__VERIFIER_assert cond6898))))

; loop entry $main_inv358
(assert
  (forall (($a425 (Array Int Int)) ($b426 (Array Int Int)) ($f428 Int) ($i427 Int))
    (=> (and (= $i427 0))
        ($main_inv358 $a425 $b426 0 $f428))))

; loop term $main_sum358
(assert
  (forall (($a4256899 (Array Int Int)) ($b4266900 (Array Int Int)) ($i4276901 Int) ($f4286902 Int))
    (=> (and (not (< $i4276901 100000)))
        ($main_sum358 $a4256899 $b4266900 $i4276901 $f4286902 $a4256899 $b4266900 $i4276901 $f4286902))))

; forwards $main_inv358
(assert
  (forall (($b4266900 (Array Int Int)) ($a4256899 (Array Int Int)) ($int6903 Int) ($i4276901 Int) ($f4286902 Int))
    (=> (and (<= (- 2147483648) $int6903)
             (<= $int6903 2147483647)
             (< $i4276901 100000)
             ($main_inv358 $a4256899 $b4266900 $i4276901 $f4286902))
        ($main_inv358 (store $a4256899 $i4276901 $int6903) $b4266900 (+ $i4276901 1) $f4286902))))

; backwards $main_sum358
(assert
  (forall (($b4266900 (Array Int Int)) ($f4286907 Int) ($a4256899 (Array Int Int)) ($a4256904 (Array Int Int)) ($int6903 Int) ($i4276901 Int) ($i4276906 Int) ($b4266905 (Array Int Int)) ($f4286902 Int))
    (=> (and ($main_sum358 (store $a4256899 $i4276901 $int6903) $b4266900 (+ $i4276901 1) $f4286902 $a4256904 $b4266905 $i4276906 $f4286907)
             (<= (- 2147483648) $int6903)
             (<= $int6903 2147483647)
             (< $i4276901 100000))
        ($main_sum358 $a4256899 $b4266900 $i4276901 $f4286902 $a4256904 $b4266905 $i4276906 $f4286907))))

; loop entry $main_inv359
(assert
  (forall (($i4276910 Int) ($i427 Int) ($f428 Int) ($f4286911 Int) ($a4256908 (Array Int Int)) ($b4266909 (Array Int Int)) ($b426 (Array Int Int)) ($a425 (Array Int Int)))
    (=> (and ($main_sum358 $a425 $b426 0 $f428 $a4256908 $b4266909 $i4276910 $f4286911)
             (= $i427 0))
        ($main_inv359 $a4256908 $b4266909 0 $f4286911))))

; loop term $main_sum359
(assert
  (forall (($a4256912 (Array Int Int)) ($b4266913 (Array Int Int)) ($i4276914 Int) ($f4286915 Int))
    (=> (and (not (< $i4276914 100000)))
        ($main_sum359 $a4256912 $b4266913 $i4276914 $f4286915 $a4256912 $b4266913 $i4276914 $f4286915))))

; if then
(assert
  (forall (($a4256912 (Array Int Int)) ($b4266913 (Array Int Int)) ($i4276914 Int) ($f4286915 Int))
    (=> (and (>= (select $a4256912 $i4276914) 0)
             (< $i4276914 100000)
             ($main_inv359 $a4256912 $b4266913 $i4276914 $f4286915))
        ($main_if105 $a4256912 $b4266913 $i4276914 $f4286915 $a4256912 (store $b4266913 $i4276914 1) $i4276914 $f4286915))))

; if else
(assert
  (forall (($a4256912 (Array Int Int)) ($b4266913 (Array Int Int)) ($i4276914 Int) ($f4286915 Int))
    (=> (and (not (>= (select $a4256912 $i4276914) 0))
             (< $i4276914 100000)
             ($main_inv359 $a4256912 $b4266913 $i4276914 $f4286915))
        ($main_if105 $a4256912 $b4266913 $i4276914 $f4286915 $a4256912 (store $b4266913 $i4276914 0) $i4276914 $f4286915))))

; forwards $main_inv359
(assert
  (forall (($b4266913 (Array Int Int)) ($f4286915 Int) ($i4276914 Int) ($f4286919 Int) ($b4266917 (Array Int Int)) ($a4256916 (Array Int Int)) ($i4276918 Int) ($a4256912 (Array Int Int)))
    (=> (and ($main_if105 $a4256912 $b4266913 $i4276914 $f4286915 $a4256916 $b4266917 $i4276918 $f4286919))
        ($main_inv359 $a4256916 $b4266917 (+ $i4276918 1) $f4286919))))

; backwards $main_sum359
(assert
  (forall (($b4266913 (Array Int Int)) ($f4286915 Int) ($i4276922 Int) ($i4276914 Int) ($f4286919 Int) ($b4266917 (Array Int Int)) ($b4266921 (Array Int Int)) ($i4276918 Int) ($a4256912 (Array Int Int)) ($a4256916 (Array Int Int)) ($f4286923 Int) ($a4256920 (Array Int Int)))
    (=> (and ($main_sum359 $a4256916 $b4266917 (+ $i4276918 1) $f4286919 $a4256920 $b4266921 $i4276922 $f4286923)
             ($main_if105 $a4256912 $b4266913 $i4276914 $f4286915 $a4256916 $b4266917 $i4276918 $f4286919))
        ($main_sum359 $a4256912 $b4266913 $i4276914 $f4286915 $a4256920 $b4266921 $i4276922 $f4286923))))

; loop entry $main_inv360
(assert
  (forall (($i4276910 Int) ($i427 Int) ($f428 Int) ($i4276926 Int) ($b4266925 (Array Int Int)) ($f4286911 Int) ($a4256908 (Array Int Int)) ($b4266909 (Array Int Int)) ($f4286927 Int) ($a4256924 (Array Int Int)) ($b426 (Array Int Int)) ($a425 (Array Int Int)))
    (=> (and (= $f4286927 1)
             ($main_sum359 $a4256908 $b4266909 0 $f4286911 $a4256924 $b4266925 $i4276926 $f4286927)
             ($main_sum358 $a425 $b426 0 $f428 $a4256908 $b4266909 $i4276910 $f4286911)
             (= $i427 0))
        ($main_inv360 $a4256924 $b4266925 0 $f4286927))))

; loop term $main_sum360
(assert
  (forall (($a4256928 (Array Int Int)) ($b4266929 (Array Int Int)) ($i4276930 Int) ($f4286931 Int))
    (=> (and (not (< $i4276930 100000)))
        ($main_sum360 $a4256928 $b4266929 $i4276930 $f4286931 $a4256928 $b4266929 $i4276930 $f4286931))))

; if then
(assert
  (forall (($a4256928 (Array Int Int)) ($b4266929 (Array Int Int)) ($i4276930 Int) ($f4286931 Int))
    (=> (and (>= (select $a4256928 $i4276930) 0)
             (= (select $b4266929 $i4276930) 0)
             (< $i4276930 100000)
             ($main_inv360 $a4256928 $b4266929 $i4276930 $f4286931))
        ($main_if106 $a4256928 $b4266929 $i4276930 $f4286931 $a4256928 $b4266929 $i4276930 0))))

; if else
(assert
  (forall (($a4256928 (Array Int Int)) ($b4266929 (Array Int Int)) ($i4276930 Int) ($f4286931 Int))
    (=> (and (not (and (>= (select $a4256928 $i4276930) 0) (= (select $b4266929 $i4276930) 0)))
             (< $i4276930 100000)
             ($main_inv360 $a4256928 $b4266929 $i4276930 $f4286931))
        ($main_if106 $a4256928 $b4266929 $i4276930 $f4286931 $a4256928 $b4266929 $i4276930 $f4286931))))

; if then
(assert
  (forall (($i4276930 Int) ($b4266929 (Array Int Int)) ($a4256928 (Array Int Int)) ($a4256932 (Array Int Int)) ($f4286931 Int) ($i4276934 Int) ($f4286935 Int) ($b4266933 (Array Int Int)))
    (=> (and (< (select $a4256932 $i4276934) 0)
             (= (select $b4266933 $i4276934) 0)
             ($main_if106 $a4256928 $b4266929 $i4276930 $f4286931 $a4256932 $b4266933 $i4276934 $f4286935))
        ($main_if107 $a4256928 $b4266929 $i4276930 $f4286931 $a4256932 $b4266933 $i4276934 0))))

; if else
(assert
  (forall (($i4276930 Int) ($b4266929 (Array Int Int)) ($a4256928 (Array Int Int)) ($a4256932 (Array Int Int)) ($f4286931 Int) ($i4276934 Int) ($f4286935 Int) ($b4266933 (Array Int Int)))
    (=> (and (not (and (< (select $a4256932 $i4276934) 0) (= (select $b4266933 $i4276934) 0)))
             ($main_if106 $a4256928 $b4266929 $i4276930 $f4286931 $a4256932 $b4266933 $i4276934 $f4286935))
        ($main_if107 $a4256928 $b4266929 $i4276930 $f4286931 $a4256932 $b4266933 $i4276934 $f4286935))))

; forwards $main_inv360
(assert
  (forall (($b4266937 (Array Int Int)) ($i4276930 Int) ($i4276938 Int) ($a4256936 (Array Int Int)) ($b4266929 (Array Int Int)) ($a4256928 (Array Int Int)) ($f4286931 Int) ($f4286939 Int))
    (=> (and ($main_if107 $a4256928 $b4266929 $i4276930 $f4286931 $a4256936 $b4266937 $i4276938 $f4286939))
        ($main_inv360 $a4256936 $b4266937 (+ $i4276938 1) $f4286939))))

; backwards $main_sum360
(assert
  (forall (($b4266937 (Array Int Int)) ($i4276930 Int) ($i4276938 Int) ($a4256936 (Array Int Int)) ($b4266929 (Array Int Int)) ($a4256928 (Array Int Int)) ($a4256940 (Array Int Int)) ($f4286931 Int) ($i4276942 Int) ($f4286943 Int) ($f4286939 Int) ($b4266941 (Array Int Int)))
    (=> (and ($main_sum360 $a4256936 $b4266937 (+ $i4276938 1) $f4286939 $a4256940 $b4266941 $i4276942 $f4286943)
             ($main_if107 $a4256928 $b4266929 $i4276930 $f4286931 $a4256936 $b4266937 $i4276938 $f4286939))
        ($main_sum360 $a4256928 $b4266929 $i4276930 $f4286931 $a4256940 $b4266941 $i4276942 $f4286943))))

; __VERIFIER_assert precondition
(assert
  (forall (($f4286947 Int) ($i4276910 Int) ($b4266945 (Array Int Int)) ($i427 Int) ($f428 Int) ($a4256944 (Array Int Int)) ($i4276926 Int) ($b4266925 (Array Int Int)) ($f4286911 Int) ($b4266909 (Array Int Int)) ($f4286927 Int) ($a4256924 (Array Int Int)) ($b426 (Array Int Int)) ($a425 (Array Int Int)) ($a4256908 (Array Int Int)) ($i4276946 Int))
    (=> (and ($main_sum360 $a4256924 $b4266925 0 $f4286927 $a4256944 $b4266945 $i4276946 $f4286947)
             (= $f4286927 1)
             ($main_sum359 $a4256908 $b4266909 0 $f4286911 $a4256924 $b4266925 $i4276926 $f4286927)
             ($main_sum358 $a425 $b426 0 $f428 $a4256908 $b4266909 $i4276910 $f4286911)
             (= $i427 0))
        ($__VERIFIER_assert_pre $f4286947))))

(check-sat)
