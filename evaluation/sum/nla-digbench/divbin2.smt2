(set-logic HORN)

(declare-fun $main_sum534 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if395 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if393 (Int Int) Bool)
(declare-fun $main_inv534 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $main_if396 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if397 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if394 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum533 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun $main_inv533 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if393 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond10224 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if393 cond cond10224))
        (assume_abort_if_not cond10224))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10225 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10225))
        false)))

; if then
(assert
  (forall ((cond Int) (cond10225 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10225))
        ($__VERIFIER_assert_if394 cond cond10225))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if394 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10226 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if394 cond cond10226))
        (__VERIFIER_assert cond10226))))

; loop entry $main_inv533
(assert
  (forall (($int10227 Int))
    (=> (and (<= 0 $int10227)
             (<= $int10227 4294967295))
        ($main_inv533 $int10227 1 0 $int10227 1))))

; loop term $main_sum533
(assert
  (forall (($b77510232 Int) ($r77410231 Int) ($q77310230 Int) ($B77210229 Int) ($A77110228 Int))
    (=> (and (= 1 0))
        ($main_sum533 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232))))

; break $main_sum533
(assert
  (forall (($b77510232 Int) ($r77410231 Int) ($q77310230 Int) ($B77210229 Int) ($A77110228 Int))
    (=> (and (not (>= $r77410231 $b77510232))
             (not (= 1 0))
             ($main_inv533 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232))
        ($main_sum533 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232))))

; if else
(assert
  (forall (($b77510232 Int) ($r77410231 Int) ($q77310230 Int) ($B77210229 Int) ($A77110228 Int))
    (=> (and (>= $r77410231 $b77510232)
             (not (= 1 0))
             ($main_inv533 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232))
        ($main_if395 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232))))

; forwards $main_inv533
(assert
  (forall (($B77210234 Int) ($b77510232 Int) ($b77510237 Int) ($q77310230 Int) ($B77210229 Int) ($A77110233 Int) ($A77110228 Int) ($q77310235 Int) ($r77410231 Int) ($r77410236 Int))
    (=> (and ($main_if395 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110233 $B77210234 $q77310235 $r77410236 $b77510237))
        ($main_inv533 $A77110233 $B77210234 $q77310235 $r77410236 (* 2 $b77510237)))))

; backwards $main_sum533
(assert
  (forall (($B77210234 Int) ($b77510232 Int) ($q77310230 Int) ($A77110238 Int) ($A77110233 Int) ($q77310235 Int) ($b77510242 Int) ($q77310240 Int) ($b77510237 Int) ($r77410231 Int) ($r77410236 Int) ($B77210239 Int) ($B77210229 Int) ($A77110228 Int) ($r77410241 Int))
    (=> (and ($main_sum533 $A77110233 $B77210234 $q77310235 $r77410236 (* 2 $b77510237) $A77110238 $B77210239 $q77310240 $r77410241 $b77510242)
             ($main_if395 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110233 $B77210234 $q77310235 $r77410236 $b77510237))
        ($main_sum533 $A77110228 $B77210229 $q77310230 $r77410231 $b77510232 $A77110238 $B77210239 $q77310240 $r77410241 $b77510242))))

; loop entry $main_inv534
(assert
  (forall (($r77410246 Int) ($A77110243 Int) ($b77510247 Int) ($q77310245 Int) ($int10227 Int) ($B77210244 Int))
    (=> (and ($main_sum533 $int10227 1 0 $int10227 1 $A77110243 $B77210244 $q77310245 $r77410246 $b77510247)
             (<= 0 $int10227)
             (<= $int10227 4294967295))
        ($main_inv534 $A77110243 $B77210244 $q77310245 $r77410246 $b77510247))))

; loop term $main_sum534
(assert
  (forall (($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($b77510252 Int) ($B77210249 Int))
    (=> (and (= 1 0))
        ($main_sum534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))))

; __VERIFIER_assert precondition
(assert
  (forall (($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($b77510252 Int) ($B77210249 Int))
    (=> (and (not (= 1 0))
             ($main_inv534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))
        ($__VERIFIER_assert_pre (ite (= $A77110248 (+ (* $q77310250 $b77510252) $r77410251)) 1 0)))))

; break $main_sum534
(assert
  (forall (($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($b77510252 Int) ($B77210249 Int))
    (=> (and (= $b77510252 $B77210249)
             (__VERIFIER_assert (ite (= $A77110248 (+ (* $q77310250 $b77510252) $r77410251)) 1 0))
             (not (= 1 0))
             ($main_inv534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))
        ($main_sum534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))))

; if else
(assert
  (forall (($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($b77510252 Int) ($B77210249 Int))
    (=> (and (not (= $b77510252 $B77210249))
             (__VERIFIER_assert (ite (= $A77110248 (+ (* $q77310250 $b77510252) $r77410251)) 1 0))
             (not (= 1 0))
             ($main_inv534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))
        ($main_if396 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252))))

; if then
(assert
  (forall (($B77210254 Int) ($r77410251 Int) ($q77310250 Int) ($q77310255 Int) ($b77510252 Int) ($B77210249 Int) ($A77110248 Int) ($b77510257 Int) ($A77110253 Int) ($r77410256 Int))
    (=> (and (>= $r77410256 (div $b77510257 2))
             ($main_if396 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110253 $B77210254 $q77310255 $r77410256 $b77510257))
        ($main_if397 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110253 $B77210254 (+ (* 2 $q77310255) 1) (- $r77410256 (div $b77510257 2)) (div $b77510257 2)))))

; if else
(assert
  (forall (($B77210254 Int) ($r77410251 Int) ($q77310250 Int) ($q77310255 Int) ($b77510252 Int) ($B77210249 Int) ($A77110248 Int) ($b77510257 Int) ($A77110253 Int) ($r77410256 Int))
    (=> (and (not (>= $r77410256 (div $b77510257 2)))
             ($main_if396 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110253 $B77210254 $q77310255 $r77410256 $b77510257))
        ($main_if397 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110253 $B77210254 (* 2 $q77310255) $r77410256 (div $b77510257 2)))))

; forwards $main_inv534
(assert
  (forall (($q77310260 Int) ($r77410261 Int) ($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($B77210259 Int) ($b77510252 Int) ($B77210249 Int) ($A77110258 Int) ($b77510262 Int))
    (=> (and ($main_if397 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110258 $B77210259 $q77310260 $r77410261 $b77510262))
        ($main_inv534 $A77110258 $B77210259 $q77310260 $r77410261 $b77510262))))

; backwards $main_sum534
(assert
  (forall (($B77210264 Int) ($q77310265 Int) ($A77110263 Int) ($q77310260 Int) ($b77510267 Int) ($r77410261 Int) ($A77110248 Int) ($r77410251 Int) ($q77310250 Int) ($B77210259 Int) ($b77510252 Int) ($B77210249 Int) ($r77410266 Int) ($A77110258 Int) ($b77510262 Int))
    (=> (and ($main_sum534 $A77110258 $B77210259 $q77310260 $r77410261 $b77510262 $A77110263 $B77210264 $q77310265 $r77410266 $b77510267)
             ($main_if397 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110258 $B77210259 $q77310260 $r77410261 $b77510262))
        ($main_sum534 $A77110248 $B77210249 $q77310250 $r77410251 $b77510252 $A77110263 $B77210264 $q77310265 $r77410266 $b77510267))))

; __VERIFIER_assert precondition
(assert
  (forall (($B77210269 Int) ($r77410246 Int) ($A77110243 Int) ($b77510247 Int) ($r77410271 Int) ($q77310245 Int) ($int10227 Int) ($b77510272 Int) ($q77310270 Int) ($B77210244 Int) ($A77110268 Int))
    (=> (and ($main_sum534 $A77110243 $B77210244 $q77310245 $r77410246 $b77510247 $A77110268 $B77210269 $q77310270 $r77410271 $b77510272)
             ($main_sum533 $int10227 1 0 $int10227 1 $A77110243 $B77210244 $q77310245 $r77410246 $b77510247)
             (<= 0 $int10227)
             (<= $int10227 4294967295))
        ($__VERIFIER_assert_pre (ite (= $A77110268 (+ (* $q77310270 $b77510272) $r77410271)) 1 0)))))

(check-sat)
