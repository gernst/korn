(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv367 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv366 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum367 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if114 (Int) Bool)
(declare-fun $main_sum366 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4863 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4863))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if114 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4864 Int))
    (=> (and ($__VERIFIER_assert_if114 cond4864))
        (__VERIFIER_assert cond4864))))

; loop entry $main_inv366
(assert
  (forall (($a438 (Array Int Int)) ($x440 Int))
        ($main_inv366 (store $a438 0 7) 1 $x440)))

; loop term $main_sum366
(assert
  (forall (($a4384865 (Array Int Int)) ($i4394866 Int) ($x4404867 Int))
    (=> (and (not (< $i4394866 100000))
             ($main_inv366 $a4384865 $i4394866 $x4404867))
        ($main_sum366 $a4384865 $i4394866 $x4404867))))

; forwards $main_inv366
(assert
  (forall (($a4384865 (Array Int Int)) ($i4394866 Int) ($x4404867 Int))
    (=> (and (< $i4394866 100000)
             ($main_inv366 $a4384865 $i4394866 $x4404867))
        ($main_inv366 (store $a4384865 $i4394866 (+ (select $a4384865 (- $i4394866 1)) 1)) (+ $i4394866 1) $x4404867))))

; loop entry $main_inv367
(assert
  (forall (($a4384868 (Array Int Int)) ($i4394869 Int) ($x4404870 Int))
    (=> (and ($main_sum366 $a4384868 $i4394869 $x4404870))
        ($main_inv367 $a4384868 $i4394869 1))))

; loop term $main_sum367
(assert
  (forall (($a4384871 (Array Int Int)) ($i4394872 Int) ($x4404873 Int))
    (=> (and (not (< $x4404873 100000))
             ($main_inv367 $a4384871 $i4394872 $x4404873))
        ($main_sum367 $a4384871 $i4394872 $x4404873))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4384871 (Array Int Int)) ($x4404873 Int) ($i4394872 Int))
    (=> (and (< $x4404873 100000)
             ($main_inv367 $a4384871 $i4394872 $x4404873))
        ($__VERIFIER_assert_pre (ite (>= (select $a4384871 $x4404873) (select $a4384871 (- $x4404873 1))) 1 0)))))

; forwards $main_inv367
(assert
  (forall (($a4384871 (Array Int Int)) ($i4394872 Int) ($x4404873 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a4384871 $x4404873) (select $a4384871 (- $x4404873 1))) 1 0))
             (< $x4404873 100000)
             ($main_inv367 $a4384871 $i4394872 $x4404873))
        ($main_inv367 $a4384871 $i4394872 (+ $x4404873 1)))))

(check-sat)
