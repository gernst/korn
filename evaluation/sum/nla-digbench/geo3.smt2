(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if746 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum285 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if748 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv285 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if747 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if746 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17208 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if746 cond cond17208))
        (assume_abort_if_not cond17208))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17209 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17209))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17209 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17209))
        ($__VERIFIER_assert_if747 cond cond17209))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if747 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17210 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if747 cond cond17210))
        (__VERIFIER_assert cond17210))))

; loop entry $main_inv285
(assert
  (forall (($int17211 Int) ($int17212 Int) ($int17213 Int))
    (=> (and (<= (- 2147483648) $int17213)
             (<= $int17213 2147483647)
             (<= (- 2147483648) $int17212)
             (<= $int17212 2147483647)
             (<= (- 2147483648) $int17211)
             (<= $int17211 2147483647))
        ($main_inv285 $int17211 $int17212 $int17213 $int17212 1 1))))

; loop term $main_sum285
(assert
  (forall (($y82117218 Int) ($z81717214 Int) ($x82017217 Int) ($c82217219 Int) ($a81817215 Int) ($k81917216 Int))
    (=> (and (= 1 0))
        ($main_sum285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))))

; __VERIFIER_assert precondition
(assert
  (forall (($y82117218 Int) ($z81717214 Int) ($x82017217 Int) ($c82217219 Int) ($a81817215 Int) ($k81917216 Int))
    (=> (and (not (= 1 0))
             ($main_inv285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (* $z81717214 $x82017217) $x82017217) $a81817215) (* (* $a81817215 $z81717214) $y82117218)) 0) 1 0)))))

; break $main_sum285
(assert
  (forall (($y82117218 Int) ($z81717214 Int) ($x82017217 Int) ($c82217219 Int) ($a81817215 Int) ($k81917216 Int))
    (=> (and (not (< $c82217219 $k81917216))
             (__VERIFIER_assert (ite (= (- (+ (- (* $z81717214 $x82017217) $x82017217) $a81817215) (* (* $a81817215 $z81717214) $y82117218)) 0) 1 0))
             (not (= 1 0))
             ($main_inv285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))
        ($main_sum285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))))

; if else
(assert
  (forall (($y82117218 Int) ($z81717214 Int) ($x82017217 Int) ($c82217219 Int) ($a81817215 Int) ($k81917216 Int))
    (=> (and (< $c82217219 $k81917216)
             (__VERIFIER_assert (ite (= (- (+ (- (* $z81717214 $x82017217) $x82017217) $a81817215) (* (* $a81817215 $z81717214) $y82117218)) 0) 1 0))
             (not (= 1 0))
             ($main_inv285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))
        ($main_if748 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219))))

; forwards $main_inv285
(assert
  (forall (($y82117218 Int) ($k81917222 Int) ($y82117224 Int) ($c82217225 Int) ($z81717220 Int) ($z81717214 Int) ($x82017217 Int) ($c82217219 Int) ($a81817215 Int) ($k81917216 Int) ($a81817221 Int) ($x82017223 Int))
    (=> (and ($main_if748 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717220 $a81817221 $k81917222 $x82017223 $y82117224 $c82217225))
        ($main_inv285 $z81717220 $a81817221 $k81917222 (+ (* $x82017223 $z81717220) $a81817221) (* $y82117224 $z81717220) (+ $c82217225 1)))))

; backwards $main_sum285
(assert
  (forall (($y82117230 Int) ($y82117218 Int) ($k81917222 Int) ($y82117224 Int) ($c82217225 Int) ($z81717220 Int) ($z81717214 Int) ($x82017229 Int) ($x82017217 Int) ($a81817227 Int) ($c82217231 Int) ($a81817215 Int) ($k81917216 Int) ($k81917228 Int) ($a81817221 Int) ($x82017223 Int) ($c82217219 Int) ($z81717226 Int))
    (=> (and ($main_sum285 $z81717220 $a81817221 $k81917222 (+ (* $x82017223 $z81717220) $a81817221) (* $y82117224 $z81717220) (+ $c82217225 1) $z81717226 $a81817227 $k81917228 $x82017229 $y82117230 $c82217231)
             ($main_if748 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717220 $a81817221 $k81917222 $x82017223 $y82117224 $c82217225))
        ($main_sum285 $z81717214 $a81817215 $k81917216 $x82017217 $y82117218 $c82217219 $z81717226 $a81817227 $k81917228 $x82017229 $y82117230 $c82217231))))

; __VERIFIER_assert precondition
(assert
  (forall (($k81917234 Int) ($c82217237 Int) ($int17211 Int) ($y82117236 Int) ($z81717232 Int) ($int17212 Int) ($x82017235 Int) ($int17213 Int) ($a81817233 Int))
    (=> (and ($main_sum285 $int17211 $int17212 $int17213 $int17212 1 1 $z81717232 $a81817233 $k81917234 $x82017235 $y82117236 $c82217237)
             (<= (- 2147483648) $int17213)
             (<= $int17213 2147483647)
             (<= (- 2147483648) $int17212)
             (<= $int17212 2147483647)
             (<= (- 2147483648) $int17211)
             (<= $int17211 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (* $z81717232 $x82017235) $x82017235) $a81817233) (* (* $a81817233 $z81717232) $y82117236)) 0) 1 0)))))

(check-sat)
