(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if170 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if169 (Int Int) Bool)
(declare-fun $main_sum444 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv444 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum443 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv443 ((Array Int Int) Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if169 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8189 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if169 cond cond8189))
        (assume_abort_if_not cond8189))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8190 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8190))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if170 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8191 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if170 cond cond8191))
        (__VERIFIER_assert cond8191))))

; loop entry $main_inv443
(assert
  (forall (($array557 (Array Int Int)) ($tmp559 Int))
        ($main_inv443 $array557 0 $tmp559)))

; loop term $main_sum443
(assert
  (forall (($array5578192 (Array Int Int)) ($index5588193 Int) ($tmp5598194 Int))
    (=> (and (not (< $index5588193 10000)))
        ($main_sum443 $array5578192 $index5588193 $tmp5598194 $array5578192 $index5588193 $tmp5598194))))

; assume_abort_if_not precondition
(assert
  (forall (($tmp5598194 Int) ($index5588193 Int) ($uint8195 Int) ($array5578192 (Array Int Int)))
    (=> (and (= $tmp5598194 $uint8195)
             (<= 0 $uint8195)
             (<= $uint8195 4294967295)
             (< $index5588193 10000)
             ($main_inv443 $array5578192 $index5588193 $tmp5598194))
        ($assume_abort_if_not_pre (ite (> $tmp5598194 $index5588193) 1 0)))))

; forwards $main_inv443
(assert
  (forall (($array5578192 (Array Int Int)) ($index5588193 Int) ($tmp5598194 Int) ($uint8195 Int))
    (=> (and (assume_abort_if_not (ite (> $tmp5598194 $index5588193) 1 0))
             (= $tmp5598194 $uint8195)
             (<= 0 $uint8195)
             (<= $uint8195 4294967295)
             (< $index5588193 10000)
             ($main_inv443 $array5578192 $index5588193 $tmp5598194))
        ($main_inv443 (store $array5578192 $index5588193 $tmp5598194) (+ $index5588193 1) $tmp5598194))))

; backwards $main_sum443
(assert
  (forall (($index5588197 Int) ($array5578196 (Array Int Int)) ($array5578192 (Array Int Int)) ($tmp5598194 Int) ($tmp5598198 Int) ($uint8195 Int) ($index5588193 Int))
    (=> (and ($main_sum443 (store $array5578192 $index5588193 $tmp5598194) (+ $index5588193 1) $tmp5598194 $array5578196 $index5588197 $tmp5598198)
             (assume_abort_if_not (ite (> $tmp5598194 $index5588193) 1 0))
             (= $tmp5598194 $uint8195)
             (<= 0 $uint8195)
             (<= $uint8195 4294967295)
             (< $index5588193 10000))
        ($main_sum443 $array5578192 $index5588193 $tmp5598194 $array5578196 $index5588197 $tmp5598198))))

; loop entry $main_inv444
(assert
  (forall (($array5578199 (Array Int Int)) ($array557 (Array Int Int)) ($tmp559 Int) ($tmp5598201 Int) ($index5588200 Int))
    (=> (and ($main_sum443 $array557 0 $tmp559 $array5578199 $index5588200 $tmp5598201))
        ($main_inv444 $array5578199 0 $tmp5598201))))

; loop term $main_sum444
(assert
  (forall (($array5578202 (Array Int Int)) ($index5588203 Int) ($tmp5598204 Int))
    (=> (and (not (< $index5588203 10000)))
        ($main_sum444 $array5578202 $index5588203 $tmp5598204 $array5578202 $index5588203 $tmp5598204))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5578202 (Array Int Int)) ($index5588203 Int) ($tmp5598204 Int))
    (=> (and (< $index5588203 10000)
             ($main_inv444 $array5578202 $index5588203 $tmp5598204))
        ($__VERIFIER_assert_pre (ite (> (select $array5578202 $index5588203) $index5588203) 1 0)))))

; forwards $main_inv444
(assert
  (forall (($array5578202 (Array Int Int)) ($index5588203 Int) ($tmp5598204 Int))
    (=> (and (__VERIFIER_assert (ite (> (select $array5578202 $index5588203) $index5588203) 1 0))
             (< $index5588203 10000)
             ($main_inv444 $array5578202 $index5588203 $tmp5598204))
        ($main_inv444 $array5578202 (+ $index5588203 1) $tmp5598204))))

; backwards $main_sum444
(assert
  (forall (($array5578205 (Array Int Int)) ($tmp5598207 Int) ($index5588206 Int) ($array5578202 (Array Int Int)) ($index5588203 Int) ($tmp5598204 Int))
    (=> (and ($main_sum444 $array5578202 (+ $index5588203 1) $tmp5598204 $array5578205 $index5588206 $tmp5598207)
             (__VERIFIER_assert (ite (> (select $array5578202 $index5588203) $index5588203) 1 0))
             (< $index5588203 10000))
        ($main_sum444 $array5578202 $index5588203 $tmp5598204 $array5578205 $index5588206 $tmp5598207))))

(check-sat)
