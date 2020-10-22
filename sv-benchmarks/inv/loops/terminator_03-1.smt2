(set-logic HORN)

(declare-fun $main_sum269 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if701 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if700 (Int) Bool)
(declare-fun $main_inv269 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15219 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15219))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if700 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15220 Int))
    (=> (and ($__VERIFIER_assert_if700 cond15220))
        (__VERIFIER_assert cond15220))))

; loop entry $main_inv269
(assert
  (forall (($x745 Int) ($y746 Int) ($int15222 Int) ($int15221 Int))
    (=> (and (> $y746 0)
             (= $y746 $int15222)
             (<= (- 2147483648) $int15222)
             (<= $int15222 2147483647)
             (= $x745 $int15221)
             (<= (- 2147483648) $int15221)
             (<= $int15221 2147483647))
        ($main_inv269 $x745 $y746))))

; loop term $main_sum269
(assert
  (forall (($x74515223 Int) ($y74615224 Int))
    (=> (and (not (< $x74515223 100))
             ($main_inv269 $x74515223 $y74615224))
        ($main_sum269 $x74515223 $y74615224))))

; forwards $main_inv269
(assert
  (forall (($x74515223 Int) ($y74615224 Int))
    (=> (and (< $x74515223 100)
             ($main_inv269 $x74515223 $y74615224))
        ($main_inv269 (+ $x74515223 $y74615224) $y74615224))))

; if then
(assert
  (forall (($x74515225 Int) ($y74615226 Int))
    (=> (and ($main_sum269 $x74515225 $y74615226))
        ($main_if701 $x74515225 $y74615226))))

; if else
(assert
  (forall (($x745 Int) ($y746 Int) ($int15222 Int) ($int15221 Int))
    (=> (and (not (> $y746 0))
             (= $y746 $int15222)
             (<= (- 2147483648) $int15222)
             (<= $int15222 2147483647)
             (= $x745 $int15221)
             (<= (- 2147483648) $int15221)
             (<= $int15221 2147483647))
        ($main_if701 $x745 $y746))))

; __VERIFIER_assert precondition
(assert
  (forall (($y74615228 Int) ($x74515227 Int))
    (=> (and ($main_if701 $x74515227 $y74615228))
        ($__VERIFIER_assert_pre (ite (or (<= $y74615228 0) (and (< $y74615228 0) (>= $x74515227 100))) 1 0)))))

(check-sat)
