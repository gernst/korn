(set-logic HORN)

(declare-fun $main_sum198 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum197 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv197 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv198 (Int Int Int) Bool)
(declare-fun $main_if591 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if590 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14910 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14910))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if590 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14911 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if590 cond cond14911))
        (__VERIFIER_assert cond14911))))

; loop entry $main_inv197
(assert
  (forall (($y567 Int) ($z568 Int) ($x566 Int))
    (=> (and (= $z568 0)
             (= $y567 50000)
             (= $x566 0))
        ($main_inv197 0 $y567 $z568))))

; loop term $main_sum197
(assert
  (forall (($x56614912 Int) ($y56714913 Int) ($z56814914 Int))
    (=> (and (not (< $x56614912 1000000)))
        ($main_sum197 $x56614912 $y56714913 $z56814914 $x56614912 $y56714913 $z56814914))))

; if then
(assert
  (forall (($x56614912 Int) ($y56714913 Int) ($z56814914 Int))
    (=> (and (< $x56614912 50000)
             (< $x56614912 1000000)
             ($main_inv197 $x56614912 $y56714913 $z56814914))
        ($main_if591 $x56614912 $y56714913 $z56814914 (+ $x56614912 1) $y56714913 $z56814914))))

; if else
(assert
  (forall (($x56614912 Int) ($y56714913 Int) ($z56814914 Int))
    (=> (and (not (< $x56614912 50000))
             (< $x56614912 1000000)
             ($main_inv197 $x56614912 $y56714913 $z56814914))
        ($main_if591 $x56614912 $y56714913 $z56814914 (+ $x56614912 1) (+ $y56714913 1) $z56814914))))

; forwards $main_inv197
(assert
  (forall (($z56814917 Int) ($z56814914 Int) ($x56614912 Int) ($y56714916 Int) ($y56714913 Int) ($x56614915 Int))
    (=> (and ($main_if591 $x56614912 $y56714913 $z56814914 $x56614915 $y56714916 $z56814917))
        ($main_inv197 $x56614915 $y56714916 $z56814917))))

; backwards $main_sum197
(assert
  (forall (($z56814917 Int) ($z56814914 Int) ($x56614912 Int) ($z56814920 Int) ($y56714916 Int) ($y56714919 Int) ($x56614918 Int) ($y56714913 Int) ($x56614915 Int))
    (=> (and ($main_sum197 $x56614915 $y56714916 $z56814917 $x56614918 $y56714919 $z56814920)
             ($main_if591 $x56614912 $y56714913 $z56814914 $x56614915 $y56714916 $z56814917))
        ($main_sum197 $x56614912 $y56714913 $z56814914 $x56614918 $y56714919 $z56814920))))

; loop entry $main_inv198
(assert
  (forall (($z568 Int) ($y56714922 Int) ($x56614921 Int) ($z56814923 Int) ($y567 Int) ($x566 Int))
    (=> (and ($main_sum197 0 $y567 $z568 $x56614921 $y56714922 $z56814923)
             (= $z568 0)
             (= $y567 50000)
             (= $x566 0))
        ($main_inv198 $x56614921 $y56714922 $z56814923))))

; loop term $main_sum198
(assert
  (forall (($x56614924 Int) ($y56714925 Int) ($z56814926 Int))
    (=> (and (not (> $y56714925 0)))
        ($main_sum198 $x56614924 $y56714925 $z56814926 $x56614924 $y56714925 $z56814926))))

; forwards $main_inv198
(assert
  (forall (($x56614924 Int) ($y56714925 Int) ($z56814926 Int))
    (=> (and (> $y56714925 0)
             ($main_inv198 $x56614924 $y56714925 $z56814926))
        ($main_inv198 (- $x56614924 2) (- $y56714925 2) $z56814926))))

; backwards $main_sum198
(assert
  (forall (($x56614927 Int) ($y56714925 Int) ($z56814926 Int) ($z56814929 Int) ($x56614924 Int) ($y56714928 Int))
    (=> (and ($main_sum198 (- $x56614924 2) (- $y56714925 2) $z56814926 $x56614927 $y56714928 $z56814929)
             (> $y56714925 0))
        ($main_sum198 $x56614924 $y56714925 $z56814926 $x56614927 $y56714928 $z56814929))))

; __VERIFIER_assert precondition
(assert
  (forall (($z568 Int) ($y56714922 Int) ($y56714931 Int) ($x56614930 Int) ($z56814932 Int) ($x56614921 Int) ($z56814923 Int) ($y567 Int) ($x566 Int))
    (=> (and ($main_sum198 $x56614921 $y56714922 $z56814923 $x56614930 $y56714931 $z56814932)
             ($main_sum197 0 $y567 $z568 $x56614921 $y56714922 $z56814923)
             (= $z568 0)
             (= $y567 50000)
             (= $x566 0))
        ($__VERIFIER_assert_pre (ite (= $z56814932 $x56614930) 1 0)))))

(check-sat)
