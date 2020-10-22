(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if270 (Int Int) Bool)
(declare-fun $main_ELSE (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if272 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if273 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv482 (Int Int Int Int Int) Bool)
(declare-fun $main_if271 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum482 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if269 (Int Int) Bool)
(declare-fun $main_inv481 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum481 (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if269 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9229 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if269 cond cond9229))
        (assume_abort_if_not cond9229))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9230 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9230))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if270 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9231 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if270 cond cond9231))
        (__VERIFIER_assert cond9231))))

; if else
(assert
  (forall (($limit652 Int) ($len648 Int) ($i649 Int) ($int9232 Int) ($j650 Int) ($bufsize651 Int))
    (=> (and (not (< $int9232 0))
             (<= (- 2147483648) $int9232)
             (<= $int9232 2147483647))
        ($main_if271 $len648 $i649 $j650 $bufsize651 $limit652 $len648 $i649 $j650 $int9232 $limit652))))

; loop entry $main_inv481
(assert
  (forall (($i6499234 Int) ($limit652 Int) ($len648 Int) ($i649 Int) ($int9238 Int) ($len6489233 Int) ($limit6529237 Int) ($bufsize6519236 Int) ($j6509235 Int) ($j650 Int) ($bufsize651 Int))
    (=> (and (= $limit6529237 (- $bufsize6519236 4))
             (<= (- 2147483648) $int9238)
             (<= $int9238 2147483647)
             ($main_if271 $len648 $i649 $j650 $bufsize651 $limit652 $len6489233 $i6499234 $j6509235 $bufsize6519236 $limit6529237))
        ($main_inv481 $int9238 0 $j6509235 $bufsize6519236 $limit6529237))))

; loop term $main_sum481
(assert
  (forall (($j6509241 Int) ($len6489239 Int) ($i6499240 Int) ($bufsize6519242 Int) ($limit6529243 Int))
    (=> (and (not (< $i6499240 $len6489239)))
        ($main_sum481 $len6489239 $i6499240 $j6509241 $bufsize6519242 $limit6529243 $len6489239 $i6499240 $j6509241 $bufsize6519242 $limit6529243))))

; loop entry $main_inv482
(assert
  (forall (($j6509241 Int) ($len6489239 Int) ($i6499240 Int) ($bufsize6519242 Int) ($limit6529243 Int))
    (=> (and (< $i6499240 $len6489239)
             ($main_inv481 $len6489239 $i6499240 $j6509241 $bufsize6519242 $limit6529243))
        ($main_inv482 $len6489239 $i6499240 0 $bufsize6519242 $limit6529243))))

; loop term $main_sum482
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (not (and (< $i6499245 $len6489244) (< $j6509246 $limit6529248))))
        ($main_sum482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (< (+ $i6499245 1) $len6489244)
             (< $i6499245 $len6489244)
             (< $j6509246 $limit6529248)
             ($main_inv482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))
        ($__VERIFIER_assert_pre (ite (< (+ $i6499245 1) $len6489244) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $i6499245 1) $len6489244) 1 0))
             (< (+ $i6499245 1) $len6489244)
             (< $i6499245 $len6489244)
             (< $j6509246 $limit6529248)
             ($main_inv482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6499245) 1 0)))))

; goto ELSE
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($int9249 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (not (= $int9249 0))
             (<= (- 2147483648) $int9249)
             (<= $int9249 2147483647)
             (__VERIFIER_assert (ite (<= 0 $i6499245) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499245 1) $len6489244) 1 0))
             (< (+ $i6499245 1) $len6489244)
             (< $i6499245 $len6489244)
             (< $j6509246 $limit6529248)
             ($main_inv482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))
        ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))))

; if else
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($int9249 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (= $int9249 0)
             (<= (- 2147483648) $int9249)
             (<= $int9249 2147483647)
             (__VERIFIER_assert (ite (<= 0 $i6499245) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499245 1) $len6489244) 1 0))
             (< (+ $i6499245 1) $len6489244)
             (< $i6499245 $len6489244)
             (< $j6509246 $limit6529248)
             ($main_inv482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))
        ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (< $i6499251 $len6489250) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6499251) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (< $j6509252 $bufsize6519253) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6509252) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (< (+ $i6499251 1) $len6489250) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $i6499251 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $i6499251 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (< (+ $j6509252 1) $bufsize6519253) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $j6509252 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6499251 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $j6509252 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $j6509252 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6509252 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6499251 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (< (+ (+ $j6509252 1) 1) $bufsize6519253) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ (+ $j6509252 1) 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $j6509252 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6509252 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6499251 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ (+ $j6509252 1) 1)) 1 0)))))

; label ELSE
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int))
    (=> (and (not (< (+ $i6499245 1) $len6489244))
             (< $i6499245 $len6489244)
             (< $j6509246 $limit6529248)
             ($main_inv482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))
        ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499256 Int) ($j6509257 Int) ($bufsize6519258 Int) ($limit6529259 Int) ($len6489255 Int))
    (=> (and ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 $i6499256 $j6509257 $bufsize6519258 $limit6529259))
        ($__VERIFIER_assert_pre (ite (< $i6499256 $len6489255) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499256 Int) ($j6509257 Int) ($bufsize6519258 Int) ($limit6529259 Int) ($len6489255 Int))
    (=> (and (__VERIFIER_assert (ite (< $i6499256 $len6489255) 1 0))
             ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 $i6499256 $j6509257 $bufsize6519258 $limit6529259))
        ($__VERIFIER_assert_pre (ite (<= 0 $i6499256) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499256 Int) ($j6509257 Int) ($bufsize6519258 Int) ($limit6529259 Int) ($len6489255 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $i6499256) 1 0))
             (__VERIFIER_assert (ite (< $i6499256 $len6489255) 1 0))
             ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 $i6499256 $j6509257 $bufsize6519258 $limit6529259))
        ($__VERIFIER_assert_pre (ite (< $j6509257 $bufsize6519258) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499256 Int) ($j6509257 Int) ($bufsize6519258 Int) ($limit6529259 Int) ($len6489255 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6509257 $bufsize6519258) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499256) 1 0))
             (__VERIFIER_assert (ite (< $i6499256 $len6489255) 1 0))
             ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 $i6499256 $j6509257 $bufsize6519258 $limit6529259))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6509257) 1 0)))))

; if then
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($j6509252 Int) ($limit6529254 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499251 Int) ($bufsize6519253 Int) ($len6489250 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ (+ $j6509252 1) 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ (+ $j6509252 1) 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $j6509252 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $j6509252 1) $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $i6499251 1)) 1 0))
             (__VERIFIER_assert (ite (< (+ $i6499251 1) $len6489250) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6509252) 1 0))
             (__VERIFIER_assert (ite (< $j6509252 $bufsize6519253) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499251) 1 0))
             (__VERIFIER_assert (ite (< $i6499251 $len6489250) 1 0))
             ($main_if272 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 $i6499251 $j6509252 $bufsize6519253 $limit6529254))
        ($main_if273 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489250 (+ (+ $i6499251 1) 1) (+ (+ (+ $j6509252 1) 1) 1) $bufsize6519253 $limit6529254))))

; if else
(assert
  (forall (($bufsize6519247 Int) ($i6499245 Int) ($len6489244 Int) ($j6509246 Int) ($limit6529248 Int) ($i6499256 Int) ($j6509257 Int) ($bufsize6519258 Int) ($limit6529259 Int) ($len6489255 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6509257) 1 0))
             (__VERIFIER_assert (ite (< $j6509257 $bufsize6519258) 1 0))
             (__VERIFIER_assert (ite (<= 0 $i6499256) 1 0))
             (__VERIFIER_assert (ite (< $i6499256 $len6489255) 1 0))
             ($main_ELSE $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 $i6499256 $j6509257 $bufsize6519258 $limit6529259))
        ($main_if273 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489255 (+ $i6499256 1) (+ $j6509257 1) $bufsize6519258 $limit6529259))))

; forwards $main_inv482
(assert
  (forall (($bufsize6519247 Int) ($i6499261 Int) ($j6509262 Int) ($limit6529264 Int) ($j6509246 Int) ($limit6529248 Int) ($len6489260 Int) ($i6499245 Int) ($len6489244 Int) ($bufsize6519263 Int))
    (=> (and ($main_if273 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489260 $i6499261 $j6509262 $bufsize6519263 $limit6529264))
        ($main_inv482 $len6489260 $i6499261 $j6509262 $bufsize6519263 $limit6529264))))

; backwards $main_sum482
(assert
  (forall (($bufsize6519247 Int) ($i6499261 Int) ($i6499266 Int) ($j6509262 Int) ($j6509267 Int) ($bufsize6519268 Int) ($limit6529264 Int) ($len6489265 Int) ($j6509246 Int) ($limit6529248 Int) ($limit6529269 Int) ($len6489260 Int) ($i6499245 Int) ($len6489244 Int) ($bufsize6519263 Int))
    (=> (and ($main_sum482 $len6489260 $i6499261 $j6509262 $bufsize6519263 $limit6529264 $len6489265 $i6499266 $j6509267 $bufsize6519268 $limit6529269)
             ($main_if273 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489260 $i6499261 $j6509262 $bufsize6519263 $limit6529264))
        ($main_sum482 $len6489244 $i6499245 $j6509246 $bufsize6519247 $limit6529248 $len6489265 $i6499266 $j6509267 $bufsize6519268 $limit6529269))))

; forwards $main_inv481
(assert
  (forall (($i6499271 Int) ($j6509241 Int) ($len6489239 Int) ($i6499240 Int) ($bufsize6519273 Int) ($limit6529274 Int) ($bufsize6519242 Int) ($limit6529243 Int) ($j6509272 Int) ($len6489270 Int))
    (=> (and ($main_sum482 $len6489239 $i6499240 0 $bufsize6519242 $limit6529243 $len6489270 $i6499271 $j6509272 $bufsize6519273 $limit6529274)
             (< $i6499240 $len6489239)
             ($main_inv481 $len6489239 $i6499240 $j6509241 $bufsize6519242 $limit6529243))
        ($main_inv481 $len6489270 $i6499271 $j6509272 $bufsize6519273 $limit6529274))))

; backwards $main_sum481
(assert
  (forall (($i6499271 Int) ($j6509241 Int) ($len6489239 Int) ($i6499240 Int) ($limit6529279 Int) ($bufsize6519273 Int) ($i6499276 Int) ($limit6529274 Int) ($len6489275 Int) ($bufsize6519242 Int) ($limit6529243 Int) ($j6509272 Int) ($len6489270 Int) ($bufsize6519278 Int) ($j6509277 Int))
    (=> (and ($main_sum481 $len6489270 $i6499271 $j6509272 $bufsize6519273 $limit6529274 $len6489275 $i6499276 $j6509277 $bufsize6519278 $limit6529279)
             ($main_sum482 $len6489239 $i6499240 0 $bufsize6519242 $limit6529243 $len6489270 $i6499271 $j6509272 $bufsize6519273 $limit6529274)
             (< $i6499240 $len6489239))
        ($main_sum481 $len6489239 $i6499240 $j6509241 $bufsize6519242 $limit6529243 $len6489275 $i6499276 $j6509277 $bufsize6519278 $limit6529279))))

(check-sat)
