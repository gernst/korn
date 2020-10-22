(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if712 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun foo () Bool)
(declare-fun $main_if716 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if720 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $foo_pre () Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $__VERIFIER_assert_if713 (Int Int) Bool)
(declare-fun $main_if718 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if719 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $foo_if715 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum274 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if717 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $foo_if714 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv274 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if712 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16884 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if712 cond cond16884))
        (assume_abort_if_not cond16884))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16885 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16885))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if713 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16886 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if713 cond cond16886))
        (__VERIFIER_assert cond16886))))

; if then
(assert
  (forall (($y769 Int) ($bool16887 Int) ($bool16888 Int) ($c2771 Int) ($c1770 Int))
    (=> (and (not (= $c1770 0))
             (= $c2771 $bool16888)
             (or (= $bool16888 0) (= $bool16888 1))
             (= $c1770 $bool16887)
             (or (= $bool16887 0) (= $bool16887 1))
             (= $y769 0)
             $foo_pre)
        ($foo_if714 $y769 $c1770 $c2771 (+ $y769 1) $c1770 $c2771))))

; if else
(assert
  (forall (($y769 Int) ($bool16887 Int) ($bool16888 Int) ($c2771 Int) ($c1770 Int))
    (=> (and (= $c1770 0)
             (= $c2771 $bool16888)
             (or (= $bool16888 0) (= $bool16888 1))
             (= $c1770 $bool16887)
             (or (= $bool16887 0) (= $bool16887 1))
             (= $y769 0)
             $foo_pre)
        ($foo_if714 $y769 $c1770 $c2771 $y769 $c1770 $c2771))))

; if then
(assert
  (forall (($c177016890 Int) ($y769 Int) ($y76916889 Int) ($c2771 Int) ($c1770 Int) ($c277116891 Int))
    (=> (and (not (= $c277116891 0))
             ($foo_if714 $y769 $c1770 $c2771 $y76916889 $c177016890 $c277116891))
        ($foo_if715 $y769 $c1770 $c2771 (- $y76916889 1) $c177016890 $c277116891))))

; if else
(assert
  (forall (($c177016890 Int) ($y769 Int) ($y76916889 Int) ($c2771 Int) ($c1770 Int) ($c277116891 Int))
    (=> (and (= $c277116891 0)
             ($foo_if714 $y769 $c1770 $c2771 $y76916889 $c177016890 $c277116891))
        ($foo_if715 $y769 $c1770 $c2771 (+ $y76916889 10) $c177016890 $c277116891))))

; post foo
(assert
  (forall (($c277116894 Int) ($y76916892 Int) ($y769 Int) ($c2771 Int) ($c177016893 Int) ($c1770 Int))
    (=> (and ($foo_if715 $y769 $c1770 $c2771 $y76916892 $c177016893 $c277116894))
        foo)))

; if else
(assert
  (forall (($int16895 Int) ($c2775 Int) ($c1774 Int) ($x773 Int) ($d772 Int))
    (=> (and (<= $x773 1000000)
             (>= $x773 (- 1000000))
             (= $x773 $int16895)
             (<= (- 2147483648) $int16895)
             (<= $int16895 2147483647)
             (= $d772 1))
        ($main_if716 $d772 $x773 $c1774 $c2775 $d772 $x773 $c1774 $c2775))))

; if then
(assert
  (forall (($c177416898 Int) ($c277516899 Int) ($x77316897 Int) ($c2775 Int) ($d772 Int) ($bool16901 Int) ($c1774 Int) ($d77216896 Int) ($x773 Int) ($bool16900 Int))
    (=> (and (not (= $c177416898 0))
             (= $c277516899 $bool16901)
             (or (= $bool16901 0) (= $bool16901 1))
             (= $c177416898 $bool16900)
             (or (= $bool16900 0) (= $bool16900 1))
             ($main_if716 $d772 $x773 $c1774 $c2775 $d77216896 $x77316897 $c177416898 $c277516899))
        ($main_if717 $d772 $x773 $c1774 $c2775 (- $d77216896 1) $x77316897 $c177416898 $c277516899))))

; if else
(assert
  (forall (($c177416898 Int) ($c277516899 Int) ($x77316897 Int) ($c2775 Int) ($d772 Int) ($bool16901 Int) ($c1774 Int) ($d77216896 Int) ($x773 Int) ($bool16900 Int))
    (=> (and (= $c177416898 0)
             (= $c277516899 $bool16901)
             (or (= $bool16901 0) (= $bool16901 1))
             (= $c177416898 $bool16900)
             (or (= $bool16900 0) (= $bool16900 1))
             ($main_if716 $d772 $x773 $c1774 $c2775 $d77216896 $x77316897 $c177416898 $c277516899))
        ($main_if717 $d772 $x773 $c1774 $c2775 $d77216896 $x77316897 $c177416898 $c277516899))))

; foo precondition
(assert
  (forall (($x77316903 Int) ($c277516905 Int) ($c2775 Int) ($c1774 Int) ($d77216902 Int) ($x773 Int) ($c177416904 Int) ($d772 Int))
    (=> (and (not (= $c277516905 0))
             ($main_if717 $d772 $x773 $c1774 $c2775 $d77216902 $x77316903 $c177416904 $c277516905))
        $foo_pre)))

; if then
(assert
  (forall (($x77316903 Int) ($c277516905 Int) ($c2775 Int) ($c1774 Int) ($d77216902 Int) ($x773 Int) ($c177416904 Int) ($d772 Int))
    (=> (and foo
             (not (= $c277516905 0))
             ($main_if717 $d772 $x773 $c1774 $c2775 $d77216902 $x77316903 $c177416904 $c277516905))
        ($main_if718 $d772 $x773 $c1774 $c2775 $d77216902 $x77316903 $c177416904 $c277516905))))

; if else
(assert
  (forall (($x77316903 Int) ($c277516905 Int) ($c2775 Int) ($c1774 Int) ($d77216902 Int) ($x773 Int) ($c177416904 Int) ($d772 Int))
    (=> (and (= $c277516905 0)
             ($main_if717 $d772 $x773 $c1774 $c2775 $d77216902 $x77316903 $c177416904 $c277516905))
        ($main_if718 $d772 $x773 $c1774 $c2775 $d77216902 $x77316903 $c177416904 $c277516905))))

; foo precondition
(assert
  (forall (($x77316907 Int) ($c277516909 Int) ($c1774 Int) ($bool16910 Int) ($x773 Int) ($bool16911 Int) ($c2775 Int) ($d77216906 Int) ($c177416908 Int) ($d772 Int))
    (=> (and (not (= $bool16911 0))
             (or (= $bool16911 0) (= $bool16911 1))
             (or (= $bool16910 0) (= $bool16910 1))
             ($main_if718 $d772 $x773 $c1774 $c2775 $d77216906 $x77316907 $c177416908 $c277516909))
        $foo_pre)))

; if then
(assert
  (forall (($x77316907 Int) ($c277516909 Int) ($c1774 Int) ($bool16910 Int) ($x773 Int) ($bool16911 Int) ($c2775 Int) ($d77216906 Int) ($c177416908 Int) ($d772 Int))
    (=> (and foo
             (not (= $bool16911 0))
             (or (= $bool16911 0) (= $bool16911 1))
             (or (= $bool16910 0) (= $bool16910 1))
             ($main_if718 $d772 $x773 $c1774 $c2775 $d77216906 $x77316907 $c177416908 $c277516909))
        ($main_if719 $d772 $x773 $c1774 $c2775 $d77216906 $x77316907 $bool16911 $c277516909))))

; if else
(assert
  (forall (($x77316907 Int) ($c277516909 Int) ($c1774 Int) ($bool16910 Int) ($x773 Int) ($bool16911 Int) ($c2775 Int) ($d77216906 Int) ($c177416908 Int) ($d772 Int))
    (=> (and (= $bool16911 0)
             (or (= $bool16911 0) (= $bool16911 1))
             (or (= $bool16910 0) (= $bool16910 1))
             ($main_if718 $d772 $x773 $c1774 $c2775 $d77216906 $x77316907 $c177416908 $c277516909))
        ($main_if719 $d772 $x773 $c1774 $c2775 $d77216906 $x77316907 $bool16911 $c277516909))))

; if then
(assert
  (forall (($c177416914 Int) ($x77316913 Int) ($c2775 Int) ($c1774 Int) ($d77216912 Int) ($c277516915 Int) ($x773 Int) ($d772 Int))
    (=> (and (not (= $c277516915 0))
             ($main_if719 $d772 $x773 $c1774 $c2775 $d77216912 $x77316913 $c177416914 $c277516915))
        ($main_if720 $d772 $x773 $c1774 $c2775 (- $d77216912 1) $x77316913 $c177416914 $c277516915))))

; if else
(assert
  (forall (($c177416914 Int) ($x77316913 Int) ($c2775 Int) ($c1774 Int) ($d77216912 Int) ($c277516915 Int) ($x773 Int) ($d772 Int))
    (=> (and (= $c277516915 0)
             ($main_if719 $d772 $x773 $c1774 $c2775 $d77216912 $x77316913 $c177416914 $c277516915))
        ($main_if720 $d772 $x773 $c1774 $c2775 $d77216912 $x77316913 $c177416914 $c277516915))))

; loop entry $main_inv274
(assert
  (forall (($c277516919 Int) ($x77316917 Int) ($d77216916 Int) ($c2775 Int) ($c1774 Int) ($d772 Int) ($x773 Int) ($c177416918 Int))
    (=> (and ($main_if720 $d772 $x773 $c1774 $c2775 $d77216916 $x77316917 $c177416918 $c277516919))
        ($main_inv274 $d77216916 $x77316917 $c177416918 $c277516919))))

; loop term $main_sum274
(assert
  (forall (($d77216920 Int) ($x77316921 Int) ($c177416922 Int) ($c277516923 Int))
    (=> (and (not (> $x77316921 0)))
        ($main_sum274 $d77216920 $x77316921 $c177416922 $c277516923 $d77216920 $x77316921 $c177416922 $c277516923))))

; forwards $main_inv274
(assert
  (forall (($d77216920 Int) ($x77316921 Int) ($c177416922 Int) ($c277516923 Int))
    (=> (and (> $x77316921 0)
             ($main_inv274 $d77216920 $x77316921 $c177416922 $c277516923))
        ($main_inv274 $d77216920 (- $x77316921 $d77216920) $c177416922 $c277516923))))

; backwards $main_sum274
(assert
  (forall (($c277516923 Int) ($c177416926 Int) ($x77316925 Int) ($c277516927 Int) ($d77216924 Int) ($d77216920 Int) ($c177416922 Int) ($x77316921 Int))
    (=> (and ($main_sum274 $d77216920 (- $x77316921 $d77216920) $c177416922 $c277516923 $d77216924 $x77316925 $c177416926 $c277516927)
             (> $x77316921 0))
        ($main_sum274 $d77216920 $x77316921 $c177416922 $c277516923 $d77216924 $x77316925 $c177416926 $c277516927))))

; __VERIFIER_assert precondition
(assert
  (forall (($c277516919 Int) ($d77216928 Int) ($x77316917 Int) ($d77216916 Int) ($c2775 Int) ($c277516931 Int) ($x77316929 Int) ($c1774 Int) ($c177416930 Int) ($d772 Int) ($x773 Int) ($c177416918 Int))
    (=> (and ($main_sum274 $d77216916 $x77316917 $c177416918 $c277516919 $d77216928 $x77316929 $c177416930 $c277516931)
             ($main_if720 $d772 $x773 $c1774 $c2775 $d77216916 $x77316917 $c177416918 $c277516919))
        ($__VERIFIER_assert_pre (ite (<= $x77316929 0) 1 0)))))

(check-sat)
