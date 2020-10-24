(set-logic HORN)

(declare-fun $main_sum216 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if65 (Int) Bool)
(declare-fun $main_sum217 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv217 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv216 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3583 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3583))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if65 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3584 Int))
    (=> (and ($__VERIFIER_assert_if65 cond3584))
        (__VERIFIER_assert cond3584))))

; loop entry $main_inv216
(assert
  (forall (($a316 (Array Int Int)) ($i317 Int) ($x318 Int))
    (=> (and (= $i317 0))
        ($main_inv216 $a316 $i317 $x318))))

; loop term $main_sum216
(assert
  (forall (($a3163585 (Array Int Int)) ($i3173586 Int) ($x3183587 Int))
    (=> (and (not (< $i3173586 100000))
             ($main_inv216 $a3163585 $i3173586 $x3183587))
        ($main_sum216 $a3163585 $i3173586 $x3183587))))

; forwards $main_inv216
(assert
  (forall (($a3163585 (Array Int Int)) ($i3173586 Int) ($x3183587 Int))
    (=> (and (< $i3173586 100000)
             ($main_inv216 $a3163585 $i3173586 $x3183587))
        ($main_inv216 (store $a3163585 $i3173586 42) (+ $i3173586 1) $x3183587))))

; loop entry $main_inv217
(assert
  (forall (($a3163588 (Array Int Int)) ($i3173589 Int) ($x3183590 Int))
    (=> (and ($main_sum216 $a3163588 $i3173589 $x3183590))
        ($main_inv217 $a3163588 $i3173589 0))))

; loop term $main_sum217
(assert
  (forall (($a3163591 (Array Int Int)) ($i3173592 Int) ($x3183593 Int))
    (=> (and (not (< $x3183593 100000))
             ($main_inv217 $a3163591 $i3173592 $x3183593))
        ($main_sum217 $a3163591 $i3173592 $x3183593))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3163591 (Array Int Int)) ($x3183593 Int) ($i3173592 Int))
    (=> (and (< $x3183593 100000)
             ($main_inv217 $a3163591 $i3173592 $x3183593))
        ($__VERIFIER_assert_pre (ite (= (select $a3163591 $x3183593) 43) 1 0)))))

; forwards $main_inv217
(assert
  (forall (($a3163591 (Array Int Int)) ($i3173592 Int) ($x3183593 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3163591 $x3183593) 43) 1 0))
             (< $x3183593 100000)
             ($main_inv217 $a3163591 $i3173592 $x3183593))
        ($main_inv217 $a3163591 $i3173592 (+ $x3183593 1)))))

(check-sat)
