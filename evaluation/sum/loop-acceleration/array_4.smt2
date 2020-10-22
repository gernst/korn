(set-logic HORN)

(declare-fun $main_sum439 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if163 (Int Int) Bool)
(declare-fun $main_sum438 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv439 ((Array Int Int) Int) Bool)
(declare-fun $main_inv438 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8142 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8142))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if163 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8143 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if163 cond cond8143))
        (__VERIFIER_assert cond8143))))

; loop entry $main_inv438
(assert
  (forall (($A550 (Array Int Int)))
        ($main_inv438 $A550 0)))

; loop term $main_sum438
(assert
  (forall (($A5508144 (Array Int Int)) ($i5518145 Int))
    (=> (and (not (< $i5518145 (- 1024 1))))
        ($main_sum438 $A5508144 $i5518145 $A5508144 $i5518145))))

; forwards $main_inv438
(assert
  (forall (($A5508144 (Array Int Int)) ($i5518145 Int) ($int8146 Int))
    (=> (and (<= (- 2147483648) $int8146)
             (<= $int8146 2147483647)
             (< $i5518145 (- 1024 1))
             ($main_inv438 $A5508144 $i5518145))
        ($main_inv438 (store $A5508144 $i5518145 $int8146) (+ $i5518145 1)))))

; backwards $main_sum438
(assert
  (forall (($i5518148 Int) ($A5508144 (Array Int Int)) ($int8146 Int) ($i5518145 Int) ($A5508147 (Array Int Int)))
    (=> (and ($main_sum438 (store $A5508144 $i5518145 $int8146) (+ $i5518145 1) $A5508147 $i5518148)
             (<= (- 2147483648) $int8146)
             (<= $int8146 2147483647)
             (< $i5518145 (- 1024 1)))
        ($main_sum438 $A5508144 $i5518145 $A5508147 $i5518148))))

; loop entry $main_inv439
(assert
  (forall (($A5508149 (Array Int Int)) ($A550 (Array Int Int)) ($i5518150 Int))
    (=> (and ($main_sum438 $A550 0 $A5508149 $i5518150))
        ($main_inv439 (store $A5508149 (- 1024 1) 0) 0))))

; loop term $main_sum439
(assert
  (forall (($A5508151 (Array Int Int)) ($i5518152 Int))
    (=> (and (= (select $A5508151 $i5518152) 0))
        ($main_sum439 $A5508151 $i5518152 $A5508151 $i5518152))))

; forwards $main_inv439
(assert
  (forall (($A5508151 (Array Int Int)) ($i5518152 Int))
    (=> (and (not (= (select $A5508151 $i5518152) 0))
             ($main_inv439 $A5508151 $i5518152))
        ($main_inv439 $A5508151 (+ $i5518152 1)))))

; backwards $main_sum439
(assert
  (forall (($A5508151 (Array Int Int)) ($i5518152 Int) ($A5508153 (Array Int Int)) ($i5518154 Int))
    (=> (and ($main_sum439 $A5508151 (+ $i5518152 1) $A5508153 $i5518154)
             (not (= (select $A5508151 $i5518152) 0)))
        ($main_sum439 $A5508151 $i5518152 $A5508153 $i5518154))))

; __VERIFIER_assert precondition
(assert
  (forall (($A5508149 (Array Int Int)) ($i5518156 Int) ($i5518150 Int) ($A550 (Array Int Int)) ($A5508155 (Array Int Int)))
    (=> (and ($main_sum439 (store $A5508149 (- 1024 1) 0) 0 $A5508155 $i5518156)
             ($main_sum438 $A550 0 $A5508149 $i5518150))
        ($__VERIFIER_assert_pre (ite (<= $i5518156 1024) 1 0)))))

(check-sat)
