(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv231 (Int Int Int Int) Bool)
(declare-fun $main_sum231 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if663 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if662 (Int Int) Bool)
(declare-fun $main_if664 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv232 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum232 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if662 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15954 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if662 cond cond15954))
        (assume_abort_if_not cond15954))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15955 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15955))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if663 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15956 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if663 cond cond15956))
        (__VERIFIER_assert cond15956))))

; if else
(assert
  (forall (($n669 Int) ($uint15958 Int) ($k671 Int) ($j672 Int) ($i670 Int))
    (=> (and (<= $uint15958 20000001)
             (<= 0 $uint15958)
             (<= $uint15958 4294967295))
        ($main_if664 $n669 $i670 $k671 $j672 $uint15958 $i670 $k671 $j672))))

; loop entry $main_inv231
(assert
  (forall (($n669 Int) ($i67015960 Int) ($n66915959 Int) ($k671 Int) ($k67115961 Int) ($j67215962 Int) ($j672 Int) ($i670 Int))
    (=> (and ($main_if664 $n669 $i670 $k671 $j672 $n66915959 $i67015960 $k67115961 $j67215962))
        ($main_inv231 $n66915959 0 $n66915959 $j67215962))))

; loop term $main_sum231
(assert
  (forall (($n66915963 Int) ($i67015964 Int) ($k67115965 Int) ($j67215966 Int))
    (=> (and (not (< $i67015964 $n66915963)))
        ($main_sum231 $n66915963 $i67015964 $k67115965 $j67215966 $n66915963 $i67015964 $k67115965 $j67215966))))

; forwards $main_inv231
(assert
  (forall (($n66915963 Int) ($i67015964 Int) ($k67115965 Int) ($j67215966 Int))
    (=> (and (< $i67015964 $n66915963)
             ($main_inv231 $n66915963 $i67015964 $k67115965 $j67215966))
        ($main_inv231 $n66915963 (+ $i67015964 3) (- $k67115965 1) $j67215966))))

; backwards $main_sum231
(assert
  (forall (($i67015968 Int) ($n66915967 Int) ($i67015964 Int) ($k67115965 Int) ($j67215970 Int) ($k67115969 Int) ($j67215966 Int) ($n66915963 Int))
    (=> (and ($main_sum231 $n66915963 (+ $i67015964 3) (- $k67115965 1) $j67215966 $n66915967 $i67015968 $k67115969 $j67215970)
             (< $i67015964 $n66915963))
        ($main_sum231 $n66915963 $i67015964 $k67115965 $j67215966 $n66915967 $i67015968 $k67115969 $j67215970))))

; loop entry $main_inv232
(assert
  (forall (($n669 Int) ($k67115973 Int) ($n66915959 Int) ($i67015972 Int) ($n66915971 Int) ($k671 Int) ($k67115961 Int) ($j67215962 Int) ($j672 Int) ($i670 Int) ($j67215974 Int) ($i67015960 Int))
    (=> (and (= $j67215974 0)
             ($main_sum231 $n66915959 0 $n66915959 $j67215962 $n66915971 $i67015972 $k67115973 $j67215974)
             ($main_if664 $n669 $i670 $k671 $j672 $n66915959 $i67015960 $k67115961 $j67215962))
        ($main_inv232 $n66915971 $i67015972 $k67115973 $j67215974))))

; loop term $main_sum232
(assert
  (forall (($n66915975 Int) ($i67015976 Int) ($k67115977 Int) ($j67215978 Int))
    (=> (and (not (< $j67215978 (div $n66915975 3))))
        ($main_sum232 $n66915975 $i67015976 $k67115977 $j67215978 $n66915975 $i67015976 $k67115977 $j67215978))))

; __VERIFIER_assert precondition
(assert
  (forall (($k67115977 Int) ($j67215978 Int) ($n66915975 Int) ($i67015976 Int))
    (=> (and (< $j67215978 (div $n66915975 3))
             ($main_inv232 $n66915975 $i67015976 $k67115977 $j67215978))
        ($__VERIFIER_assert_pre (ite (> $k67115977 0) 1 0)))))

; forwards $main_inv232
(assert
  (forall (($n66915975 Int) ($i67015976 Int) ($k67115977 Int) ($j67215978 Int))
    (=> (and (__VERIFIER_assert (ite (> $k67115977 0) 1 0))
             (< $j67215978 (div $n66915975 3))
             ($main_inv232 $n66915975 $i67015976 $k67115977 $j67215978))
        ($main_inv232 $n66915975 $i67015976 (- $k67115977 1) (+ $j67215978 1)))))

; backwards $main_sum232
(assert
  (forall (($n66915979 Int) ($i67015980 Int) ($j67215982 Int) ($k67115977 Int) ($k67115981 Int) ($i67015976 Int) ($n66915975 Int) ($j67215978 Int))
    (=> (and ($main_sum232 $n66915975 $i67015976 (- $k67115977 1) (+ $j67215978 1) $n66915979 $i67015980 $k67115981 $j67215982)
             (__VERIFIER_assert (ite (> $k67115977 0) 1 0))
             (< $j67215978 (div $n66915975 3)))
        ($main_sum232 $n66915975 $i67015976 $k67115977 $j67215978 $n66915979 $i67015980 $k67115981 $j67215982))))

(check-sat)
