(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if252 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if250 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if251 (Int Int) Bool)
(declare-fun $main_if254 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv475 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if253 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv474 (Int Int Int Int) Bool)
(declare-fun $main_sum475 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if255 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum474 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if250 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9027 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if250 cond cond9027))
        (assume_abort_if_not cond9027))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9028 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9028))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if251 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9029 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if251 cond cond9029))
        (__VERIFIER_assert cond9029))))

; if else
(assert
  (forall (($int9030 Int) ($l630 Int) ($i627 Int) ($k628 Int) ($n629 Int) ($int9031 Int))
    (=> (and (> $int9031 0)
             (<= (- 2147483648) $int9031)
             (<= $int9031 2147483647)
             (<= (- 2147483648) $int9030)
             (<= $int9030 2147483647))
        ($main_if252 $i627 $k628 $n629 $l630 $i627 $k628 $int9030 $int9031))))

; if else
(assert
  (forall (($i6279032 Int) ($k6289033 Int) ($n6299034 Int) ($l630 Int) ($i627 Int) ($k628 Int) ($n629 Int) ($l6309035 Int))
    (=> (and (< $l6309035 1000000)
             ($main_if252 $i627 $k628 $n629 $l630 $i6279032 $k6289033 $n6299034 $l6309035))
        ($main_if253 $i627 $k628 $n629 $l630 $i6279032 $k6289033 $n6299034 $l6309035))))

; if else
(assert
  (forall (($k6289037 Int) ($n6299038 Int) ($i6279036 Int) ($n629 Int) ($l6309039 Int) ($l630 Int) ($i627 Int) ($k628 Int))
    (=> (and (< $n6299038 1000000)
             ($main_if253 $i627 $k628 $n629 $l630 $i6279036 $k6289037 $n6299038 $l6309039))
        ($main_if254 $i627 $k628 $n629 $l630 $i6279036 $k6289037 $n6299038 $l6309039))))

; loop entry $main_inv474
(assert
  (forall (($i6279040 Int) ($n6299042 Int) ($n629 Int) ($k6289041 Int) ($l6309043 Int) ($l630 Int) ($i627 Int) ($k628 Int))
    (=> (and ($main_if254 $i627 $k628 $n629 $l630 $i6279040 $k6289041 $n6299042 $l6309043))
        ($main_inv474 $i6279040 1 $n6299042 $l6309043))))

; loop term $main_sum474
(assert
  (forall (($i6279044 Int) ($k6289045 Int) ($n6299046 Int) ($l6309047 Int))
    (=> (and (not (< $k6289045 $n6299046)))
        ($main_sum474 $i6279044 $k6289045 $n6299046 $l6309047 $i6279044 $k6289045 $n6299046 $l6309047))))

; loop entry $main_inv475
(assert
  (forall (($l6309047 Int) ($k6289045 Int) ($n6299046 Int) ($i6279044 Int))
    (=> (and (< $k6289045 $n6299046)
             ($main_inv474 $i6279044 $k6289045 $n6299046 $l6309047))
        ($main_inv475 $l6309047 $k6289045 $n6299046 $l6309047))))

; loop term $main_sum475
(assert
  (forall (($i6279048 Int) ($k6289049 Int) ($n6299050 Int) ($l6309051 Int))
    (=> (and (not (< $i6279048 $n6299050)))
        ($main_sum475 $i6279048 $k6289049 $n6299050 $l6309051 $i6279048 $k6289049 $n6299050 $l6309051))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6279048 Int) ($n6299050 Int) ($k6289049 Int) ($l6309051 Int))
    (=> (and (< $i6279048 $n6299050)
             ($main_inv475 $i6279048 $k6289049 $n6299050 $l6309051))
        ($__VERIFIER_assert_pre (ite (<= 1 $i6279048) 1 0)))))

; forwards $main_inv475
(assert
  (forall (($i6279048 Int) ($k6289049 Int) ($n6299050 Int) ($l6309051 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $i6279048) 1 0))
             (< $i6279048 $n6299050)
             ($main_inv475 $i6279048 $k6289049 $n6299050 $l6309051))
        ($main_inv475 (+ $i6279048 1) $k6289049 $n6299050 $l6309051))))

; backwards $main_sum475
(assert
  (forall (($n6299050 Int) ($l6309051 Int) ($k6289049 Int) ($i6279052 Int) ($i6279048 Int) ($l6309055 Int) ($k6289053 Int) ($n6299054 Int))
    (=> (and ($main_sum475 (+ $i6279048 1) $k6289049 $n6299050 $l6309051 $i6279052 $k6289053 $n6299054 $l6309055)
             (__VERIFIER_assert (ite (<= 1 $i6279048) 1 0))
             (< $i6279048 $n6299050))
        ($main_sum475 $i6279048 $k6289049 $n6299050 $l6309051 $i6279052 $k6289053 $n6299054 $l6309055))))

; if then
(assert
  (forall (($i6279044 Int) ($int9060 Int) ($k6289045 Int) ($k6289057 Int) ($l6309047 Int) ($i6279056 Int) ($n6299046 Int) ($n6299058 Int) ($l6309059 Int))
    (=> (and (not (= $int9060 0))
             (<= (- 2147483648) $int9060)
             (<= $int9060 2147483647)
             ($main_sum475 $l6309047 $k6289045 $n6299046 $l6309047 $i6279056 $k6289057 $n6299058 $l6309059)
             (< $k6289045 $n6299046)
             ($main_inv474 $i6279044 $k6289045 $n6299046 $l6309047))
        ($main_if255 $i6279044 $k6289045 $n6299046 $l6309047 $i6279056 $k6289057 $n6299058 (+ $l6309059 1)))))

; if else
(assert
  (forall (($i6279044 Int) ($int9060 Int) ($k6289045 Int) ($k6289057 Int) ($l6309047 Int) ($i6279056 Int) ($n6299046 Int) ($n6299058 Int) ($l6309059 Int))
    (=> (and (= $int9060 0)
             (<= (- 2147483648) $int9060)
             (<= $int9060 2147483647)
             ($main_sum475 $l6309047 $k6289045 $n6299046 $l6309047 $i6279056 $k6289057 $n6299058 $l6309059)
             (< $k6289045 $n6299046)
             ($main_inv474 $i6279044 $k6289045 $n6299046 $l6309047))
        ($main_if255 $i6279044 $k6289045 $n6299046 $l6309047 $i6279056 $k6289057 $n6299058 $l6309059))))

; forwards $main_inv474
(assert
  (forall (($i6279044 Int) ($l6309064 Int) ($k6289062 Int) ($k6289045 Int) ($i6279061 Int) ($l6309047 Int) ($n6299046 Int) ($n6299063 Int))
    (=> (and ($main_if255 $i6279044 $k6289045 $n6299046 $l6309047 $i6279061 $k6289062 $n6299063 $l6309064))
        ($main_inv474 $i6279061 (+ $k6289062 1) $n6299063 $l6309064))))

; backwards $main_sum474
(assert
  (forall (($i6279044 Int) ($n6299067 Int) ($l6309064 Int) ($k6289066 Int) ($k6289062 Int) ($k6289045 Int) ($i6279061 Int) ($i6279065 Int) ($n6299046 Int) ($n6299063 Int) ($l6309068 Int) ($l6309047 Int))
    (=> (and ($main_sum474 $i6279061 (+ $k6289062 1) $n6299063 $l6309064 $i6279065 $k6289066 $n6299067 $l6309068)
             ($main_if255 $i6279044 $k6289045 $n6299046 $l6309047 $i6279061 $k6289062 $n6299063 $l6309064))
        ($main_sum474 $i6279044 $k6289045 $n6299046 $l6309047 $i6279065 $k6289066 $n6299067 $l6309068))))

(check-sat)
