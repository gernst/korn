(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if368 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if367 (Int Int) Bool)
(declare-fun $main_inv520 (Int Int Int Int) Bool)
(declare-fun $main_sum520 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9951 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9951))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if367 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9952 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if367 cond cond9952))
        (__VERIFIER_assert cond9952))))

; loop entry $main_inv520
(assert
  (forall (($j740 Int) ($n741 Int) ($sn742 Int) ($uint9953 Int))
    (=> (and (= $sn742 0)
             (= $n741 $uint9953)
             (<= 0 $uint9953)
             (<= $uint9953 4294967295)
             (= $j740 10))
        ($main_inv520 1 $j740 $n741 $sn742))))

; loop term $main_sum520
(assert
  (forall (($i7399954 Int) ($j7409955 Int) ($n7419956 Int) ($sn7429957 Int))
    (=> (and (not (<= $i7399954 $n7419956)))
        ($main_sum520 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399954 $j7409955 $n7419956 $sn7429957))))

; if then
(assert
  (forall (($i7399954 Int) ($j7409955 Int) ($n7419956 Int) ($sn7429957 Int))
    (=> (and (< $i7399954 $j7409955)
             (<= $i7399954 $n7419956)
             ($main_inv520 $i7399954 $j7409955 $n7419956 $sn7429957))
        ($main_if368 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399954 $j7409955 $n7419956 (+ $sn7429957 2)))))

; if else
(assert
  (forall (($i7399954 Int) ($j7409955 Int) ($n7419956 Int) ($sn7429957 Int))
    (=> (and (not (< $i7399954 $j7409955))
             (<= $i7399954 $n7419956)
             ($main_inv520 $i7399954 $j7409955 $n7419956 $sn7429957))
        ($main_if368 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399954 $j7409955 $n7419956 $sn7429957))))

; forwards $main_inv520
(assert
  (forall (($j7409959 Int) ($i7399958 Int) ($n7419960 Int) ($sn7429961 Int) ($n7419956 Int) ($sn7429957 Int) ($j7409955 Int) ($i7399954 Int))
    (=> (and ($main_if368 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399958 $j7409959 $n7419960 $sn7429961))
        ($main_inv520 (+ $i7399958 1) (- $j7409959 1) $n7419960 $sn7429961))))

; backwards $main_sum520
(assert
  (forall (($j7409959 Int) ($n7419964 Int) ($n7419960 Int) ($j7409963 Int) ($sn7429961 Int) ($i7399962 Int) ($n7419956 Int) ($sn7429957 Int) ($j7409955 Int) ($i7399954 Int) ($sn7429965 Int) ($i7399958 Int))
    (=> (and ($main_sum520 (+ $i7399958 1) (- $j7409959 1) $n7419960 $sn7429961 $i7399962 $j7409963 $n7419964 $sn7429965)
             ($main_if368 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399958 $j7409959 $n7419960 $sn7429961))
        ($main_sum520 $i7399954 $j7409955 $n7419956 $sn7429957 $i7399962 $j7409963 $n7419964 $sn7429965))))

; __VERIFIER_assert precondition
(assert
  (forall (($j740 Int) ($sn742 Int) ($sn7429969 Int) ($n7419968 Int) ($j7409967 Int) ($n741 Int) ($i7399966 Int) ($uint9953 Int))
    (=> (and ($main_sum520 1 $j740 $n741 $sn742 $i7399966 $j7409967 $n7419968 $sn7429969)
             (= $sn742 0)
             (= $n741 $uint9953)
             (<= 0 $uint9953)
             (<= $uint9953 4294967295)
             (= $j740 10))
        ($__VERIFIER_assert_pre (ite (or (= $sn7429969 (* $n7419968 2)) (= $sn7429969 0)) 1 0)))))

(check-sat)
