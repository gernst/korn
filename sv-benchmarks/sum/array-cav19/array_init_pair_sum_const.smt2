(set-logic HORN)

(declare-fun $main_inv7 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum5 (Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum7 (Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv6 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv5 (Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum6 (Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if6 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if5 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if5 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond58 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if5 cond cond58))
        (assume_abort_if_not cond58))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond59 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond59))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if6 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond60 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if6 cond cond60))
        (__VERIFIER_assert cond60))))

; loop entry $main_inv5
(assert
  (forall (($N10 Int) ($a11 (Array Int Int)) ($b12 (Array Int Int)) ($c13 (Array Int Int)))
    (=> (and (= $N10 100000))
        ($main_inv5 0 $N10 $a11 $b12 $c13))))

; loop term $main_sum5
(assert
  (forall (($c1365 (Array Int Int)) ($b1264 (Array Int Int)) ($a1163 (Array Int Int)) ($i961 Int) ($N1062 Int))
    (=> (and (not (< $i961 $N1062)))
        ($main_sum5 $i961 $N1062 $a1163 $b1264 $c1365 $i961 $N1062 $a1163 $b1264 $c1365))))

; forwards $main_inv5
(assert
  (forall (($c1365 (Array Int Int)) ($b1264 (Array Int Int)) ($a1163 (Array Int Int)) ($i961 Int) ($N1062 Int))
    (=> (and (< $i961 $N1062)
             ($main_inv5 $i961 $N1062 $a1163 $b1264 $c1365))
        ($main_inv5 (+ $i961 1) $N1062 (store $a1163 $i961 1) (store $b1264 $i961 2) $c1365))))

; backwards $main_sum5
(assert
  (forall (($c1365 (Array Int Int)) ($b1264 (Array Int Int)) ($N1067 Int) ($b1269 (Array Int Int)) ($c1370 (Array Int Int)) ($a1163 (Array Int Int)) ($i966 Int) ($a1168 (Array Int Int)) ($i961 Int) ($N1062 Int))
    (=> (and ($main_sum5 (+ $i961 1) $N1062 (store $a1163 $i961 1) (store $b1264 $i961 2) $c1365 $i966 $N1067 $a1168 $b1269 $c1370)
             (< $i961 $N1062))
        ($main_sum5 $i961 $N1062 $a1163 $b1264 $c1365 $i966 $N1067 $a1168 $b1269 $c1370))))

; loop entry $main_inv6
(assert
  (forall (($c13 (Array Int Int)) ($N10 Int) ($i971 Int) ($c1375 (Array Int Int)) ($b1274 (Array Int Int)) ($N1072 Int) ($a11 (Array Int Int)) ($b12 (Array Int Int)) ($a1173 (Array Int Int)))
    (=> (and ($main_sum5 0 $N10 $a11 $b12 $c13 $i971 $N1072 $a1173 $b1274 $c1375)
             (= $N10 100000))
        ($main_inv6 0 $N1072 $a1173 $b1274 $c1375))))

; loop term $main_sum6
(assert
  (forall (($c1380 (Array Int Int)) ($a1178 (Array Int Int)) ($b1279 (Array Int Int)) ($i976 Int) ($N1077 Int))
    (=> (and (not (< $i976 $N1077)))
        ($main_sum6 $i976 $N1077 $a1178 $b1279 $c1380 $i976 $N1077 $a1178 $b1279 $c1380))))

; forwards $main_inv6
(assert
  (forall (($c1380 (Array Int Int)) ($a1178 (Array Int Int)) ($b1279 (Array Int Int)) ($i976 Int) ($N1077 Int))
    (=> (and (< $i976 $N1077)
             ($main_inv6 $i976 $N1077 $a1178 $b1279 $c1380))
        ($main_inv6 (+ $i976 1) $N1077 $a1178 $b1279 (store $c1380 $i976 (+ (select $a1178 $i976) (select $b1279 $i976)))))))

; backwards $main_sum6
(assert
  (forall (($c1380 (Array Int Int)) ($c1385 (Array Int Int)) ($i981 Int) ($b1279 (Array Int Int)) ($N1077 Int) ($N1082 Int) ($a1183 (Array Int Int)) ($a1178 (Array Int Int)) ($i976 Int) ($b1284 (Array Int Int)))
    (=> (and ($main_sum6 (+ $i976 1) $N1077 $a1178 $b1279 (store $c1380 $i976 (+ (select $a1178 $i976) (select $b1279 $i976))) $i981 $N1082 $a1183 $b1284 $c1385)
             (< $i976 $N1077))
        ($main_sum6 $i976 $N1077 $a1178 $b1279 $c1380 $i981 $N1082 $a1183 $b1284 $c1385))))

; loop entry $main_inv7
(assert
  (forall (($c13 (Array Int Int)) ($N10 Int) ($N1087 Int) ($i971 Int) ($c1390 (Array Int Int)) ($c1375 (Array Int Int)) ($b1274 (Array Int Int)) ($N1072 Int) ($b12 (Array Int Int)) ($a1173 (Array Int Int)) ($a1188 (Array Int Int)) ($b1289 (Array Int Int)) ($i986 Int) ($a11 (Array Int Int)))
    (=> (and ($main_sum6 0 $N1072 $a1173 $b1274 $c1375 $i986 $N1087 $a1188 $b1289 $c1390)
             ($main_sum5 0 $N10 $a11 $b12 $c13 $i971 $N1072 $a1173 $b1274 $c1375)
             (= $N10 100000))
        ($main_inv7 1 $N1087 $a1188 $b1289 $c1390))))

; loop term $main_sum7
(assert
  (forall (($a1193 (Array Int Int)) ($i991 Int) ($b1294 (Array Int Int)) ($N1092 Int) ($c1395 (Array Int Int)))
    (=> (and (not (< $i991 $N1092)))
        ($main_sum7 $i991 $N1092 $a1193 $b1294 $c1395 $i991 $N1092 $a1193 $b1294 $c1395))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1193 (Array Int Int)) ($i991 Int) ($b1294 (Array Int Int)) ($N1092 Int) ($c1395 (Array Int Int)))
    (=> (and (< $i991 $N1092)
             ($main_inv7 $i991 $N1092 $a1193 $b1294 $c1395))
        ($__VERIFIER_assert_pre (ite (>= (select $c1395 $i991) 3) 1 0)))))

; forwards $main_inv7
(assert
  (forall (($a1193 (Array Int Int)) ($i991 Int) ($b1294 (Array Int Int)) ($N1092 Int) ($c1395 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $c1395 $i991) 3) 1 0))
             (< $i991 $N1092)
             ($main_inv7 $i991 $N1092 $a1193 $b1294 $c1395))
        ($main_inv7 (+ $i991 1) $N1092 $a1193 $b1294 $c1395))))

; backwards $main_sum7
(assert
  (forall (($b1299 (Array Int Int)) ($a1193 (Array Int Int)) ($i991 Int) ($b1294 (Array Int Int)) ($c13100 (Array Int Int)) ($a1198 (Array Int Int)) ($i996 Int) ($N1092 Int) ($c1395 (Array Int Int)) ($N1097 Int))
    (=> (and ($main_sum7 (+ $i991 1) $N1092 $a1193 $b1294 $c1395 $i996 $N1097 $a1198 $b1299 $c13100)
             (__VERIFIER_assert (ite (>= (select $c1395 $i991) 3) 1 0))
             (< $i991 $N1092))
        ($main_sum7 $i991 $N1092 $a1193 $b1294 $c1395 $i996 $N1097 $a1198 $b1299 $c13100))))

(check-sat)
