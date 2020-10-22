(set-logic HORN)

(declare-fun $main_inv261 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv259 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv256 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv260 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if75 (Int) Bool)
(declare-fun $main_sum261 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv262 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum258 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv257 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum262 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum257 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum260 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv258 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum256 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum259 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3843 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3843))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if75 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3844 Int))
    (=> (and ($__VERIFIER_assert_if75 cond3844))
        (__VERIFIER_assert cond3844))))

; loop entry $main_inv256
(assert
  (forall (($a346 (Array Int Int)) ($i347 Int) ($x348 Int))
    (=> (and (= $i347 0))
        ($main_inv256 $a346 $i347 $x348))))

; loop term $main_sum256
(assert
  (forall (($a3463845 (Array Int Int)) ($i3473846 Int) ($x3483847 Int))
    (=> (and (not (< $i3473846 100000))
             ($main_inv256 $a3463845 $i3473846 $x3483847))
        ($main_sum256 $a3463845 $i3473846 $x3483847))))

; forwards $main_inv256
(assert
  (forall (($a3463845 (Array Int Int)) ($i3473846 Int) ($x3483847 Int))
    (=> (and (< $i3473846 100000)
             ($main_inv256 $a3463845 $i3473846 $x3483847))
        ($main_inv256 (store $a3463845 $i3473846 42) (+ $i3473846 1) $x3483847))))

; loop entry $main_inv257
(assert
  (forall (($a3463848 (Array Int Int)) ($x3483850 Int) ($i3473849 Int))
    (=> (and ($main_sum256 $a3463848 $i3473849 $x3483850))
        ($main_inv257 $a3463848 0 $x3483850))))

; loop term $main_sum257
(assert
  (forall (($a3463851 (Array Int Int)) ($i3473852 Int) ($x3483853 Int))
    (=> (and (not (< $i3473852 100000))
             ($main_inv257 $a3463851 $i3473852 $x3483853))
        ($main_sum257 $a3463851 $i3473852 $x3483853))))

; forwards $main_inv257
(assert
  (forall (($a3463851 (Array Int Int)) ($i3473852 Int) ($x3483853 Int))
    (=> (and (< $i3473852 100000)
             ($main_inv257 $a3463851 $i3473852 $x3483853))
        ($main_inv257 (store $a3463851 $i3473852 43) (+ $i3473852 1) $x3483853))))

; loop entry $main_inv258
(assert
  (forall (($a3463854 (Array Int Int)) ($x3483856 Int) ($i3473855 Int))
    (=> (and ($main_sum257 $a3463854 $i3473855 $x3483856))
        ($main_inv258 $a3463854 0 $x3483856))))

; loop term $main_sum258
(assert
  (forall (($a3463857 (Array Int Int)) ($i3473858 Int) ($x3483859 Int))
    (=> (and (not (< $i3473858 100000))
             ($main_inv258 $a3463857 $i3473858 $x3483859))
        ($main_sum258 $a3463857 $i3473858 $x3483859))))

; forwards $main_inv258
(assert
  (forall (($a3463857 (Array Int Int)) ($i3473858 Int) ($x3483859 Int))
    (=> (and (< $i3473858 100000)
             ($main_inv258 $a3463857 $i3473858 $x3483859))
        ($main_inv258 (store $a3463857 $i3473858 44) (+ $i3473858 1) $x3483859))))

; loop entry $main_inv259
(assert
  (forall (($a3463860 (Array Int Int)) ($x3483862 Int) ($i3473861 Int))
    (=> (and ($main_sum258 $a3463860 $i3473861 $x3483862))
        ($main_inv259 $a3463860 0 $x3483862))))

; loop term $main_sum259
(assert
  (forall (($a3463863 (Array Int Int)) ($i3473864 Int) ($x3483865 Int))
    (=> (and (not (< $i3473864 100000))
             ($main_inv259 $a3463863 $i3473864 $x3483865))
        ($main_sum259 $a3463863 $i3473864 $x3483865))))

; forwards $main_inv259
(assert
  (forall (($a3463863 (Array Int Int)) ($i3473864 Int) ($x3483865 Int))
    (=> (and (< $i3473864 100000)
             ($main_inv259 $a3463863 $i3473864 $x3483865))
        ($main_inv259 (store $a3463863 $i3473864 45) (+ $i3473864 1) $x3483865))))

; loop entry $main_inv260
(assert
  (forall (($a3463866 (Array Int Int)) ($x3483868 Int) ($i3473867 Int))
    (=> (and ($main_sum259 $a3463866 $i3473867 $x3483868))
        ($main_inv260 $a3463866 0 $x3483868))))

; loop term $main_sum260
(assert
  (forall (($a3463869 (Array Int Int)) ($i3473870 Int) ($x3483871 Int))
    (=> (and (not (< $i3473870 100000))
             ($main_inv260 $a3463869 $i3473870 $x3483871))
        ($main_sum260 $a3463869 $i3473870 $x3483871))))

; forwards $main_inv260
(assert
  (forall (($a3463869 (Array Int Int)) ($i3473870 Int) ($x3483871 Int))
    (=> (and (< $i3473870 100000)
             ($main_inv260 $a3463869 $i3473870 $x3483871))
        ($main_inv260 (store $a3463869 $i3473870 46) (+ $i3473870 1) $x3483871))))

; loop entry $main_inv261
(assert
  (forall (($a3463872 (Array Int Int)) ($x3483874 Int) ($i3473873 Int))
    (=> (and ($main_sum260 $a3463872 $i3473873 $x3483874))
        ($main_inv261 $a3463872 0 $x3483874))))

; loop term $main_sum261
(assert
  (forall (($a3463875 (Array Int Int)) ($i3473876 Int) ($x3483877 Int))
    (=> (and (not (< $i3473876 100000))
             ($main_inv261 $a3463875 $i3473876 $x3483877))
        ($main_sum261 $a3463875 $i3473876 $x3483877))))

; forwards $main_inv261
(assert
  (forall (($a3463875 (Array Int Int)) ($i3473876 Int) ($x3483877 Int))
    (=> (and (< $i3473876 100000)
             ($main_inv261 $a3463875 $i3473876 $x3483877))
        ($main_inv261 (store $a3463875 $i3473876 47) (+ $i3473876 1) $x3483877))))

; loop entry $main_inv262
(assert
  (forall (($a3463878 (Array Int Int)) ($i3473879 Int) ($x3483880 Int))
    (=> (and ($main_sum261 $a3463878 $i3473879 $x3483880))
        ($main_inv262 $a3463878 $i3473879 0))))

; loop term $main_sum262
(assert
  (forall (($a3463881 (Array Int Int)) ($i3473882 Int) ($x3483883 Int))
    (=> (and (not (< $x3483883 100000))
             ($main_inv262 $a3463881 $i3473882 $x3483883))
        ($main_sum262 $a3463881 $i3473882 $x3483883))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3463881 (Array Int Int)) ($x3483883 Int) ($i3473882 Int))
    (=> (and (< $x3483883 100000)
             ($main_inv262 $a3463881 $i3473882 $x3483883))
        ($__VERIFIER_assert_pre (ite (= (select $a3463881 $x3483883) 46) 1 0)))))

; forwards $main_inv262
(assert
  (forall (($a3463881 (Array Int Int)) ($i3473882 Int) ($x3483883 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3463881 $x3483883) 46) 1 0))
             (< $x3483883 100000)
             ($main_inv262 $a3463881 $i3473882 $x3483883))
        ($main_inv262 $a3463881 $i3473882 (+ $x3483883 1)))))

(check-sat)
