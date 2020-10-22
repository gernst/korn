(set-logic HORN)

(declare-fun $main_sum470 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if240 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if243 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum468 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if239 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if241 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv468 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv470 (Int Int Int Int) Bool)
(declare-fun $main_sum469 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if242 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv469 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if239 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8878 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if239 cond cond8878))
        (assume_abort_if_not cond8878))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8879 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8879))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if240 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8880 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if240 cond cond8880))
        (__VERIFIER_assert cond8880))))

; if else
(assert
  (forall (($int8881 Int) ($k619 Int) ($i617 Int) ($j618 Int) ($int8882 Int) ($n620 Int))
    (=> (and (< $int8882 1000000)
             (<= (- 2147483648) $int8882)
             (<= $int8882 2147483647)
             (<= (- 2147483648) $int8881)
             (<= $int8881 2147483647))
        ($main_if241 $i617 $j618 $k619 $n620 $i617 $j618 $int8881 $int8882))))

; goto END
(assert
  (forall (($j6188884 Int) ($k6198885 Int) ($n6208886 Int) ($k619 Int) ($i617 Int) ($j618 Int) ($n620 Int) ($i6178883 Int))
    (=> (and (not (= $k6198885 $n6208886))
             ($main_if241 $i617 $j618 $k619 $n620 $i6178883 $j6188884 $k6198885 $n6208886))
        ($main_END $i617 $j618 $k619 $n620 $i6178883 $j6188884 $k6198885 $n6208886))))

; if then
(assert
  (forall (($j6188884 Int) ($k6198885 Int) ($n6208886 Int) ($k619 Int) ($i617 Int) ($j618 Int) ($n620 Int) ($i6178883 Int))
    (=> (and (= $k6198885 $n6208886)
             ($main_if241 $i617 $j618 $k619 $n620 $i6178883 $j6188884 $k6198885 $n6208886))
        ($main_if242 $i617 $j618 $k619 $n620 $i6178883 $j6188884 $k6198885 $n6208886))))

; loop entry $main_inv468
(assert
  (forall (($n6208890 Int) ($k619 Int) ($j618 Int) ($n620 Int) ($k6198889 Int) ($i617 Int) ($j6188888 Int) ($i6178887 Int))
    (=> (and ($main_if242 $i617 $j618 $k619 $n620 $i6178887 $j6188888 $k6198889 $n6208890))
        ($main_inv468 0 $j6188888 $k6198889 $n6208890))))

; loop term $main_sum468
(assert
  (forall (($i6178891 Int) ($j6188892 Int) ($k6198893 Int) ($n6208894 Int))
    (=> (and (not (< $i6178891 $n6208894)))
        ($main_sum468 $i6178891 $j6188892 $k6198893 $n6208894 $i6178891 $j6188892 $k6198893 $n6208894))))

; loop entry $main_inv469
(assert
  (forall (($i6178891 Int) ($k6198893 Int) ($n6208894 Int) ($j6188892 Int))
    (=> (and (< $i6178891 $n6208894)
             ($main_inv468 $i6178891 $j6188892 $k6198893 $n6208894))
        ($main_inv469 $i6178891 (* 2 $i6178891) $k6198893 $n6208894))))

; loop term $main_sum469
(assert
  (forall (($i6178895 Int) ($j6188896 Int) ($k6198897 Int) ($n6208898 Int))
    (=> (and (not (< $j6188896 $n6208898)))
        ($main_sum469 $i6178895 $j6188896 $k6198897 $n6208898 $i6178895 $j6188896 $k6198897 $n6208898))))

; loop entry $main_inv470
(assert
  (forall (($i6178895 Int) ($j6188896 Int) ($k6198897 Int) ($int8899 Int) ($n6208898 Int))
    (=> (and (not (= $int8899 0))
             (<= (- 2147483648) $int8899)
             (<= $int8899 2147483647)
             (< $j6188896 $n6208898)
             ($main_inv469 $i6178895 $j6188896 $k6198897 $n6208898))
        ($main_inv470 $i6178895 $j6188896 $j6188896 $n6208898))))

; loop term $main_sum470
(assert
  (forall (($i6178900 Int) ($j6188901 Int) ($k6198902 Int) ($n6208903 Int))
    (=> (and (not (< $k6198902 $n6208903)))
        ($main_sum470 $i6178900 $j6188901 $k6198902 $n6208903 $i6178900 $j6188901 $k6198902 $n6208903))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6198902 Int) ($i6178900 Int) ($n6208903 Int) ($j6188901 Int))
    (=> (and (< $k6198902 $n6208903)
             ($main_inv470 $i6178900 $j6188901 $k6198902 $n6208903))
        ($__VERIFIER_assert_pre (ite (>= $k6198902 (* 2 $i6178900)) 1 0)))))

; forwards $main_inv470
(assert
  (forall (($i6178900 Int) ($j6188901 Int) ($k6198902 Int) ($n6208903 Int))
    (=> (and (__VERIFIER_assert (ite (>= $k6198902 (* 2 $i6178900)) 1 0))
             (< $k6198902 $n6208903)
             ($main_inv470 $i6178900 $j6188901 $k6198902 $n6208903))
        ($main_inv470 $i6178900 $j6188901 (+ $k6198902 1) $n6208903))))

; backwards $main_sum470
(assert
  (forall (($j6188905 Int) ($k6198906 Int) ($k6198902 Int) ($j6188901 Int) ($i6178900 Int) ($n6208907 Int) ($n6208903 Int) ($i6178904 Int))
    (=> (and ($main_sum470 $i6178900 $j6188901 (+ $k6198902 1) $n6208903 $i6178904 $j6188905 $k6198906 $n6208907)
             (__VERIFIER_assert (ite (>= $k6198902 (* 2 $i6178900)) 1 0))
             (< $k6198902 $n6208903))
        ($main_sum470 $i6178900 $j6188901 $k6198902 $n6208903 $i6178904 $j6188905 $k6198906 $n6208907))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6178895 Int) ($j6188896 Int) ($k6198897 Int) ($int8899 Int) ($n6208898 Int))
    (=> (and (= $int8899 0)
             (<= (- 2147483648) $int8899)
             (<= $int8899 2147483647)
             (< $j6188896 $n6208898)
             ($main_inv469 $i6178895 $j6188896 $k6198897 $n6208898))
        ($__VERIFIER_assert_pre (ite (>= $k6198897 $n6208898) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6178895 Int) ($j6188896 Int) ($k6198897 Int) ($int8899 Int) ($n6208898 Int))
    (=> (and (__VERIFIER_assert (ite (>= $k6198897 $n6208898) 1 0))
             (= $int8899 0)
             (<= (- 2147483648) $int8899)
             (<= $int8899 2147483647)
             (< $j6188896 $n6208898)
             ($main_inv469 $i6178895 $j6188896 $k6198897 $n6208898))
        ($__VERIFIER_assert_pre (ite (<= $k6198897 $n6208898) 1 0)))))

; if then
(assert
  (forall (($n6208911 Int) ($j6188909 Int) ($i6178895 Int) ($i6178908 Int) ($j6188896 Int) ($k6198897 Int) ($int8899 Int) ($k6198910 Int) ($n6208898 Int))
    (=> (and ($main_sum470 $i6178895 $j6188896 $j6188896 $n6208898 $i6178908 $j6188909 $k6198910 $n6208911)
             (not (= $int8899 0))
             (<= (- 2147483648) $int8899)
             (<= $int8899 2147483647)
             (< $j6188896 $n6208898)
             ($main_inv469 $i6178895 $j6188896 $k6198897 $n6208898))
        ($main_if243 $i6178895 $j6188896 $k6198897 $n6208898 $i6178908 $j6188909 $k6198910 $n6208911))))

; if else
(assert
  (forall (($i6178895 Int) ($j6188896 Int) ($k6198897 Int) ($int8899 Int) ($n6208898 Int))
    (=> (and (__VERIFIER_assert (ite (<= $k6198897 $n6208898) 1 0))
             (__VERIFIER_assert (ite (>= $k6198897 $n6208898) 1 0))
             (= $int8899 0)
             (<= (- 2147483648) $int8899)
             (<= $int8899 2147483647)
             (< $j6188896 $n6208898)
             ($main_inv469 $i6178895 $j6188896 $k6198897 $n6208898))
        ($main_if243 $i6178895 $j6188896 $k6198897 $n6208898 $i6178895 $j6188896 $k6198897 $n6208898))))

; forwards $main_inv469
(assert
  (forall (($n6208915 Int) ($k6198914 Int) ($i6178895 Int) ($j6188913 Int) ($j6188896 Int) ($k6198897 Int) ($i6178912 Int) ($n6208898 Int))
    (=> (and ($main_if243 $i6178895 $j6188896 $k6198897 $n6208898 $i6178912 $j6188913 $k6198914 $n6208915))
        ($main_inv469 $i6178912 (+ $j6188913 1) $k6198914 $n6208915))))

; backwards $main_sum469
(assert
  (forall (($n6208915 Int) ($k6198914 Int) ($k6198918 Int) ($n6208919 Int) ($i6178895 Int) ($j6188913 Int) ($j6188896 Int) ($k6198897 Int) ($i6178912 Int) ($n6208898 Int) ($i6178916 Int) ($j6188917 Int))
    (=> (and ($main_sum469 $i6178912 (+ $j6188913 1) $k6198914 $n6208915 $i6178916 $j6188917 $k6198918 $n6208919)
             ($main_if243 $i6178895 $j6188896 $k6198897 $n6208898 $i6178912 $j6188913 $k6198914 $n6208915))
        ($main_sum469 $i6178895 $j6188896 $k6198897 $n6208898 $i6178916 $j6188917 $k6198918 $n6208919))))

; forwards $main_inv468
(assert
  (forall (($i6178891 Int) ($k6198893 Int) ($k6198922 Int) ($n6208894 Int) ($i6178920 Int) ($j6188892 Int) ($j6188921 Int) ($n6208923 Int))
    (=> (and ($main_sum469 $i6178891 (* 2 $i6178891) $k6198893 $n6208894 $i6178920 $j6188921 $k6198922 $n6208923)
             (< $i6178891 $n6208894)
             ($main_inv468 $i6178891 $j6188892 $k6198893 $n6208894))
        ($main_inv468 (+ $i6178920 1) $j6188921 $k6198922 $n6208923))))

; backwards $main_sum468
(assert
  (forall (($j6188925 Int) ($k6198893 Int) ($k6198922 Int) ($j6188892 Int) ($i6178891 Int) ($i6178924 Int) ($j6188921 Int) ($n6208923 Int) ($k6198926 Int) ($n6208894 Int) ($i6178920 Int) ($n6208927 Int))
    (=> (and ($main_sum468 (+ $i6178920 1) $j6188921 $k6198922 $n6208923 $i6178924 $j6188925 $k6198926 $n6208927)
             ($main_sum469 $i6178891 (* 2 $i6178891) $k6198893 $n6208894 $i6178920 $j6188921 $k6198922 $n6208923)
             (< $i6178891 $n6208894))
        ($main_sum468 $i6178891 $j6188892 $k6198893 $n6208894 $i6178924 $j6188925 $k6198926 $n6208927))))

; label END
(assert
  (forall (($n6208890 Int) ($k619 Int) ($n6208931 Int) ($k6198930 Int) ($j618 Int) ($j6188929 Int) ($n620 Int) ($i6178928 Int) ($k6198889 Int) ($i617 Int) ($j6188888 Int) ($i6178887 Int))
    (=> (and ($main_sum468 0 $j6188888 $k6198889 $n6208890 $i6178928 $j6188929 $k6198930 $n6208931)
             ($main_if242 $i617 $j618 $k619 $n620 $i6178887 $j6188888 $k6198889 $n6208890))
        ($main_END $i617 $j618 $k619 $n620 $i6178928 $j6188929 $k6198930 $n6208931))))

(check-sat)
