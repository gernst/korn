(set-logic HORN)

(declare-fun $main_inv255 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if682 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if683 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv256 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum256 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum255 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16418 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16418))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if682 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16419 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if682 cond cond16419))
        (__VERIFIER_assert cond16419))))

; loop entry $main_inv255
(assert
  (forall (($N_COL715 Int) ($k717 Int) ($N_LIN714 Int) ($matriz718 (Array Int (Array Int Int))) ($int16420 Int))
    (=> (and (<= (- 2147483648) $int16420)
             (<= $int16420 2147483647)
             (= $N_COL715 1)
             (= $N_LIN714 1))
        ($main_inv255 $N_LIN714 $N_COL715 0 $k717 $matriz718 $int16420))))

; loop term $main_sum255
(assert
  (forall (($j71616423 Int) ($N_COL71516422 Int) ($maior71916426 Int) ($matriz71816425 (Array Int (Array Int Int))) ($k71716424 Int) ($N_LIN71416421 Int))
    (=> (and (not (< $j71616423 $N_COL71516422)))
        ($main_sum255 $N_LIN71416421 $N_COL71516422 $j71616423 $k71716424 $matriz71816425 $maior71916426 $N_LIN71416421 $N_COL71516422 $j71616423 $k71716424 $matriz71816425 $maior71916426))))

; loop entry $main_inv256
(assert
  (forall (($j71616423 Int) ($N_COL71516422 Int) ($maior71916426 Int) ($matriz71816425 (Array Int (Array Int Int))) ($k71716424 Int) ($N_LIN71416421 Int))
    (=> (and (< $j71616423 $N_COL71516422)
             ($main_inv255 $N_LIN71416421 $N_COL71516422 $j71616423 $k71716424 $matriz71816425 $maior71916426))
        ($main_inv256 $N_LIN71416421 $N_COL71516422 $j71616423 0 $matriz71816425 $maior71916426))))

; loop term $main_sum256
(assert
  (forall (($k71716430 Int) ($j71616429 Int) ($maior71916432 Int) ($N_COL71516428 Int) ($N_LIN71416427 Int) ($matriz71816431 (Array Int (Array Int Int))))
    (=> (and (not (< $k71716430 $N_LIN71416427)))
        ($main_sum256 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432))))

; if then
(assert
  (forall (($k71716430 Int) ($j71616429 Int) ($N_COL71516428 Int) ($N_LIN71416427 Int) ($matriz71816431 (Array Int (Array Int Int))) ($maior71916432 Int) ($int16433 Int))
    (=> (and (>= (select (select (store $matriz71816431 $j71616429 (store (select $matriz71816431 $j71616429) $k71716430 $int16433)) $j71616429) $k71716430) $maior71916432)
             (<= (- 2147483648) $int16433)
             (<= $int16433 2147483647)
             (< $k71716430 $N_LIN71416427)
             ($main_inv256 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432))
        ($main_if683 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 (store $matriz71816431 $j71616429 (store (select $matriz71816431 $j71616429) $k71716430 $int16433)) (select (select (store $matriz71816431 $j71616429 (store (select $matriz71816431 $j71616429) $k71716430 $int16433)) $j71616429) $k71716430)))))

; if else
(assert
  (forall (($k71716430 Int) ($j71616429 Int) ($N_COL71516428 Int) ($N_LIN71416427 Int) ($matriz71816431 (Array Int (Array Int Int))) ($maior71916432 Int) ($int16433 Int))
    (=> (and (not (>= (select (select (store $matriz71816431 $j71616429 (store (select $matriz71816431 $j71616429) $k71716430 $int16433)) $j71616429) $k71716430) $maior71916432))
             (<= (- 2147483648) $int16433)
             (<= $int16433 2147483647)
             (< $k71716430 $N_LIN71416427)
             ($main_inv256 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432))
        ($main_if683 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 (store $matriz71816431 $j71616429 (store (select $matriz71816431 $j71616429) $k71716430 $int16433)) $maior71916432))))

; forwards $main_inv256
(assert
  (forall (($k71716437 Int) ($N_LIN71416434 Int) ($k71716430 Int) ($N_COL71516435 Int) ($j71616436 Int) ($j71616429 Int) ($maior71916432 Int) ($N_COL71516428 Int) ($maior71916439 Int) ($matriz71816438 (Array Int (Array Int Int))) ($N_LIN71416427 Int) ($matriz71816431 (Array Int (Array Int Int))))
    (=> (and ($main_if683 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416434 $N_COL71516435 $j71616436 $k71716437 $matriz71816438 $maior71916439))
        ($main_inv256 $N_LIN71416434 $N_COL71516435 $j71616436 (+ $k71716437 1) $matriz71816438 $maior71916439))))

; backwards $main_sum256
(assert
  (forall (($k71716437 Int) ($N_LIN71416440 Int) ($k71716443 Int) ($maior71916445 Int) ($k71716430 Int) ($N_COL71516441 Int) ($N_COL71516435 Int) ($j71616436 Int) ($j71616429 Int) ($maior71916432 Int) ($N_COL71516428 Int) ($matriz71816444 (Array Int (Array Int Int))) ($maior71916439 Int) ($matriz71816438 (Array Int (Array Int Int))) ($N_LIN71416434 Int) ($j71616442 Int) ($N_LIN71416427 Int) ($matriz71816431 (Array Int (Array Int Int))))
    (=> (and ($main_sum256 $N_LIN71416434 $N_COL71516435 $j71616436 (+ $k71716437 1) $matriz71816438 $maior71916439 $N_LIN71416440 $N_COL71516441 $j71616442 $k71716443 $matriz71816444 $maior71916445)
             ($main_if683 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416434 $N_COL71516435 $j71616436 $k71716437 $matriz71816438 $maior71916439))
        ($main_sum256 $N_LIN71416427 $N_COL71516428 $j71616429 $k71716430 $matriz71816431 $maior71916432 $N_LIN71416440 $N_COL71516441 $j71616442 $k71716443 $matriz71816444 $maior71916445))))

; forwards $main_inv255
(assert
  (forall (($j71616423 Int) ($N_COL71516422 Int) ($matriz71816450 (Array Int (Array Int Int))) ($N_COL71516447 Int) ($matriz71816425 (Array Int (Array Int Int))) ($k71716449 Int) ($maior71916451 Int) ($k71716424 Int) ($maior71916426 Int) ($j71616448 Int) ($N_LIN71416421 Int) ($N_LIN71416446 Int))
    (=> (and ($main_sum256 $N_LIN71416421 $N_COL71516422 $j71616423 0 $matriz71816425 $maior71916426 $N_LIN71416446 $N_COL71516447 $j71616448 $k71716449 $matriz71816450 $maior71916451)
             (< $j71616423 $N_COL71516422)
             ($main_inv255 $N_LIN71416421 $N_COL71516422 $j71616423 $k71716424 $matriz71816425 $maior71916426))
        ($main_inv255 $N_LIN71416446 $N_COL71516447 (+ $j71616448 1) $k71716449 $matriz71816450 $maior71916451))))

; backwards $main_sum255
(assert
  (forall (($matriz71816456 (Array Int (Array Int Int))) ($j71616423 Int) ($N_COL71516422 Int) ($matriz71816450 (Array Int (Array Int Int))) ($N_COL71516447 Int) ($matriz71816425 (Array Int (Array Int Int))) ($k71716449 Int) ($N_LIN71416452 Int) ($maior71916457 Int) ($j71616454 Int) ($k71716455 Int) ($maior71916451 Int) ($k71716424 Int) ($N_COL71516453 Int) ($maior71916426 Int) ($j71616448 Int) ($N_LIN71416421 Int) ($N_LIN71416446 Int))
    (=> (and ($main_sum255 $N_LIN71416446 $N_COL71516447 (+ $j71616448 1) $k71716449 $matriz71816450 $maior71916451 $N_LIN71416452 $N_COL71516453 $j71616454 $k71716455 $matriz71816456 $maior71916457)
             ($main_sum256 $N_LIN71416421 $N_COL71516422 $j71616423 0 $matriz71816425 $maior71916426 $N_LIN71416446 $N_COL71516447 $j71616448 $k71716449 $matriz71816450 $maior71916451)
             (< $j71616423 $N_COL71516422))
        ($main_sum255 $N_LIN71416421 $N_COL71516422 $j71616423 $k71716424 $matriz71816425 $maior71916426 $N_LIN71416452 $N_COL71516453 $j71616454 $k71716455 $matriz71816456 $maior71916457))))

; __VERIFIER_assert precondition
(assert
  (forall (($N_COL715 Int) ($N_LIN71416458 Int) ($matriz71816462 (Array Int (Array Int Int))) ($j71616460 Int) ($k717 Int) ($N_LIN714 Int) ($matriz718 (Array Int (Array Int Int))) ($N_COL71516459 Int) ($maior71916463 Int) ($int16420 Int) ($k71716461 Int))
    (=> (and ($main_sum255 $N_LIN714 $N_COL715 0 $k717 $matriz718 $int16420 $N_LIN71416458 $N_COL71516459 $j71616460 $k71716461 $matriz71816462 $maior71916463)
             (<= (- 2147483648) $int16420)
             (<= $int16420 2147483647)
             (= $N_COL715 1)
             (= $N_LIN714 1))
        ($__VERIFIER_assert_pre (ite (<= (select (select $matriz71816462 0) 0) $maior71916463) 1 0)))))

(check-sat)
