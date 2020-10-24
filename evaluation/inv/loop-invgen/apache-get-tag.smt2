(set-logic HORN)

(declare-fun $assume_abort_if_not_if191 (Int) Bool)
(declare-fun $main_if199 (Int Int) Bool)
(declare-fun $main_if198 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum451 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if192 (Int) Bool)
(declare-fun $main_if197 (Int Int) Bool)
(declare-fun $main_if194 (Int Int) Bool)
(declare-fun $main_inv452 (Int Int) Bool)
(declare-fun $main_sum452 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if196 (Int Int) Bool)
(declare-fun $main_inv451 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_END (Int Int) Bool)
(declare-fun $main_if193 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if195 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if200 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if191 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5853 Int))
    (=> (and ($assume_abort_if_not_if191 cond5853))
        (assume_abort_if_not cond5853))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5854 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5854))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if192 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5855 Int))
    (=> (and ($__VERIFIER_assert_if192 cond5855))
        (__VERIFIER_assert cond5855))))

; goto END
(assert
  (forall (($int5856 Int) ($t573 Int))
    (=> (and (not (>= $int5856 1))
             (<= (- 2147483648) $int5856)
             (<= $int5856 2147483647))
        ($main_END $int5856 $t573))))

; if then
(assert
  (forall (($int5856 Int) ($t573 Int))
    (=> (and (>= $int5856 1)
             (<= (- 2147483648) $int5856)
             (<= $int5856 2147483647))
        ($main_if193 $int5856 $t573))))

; loop entry $main_inv451
(assert
  (forall (($tagbuf_len5725857 Int) ($t5735858 Int))
    (=> (and ($main_if193 $tagbuf_len5725857 $t5735858))
        ($main_inv451 (- $tagbuf_len5725857 1) 0))))

; loop term $main_sum451
(assert
  (forall (($tagbuf_len5725859 Int) ($t5735860 Int))
    (=> (and (= 1 0)
             ($main_inv451 $tagbuf_len5725859 $t5735860))
        ($main_sum451 $tagbuf_len5725859 $t5735860))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735860 Int) ($tagbuf_len5725859 Int))
    (=> (and (= $t5735860 $tagbuf_len5725859)
             (not (= 1 0))
             ($main_inv451 $tagbuf_len5725859 $t5735860))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735860) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735860 Int) ($tagbuf_len5725859 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735860) 1 0))
             (= $t5735860 $tagbuf_len5725859)
             (not (= 1 0))
             ($main_inv451 $tagbuf_len5725859 $t5735860))
        ($__VERIFIER_assert_pre (ite (<= $t5735860 $tagbuf_len5725859) 1 0)))))

; goto END
(assert
  (forall (($tagbuf_len5725859 Int) ($t5735860 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735860 $tagbuf_len5725859) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735860) 1 0))
             (= $t5735860 $tagbuf_len5725859)
             (not (= 1 0))
             ($main_inv451 $tagbuf_len5725859 $t5735860))
        ($main_END $tagbuf_len5725859 $t5735860))))

; if else
(assert
  (forall (($tagbuf_len5725859 Int) ($t5735860 Int))
    (=> (and (not (= $t5735860 $tagbuf_len5725859))
             (not (= 1 0))
             ($main_inv451 $tagbuf_len5725859 $t5735860))
        ($main_if194 $tagbuf_len5725859 $t5735860))))

; break $main_sum451
(assert
  (forall (($tagbuf_len5725861 Int) ($t5735862 Int) ($int5863 Int))
    (=> (and (not (= $int5863 0))
             (<= (- 2147483648) $int5863)
             (<= $int5863 2147483647)
             ($main_if194 $tagbuf_len5725861 $t5735862))
        ($main_sum451 $tagbuf_len5725861 $t5735862))))

; if else
(assert
  (forall (($tagbuf_len5725861 Int) ($t5735862 Int) ($int5863 Int))
    (=> (and (= $int5863 0)
             (<= (- 2147483648) $int5863)
             (<= $int5863 2147483647)
             ($main_if194 $tagbuf_len5725861 $t5735862))
        ($main_if195 $tagbuf_len5725861 $t5735862))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735865 Int) ($tagbuf_len5725864 Int))
    (=> (and ($main_if195 $tagbuf_len5725864 $t5735865))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735865) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735865 Int) ($tagbuf_len5725864 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735865) 1 0))
             ($main_if195 $tagbuf_len5725864 $t5735865))
        ($__VERIFIER_assert_pre (ite (<= $t5735865 $tagbuf_len5725864) 1 0)))))

; forwards $main_inv451
(assert
  (forall (($tagbuf_len5725864 Int) ($t5735865 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735865 $tagbuf_len5725864) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735865) 1 0))
             ($main_if195 $tagbuf_len5725864 $t5735865))
        ($main_inv451 $tagbuf_len5725864 (+ $t5735865 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735867 Int) ($tagbuf_len5725866 Int))
    (=> (and ($main_sum451 $tagbuf_len5725866 $t5735867))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735867) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735867 Int) ($tagbuf_len5725866 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735867) 1 0))
             ($main_sum451 $tagbuf_len5725866 $t5735867))
        ($__VERIFIER_assert_pre (ite (<= $t5735867 $tagbuf_len5725866) 1 0)))))

; loop entry $main_inv452
(assert
  (forall (($tagbuf_len5725866 Int) ($t5735867 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735867 $tagbuf_len5725866) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735867) 1 0))
             ($main_sum451 $tagbuf_len5725866 $t5735867))
        ($main_inv452 $tagbuf_len5725866 (+ $t5735867 1)))))

; loop term $main_sum452
(assert
  (forall (($tagbuf_len5725868 Int) ($t5735869 Int))
    (=> (and (= 1 0)
             ($main_inv452 $tagbuf_len5725868 $t5735869))
        ($main_sum452 $tagbuf_len5725868 $t5735869))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735869 Int) ($tagbuf_len5725868 Int))
    (=> (and (= $t5735869 $tagbuf_len5725868)
             (not (= 1 0))
             ($main_inv452 $tagbuf_len5725868 $t5735869))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735869) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735869 Int) ($tagbuf_len5725868 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735869) 1 0))
             (= $t5735869 $tagbuf_len5725868)
             (not (= 1 0))
             ($main_inv452 $tagbuf_len5725868 $t5735869))
        ($__VERIFIER_assert_pre (ite (<= $t5735869 $tagbuf_len5725868) 1 0)))))

; goto END
(assert
  (forall (($tagbuf_len5725868 Int) ($t5735869 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735869 $tagbuf_len5725868) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735869) 1 0))
             (= $t5735869 $tagbuf_len5725868)
             (not (= 1 0))
             ($main_inv452 $tagbuf_len5725868 $t5735869))
        ($main_END $tagbuf_len5725868 $t5735869))))

; if else
(assert
  (forall (($tagbuf_len5725868 Int) ($t5735869 Int))
    (=> (and (not (= $t5735869 $tagbuf_len5725868))
             (not (= 1 0))
             ($main_inv452 $tagbuf_len5725868 $t5735869))
        ($main_if196 $tagbuf_len5725868 $t5735869))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735871 Int) ($int5873 Int) ($int5872 Int) ($tagbuf_len5725870 Int))
    (=> (and (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735871) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735871 Int) ($tagbuf_len5725870 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735871) 1 0))
             (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($__VERIFIER_assert_pre (ite (<= $t5735871 $tagbuf_len5725870) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735871 Int) ($tagbuf_len5725870 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (= (+ $t5735871 1) $tagbuf_len5725870)
             (__VERIFIER_assert (ite (<= $t5735871 $tagbuf_len5725870) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735871) 1 0))
             (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $t5735871 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735871 Int) ($tagbuf_len5725870 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $t5735871 1)) 1 0))
             (= (+ $t5735871 1) $tagbuf_len5725870)
             (__VERIFIER_assert (ite (<= $t5735871 $tagbuf_len5725870) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735871) 1 0))
             (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($__VERIFIER_assert_pre (ite (<= (+ $t5735871 1) $tagbuf_len5725870) 1 0)))))

; goto END
(assert
  (forall (($tagbuf_len5725870 Int) ($t5735871 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (__VERIFIER_assert (ite (<= (+ $t5735871 1) $tagbuf_len5725870) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $t5735871 1)) 1 0))
             (= (+ $t5735871 1) $tagbuf_len5725870)
             (__VERIFIER_assert (ite (<= $t5735871 $tagbuf_len5725870) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735871) 1 0))
             (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($main_END $tagbuf_len5725870 (+ $t5735871 1)))))

; if else
(assert
  (forall (($tagbuf_len5725870 Int) ($t5735871 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (not (= (+ $t5735871 1) $tagbuf_len5725870))
             (__VERIFIER_assert (ite (<= $t5735871 $tagbuf_len5725870) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735871) 1 0))
             (not (= $int5873 0))
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($main_if197 $tagbuf_len5725870 (+ $t5735871 1)))))

; if then
(assert
  (forall (($tagbuf_len5725874 Int) ($t5735875 Int))
    (=> (and ($main_if197 $tagbuf_len5725874 $t5735875))
        ($main_if198 $tagbuf_len5725874 $t5735875))))

; if else
(assert
  (forall (($tagbuf_len5725870 Int) ($t5735871 Int) ($int5873 Int) ($int5872 Int))
    (=> (and (= $int5873 0)
             (<= (- 2147483648) $int5873)
             (<= $int5873 2147483647)
             (not (= $int5872 0))
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($main_if198 $tagbuf_len5725870 $t5735871))))

; break $main_sum452
(assert
  (forall (($tagbuf_len5725870 Int) ($t5735871 Int) ($int5878 Int) ($int5872 Int))
    (=> (and (not (= $int5878 0))
             (<= (- 2147483648) $int5878)
             (<= $int5878 2147483647)
             (= $int5872 0)
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($main_sum452 $tagbuf_len5725870 $t5735871))))

; if else
(assert
  (forall (($tagbuf_len5725870 Int) ($t5735871 Int) ($int5878 Int) ($int5872 Int))
    (=> (and (= $int5878 0)
             (<= (- 2147483648) $int5878)
             (<= $int5878 2147483647)
             (= $int5872 0)
             (<= (- 2147483648) $int5872)
             (<= $int5872 2147483647)
             ($main_if196 $tagbuf_len5725870 $t5735871))
        ($main_if199 $tagbuf_len5725870 $t5735871))))

; if then
(assert
  (forall (($tagbuf_len5725876 Int) ($t5735877 Int))
    (=> (and ($main_if198 $tagbuf_len5725876 $t5735877))
        ($main_if200 $tagbuf_len5725876 $t5735877))))

; if else
(assert
  (forall (($tagbuf_len5725879 Int) ($t5735880 Int))
    (=> (and ($main_if199 $tagbuf_len5725879 $t5735880))
        ($main_if200 $tagbuf_len5725879 $t5735880))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735882 Int) ($tagbuf_len5725881 Int))
    (=> (and ($main_if200 $tagbuf_len5725881 $t5735882))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735882) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735882 Int) ($tagbuf_len5725881 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735882) 1 0))
             ($main_if200 $tagbuf_len5725881 $t5735882))
        ($__VERIFIER_assert_pre (ite (<= $t5735882 $tagbuf_len5725881) 1 0)))))

; forwards $main_inv452
(assert
  (forall (($tagbuf_len5725881 Int) ($t5735882 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735882 $tagbuf_len5725881) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735882) 1 0))
             ($main_if200 $tagbuf_len5725881 $t5735882))
        ($main_inv452 $tagbuf_len5725881 (+ $t5735882 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735884 Int) ($tagbuf_len5725883 Int))
    (=> (and ($main_sum452 $tagbuf_len5725883 $t5735884))
        ($__VERIFIER_assert_pre (ite (<= 0 $t5735884) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($t5735884 Int) ($tagbuf_len5725883 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $t5735884) 1 0))
             ($main_sum452 $tagbuf_len5725883 $t5735884))
        ($__VERIFIER_assert_pre (ite (<= $t5735884 $tagbuf_len5725883) 1 0)))))

; label END
(assert
  (forall (($tagbuf_len5725883 Int) ($t5735884 Int))
    (=> (and (__VERIFIER_assert (ite (<= $t5735884 $tagbuf_len5725883) 1 0))
             (__VERIFIER_assert (ite (<= 0 $t5735884) 1 0))
             ($main_sum452 $tagbuf_len5725883 $t5735884))
        ($main_END $tagbuf_len5725883 $t5735884))))

(check-sat)
