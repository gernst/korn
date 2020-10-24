(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum138 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if545 (Int) Bool)
(declare-fun $main_inv139 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum139 (Int Int Int Int) Bool)
(declare-fun $main_inv138 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13299 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13299))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if545 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13300 Int))
    (=> (and ($__VERIFIER_assert_if545 cond13300))
        (__VERIFIER_assert cond13300))))

; loop entry $main_inv138
(assert
  (forall (($n489 Int) ($z492 Int) ($uint13301 Int) ($y491 Int) ($x490 Int))
    (=> (and (= $y491 0)
             (= $x490 $n489)
             (= $n489 $uint13301)
             (<= 0 $uint13301)
             (<= $uint13301 4294967295))
        ($main_inv138 $n489 $x490 $y491 $z492))))

; loop term $main_sum138
(assert
  (forall (($n48913302 Int) ($x49013303 Int) ($y49113304 Int) ($z49213305 Int))
    (=> (and (not (> $x49013303 0))
             ($main_inv138 $n48913302 $x49013303 $y49113304 $z49213305))
        ($main_sum138 $n48913302 $x49013303 $y49113304 $z49213305))))

; forwards $main_inv138
(assert
  (forall (($n48913302 Int) ($x49013303 Int) ($y49113304 Int) ($z49213305 Int))
    (=> (and (> $x49013303 0)
             ($main_inv138 $n48913302 $x49013303 $y49113304 $z49213305))
        ($main_inv138 $n48913302 (- $x49013303 1) (+ $y49113304 1) $z49213305))))

; loop entry $main_inv139
(assert
  (forall (($n48913306 Int) ($x49013307 Int) ($y49113308 Int) ($z49213309 Int))
    (=> (and ($main_sum138 $n48913306 $x49013307 $y49113308 $z49213309))
        ($main_inv139 $n48913306 $x49013307 $y49113308 $y49113308))))

; loop term $main_sum139
(assert
  (forall (($n48913310 Int) ($x49013311 Int) ($y49113312 Int) ($z49213313 Int))
    (=> (and (not (> $z49213313 0))
             ($main_inv139 $n48913310 $x49013311 $y49113312 $z49213313))
        ($main_sum139 $n48913310 $x49013311 $y49113312 $z49213313))))

; forwards $main_inv139
(assert
  (forall (($n48913310 Int) ($x49013311 Int) ($y49113312 Int) ($z49213313 Int))
    (=> (and (> $z49213313 0)
             ($main_inv139 $n48913310 $x49013311 $y49113312 $z49213313))
        ($main_inv139 $n48913310 (+ $x49013311 1) $y49113312 (- $z49213313 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x49013315 Int) ($n48913314 Int) ($y49113316 Int) ($z49213317 Int))
    (=> (and ($main_sum139 $n48913314 $x49013315 $y49113316 $z49213317))
        ($__VERIFIER_assert_pre (ite (= $x49013315 $n48913314) 1 0)))))

(check-sat)
