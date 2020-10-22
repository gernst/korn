(set-logic HORN)

(declare-fun $main_if375 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv524 (Int Int) Bool)
(declare-fun $main_sum524 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if374 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10021 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10021))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if374 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10022 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if374 cond cond10022))
        (__VERIFIER_assert cond10022))))

; loop entry $main_inv524
(assert
  (forall (($sn755 Int))
    (=> (and (= $sn755 0))
        ($main_inv524 1 $sn755))))

; loop term $main_sum524
(assert
  (forall (($i75410023 Int) ($sn75510024 Int))
    (=> (and (not (<= $i75410023 8)))
        ($main_sum524 $i75410023 $sn75510024 $i75410023 $sn75510024))))

; if then
(assert
  (forall (($i75410023 Int) ($sn75510024 Int))
    (=> (and (< $i75410023 4)
             (<= $i75410023 8)
             ($main_inv524 $i75410023 $sn75510024))
        ($main_if375 $i75410023 $sn75510024 $i75410023 (+ $sn75510024 2)))))

; if else
(assert
  (forall (($i75410023 Int) ($sn75510024 Int))
    (=> (and (not (< $i75410023 4))
             (<= $i75410023 8)
             ($main_inv524 $i75410023 $sn75510024))
        ($main_if375 $i75410023 $sn75510024 $i75410023 $sn75510024))))

; forwards $main_inv524
(assert
  (forall (($i75410025 Int) ($sn75510026 Int) ($i75410023 Int) ($sn75510024 Int))
    (=> (and ($main_if375 $i75410023 $sn75510024 $i75410025 $sn75510026))
        ($main_inv524 (+ $i75410025 1) $sn75510026))))

; backwards $main_sum524
(assert
  (forall (($i75410023 Int) ($i75410027 Int) ($i75410025 Int) ($sn75510026 Int) ($sn75510028 Int) ($sn75510024 Int))
    (=> (and ($main_sum524 (+ $i75410025 1) $sn75510026 $i75410027 $sn75510028)
             ($main_if375 $i75410023 $sn75510024 $i75410025 $sn75510026))
        ($main_sum524 $i75410023 $sn75510024 $i75410027 $sn75510028))))

; __VERIFIER_assert precondition
(assert
  (forall (($sn75510030 Int) ($sn755 Int) ($i75410029 Int))
    (=> (and ($main_sum524 1 $sn755 $i75410029 $sn75510030)
             (= $sn755 0))
        ($__VERIFIER_assert_pre (ite (or (= $sn75510030 (* 8 2)) (= $sn75510030 0)) 1 0)))))

(check-sat)
