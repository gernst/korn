(set-logic HORN)

(declare-fun $main_sum370 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $_strcmp_if116 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $_strcmp_sum368 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if117 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun _strcmp ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $_strcmp_inv368 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum369 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if115 (Int) Bool)
(declare-fun $_strcmp_pre ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv370 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv369 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4877 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4877))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if115 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4878 Int))
    (=> (and ($__VERIFIER_assert_if115 cond4878))
        (__VERIFIER_assert cond4878))))

; loop entry $_strcmp_inv368
(assert
  (forall ((src (Array Int Int)) (dst (Array Int Int)) ($i441 Int))
    (=> (and (= $i441 0)
             ($_strcmp_pre src dst))
        ($_strcmp_inv368 src dst $i441))))

; loop term $_strcmp_sum368
(assert
  (forall ((src4879 (Array Int Int)) (dst4880 (Array Int Int)) ($i4414881 Int))
    (=> (and (not (< $i4414881 100000))
             ($_strcmp_inv368 src4879 dst4880 $i4414881))
        ($_strcmp_sum368 src4879 dst4880 $i4414881))))

; post _strcmp
(assert
  (forall ((src4879 (Array Int Int)) (dst4880 (Array Int Int)) ($i4414881 Int))
    (=> (and (not (= (select dst4880 $i4414881) (select src4879 $i4414881)))
             (< $i4414881 100000)
             ($_strcmp_inv368 src4879 dst4880 $i4414881))
        (_strcmp src4879 dst4880 1))))

; if else
(assert
  (forall ((src4879 (Array Int Int)) (dst4880 (Array Int Int)) ($i4414881 Int))
    (=> (and (= (select dst4880 $i4414881) (select src4879 $i4414881))
             (< $i4414881 100000)
             ($_strcmp_inv368 src4879 dst4880 $i4414881))
        ($_strcmp_if116 src4879 dst4880 $i4414881))))

; forwards $_strcmp_inv368
(assert
  (forall ((src4882 (Array Int Int)) (dst4883 (Array Int Int)) ($i4414884 Int))
    (=> (and ($_strcmp_if116 src4882 dst4883 $i4414884))
        ($_strcmp_inv368 src4882 dst4883 (+ $i4414884 1)))))

; post _strcmp
(assert
  (forall ((src4885 (Array Int Int)) (dst4886 (Array Int Int)) ($i4414887 Int))
    (=> (and ($_strcmp_sum368 src4885 dst4886 $i4414887))
        (_strcmp src4885 dst4886 0))))

; loop entry $main_inv369
(assert
  (forall (($c445 Int) ($b443 (Array Int Int)) ($a442 (Array Int Int)) ($x446 Int) ($i444 Int))
    (=> (and (= $i444 0))
        ($main_inv369 $a442 $b443 $i444 $c445 $x446))))

; loop term $main_sum369
(assert
  (forall (($i4444890 Int) ($c4454891 Int) ($a4424888 (Array Int Int)) ($x4464892 Int) ($b4434889 (Array Int Int)))
    (=> (and (not (< $i4444890 100000))
             ($main_inv369 $a4424888 $b4434889 $i4444890 $c4454891 $x4464892))
        ($main_sum369 $a4424888 $b4434889 $i4444890 $c4454891 $x4464892))))

; forwards $main_inv369
(assert
  (forall (($i4444890 Int) ($c4454891 Int) ($a4424888 (Array Int Int)) ($int4894 Int) ($x4464892 Int) ($int4893 Int) ($b4434889 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4894)
             (<= $int4894 2147483647)
             (<= (- 2147483648) $int4893)
             (<= $int4893 2147483647)
             (< $i4444890 100000)
             ($main_inv369 $a4424888 $b4434889 $i4444890 $c4454891 $x4464892))
        ($main_inv369 (store $a4424888 $i4444890 $int4893) (store $b4434889 $i4444890 $int4894) (+ $i4444890 1) $c4454891 $x4464892))))

; _strcmp precondition
(assert
  (forall (($b4434896 (Array Int Int)) ($x4464899 Int) ($i4444897 Int) ($c4454898 Int) ($a4424895 (Array Int Int)))
    (=> (and ($main_sum369 $a4424895 $b4434896 $i4444897 $c4454898 $x4464899))
        ($_strcmp_pre $a4424895 $b4434896))))

; loop entry $main_inv370
(assert
  (forall (($b4434896 (Array Int Int)) ($x4464899 Int) ($i4444897 Int) ($result4900 Int) ($c4454898 Int) ($a4424895 (Array Int Int)))
    (=> (and (= $c4454898 0)
             (= $c4454898 $result4900)
             (_strcmp $a4424895 $b4434896 $result4900)
             ($main_sum369 $a4424895 $b4434896 $i4444897 $c4454898 $x4464899))
        ($main_inv370 $a4424895 $b4434896 $i4444897 $c4454898 0))))

; loop term $main_sum370
(assert
  (forall (($x4464905 Int) ($a4424901 (Array Int Int)) ($b4434902 (Array Int Int)) ($c4454904 Int) ($i4444903 Int))
    (=> (and (not (< $x4464905 100000))
             ($main_inv370 $a4424901 $b4434902 $i4444903 $c4454904 $x4464905))
        ($main_sum370 $a4424901 $b4434902 $i4444903 $c4454904 $x4464905))))

; __VERIFIER_assert precondition
(assert
  (forall (($x4464905 Int) ($a4424901 (Array Int Int)) ($b4434902 (Array Int Int)) ($c4454904 Int) ($i4444903 Int))
    (=> (and (< $x4464905 100000)
             ($main_inv370 $a4424901 $b4434902 $i4444903 $c4454904 $x4464905))
        ($__VERIFIER_assert_pre (ite (= (select $a4424901 $x4464905) (select $b4434902 $x4464905)) 1 0)))))

; forwards $main_inv370
(assert
  (forall (($x4464905 Int) ($a4424901 (Array Int Int)) ($b4434902 (Array Int Int)) ($c4454904 Int) ($i4444903 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4424901 $x4464905) (select $b4434902 $x4464905)) 1 0))
             (< $x4464905 100000)
             ($main_inv370 $a4424901 $b4434902 $i4444903 $c4454904 $x4464905))
        ($main_inv370 $a4424901 $b4434902 $i4444903 $c4454904 (+ $x4464905 1)))))

; if then
(assert
  (forall (($b4434907 (Array Int Int)) ($x4464910 Int) ($a4424906 (Array Int Int)) ($i4444908 Int) ($c4454909 Int))
    (=> (and ($main_sum370 $a4424906 $b4434907 $i4444908 $c4454909 $x4464910))
        ($main_if117 $a4424906 $b4434907 $i4444908 $c4454909 $x4464910))))

; if else
(assert
  (forall (($b4434896 (Array Int Int)) ($x4464899 Int) ($i4444897 Int) ($result4900 Int) ($c4454898 Int) ($a4424895 (Array Int Int)))
    (=> (and (not (= $c4454898 0))
             (= $c4454898 $result4900)
             (_strcmp $a4424895 $b4434896 $result4900)
             ($main_sum369 $a4424895 $b4434896 $i4444897 $c4454898 $x4464899))
        ($main_if117 $a4424895 $b4434896 $i4444897 $c4454898 $x4464899))))

(check-sat)
