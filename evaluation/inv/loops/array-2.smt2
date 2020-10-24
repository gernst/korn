(set-logic HORN)

(declare-fun $main_inv134 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum134 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if536 (Int) Bool)
(declare-fun $main_if537 (Int Int Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13237 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13237))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if536 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13238 Int))
    (=> (and ($__VERIFIER_assert_if536 cond13238))
        (__VERIFIER_assert cond13238))))

; loop entry $main_inv134
(assert
  (forall (($SIZE474 Int) ($k476 Int) ($array477 (Array Int Int)) ($int13239 Int))
    (=> (and (<= (- 2147483648) $int13239)
             (<= $int13239 2147483647)
             (= $SIZE474 1))
        ($main_inv134 $SIZE474 0 $k476 $array477 $int13239))))

; loop term $main_sum134
(assert
  (forall (($j47513241 Int) ($SIZE47413240 Int) ($k47613242 Int) ($menor47813244 Int) ($array47713243 (Array Int Int)))
    (=> (and (not (< $j47513241 $SIZE47413240))
             ($main_inv134 $SIZE47413240 $j47513241 $k47613242 $array47713243 $menor47813244))
        ($main_sum134 $SIZE47413240 $j47513241 $k47613242 $array47713243 $menor47813244))))

; if then
(assert
  (forall (($j47513241 Int) ($int13245 Int) ($SIZE47413240 Int) ($k47613242 Int) ($menor47813244 Int) ($array47713243 (Array Int Int)))
    (=> (and (<= (select (store $array47713243 $j47513241 $int13245) $j47513241) $menor47813244)
             (<= (- 2147483648) $int13245)
             (<= $int13245 2147483647)
             (< $j47513241 $SIZE47413240)
             ($main_inv134 $SIZE47413240 $j47513241 $k47613242 $array47713243 $menor47813244))
        ($main_if537 $SIZE47413240 $j47513241 $k47613242 (store $array47713243 $j47513241 $int13245) (select (store $array47713243 $j47513241 $int13245) $j47513241)))))

; if else
(assert
  (forall (($j47513241 Int) ($int13245 Int) ($SIZE47413240 Int) ($k47613242 Int) ($menor47813244 Int) ($array47713243 (Array Int Int)))
    (=> (and (not (<= (select (store $array47713243 $j47513241 $int13245) $j47513241) $menor47813244))
             (<= (- 2147483648) $int13245)
             (<= $int13245 2147483647)
             (< $j47513241 $SIZE47413240)
             ($main_inv134 $SIZE47413240 $j47513241 $k47613242 $array47713243 $menor47813244))
        ($main_if537 $SIZE47413240 $j47513241 $k47613242 (store $array47713243 $j47513241 $int13245) $menor47813244))))

; forwards $main_inv134
(assert
  (forall (($k47613248 Int) ($menor47813250 Int) ($j47513247 Int) ($SIZE47413246 Int) ($array47713249 (Array Int Int)))
    (=> (and ($main_if537 $SIZE47413246 $j47513247 $k47613248 $array47713249 $menor47813250))
        ($main_inv134 $SIZE47413246 (+ $j47513247 1) $k47613248 $array47713249 $menor47813250))))

; __VERIFIER_assert precondition
(assert
  (forall (($menor47813255 Int) ($k47613253 Int) ($array47713254 (Array Int Int)) ($j47513252 Int) ($SIZE47413251 Int))
    (=> (and ($main_sum134 $SIZE47413251 $j47513252 $k47613253 $array47713254 $menor47813255))
        ($__VERIFIER_assert_pre (ite (> (select $array47713254 0) $menor47813255) 1 0)))))

(check-sat)
