(set-logic HORN)

(declare-fun $main_inv7 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if5 (Int) Bool)
(declare-fun $main_inv6 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv5 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum6 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum5 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if6 (Int) Bool)
(declare-fun $main_sum7 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if5 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond42 Int))
    (=> (and ($assume_abort_if_not_if5 cond42))
        (assume_abort_if_not cond42))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond43 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond43))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if6 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond44 Int))
    (=> (and ($__VERIFIER_assert_if6 cond44))
        (__VERIFIER_assert cond44))))

; loop entry $main_inv5
(assert
  (forall (($N10 Int) ($a11 (Array Int Int)) ($b12 (Array Int Int)) ($c13 (Array Int Int)))
    (=> (and (= $N10 100000))
        ($main_inv5 0 $N10 $a11 $b12 $c13))))

; loop term $main_sum5
(assert
  (forall (($a1147 (Array Int Int)) ($b1248 (Array Int Int)) ($i945 Int) ($c1349 (Array Int Int)) ($N1046 Int))
    (=> (and (not (< $i945 $N1046))
             ($main_inv5 $i945 $N1046 $a1147 $b1248 $c1349))
        ($main_sum5 $i945 $N1046 $a1147 $b1248 $c1349))))

; forwards $main_inv5
(assert
  (forall (($a1147 (Array Int Int)) ($b1248 (Array Int Int)) ($i945 Int) ($c1349 (Array Int Int)) ($N1046 Int))
    (=> (and (< $i945 $N1046)
             ($main_inv5 $i945 $N1046 $a1147 $b1248 $c1349))
        ($main_inv5 (+ $i945 1) $N1046 (store $a1147 $i945 1) (store $b1248 $i945 2) $c1349))))

; loop entry $main_inv6
(assert
  (forall (($c1354 (Array Int Int)) ($a1152 (Array Int Int)) ($N1051 Int) ($b1253 (Array Int Int)) ($i950 Int))
    (=> (and ($main_sum5 $i950 $N1051 $a1152 $b1253 $c1354))
        ($main_inv6 0 $N1051 $a1152 $b1253 $c1354))))

; loop term $main_sum6
(assert
  (forall (($a1157 (Array Int Int)) ($c1359 (Array Int Int)) ($N1056 Int) ($b1258 (Array Int Int)) ($i955 Int))
    (=> (and (not (< $i955 $N1056))
             ($main_inv6 $i955 $N1056 $a1157 $b1258 $c1359))
        ($main_sum6 $i955 $N1056 $a1157 $b1258 $c1359))))

; forwards $main_inv6
(assert
  (forall (($a1157 (Array Int Int)) ($c1359 (Array Int Int)) ($N1056 Int) ($b1258 (Array Int Int)) ($i955 Int))
    (=> (and (< $i955 $N1056)
             ($main_inv6 $i955 $N1056 $a1157 $b1258 $c1359))
        ($main_inv6 (+ $i955 1) $N1056 $a1157 $b1258 (store $c1359 $i955 (+ (select $a1157 $i955) (select $b1258 $i955)))))))

; loop entry $main_inv7
(assert
  (forall (($a1162 (Array Int Int)) ($i960 Int) ($c1364 (Array Int Int)) ($b1263 (Array Int Int)) ($N1061 Int))
    (=> (and ($main_sum6 $i960 $N1061 $a1162 $b1263 $c1364))
        ($main_inv7 1 $N1061 $a1162 $b1263 $c1364))))

; loop term $main_sum7
(assert
  (forall (($b1268 (Array Int Int)) ($N1066 Int) ($a1167 (Array Int Int)) ($c1369 (Array Int Int)) ($i965 Int))
    (=> (and (not (< $i965 $N1066))
             ($main_inv7 $i965 $N1066 $a1167 $b1268 $c1369))
        ($main_sum7 $i965 $N1066 $a1167 $b1268 $c1369))))

; __VERIFIER_assert precondition
(assert
  (forall (($b1268 (Array Int Int)) ($N1066 Int) ($a1167 (Array Int Int)) ($c1369 (Array Int Int)) ($i965 Int))
    (=> (and (< $i965 $N1066)
             ($main_inv7 $i965 $N1066 $a1167 $b1268 $c1369))
        ($__VERIFIER_assert_pre (ite (>= (select $c1369 $i965) 3) 1 0)))))

; forwards $main_inv7
(assert
  (forall (($b1268 (Array Int Int)) ($N1066 Int) ($a1167 (Array Int Int)) ($c1369 (Array Int Int)) ($i965 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $c1369 $i965) 3) 1 0))
             (< $i965 $N1066)
             ($main_inv7 $i965 $N1066 $a1167 $b1268 $c1369))
        ($main_inv7 (+ $i965 1) $N1066 $a1167 $b1268 $c1369))))

(check-sat)
