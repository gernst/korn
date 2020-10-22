(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv325 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum326 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if83 (Int Int) Bool)
(declare-fun $main_sum325 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv326 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum324 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if84 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv324 ((Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6215 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6215))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if83 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6216 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if83 cond cond6216))
        (__VERIFIER_assert cond6216))))

; loop entry $main_inv324
(assert
  (forall (($x374 Int) ($max371 Int) ($i373 Int) ($j372 Int) ($a370 (Array Int Int)))
    (=> (and (= $j372 0)
             (= $max371 0))
        ($main_inv324 $a370 $max371 $j372 $i373 $x374))))

; loop term $main_sum324
(assert
  (forall (($x3746221 Int) ($max3716218 Int) ($a3706217 (Array Int Int)) ($j3726219 Int) ($i3736220 Int))
    (=> (and (not (< $j3726219 100000)))
        ($main_sum324 $a3706217 $max3716218 $j3726219 $i3736220 $x3746221 $a3706217 $max3716218 $j3726219 $i3736220 $x3746221))))

; forwards $main_inv324
(assert
  (forall (($x3746221 Int) ($max3716218 Int) ($a3706217 (Array Int Int)) ($int6222 Int) ($j3726219 Int) ($i3736220 Int))
    (=> (and (<= (- 2147483648) $int6222)
             (<= $int6222 2147483647)
             (< $j3726219 100000)
             ($main_inv324 $a3706217 $max3716218 $j3726219 $i3736220 $x3746221))
        ($main_inv324 (store $a3706217 $j3726219 $int6222) $max3716218 (+ $j3726219 1) $i3736220 $x3746221))))

; backwards $main_sum324
(assert
  (forall (($x3746221 Int) ($x3746227 Int) ($j3726225 Int) ($a3706217 (Array Int Int)) ($int6222 Int) ($j3726219 Int) ($a3706223 (Array Int Int)) ($i3736226 Int) ($i3736220 Int) ($max3716224 Int) ($max3716218 Int))
    (=> (and ($main_sum324 (store $a3706217 $j3726219 $int6222) $max3716218 (+ $j3726219 1) $i3736220 $x3746221 $a3706223 $max3716224 $j3726225 $i3736226 $x3746227)
             (<= (- 2147483648) $int6222)
             (<= $int6222 2147483647)
             (< $j3726219 100000))
        ($main_sum324 $a3706217 $max3716218 $j3726219 $i3736220 $x3746221 $a3706223 $max3716224 $j3726225 $i3736226 $x3746227))))

; loop entry $main_inv325
(assert
  (forall (($a3706228 (Array Int Int)) ($x374 Int) ($max371 Int) ($i373 Int) ($max3716229 Int) ($x3746232 Int) ($j372 Int) ($a370 (Array Int Int)) ($i3736231 Int) ($j3726230 Int))
    (=> (and (= $i3736231 0)
             ($main_sum324 $a370 $max371 $j372 $i373 $x374 $a3706228 $max3716229 $j3726230 $i3736231 $x3746232)
             (= $j372 0)
             (= $max371 0))
        ($main_inv325 $a3706228 $max3716229 $j3726230 $i3736231 $x3746232))))

; loop term $main_sum325
(assert
  (forall (($x3746237 Int) ($i3736236 Int) ($a3706233 (Array Int Int)) ($j3726235 Int) ($max3716234 Int))
    (=> (and (not (< $i3736236 100000)))
        ($main_sum325 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237))))

; if then
(assert
  (forall (($x3746237 Int) ($i3736236 Int) ($a3706233 (Array Int Int)) ($j3726235 Int) ($max3716234 Int))
    (=> (and (> (select $a3706233 $i3736236) $max3716234)
             (< $i3736236 100000)
             ($main_inv325 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237))
        ($main_if84 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706233 (select $a3706233 $i3736236) $j3726235 $i3736236 $x3746237))))

; if else
(assert
  (forall (($x3746237 Int) ($i3736236 Int) ($a3706233 (Array Int Int)) ($j3726235 Int) ($max3716234 Int))
    (=> (and (not (> (select $a3706233 $i3736236) $max3716234))
             (< $i3736236 100000)
             ($main_inv325 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237))
        ($main_if84 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237))))

; forwards $main_inv325
(assert
  (forall (($x3746237 Int) ($max3716239 Int) ($i3736241 Int) ($j3726240 Int) ($a3706233 (Array Int Int)) ($max3716234 Int) ($a3706238 (Array Int Int)) ($i3736236 Int) ($j3726235 Int) ($x3746242 Int))
    (=> (and ($main_if84 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706238 $max3716239 $j3726240 $i3736241 $x3746242))
        ($main_inv325 $a3706238 $max3716239 $j3726240 (+ $i3736241 1) $x3746242))))

; backwards $main_sum325
(assert
  (forall (($x3746237 Int) ($max3716239 Int) ($j3726245 Int) ($i3736241 Int) ($max3716244 Int) ($j3726240 Int) ($a3706243 (Array Int Int)) ($a3706233 (Array Int Int)) ($i3736246 Int) ($max3716234 Int) ($a3706238 (Array Int Int)) ($x3746247 Int) ($i3736236 Int) ($j3726235 Int) ($x3746242 Int))
    (=> (and ($main_sum325 $a3706238 $max3716239 $j3726240 (+ $i3736241 1) $x3746242 $a3706243 $max3716244 $j3726245 $i3736246 $x3746247)
             ($main_if84 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706238 $max3716239 $j3726240 $i3736241 $x3746242))
        ($main_sum325 $a3706233 $max3716234 $j3726235 $i3736236 $x3746237 $a3706243 $max3716244 $j3726245 $i3736246 $x3746247))))

; loop entry $main_inv326
(assert
  (forall (($x374 Int) ($a3706248 (Array Int Int)) ($i373 Int) ($i3736251 Int) ($max3716229 Int) ($max3716249 Int) ($x3746232 Int) ($a3706228 (Array Int Int)) ($j3726250 Int) ($max371 Int) ($x3746252 Int) ($j372 Int) ($a370 (Array Int Int)) ($i3736231 Int) ($j3726230 Int))
    (=> (and ($main_sum325 $a3706228 $max3716229 $j3726230 $i3736231 $x3746232 $a3706248 $max3716249 $j3726250 $i3736251 $x3746252)
             (= $i3736231 0)
             ($main_sum324 $a370 $max371 $j372 $i373 $x374 $a3706228 $max3716229 $j3726230 $i3736231 $x3746232)
             (= $j372 0)
             (= $max371 0))
        ($main_inv326 $a3706248 $max3716249 $j3726250 $i3736251 0))))

; loop term $main_sum326
(assert
  (forall (($max3716254 Int) ($j3726255 Int) ($x3746257 Int) ($a3706253 (Array Int Int)) ($i3736256 Int))
    (=> (and (not (< $x3746257 100000)))
        ($main_sum326 $a3706253 $max3716254 $j3726255 $i3736256 $x3746257 $a3706253 $max3716254 $j3726255 $i3736256 $x3746257))))

; __VERIFIER_assert precondition
(assert
  (forall (($max3716254 Int) ($j3726255 Int) ($x3746257 Int) ($a3706253 (Array Int Int)) ($i3736256 Int))
    (=> (and (< $x3746257 100000)
             ($main_inv326 $a3706253 $max3716254 $j3726255 $i3736256 $x3746257))
        ($__VERIFIER_assert_pre (ite (<= (select $a3706253 $x3746257) $max3716254) 1 0)))))

; forwards $main_inv326
(assert
  (forall (($max3716254 Int) ($j3726255 Int) ($x3746257 Int) ($a3706253 (Array Int Int)) ($i3736256 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a3706253 $x3746257) $max3716254) 1 0))
             (< $x3746257 100000)
             ($main_inv326 $a3706253 $max3716254 $j3726255 $i3736256 $x3746257))
        ($main_inv326 $a3706253 $max3716254 $j3726255 $i3736256 (+ $x3746257 1)))))

; backwards $main_sum326
(assert
  (forall (($max3716259 Int) ($x3746262 Int) ($a3706258 (Array Int Int)) ($max3716254 Int) ($x3746257 Int) ($a3706253 (Array Int Int)) ($i3736256 Int) ($j3726260 Int) ($i3736261 Int) ($j3726255 Int))
    (=> (and ($main_sum326 $a3706253 $max3716254 $j3726255 $i3736256 (+ $x3746257 1) $a3706258 $max3716259 $j3726260 $i3736261 $x3746262)
             (__VERIFIER_assert (ite (<= (select $a3706253 $x3746257) $max3716254) 1 0))
             (< $x3746257 100000))
        ($main_sum326 $a3706253 $max3716254 $j3726255 $i3736256 $x3746257 $a3706258 $max3716259 $j3726260 $i3736261 $x3746262))))

(check-sat)
