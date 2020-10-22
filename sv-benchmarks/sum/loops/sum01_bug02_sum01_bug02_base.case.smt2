(set-logic HORN)

(declare-fun $main_sum521 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if370 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if369 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv521 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9970 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9970))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if369 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9971 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if369 cond cond9971))
        (__VERIFIER_assert cond9971))))

; loop entry $main_inv521
(assert
  (forall (($n744 Int) ($sn745 Int) ($uint9972 Int))
    (=> (and (= $sn745 0)
             (= $n744 $uint9972)
             (<= 0 $uint9972)
             (<= $uint9972 4294967295))
        ($main_inv521 1 $n744 $sn745))))

; loop term $main_sum521
(assert
  (forall (($i7439973 Int) ($n7449974 Int) ($sn7459975 Int))
    (=> (and (not (<= $i7439973 $n7449974)))
        ($main_sum521 $i7439973 $n7449974 $sn7459975 $i7439973 $n7449974 $sn7459975))))

; if then
(assert
  (forall (($i7439973 Int) ($n7449974 Int) ($sn7459975 Int))
    (=> (and (= $i7439973 4)
             (<= $i7439973 $n7449974)
             ($main_inv521 $i7439973 $n7449974 $sn7459975))
        ($main_if370 $i7439973 $n7449974 $sn7459975 $i7439973 $n7449974 (- 10)))))

; if else
(assert
  (forall (($i7439973 Int) ($n7449974 Int) ($sn7459975 Int))
    (=> (and (not (= $i7439973 4))
             (<= $i7439973 $n7449974)
             ($main_inv521 $i7439973 $n7449974 $sn7459975))
        ($main_if370 $i7439973 $n7449974 $sn7459975 $i7439973 $n7449974 (+ $sn7459975 2)))))

; forwards $main_inv521
(assert
  (forall (($i7439976 Int) ($sn7459978 Int) ($n7449974 Int) ($n7449977 Int) ($i7439973 Int) ($sn7459975 Int))
    (=> (and ($main_if370 $i7439973 $n7449974 $sn7459975 $i7439976 $n7449977 $sn7459978))
        ($main_inv521 (+ $i7439976 1) $n7449977 $sn7459978))))

; backwards $main_sum521
(assert
  (forall (($sn7459978 Int) ($n7449980 Int) ($i7439976 Int) ($n7449977 Int) ($i7439973 Int) ($sn7459975 Int) ($n7449974 Int) ($sn7459981 Int) ($i7439979 Int))
    (=> (and ($main_sum521 (+ $i7439976 1) $n7449977 $sn7459978 $i7439979 $n7449980 $sn7459981)
             ($main_if370 $i7439973 $n7449974 $sn7459975 $i7439976 $n7449977 $sn7459978))
        ($main_sum521 $i7439973 $n7449974 $sn7459975 $i7439979 $n7449980 $sn7459981))))

; __VERIFIER_assert precondition
(assert
  (forall (($n744 Int) ($uint9972 Int) ($i7439982 Int) ($sn745 Int) ($sn7459984 Int) ($n7449983 Int))
    (=> (and ($main_sum521 1 $n744 $sn745 $i7439982 $n7449983 $sn7459984)
             (= $sn745 0)
             (= $n744 $uint9972)
             (<= 0 $uint9972)
             (<= $uint9972 4294967295))
        ($__VERIFIER_assert_pre (ite (or (= $sn7459984 (* $n7449983 2)) (= $sn7459984 0)) 1 0)))))

(check-sat)
