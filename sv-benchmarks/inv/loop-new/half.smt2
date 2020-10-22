(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if350 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if352 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum510 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if351 (Int Int Int) Bool)
(declare-fun $main_inv510 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if349 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if349 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6950 Int))
    (=> (and ($assume_abort_if_not_if349 cond6950))
        (assume_abort_if_not cond6950))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6951 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6951))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if350 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6952 Int))
    (=> (and ($__VERIFIER_assert_if350 cond6952))
        (__VERIFIER_assert cond6952))))

; if else
(assert
  (forall (($i718 Int) ($n719 Int) ($k720 Int) ($int6953 Int))
    (=> (and (<= $k720 1000000)
             (>= $k720 (- 1000000))
             (= $k720 $int6953)
             (<= (- 2147483648) $int6953)
             (<= $int6953 2147483647)
             (= $n719 0)
             (= $i718 0))
        ($main_if351 $i718 $n719 $k720))))

; loop entry $main_inv510
(assert
  (forall (($n7196955 Int) ($k7206956 Int) ($i7186954 Int))
    (=> (and ($main_if351 $i7186954 $n7196955 $k7206956))
        ($main_inv510 0 $n7196955 $k7206956))))

; loop term $main_sum510
(assert
  (forall (($i7186957 Int) ($n7196958 Int) ($k7206959 Int))
    (=> (and (not (< $i7186957 (* 2 $k7206959)))
             ($main_inv510 $i7186957 $n7196958 $k7206959))
        ($main_sum510 $i7186957 $n7196958 $k7206959))))

; if then
(assert
  (forall (($i7186957 Int) ($n7196958 Int) ($k7206959 Int))
    (=> (and (= (mod $i7186957 2) 0)
             (< $i7186957 (* 2 $k7206959))
             ($main_inv510 $i7186957 $n7196958 $k7206959))
        ($main_if352 $i7186957 (+ $n7196958 1) $k7206959))))

; if else
(assert
  (forall (($i7186957 Int) ($n7196958 Int) ($k7206959 Int))
    (=> (and (not (= (mod $i7186957 2) 0))
             (< $i7186957 (* 2 $k7206959))
             ($main_inv510 $i7186957 $n7196958 $k7206959))
        ($main_if352 $i7186957 $n7196958 $k7206959))))

; forwards $main_inv510
(assert
  (forall (($i7186960 Int) ($n7196961 Int) ($k7206962 Int))
    (=> (and ($main_if352 $i7186960 $n7196961 $k7206962))
        ($main_inv510 (+ $i7186960 1) $n7196961 $k7206962))))

; __VERIFIER_assert precondition
(assert
  (forall (($k7206965 Int) ($n7196964 Int) ($i7186963 Int))
    (=> (and ($main_sum510 $i7186963 $n7196964 $k7206965))
        ($__VERIFIER_assert_pre (ite (or (< $k7206965 0) (= $n7196964 $k7206965)) 1 0)))))

(check-sat)
