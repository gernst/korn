(set-logic HORN)

(declare-fun $main_inv248 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum248 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum246 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum247 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv245 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum245 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv246 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if678 (Int) Bool)
(declare-fun $main_inv247 (Int Int Int Int Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14877 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14877))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if678 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14878 Int))
    (=> (and ($__VERIFIER_assert_if678 cond14878))
        (__VERIFIER_assert cond14878))))

; loop entry $main_inv245
(assert
  (forall (($key701 Int) ($v702 (Array Int Int)) ($i698 Int) ($SIZE697 Int) ($uint14879 Int) ($k700 Int))
    (=> (and (= $SIZE697 $uint14879)
             (<= 0 $uint14879)
             (<= $uint14879 4294967295))
        ($main_inv245 $SIZE697 $i698 0 $k700 $key701 $v702))))

; loop term $main_sum245
(assert
  (forall (($v70214885 (Array Int Int)) ($SIZE69714880 Int) ($key70114884 Int) ($j69914882 Int) ($k70014883 Int) ($i69814881 Int))
    (=> (and (not (< $j69914882 $SIZE69714880))
             ($main_inv245 $SIZE69714880 $i69814881 $j69914882 $k70014883 $key70114884 $v70214885))
        ($main_sum245 $SIZE69714880 $i69814881 $j69914882 $k70014883 $key70114884 $v70214885))))

; forwards $main_inv245
(assert
  (forall (($v70214885 (Array Int Int)) ($SIZE69714880 Int) ($int14886 Int) ($key70114884 Int) ($j69914882 Int) ($k70014883 Int) ($i69814881 Int))
    (=> (and (<= (- 2147483648) $int14886)
             (<= $int14886 2147483647)
             (< $j69914882 $SIZE69714880)
             ($main_inv245 $SIZE69714880 $i69814881 $j69914882 $k70014883 $key70114884 $v70214885))
        ($main_inv245 $SIZE69714880 $i69814881 (+ $j69914882 1) $k70014883 $key70114884 (store $v70214885 $j69914882 $int14886)))))

; loop entry $main_inv246
(assert
  (forall (($key70114891 Int) ($i69814888 Int) ($v70214892 (Array Int Int)) ($SIZE69714887 Int) ($k70014890 Int) ($j69914889 Int))
    (=> (and ($main_sum245 $SIZE69714887 $i69814888 $j69914889 $k70014890 $key70114891 $v70214892))
        ($main_inv246 $SIZE69714887 $i69814888 1 $k70014890 $key70114891 $v70214892))))

; loop term $main_sum246
(assert
  (forall (($v70214898 (Array Int Int)) ($k70014896 Int) ($key70114897 Int) ($SIZE69714893 Int) ($i69814894 Int) ($j69914895 Int))
    (=> (and (not (< $j69914895 $SIZE69714893))
             ($main_inv246 $SIZE69714893 $i69814894 $j69914895 $k70014896 $key70114897 $v70214898))
        ($main_sum246 $SIZE69714893 $i69814894 $j69914895 $k70014896 $key70114897 $v70214898))))

; loop entry $main_inv247
(assert
  (forall (($v70214898 (Array Int Int)) ($k70014896 Int) ($key70114897 Int) ($SIZE69714893 Int) ($i69814894 Int) ($j69914895 Int))
    (=> (and (< $j69914895 $SIZE69714893)
             ($main_inv246 $SIZE69714893 $i69814894 $j69914895 $k70014896 $key70114897 $v70214898))
        ($main_inv247 $SIZE69714893 (- $j69914895 1) $j69914895 $k70014896 (select $v70214898 $j69914895) $v70214898))))

; loop term $main_sum247
(assert
  (forall (($k70014902 Int) ($key70114903 Int) ($v70214904 (Array Int Int)) ($i69814900 Int) ($j69914901 Int) ($SIZE69714899 Int))
    (=> (and (not (and (>= $i69814900 0) (> (select $v70214904 $i69814900) $key70114903)))
             ($main_inv247 $SIZE69714899 $i69814900 $j69914901 $k70014902 $key70114903 $v70214904))
        ($main_sum247 $SIZE69714899 $i69814900 $j69914901 $k70014902 $key70114903 $v70214904))))

; forwards $main_inv247
(assert
  (forall (($k70014902 Int) ($key70114903 Int) ($v70214904 (Array Int Int)) ($i69814900 Int) ($j69914901 Int) ($SIZE69714899 Int))
    (=> (and (>= $i69814900 0)
             (> (select $v70214904 $i69814900) $key70114903)
             ($main_inv247 $SIZE69714899 $i69814900 $j69914901 $k70014902 $key70114903 $v70214904))
        ($main_inv247 $SIZE69714899 (- $i69814900 1) $j69914901 $k70014902 $key70114903 (store $v70214904 (+ $i69814900 1) (select $v70214904 $i69814900))))))

; forwards $main_inv246
(assert
  (forall (($i69814906 Int) ($key70114909 Int) ($k70014908 Int) ($SIZE69714905 Int) ($j69914907 Int) ($v70214910 (Array Int Int)))
    (=> (and ($main_sum247 $SIZE69714905 $i69814906 $j69914907 $k70014908 $key70114909 $v70214910))
        ($main_inv246 $SIZE69714905 $i69814906 (+ $j69914907 1) $k70014908 $key70114909 (store $v70214910 (+ $i69814906 1) $key70114909)))))

; loop entry $main_inv248
(assert
  (forall (($j69914913 Int) ($v70214916 (Array Int Int)) ($k70014914 Int) ($SIZE69714911 Int) ($i69814912 Int) ($key70114915 Int))
    (=> (and ($main_sum246 $SIZE69714911 $i69814912 $j69914913 $k70014914 $key70114915 $v70214916))
        ($main_inv248 $SIZE69714911 $i69814912 $j69914913 1 $key70114915 $v70214916))))

; loop term $main_sum248
(assert
  (forall (($SIZE69714917 Int) ($j69914919 Int) ($key70114921 Int) ($i69814918 Int) ($v70214922 (Array Int Int)) ($k70014920 Int))
    (=> (and (not (< $k70014920 $SIZE69714917))
             ($main_inv248 $SIZE69714917 $i69814918 $j69914919 $k70014920 $key70114921 $v70214922))
        ($main_sum248 $SIZE69714917 $i69814918 $j69914919 $k70014920 $key70114921 $v70214922))))

; __VERIFIER_assert precondition
(assert
  (forall (($SIZE69714917 Int) ($j69914919 Int) ($key70114921 Int) ($i69814918 Int) ($v70214922 (Array Int Int)) ($k70014920 Int))
    (=> (and (< $k70014920 $SIZE69714917)
             ($main_inv248 $SIZE69714917 $i69814918 $j69914919 $k70014920 $key70114921 $v70214922))
        ($__VERIFIER_assert_pre (ite (<= (select $v70214922 (- $k70014920 1)) (select $v70214922 $k70014920)) 1 0)))))

; forwards $main_inv248
(assert
  (forall (($SIZE69714917 Int) ($j69914919 Int) ($key70114921 Int) ($i69814918 Int) ($v70214922 (Array Int Int)) ($k70014920 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $v70214922 (- $k70014920 1)) (select $v70214922 $k70014920)) 1 0))
             (< $k70014920 $SIZE69714917)
             ($main_inv248 $SIZE69714917 $i69814918 $j69914919 $k70014920 $key70114921 $v70214922))
        ($main_inv248 $SIZE69714917 $i69814918 $j69914919 (+ $k70014920 1) $key70114921 $v70214922))))

(check-sat)
