(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv445 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum445 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum446 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $assume_abort_if_not_if171 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv446 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if172 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if171 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8211 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if171 cond cond8211))
        (assume_abort_if_not cond8211))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8212 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8212))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if172 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8213 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if172 cond cond8213))
        (__VERIFIER_assert cond8213))))

; loop entry $main_inv445
(assert
  (forall (($array560 (Array Int Int)) ($index561 Int) ($tmp562 Int))
    (=> (and (= $tmp562 0)
             (= $index561 0))
        ($main_inv445 $array560 $index561 $tmp562))))

; loop term $main_sum445
(assert
  (forall (($array5608214 (Array Int Int)) ($index5618215 Int) ($tmp5628216 Int))
    (=> (and (not (< $index5618215 10000)))
        ($main_sum445 $array5608214 $index5618215 $tmp5628216 $array5608214 $index5618215 $tmp5628216))))

; forwards $main_inv445
(assert
  (forall (($array5608214 (Array Int Int)) ($index5618215 Int) ($tmp5628216 Int))
    (=> (and (< $index5618215 10000)
             ($main_inv445 $array5608214 $index5618215 $tmp5628216))
        ($main_inv445 (store $array5608214 $index5618215 $tmp5628216) (+ $index5618215 1) (+ $tmp5628216 2)))))

; backwards $main_sum445
(assert
  (forall (($tmp5628216 Int) ($index5618215 Int) ($array5608217 (Array Int Int)) ($tmp5628219 Int) ($array5608214 (Array Int Int)) ($index5618218 Int))
    (=> (and ($main_sum445 (store $array5608214 $index5618215 $tmp5628216) (+ $index5618215 1) (+ $tmp5628216 2) $array5608217 $index5618218 $tmp5628219)
             (< $index5618215 10000))
        ($main_sum445 $array5608214 $index5618215 $tmp5628216 $array5608217 $index5618218 $tmp5628219))))

; loop entry $main_inv446
(assert
  (forall (($array560 (Array Int Int)) ($array5608220 (Array Int Int)) ($index561 Int) ($index5618221 Int) ($tmp5628222 Int) ($tmp562 Int))
    (=> (and ($main_sum445 $array560 $index561 $tmp562 $array5608220 $index5618221 $tmp5628222)
             (= $tmp562 0)
             (= $index561 0))
        ($main_inv446 $array5608220 0 $tmp5628222))))

; loop term $main_sum446
(assert
  (forall (($array5608223 (Array Int Int)) ($index5618224 Int) ($tmp5628225 Int))
    (=> (and (not (< $index5618224 10000)))
        ($main_sum446 $array5608223 $index5618224 $tmp5628225 $array5608223 $index5618224 $tmp5628225))))

; __VERIFIER_assert precondition
(assert
  (forall (($array5608223 (Array Int Int)) ($index5618224 Int) ($tmp5628225 Int))
    (=> (and (< $index5618224 10000)
             ($main_inv446 $array5608223 $index5618224 $tmp5628225))
        ($__VERIFIER_assert_pre (ite (or (= (select $array5608223 $index5618224) (* 2 $index5618224)) (= (select $array5608223 $index5618224) 0)) 1 0)))))

; forwards $main_inv446
(assert
  (forall (($array5608223 (Array Int Int)) ($index5618224 Int) ($tmp5628225 Int))
    (=> (and (__VERIFIER_assert (ite (or (= (select $array5608223 $index5618224) (* 2 $index5618224)) (= (select $array5608223 $index5618224) 0)) 1 0))
             (< $index5618224 10000)
             ($main_inv446 $array5608223 $index5618224 $tmp5628225))
        ($main_inv446 $array5608223 (+ $index5618224 1) $tmp5628225))))

; backwards $main_sum446
(assert
  (forall (($tmp5628225 Int) ($array5608226 (Array Int Int)) ($index5618224 Int) ($array5608223 (Array Int Int)) ($tmp5628228 Int) ($index5618227 Int))
    (=> (and ($main_sum446 $array5608223 (+ $index5618224 1) $tmp5628225 $array5608226 $index5618227 $tmp5628228)
             (__VERIFIER_assert (ite (or (= (select $array5608223 $index5618224) (* 2 $index5618224)) (= (select $array5608223 $index5618224) 0)) 1 0))
             (< $index5618224 10000))
        ($main_sum446 $array5608223 $index5618224 $tmp5628225 $array5608226 $index5618227 $tmp5628228))))

(check-sat)
