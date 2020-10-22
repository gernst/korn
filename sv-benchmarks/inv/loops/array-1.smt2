(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if535 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum133 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv133 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if534 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13218 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13218))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if534 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13219 Int))
    (=> (and ($__VERIFIER_assert_if534 cond13219))
        (__VERIFIER_assert cond13219))))

; loop entry $main_inv133
(assert
  (forall (($SIZE469 Int) ($k471 Int) ($array472 (Array Int Int)) ($int13220 Int))
    (=> (and (<= (- 2147483648) $int13220)
             (<= $int13220 2147483647)
             (= $SIZE469 1))
        ($main_inv133 $SIZE469 0 $k471 $array472 $int13220))))

; loop term $main_sum133
(assert
  (forall (($array47213224 (Array Int Int)) ($menor47313225 Int) ($k47113223 Int) ($SIZE46913221 Int) ($j47013222 Int))
    (=> (and (not (< $j47013222 $SIZE46913221))
             ($main_inv133 $SIZE46913221 $j47013222 $k47113223 $array47213224 $menor47313225))
        ($main_sum133 $SIZE46913221 $j47013222 $k47113223 $array47213224 $menor47313225))))

; if then
(assert
  (forall (($array47213224 (Array Int Int)) ($int13226 Int) ($menor47313225 Int) ($k47113223 Int) ($SIZE46913221 Int) ($j47013222 Int))
    (=> (and (<= (select (store $array47213224 $j47013222 $int13226) $j47013222) $menor47313225)
             (<= (- 2147483648) $int13226)
             (<= $int13226 2147483647)
             (< $j47013222 $SIZE46913221)
             ($main_inv133 $SIZE46913221 $j47013222 $k47113223 $array47213224 $menor47313225))
        ($main_if535 $SIZE46913221 $j47013222 $k47113223 (store $array47213224 $j47013222 $int13226) (select (store $array47213224 $j47013222 $int13226) $j47013222)))))

; if else
(assert
  (forall (($array47213224 (Array Int Int)) ($int13226 Int) ($menor47313225 Int) ($k47113223 Int) ($SIZE46913221 Int) ($j47013222 Int))
    (=> (and (not (<= (select (store $array47213224 $j47013222 $int13226) $j47013222) $menor47313225))
             (<= (- 2147483648) $int13226)
             (<= $int13226 2147483647)
             (< $j47013222 $SIZE46913221)
             ($main_inv133 $SIZE46913221 $j47013222 $k47113223 $array47213224 $menor47313225))
        ($main_if535 $SIZE46913221 $j47013222 $k47113223 (store $array47213224 $j47013222 $int13226) $menor47313225))))

; forwards $main_inv133
(assert
  (forall (($array47213230 (Array Int Int)) ($j47013228 Int) ($menor47313231 Int) ($k47113229 Int) ($SIZE46913227 Int))
    (=> (and ($main_if535 $SIZE46913227 $j47013228 $k47113229 $array47213230 $menor47313231))
        ($main_inv133 $SIZE46913227 (+ $j47013228 1) $k47113229 $array47213230 $menor47313231))))

; __VERIFIER_assert precondition
(assert
  (forall (($k47113234 Int) ($j47013233 Int) ($array47213235 (Array Int Int)) ($menor47313236 Int) ($SIZE46913232 Int))
    (=> (and ($main_sum133 $SIZE46913232 $j47013233 $k47113234 $array47213235 $menor47313236))
        ($__VERIFIER_assert_pre (ite (>= (select $array47213235 0) $menor47313236) 1 0)))))

(check-sat)
