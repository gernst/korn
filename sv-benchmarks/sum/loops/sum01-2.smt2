(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if365 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum519 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv519 (Int Int Int) Bool)
(declare-fun $main_if366 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9936 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9936))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if365 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9937 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if365 cond cond9937))
        (__VERIFIER_assert cond9937))))

; if else
(assert
  (forall (($i736 Int) ($n737 Int) ($sn738 Int) ($int9938 Int))
    (=> (and (< $n737 1000)
             (>= $n737 (- 1000))
             (= $sn738 0)
             (= $n737 $int9938)
             (<= (- 2147483648) $int9938)
             (<= $int9938 2147483647))
        ($main_if366 $i736 $n737 $sn738 $i736 $n737 $sn738))))

; loop entry $main_inv519
(assert
  (forall (($n7379940 Int) ($sn7389941 Int) ($i7369939 Int) ($i736 Int) ($sn738 Int) ($n737 Int))
    (=> (and ($main_if366 $i736 $n737 $sn738 $i7369939 $n7379940 $sn7389941))
        ($main_inv519 1 $n7379940 $sn7389941))))

; loop term $main_sum519
(assert
  (forall (($i7369942 Int) ($n7379943 Int) ($sn7389944 Int))
    (=> (and (not (<= $i7369942 $n7379943)))
        ($main_sum519 $i7369942 $n7379943 $sn7389944 $i7369942 $n7379943 $sn7389944))))

; forwards $main_inv519
(assert
  (forall (($i7369942 Int) ($n7379943 Int) ($sn7389944 Int))
    (=> (and (<= $i7369942 $n7379943)
             ($main_inv519 $i7369942 $n7379943 $sn7389944))
        ($main_inv519 (+ $i7369942 1) $n7379943 (+ $sn7389944 2)))))

; backwards $main_sum519
(assert
  (forall (($i7369942 Int) ($sn7389947 Int) ($sn7389944 Int) ($n7379943 Int) ($n7379946 Int) ($i7369945 Int))
    (=> (and ($main_sum519 (+ $i7369942 1) $n7379943 (+ $sn7389944 2) $i7369945 $n7379946 $sn7389947)
             (<= $i7369942 $n7379943))
        ($main_sum519 $i7369942 $n7379943 $sn7389944 $i7369945 $n7379946 $sn7389947))))

; __VERIFIER_assert precondition
(assert
  (forall (($n7379940 Int) ($i7369948 Int) ($n7379949 Int) ($sn7389941 Int) ($i7369939 Int) ($i736 Int) ($sn738 Int) ($sn7389950 Int) ($n737 Int))
    (=> (and ($main_sum519 1 $n7379940 $sn7389941 $i7369948 $n7379949 $sn7389950)
             ($main_if366 $i736 $n737 $sn738 $i7369939 $n7379940 $sn7389941))
        ($__VERIFIER_assert_pre (ite (or (= $sn7389950 (* $n7379949 2)) (= $sn7389950 0)) 1 0)))))

(check-sat)
