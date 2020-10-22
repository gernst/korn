(set-logic HORN)

(declare-fun $main_sum410 (Int (Array Int Int) Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if131 (Int Int) Bool)
(declare-fun $main_inv411 (Int (Array Int Int)) Bool)
(declare-fun $main_sum411 (Int (Array Int Int) Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv410 (Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if132 (Int (Array Int Int) Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7637 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7637))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if131 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7638 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if131 cond cond7638))
        (__VERIFIER_assert cond7638))))

; loop entry $main_inv410
(assert
  (forall (($a502 (Array Int Int)))
        ($main_inv410 0 $a502)))

; loop term $main_sum410
(assert
  (forall (($i5017639 Int) ($a5027640 (Array Int Int)))
    (=> (and (not (< $i5017639 100000)))
        ($main_sum410 $i5017639 $a5027640 $i5017639 $a5027640))))

; forwards $main_inv410
(assert
  (forall (($i5017639 Int) ($a5027640 (Array Int Int)))
    (=> (and (< $i5017639 100000)
             ($main_inv410 $i5017639 $a5027640))
        ($main_inv410 (+ $i5017639 1) (store $a5027640 $i5017639 10)))))

; backwards $main_sum410
(assert
  (forall (($i5017639 Int) ($a5027640 (Array Int Int)) ($i5017641 Int) ($a5027642 (Array Int Int)))
    (=> (and ($main_sum410 (+ $i5017639 1) (store $a5027640 $i5017639 10) $i5017641 $a5027642)
             (< $i5017639 100000))
        ($main_sum410 $i5017639 $a5027640 $i5017641 $a5027642))))

; loop entry $main_inv411
(assert
  (forall (($a5027644 (Array Int Int)) ($a502 (Array Int Int)) ($i5017643 Int))
    (=> (and ($main_sum410 0 $a502 $i5017643 $a5027644))
        ($main_inv411 0 $a5027644))))

; loop term $main_sum411
(assert
  (forall (($i5017645 Int) ($a5027646 (Array Int Int)))
    (=> (and (not (< $i5017645 100000)))
        ($main_sum411 $i5017645 $a5027646 $i5017645 $a5027646))))

; __VERIFIER_assert precondition
(assert
  (forall (($a5027646 (Array Int Int)) ($i5017645 Int))
    (=> (and (< $i5017645 100000)
             ($main_inv411 $i5017645 $a5027646))
        ($__VERIFIER_assert_pre (ite (= (select $a5027646 $i5017645) 10) 1 0)))))

; if then
(assert
  (forall (($i5017645 Int) ($a5027646 (Array Int Int)))
    (=> (and (not (= (+ $i5017645 1) 15000))
             (__VERIFIER_assert (ite (= (select $a5027646 $i5017645) 10) 1 0))
             (< $i5017645 100000)
             ($main_inv411 $i5017645 $a5027646))
        ($main_if132 $i5017645 $a5027646 $i5017645 (store $a5027646 (+ $i5017645 1) 20)))))

; if else
(assert
  (forall (($i5017645 Int) ($a5027646 (Array Int Int)))
    (=> (and (= (+ $i5017645 1) 15000)
             (__VERIFIER_assert (ite (= (select $a5027646 $i5017645) 10) 1 0))
             (< $i5017645 100000)
             ($main_inv411 $i5017645 $a5027646))
        ($main_if132 $i5017645 $a5027646 $i5017645 $a5027646))))

; forwards $main_inv411
(assert
  (forall (($i5017647 Int) ($a5027648 (Array Int Int)) ($i5017645 Int) ($a5027646 (Array Int Int)))
    (=> (and ($main_if132 $i5017645 $a5027646 $i5017647 $a5027648))
        ($main_inv411 (+ $i5017647 1) $a5027648))))

; backwards $main_sum411
(assert
  (forall (($a5027648 (Array Int Int)) ($i5017647 Int) ($a5027650 (Array Int Int)) ($a5027646 (Array Int Int)) ($i5017649 Int) ($i5017645 Int))
    (=> (and ($main_sum411 (+ $i5017647 1) $a5027648 $i5017649 $a5027650)
             ($main_if132 $i5017645 $a5027646 $i5017647 $a5027648))
        ($main_sum411 $i5017645 $a5027646 $i5017649 $a5027650))))

(check-sat)
