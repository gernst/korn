(set-logic HORN)

(declare-fun $main_inv288 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv293 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum291 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum292 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum286 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum293 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if79 (Int Int) Bool)
(declare-fun $main_inv290 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum287 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv289 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum294 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv294 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv286 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum289 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv291 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum288 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv292 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv287 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum290 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5865 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5865))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if79 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5866 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if79 cond cond5866))
        (__VERIFIER_assert cond5866))))

; loop entry $main_inv286
(assert
  (forall (($a358 (Array Int Int)) ($i359 Int) ($x360 Int))
    (=> (and (= $i359 0))
        ($main_inv286 $a358 $i359 $x360))))

; loop term $main_sum286
(assert
  (forall (($a3585867 (Array Int Int)) ($i3595868 Int) ($x3605869 Int))
    (=> (and (not (< $i3595868 100000)))
        ($main_sum286 $a3585867 $i3595868 $x3605869 $a3585867 $i3595868 $x3605869))))

; forwards $main_inv286
(assert
  (forall (($a3585867 (Array Int Int)) ($i3595868 Int) ($x3605869 Int))
    (=> (and (< $i3595868 100000)
             ($main_inv286 $a3585867 $i3595868 $x3605869))
        ($main_inv286 (store $a3585867 $i3595868 42) (+ $i3595868 1) $x3605869))))

; backwards $main_sum286
(assert
  (forall (($a3585867 (Array Int Int)) ($a3585870 (Array Int Int)) ($i3595871 Int) ($i3595868 Int) ($x3605869 Int) ($x3605872 Int))
    (=> (and ($main_sum286 (store $a3585867 $i3595868 42) (+ $i3595868 1) $x3605869 $a3585870 $i3595871 $x3605872)
             (< $i3595868 100000))
        ($main_sum286 $a3585867 $i3595868 $x3605869 $a3585870 $i3595871 $x3605872))))

; loop entry $main_inv287
(assert
  (forall (($x360 Int) ($i359 Int) ($a358 (Array Int Int)) ($x3605875 Int) ($i3595874 Int) ($a3585873 (Array Int Int)))
    (=> (and ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv287 $a3585873 0 $x3605875))))

; loop term $main_sum287
(assert
  (forall (($a3585876 (Array Int Int)) ($i3595877 Int) ($x3605878 Int))
    (=> (and (not (< $i3595877 100000)))
        ($main_sum287 $a3585876 $i3595877 $x3605878 $a3585876 $i3595877 $x3605878))))

; forwards $main_inv287
(assert
  (forall (($a3585876 (Array Int Int)) ($i3595877 Int) ($x3605878 Int))
    (=> (and (< $i3595877 100000)
             ($main_inv287 $a3585876 $i3595877 $x3605878))
        ($main_inv287 (store $a3585876 $i3595877 43) (+ $i3595877 1) $x3605878))))

; backwards $main_sum287
(assert
  (forall (($x3605881 Int) ($a3585879 (Array Int Int)) ($x3605878 Int) ($a3585876 (Array Int Int)) ($i3595880 Int) ($i3595877 Int))
    (=> (and ($main_sum287 (store $a3585876 $i3595877 43) (+ $i3595877 1) $x3605878 $a3585879 $i3595880 $x3605881)
             (< $i3595877 100000))
        ($main_sum287 $a3585876 $i3595877 $x3605878 $a3585879 $i3595880 $x3605881))))

; loop entry $main_inv288
(assert
  (forall (($x3605884 Int) ($i359 Int) ($a358 (Array Int Int)) ($x3605875 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($i3595883 Int) ($x360 Int) ($a3585882 (Array Int Int)))
    (=> (and ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv288 $a3585882 0 $x3605884))))

; loop term $main_sum288
(assert
  (forall (($a3585885 (Array Int Int)) ($i3595886 Int) ($x3605887 Int))
    (=> (and (not (< $i3595886 100000)))
        ($main_sum288 $a3585885 $i3595886 $x3605887 $a3585885 $i3595886 $x3605887))))

; forwards $main_inv288
(assert
  (forall (($a3585885 (Array Int Int)) ($i3595886 Int) ($x3605887 Int))
    (=> (and (< $i3595886 100000)
             ($main_inv288 $a3585885 $i3595886 $x3605887))
        ($main_inv288 (store $a3585885 $i3595886 44) (+ $i3595886 1) $x3605887))))

; backwards $main_sum288
(assert
  (forall (($x3605887 Int) ($i3595886 Int) ($a3585885 (Array Int Int)) ($a3585888 (Array Int Int)) ($x3605890 Int) ($i3595889 Int))
    (=> (and ($main_sum288 (store $a3585885 $i3595886 44) (+ $i3595886 1) $x3605887 $a3585888 $i3595889 $x3605890)
             (< $i3595886 100000))
        ($main_sum288 $a3585885 $i3595886 $x3605887 $a3585888 $i3595889 $x3605890))))

; loop entry $main_inv289
(assert
  (forall (($i359 Int) ($a358 (Array Int Int)) ($x3605875 Int) ($x3605893 Int) ($a3585891 (Array Int Int)) ($i3595874 Int) ($a3585873 (Array Int Int)) ($i3595883 Int) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)))
    (=> (and ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv289 $a3585891 0 $x3605893))))

; loop term $main_sum289
(assert
  (forall (($a3585894 (Array Int Int)) ($i3595895 Int) ($x3605896 Int))
    (=> (and (not (< $i3595895 100000)))
        ($main_sum289 $a3585894 $i3595895 $x3605896 $a3585894 $i3595895 $x3605896))))

; forwards $main_inv289
(assert
  (forall (($a3585894 (Array Int Int)) ($i3595895 Int) ($x3605896 Int))
    (=> (and (< $i3595895 100000)
             ($main_inv289 $a3585894 $i3595895 $x3605896))
        ($main_inv289 (store $a3585894 $i3595895 45) (+ $i3595895 1) $x3605896))))

; backwards $main_sum289
(assert
  (forall (($a3585897 (Array Int Int)) ($i3595895 Int) ($x3605896 Int) ($i3595898 Int) ($a3585894 (Array Int Int)) ($x3605899 Int))
    (=> (and ($main_sum289 (store $a3585894 $i3595895 45) (+ $i3595895 1) $x3605896 $a3585897 $i3595898 $x3605899)
             (< $i3595895 100000))
        ($main_sum289 $a3585894 $i3595895 $x3605896 $a3585897 $i3595898 $x3605899))))

; loop entry $main_inv290
(assert
  (forall (($x3605902 Int) ($a3585900 (Array Int Int)) ($i359 Int) ($a358 (Array Int Int)) ($x3605875 Int) ($x3605893 Int) ($a3585891 (Array Int Int)) ($i3595901 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($i3595883 Int) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)))
    (=> (and ($main_sum289 $a3585891 0 $x3605893 $a3585900 $i3595901 $x3605902)
             ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv290 $a3585900 0 $x3605902))))

; loop term $main_sum290
(assert
  (forall (($a3585903 (Array Int Int)) ($i3595904 Int) ($x3605905 Int))
    (=> (and (not (< $i3595904 100000)))
        ($main_sum290 $a3585903 $i3595904 $x3605905 $a3585903 $i3595904 $x3605905))))

; forwards $main_inv290
(assert
  (forall (($a3585903 (Array Int Int)) ($i3595904 Int) ($x3605905 Int))
    (=> (and (< $i3595904 100000)
             ($main_inv290 $a3585903 $i3595904 $x3605905))
        ($main_inv290 (store $a3585903 $i3595904 46) (+ $i3595904 1) $x3605905))))

; backwards $main_sum290
(assert
  (forall (($x3605905 Int) ($i3595907 Int) ($a3585903 (Array Int Int)) ($a3585906 (Array Int Int)) ($x3605908 Int) ($i3595904 Int))
    (=> (and ($main_sum290 (store $a3585903 $i3595904 46) (+ $i3595904 1) $x3605905 $a3585906 $i3595907 $x3605908)
             (< $i3595904 100000))
        ($main_sum290 $a3585903 $i3595904 $x3605905 $a3585906 $i3595907 $x3605908))))

; loop entry $main_inv291
(assert
  (forall (($x3605902 Int) ($i359 Int) ($a358 (Array Int Int)) ($x3605911 Int) ($x3605875 Int) ($a3585891 (Array Int Int)) ($i3595901 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($i3595883 Int) ($i3595910 Int) ($a3585900 (Array Int Int)) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)) ($a3585909 (Array Int Int)) ($x3605893 Int))
    (=> (and ($main_sum290 $a3585900 0 $x3605902 $a3585909 $i3595910 $x3605911)
             ($main_sum289 $a3585891 0 $x3605893 $a3585900 $i3595901 $x3605902)
             ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv291 $a3585909 0 $x3605911))))

; loop term $main_sum291
(assert
  (forall (($a3585912 (Array Int Int)) ($i3595913 Int) ($x3605914 Int))
    (=> (and (not (< $i3595913 100000)))
        ($main_sum291 $a3585912 $i3595913 $x3605914 $a3585912 $i3595913 $x3605914))))

; forwards $main_inv291
(assert
  (forall (($a3585912 (Array Int Int)) ($i3595913 Int) ($x3605914 Int))
    (=> (and (< $i3595913 100000)
             ($main_inv291 $a3585912 $i3595913 $x3605914))
        ($main_inv291 (store $a3585912 $i3595913 47) (+ $i3595913 1) $x3605914))))

; backwards $main_sum291
(assert
  (forall (($a3585912 (Array Int Int)) ($i3595913 Int) ($i3595916 Int) ($a3585915 (Array Int Int)) ($x3605917 Int) ($x3605914 Int))
    (=> (and ($main_sum291 (store $a3585912 $i3595913 47) (+ $i3595913 1) $x3605914 $a3585915 $i3595916 $x3605917)
             (< $i3595913 100000))
        ($main_sum291 $a3585912 $i3595913 $x3605914 $a3585915 $i3595916 $x3605917))))

; loop entry $main_inv292
(assert
  (forall (($x3605902 Int) ($i359 Int) ($a3585918 (Array Int Int)) ($x3605911 Int) ($x3605875 Int) ($a3585891 (Array Int Int)) ($i3595901 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($x3605920 Int) ($i3595883 Int) ($i3595910 Int) ($a3585900 (Array Int Int)) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)) ($i3595919 Int) ($a358 (Array Int Int)) ($a3585909 (Array Int Int)) ($x3605893 Int))
    (=> (and ($main_sum291 $a3585909 0 $x3605911 $a3585918 $i3595919 $x3605920)
             ($main_sum290 $a3585900 0 $x3605902 $a3585909 $i3595910 $x3605911)
             ($main_sum289 $a3585891 0 $x3605893 $a3585900 $i3595901 $x3605902)
             ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv292 $a3585918 0 $x3605920))))

; loop term $main_sum292
(assert
  (forall (($a3585921 (Array Int Int)) ($i3595922 Int) ($x3605923 Int))
    (=> (and (not (< $i3595922 100000)))
        ($main_sum292 $a3585921 $i3595922 $x3605923 $a3585921 $i3595922 $x3605923))))

; forwards $main_inv292
(assert
  (forall (($a3585921 (Array Int Int)) ($i3595922 Int) ($x3605923 Int))
    (=> (and (< $i3595922 100000)
             ($main_inv292 $a3585921 $i3595922 $x3605923))
        ($main_inv292 (store $a3585921 $i3595922 48) (+ $i3595922 1) $x3605923))))

; backwards $main_sum292
(assert
  (forall (($a3585921 (Array Int Int)) ($i3595922 Int) ($x3605923 Int) ($i3595925 Int) ($a3585924 (Array Int Int)) ($x3605926 Int))
    (=> (and ($main_sum292 (store $a3585921 $i3595922 48) (+ $i3595922 1) $x3605923 $a3585924 $i3595925 $x3605926)
             (< $i3595922 100000))
        ($main_sum292 $a3585921 $i3595922 $x3605923 $a3585924 $i3595925 $x3605926))))

; loop entry $main_inv293
(assert
  (forall (($x3605902 Int) ($i3595928 Int) ($a3585927 (Array Int Int)) ($i359 Int) ($a3585918 (Array Int Int)) ($x3605911 Int) ($x3605875 Int) ($a3585891 (Array Int Int)) ($i3595901 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($x3605920 Int) ($i3595883 Int) ($a3585900 (Array Int Int)) ($i3595910 Int) ($x3605929 Int) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)) ($i3595919 Int) ($a358 (Array Int Int)) ($a3585909 (Array Int Int)) ($x3605893 Int))
    (=> (and ($main_sum292 $a3585918 0 $x3605920 $a3585927 $i3595928 $x3605929)
             ($main_sum291 $a3585909 0 $x3605911 $a3585918 $i3595919 $x3605920)
             ($main_sum290 $a3585900 0 $x3605902 $a3585909 $i3595910 $x3605911)
             ($main_sum289 $a3585891 0 $x3605893 $a3585900 $i3595901 $x3605902)
             ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv293 $a3585927 0 $x3605929))))

; loop term $main_sum293
(assert
  (forall (($a3585930 (Array Int Int)) ($i3595931 Int) ($x3605932 Int))
    (=> (and (not (< $i3595931 100000)))
        ($main_sum293 $a3585930 $i3595931 $x3605932 $a3585930 $i3595931 $x3605932))))

; forwards $main_inv293
(assert
  (forall (($a3585930 (Array Int Int)) ($i3595931 Int) ($x3605932 Int))
    (=> (and (< $i3595931 100000)
             ($main_inv293 $a3585930 $i3595931 $x3605932))
        ($main_inv293 (store $a3585930 $i3595931 49) (+ $i3595931 1) $x3605932))))

; backwards $main_sum293
(assert
  (forall (($x3605935 Int) ($i3595934 Int) ($i3595931 Int) ($x3605932 Int) ($a3585933 (Array Int Int)) ($a3585930 (Array Int Int)))
    (=> (and ($main_sum293 (store $a3585930 $i3595931 49) (+ $i3595931 1) $x3605932 $a3585933 $i3595934 $x3605935)
             (< $i3595931 100000))
        ($main_sum293 $a3585930 $i3595931 $x3605932 $a3585933 $i3595934 $x3605935))))

; loop entry $main_inv294
(assert
  (forall (($i3595937 Int) ($i3595928 Int) ($a3585927 (Array Int Int)) ($i359 Int) ($x3605938 Int) ($a3585918 (Array Int Int)) ($x3605911 Int) ($x3605875 Int) ($a3585891 (Array Int Int)) ($i3595901 Int) ($i3595874 Int) ($a3585873 (Array Int Int)) ($x3605920 Int) ($i3595883 Int) ($a3585936 (Array Int Int)) ($x3605902 Int) ($a3585900 (Array Int Int)) ($i3595910 Int) ($x3605929 Int) ($i3595892 Int) ($x3605884 Int) ($x360 Int) ($a3585882 (Array Int Int)) ($i3595919 Int) ($a358 (Array Int Int)) ($a3585909 (Array Int Int)) ($x3605893 Int))
    (=> (and ($main_sum293 $a3585927 0 $x3605929 $a3585936 $i3595937 $x3605938)
             ($main_sum292 $a3585918 0 $x3605920 $a3585927 $i3595928 $x3605929)
             ($main_sum291 $a3585909 0 $x3605911 $a3585918 $i3595919 $x3605920)
             ($main_sum290 $a3585900 0 $x3605902 $a3585909 $i3595910 $x3605911)
             ($main_sum289 $a3585891 0 $x3605893 $a3585900 $i3595901 $x3605902)
             ($main_sum288 $a3585882 0 $x3605884 $a3585891 $i3595892 $x3605893)
             ($main_sum287 $a3585873 0 $x3605875 $a3585882 $i3595883 $x3605884)
             ($main_sum286 $a358 $i359 $x360 $a3585873 $i3595874 $x3605875)
             (= $i359 0))
        ($main_inv294 $a3585936 $i3595937 0))))

; loop term $main_sum294
(assert
  (forall (($a3585939 (Array Int Int)) ($i3595940 Int) ($x3605941 Int))
    (=> (and (not (< $x3605941 100000)))
        ($main_sum294 $a3585939 $i3595940 $x3605941 $a3585939 $i3595940 $x3605941))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3585939 (Array Int Int)) ($x3605941 Int) ($i3595940 Int))
    (=> (and (< $x3605941 100000)
             ($main_inv294 $a3585939 $i3595940 $x3605941))
        ($__VERIFIER_assert_pre (ite (= (select $a3585939 $x3605941) 48) 1 0)))))

; forwards $main_inv294
(assert
  (forall (($a3585939 (Array Int Int)) ($i3595940 Int) ($x3605941 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3585939 $x3605941) 48) 1 0))
             (< $x3605941 100000)
             ($main_inv294 $a3585939 $i3595940 $x3605941))
        ($main_inv294 $a3585939 $i3595940 (+ $x3605941 1)))))

; backwards $main_sum294
(assert
  (forall (($x3605941 Int) ($x3605944 Int) ($a3585939 (Array Int Int)) ($i3595940 Int) ($a3585942 (Array Int Int)) ($i3595943 Int))
    (=> (and ($main_sum294 $a3585939 $i3595940 (+ $x3605941 1) $a3585942 $i3595943 $x3605944)
             (__VERIFIER_assert (ite (= (select $a3585939 $x3605941) 48) 1 0))
             (< $x3605941 100000))
        ($main_sum294 $a3585939 $i3595940 $x3605941 $a3585942 $i3595943 $x3605944))))

(check-sat)
