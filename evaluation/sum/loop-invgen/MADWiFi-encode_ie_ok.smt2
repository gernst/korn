(set-logic HORN)

(declare-fun $main_if231 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if238 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if229 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if235 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if232 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if230 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if237 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum467 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if236 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv467 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if234 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if233 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if229 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8800 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if229 cond cond8800))
        (assume_abort_if_not cond8800))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8801 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8801))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if230 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8802 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if230 cond cond8802))
        (__VERIFIER_assert cond8802))))

; if else
(assert
  (forall (($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($int8805 Int) ($int8803 Int) ($int8804 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (< $int8803 1000000)
             (<= (- 2147483648) $int8805)
             (<= $int8805 2147483647)
             (<= (- 2147483648) $int8804)
             (<= $int8804 2147483647)
             (<= (- 2147483648) $int8803)
             (<= $int8803 2147483647))
        ($main_if231 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p611 $i612 $int8803 $int8804 $bufsize_0615 $int8805))))

; if else
(assert
  (forall (($i6128807 Int) ($p6118806 Int) ($i612 Int) ($leader_len613 Int) ($bufsize6148809 Int) ($leader_len6138808 Int) ($bufsize_06158810 Int) ($ielen616 Int) ($p611 Int) ($ielen6168811 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (< $bufsize6148809 1000000)
             ($main_if231 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118806 $i6128807 $leader_len6138808 $bufsize6148809 $bufsize_06158810 $ielen6168811))
        ($main_if232 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118806 $i6128807 $leader_len6138808 $bufsize6148809 $bufsize_06158810 $ielen6168811))))

; if else
(assert
  (forall (($bufsize6148815 Int) ($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($ielen6168817 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($p6118812 Int) ($i6128813 Int) ($bufsize_06158816 Int) ($leader_len6138814 Int))
    (=> (and (< $ielen6168817 1000000)
             ($main_if232 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118812 $i6128813 $leader_len6138814 $bufsize6148815 $bufsize_06158816 $ielen6168817))
        ($main_if233 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118812 $i6128813 $leader_len6138814 $bufsize6148815 $bufsize_06158816 $ielen6168817))))

; goto END
(assert
  (forall (($ielen6168823 Int) ($i612 Int) ($p611 Int) ($leader_len613 Int) ($leader_len6138820 Int) ($p6118818 Int) ($bufsize6148821 Int) ($ielen616 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($bufsize_06158822 Int) ($i6128819 Int))
    (=> (and (not (> $leader_len6138820 0))
             ($main_if233 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118818 $i6128819 $leader_len6138820 $bufsize6148821 $bufsize_06158822 $ielen6168823))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118818 $i6128819 $leader_len6138820 $bufsize6148821 $bufsize_06158822 $ielen6168823))))

; if then
(assert
  (forall (($ielen6168823 Int) ($i612 Int) ($p611 Int) ($leader_len613 Int) ($leader_len6138820 Int) ($p6118818 Int) ($bufsize6148821 Int) ($ielen616 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($bufsize_06158822 Int) ($i6128819 Int))
    (=> (and (> $leader_len6138820 0)
             ($main_if233 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118818 $i6128819 $leader_len6138820 $bufsize6148821 $bufsize_06158822 $ielen6168823))
        ($main_if234 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118818 $i6128819 $leader_len6138820 $bufsize6148821 $bufsize_06158822 $ielen6168823))))

; goto END
(assert
  (forall (($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($i6128825 Int) ($bufsize6148827 Int) ($leader_len6138826 Int) ($bufsize_06158828 Int) ($ielen6168829 Int) ($p6118824 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (not (> $bufsize6148827 0))
             ($main_if234 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118824 $i6128825 $leader_len6138826 $bufsize6148827 $bufsize_06158828 $ielen6168829))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118824 $i6128825 $leader_len6138826 $bufsize6148827 $bufsize_06158828 $ielen6168829))))

; if then
(assert
  (forall (($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($i6128825 Int) ($bufsize6148827 Int) ($leader_len6138826 Int) ($bufsize_06158828 Int) ($ielen6168829 Int) ($p6118824 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (> $bufsize6148827 0)
             ($main_if234 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118824 $i6128825 $leader_len6138826 $bufsize6148827 $bufsize_06158828 $ielen6168829))
        ($main_if235 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118824 $i6128825 $leader_len6138826 $bufsize6148827 $bufsize_06158828 $ielen6168829))))

; goto END
(assert
  (forall (($leader_len6138832 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($bufsize6148833 Int) ($ielen6168835 Int) ($bufsize_06158834 Int) ($p6118830 Int) ($i6128831 Int) ($i612 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (not (> $ielen6168835 0))
             ($main_if235 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118830 $i6128831 $leader_len6138832 $bufsize6148833 $bufsize_06158834 $ielen6168835))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118830 $i6128831 $leader_len6138832 $bufsize6148833 $bufsize_06158834 $ielen6168835))))

; if then
(assert
  (forall (($leader_len6138832 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($bufsize6148833 Int) ($ielen6168835 Int) ($bufsize_06158834 Int) ($p6118830 Int) ($i6128831 Int) ($i612 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (> $ielen6168835 0)
             ($main_if235 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118830 $i6128831 $leader_len6138832 $bufsize6148833 $bufsize_06158834 $ielen6168835))
        ($main_if236 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118830 $i6128831 $leader_len6138832 $bufsize6148833 $bufsize_06158834 $ielen6168835))))

; goto END
(assert
  (forall (($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($p6118836 Int) ($i6128837 Int) ($ielen6168841 Int) ($bufsize6148839 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($leader_len6138838 Int) ($bufsize_06158840 Int))
    (=> (and (< $bufsize6148839 $leader_len6138838)
             ($main_if236 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118836 $i6128837 $leader_len6138838 $bufsize6148839 $bufsize_06158840 $ielen6168841))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118836 $i6128837 $leader_len6138838 $bufsize6148839 $bufsize_06158840 $ielen6168841))))

; if else
(assert
  (forall (($i612 Int) ($ielen616 Int) ($p611 Int) ($leader_len613 Int) ($p6118836 Int) ($i6128837 Int) ($ielen6168841 Int) ($bufsize6148839 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($leader_len6138838 Int) ($bufsize_06158840 Int))
    (=> (and (not (< $bufsize6148839 $leader_len6138838))
             ($main_if236 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118836 $i6128837 $leader_len6138838 $bufsize6148839 $bufsize_06158840 $ielen6168841))
        ($main_if237 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118836 $i6128837 $leader_len6138838 $bufsize6148839 $bufsize_06158840 $ielen6168841))))

; goto END
(assert
  (forall (($i612 Int) ($ielen616 Int) ($i6128843 Int) ($bufsize6148845 Int) ($p611 Int) ($p6118842 Int) ($bufsize_06158846 Int) ($leader_len6138844 Int) ($ielen6168847 Int) ($leader_len613 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (< (- $bufsize6148845 $leader_len6138844) (* 2 $ielen6168847))
             ($main_if237 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118842 $i6128843 $leader_len6138844 $bufsize6148845 $bufsize_06158846 $ielen6168847))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 (+ 0 $leader_len6138844) $i6128843 $leader_len6138844 (- $bufsize6148845 $leader_len6138844) $bufsize6148845 $ielen6168847))))

; if else
(assert
  (forall (($i612 Int) ($ielen616 Int) ($i6128843 Int) ($bufsize6148845 Int) ($p611 Int) ($p6118842 Int) ($bufsize_06158846 Int) ($leader_len6138844 Int) ($ielen6168847 Int) ($leader_len613 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and (not (< (- $bufsize6148845 $leader_len6138844) (* 2 $ielen6168847)))
             ($main_if237 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118842 $i6128843 $leader_len6138844 $bufsize6148845 $bufsize_06158846 $ielen6168847))
        ($main_if238 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 (+ 0 $leader_len6138844) $i6128843 $leader_len6138844 (- $bufsize6148845 $leader_len6138844) $bufsize6148845 $ielen6168847))))

; loop entry $main_inv467
(assert
  (forall (($bufsize_06158852 Int) ($i612 Int) ($ielen616 Int) ($leader_len613 Int) ($p6118848 Int) ($leader_len6138850 Int) ($ielen6168853 Int) ($bufsize6148851 Int) ($i6128849 Int) ($p611 Int) ($bufsize_0615 Int) ($bufsize614 Int))
    (=> (and ($main_if238 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118848 $i6128849 $leader_len6138850 $bufsize6148851 $bufsize_06158852 $ielen6168853))
        ($main_inv467 $p6118848 0 $leader_len6138850 $bufsize6148851 $bufsize_06158852 $ielen6168853))))

; loop term $main_sum467
(assert
  (forall (($ielen6168859 Int) ($i6128855 Int) ($bufsize6148857 Int) ($leader_len6138856 Int) ($bufsize_06158858 Int) ($p6118854 Int))
    (=> (and (not (and (< $i6128855 $ielen6168859) (> $bufsize6148857 2))))
        ($main_sum467 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859))))

; __VERIFIER_assert precondition
(assert
  (forall (($ielen6168859 Int) ($i6128855 Int) ($bufsize6148857 Int) ($leader_len6138856 Int) ($bufsize_06158858 Int) ($p6118854 Int))
    (=> (and (< $i6128855 $ielen6168859)
             (> $bufsize6148857 2)
             ($main_inv467 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859))
        ($__VERIFIER_assert_pre (ite (<= 0 $p6118854) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($ielen6168859 Int) ($i6128855 Int) ($bufsize6148857 Int) ($leader_len6138856 Int) ($bufsize_06158858 Int) ($p6118854 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $p6118854) 1 0))
             (< $i6128855 $ielen6168859)
             (> $bufsize6148857 2)
             ($main_inv467 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859))
        ($__VERIFIER_assert_pre (ite (< (+ $p6118854 1) $bufsize_06158858) 1 0)))))

; forwards $main_inv467
(assert
  (forall (($ielen6168859 Int) ($i6128855 Int) ($bufsize6148857 Int) ($leader_len6138856 Int) ($bufsize_06158858 Int) ($p6118854 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $p6118854 1) $bufsize_06158858) 1 0))
             (__VERIFIER_assert (ite (<= 0 $p6118854) 1 0))
             (< $i6128855 $ielen6168859)
             (> $bufsize6148857 2)
             ($main_inv467 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859))
        ($main_inv467 (+ $p6118854 2) (+ $i6128855 1) $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859))))

; backwards $main_sum467
(assert
  (forall (($ielen6168859 Int) ($i6128855 Int) ($bufsize_06158864 Int) ($bufsize_06158858 Int) ($leader_len6138862 Int) ($p6118860 Int) ($p6118854 Int) ($bufsize6148863 Int) ($ielen6168865 Int) ($bufsize6148857 Int) ($i6128861 Int) ($leader_len6138856 Int))
    (=> (and ($main_sum467 (+ $p6118854 2) (+ $i6128855 1) $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859 $p6118860 $i6128861 $leader_len6138862 $bufsize6148863 $bufsize_06158864 $ielen6168865)
             (__VERIFIER_assert (ite (< (+ $p6118854 1) $bufsize_06158858) 1 0))
             (__VERIFIER_assert (ite (<= 0 $p6118854) 1 0))
             (< $i6128855 $ielen6168859)
             (> $bufsize6148857 2))
        ($main_sum467 $p6118854 $i6128855 $leader_len6138856 $bufsize6148857 $bufsize_06158858 $ielen6168859 $p6118860 $i6128861 $leader_len6138862 $bufsize6148863 $bufsize_06158864 $ielen6168865))))

; label END
(assert
  (forall (($bufsize_06158852 Int) ($i612 Int) ($ielen616 Int) ($p6118848 Int) ($ielen6168871 Int) ($leader_len6138850 Int) ($bufsize6148851 Int) ($i6128849 Int) ($p611 Int) ($bufsize6148869 Int) ($leader_len613 Int) ($leader_len6138868 Int) ($p6118866 Int) ($i6128867 Int) ($bufsize_0615 Int) ($bufsize614 Int) ($bufsize_06158870 Int) ($ielen6168853 Int))
    (=> (and ($main_sum467 $p6118848 0 $leader_len6138850 $bufsize6148851 $bufsize_06158852 $ielen6168853 $p6118866 $i6128867 $leader_len6138868 $bufsize6148869 $bufsize_06158870 $ielen6168871)
             ($main_if238 $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118848 $i6128849 $leader_len6138850 $bufsize6148851 $bufsize_06158852 $ielen6168853))
        ($main_END $p611 $i612 $leader_len613 $bufsize614 $bufsize_0615 $ielen616 $p6118866 $i6128867 $leader_len6138868 $bufsize6148869 $bufsize_06158870 $ielen6168871))))

(check-sat)
