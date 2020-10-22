(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if257 (Int) Bool)
(declare-fun $main_sum476 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if258 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if256 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv476 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if256 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6420 Int))
    (=> (and ($assume_abort_if_not_if256 cond6420))
        (assume_abort_if_not cond6420))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6421 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6421))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if257 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6422 Int))
    (=> (and ($__VERIFIER_assert_if257 cond6422))
        (__VERIFIER_assert cond6422))))

; goto END
(assert
  (forall (($pathbuf_off632 Int) ($bound_off633 Int) ($int6423 Int) ($glob2_p_off634 Int) ($glob2_pathbuf_off635 Int) ($glob2_pathlim_off636 Int))
    (=> (and (not (and (> $int6423 0) (< $int6423 2147483647)))
             (<= (- 2147483648) $int6423)
             (<= $int6423 2147483647))
        ($main_END $int6423 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636))))

; if then
(assert
  (forall (($pathbuf_off632 Int) ($bound_off633 Int) ($int6423 Int) ($glob2_p_off634 Int) ($glob2_pathbuf_off635 Int) ($glob2_pathlim_off636 Int))
    (=> (and (> $int6423 0)
             (< $int6423 2147483647)
             (<= (- 2147483648) $int6423)
             (<= $int6423 2147483647))
        ($main_if258 $int6423 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636))))

; loop entry $main_inv476
(assert
  (forall (($glob2_pathlim_off6366429 Int) ($pathbuf_off6326425 Int) ($glob2_p_off6346427 Int) ($glob2_pathbuf_off6356428 Int) ($bound_off6336426 Int) ($MAXPATHLEN6316424 Int))
    (=> (and ($main_if258 $MAXPATHLEN6316424 $pathbuf_off6326425 $bound_off6336426 $glob2_p_off6346427 $glob2_pathbuf_off6356428 $glob2_pathlim_off6366429))
        ($main_inv476 $MAXPATHLEN6316424 0 (- (+ 0 (+ $MAXPATHLEN6316424 1)) 1) 0 0 (- (+ 0 (+ $MAXPATHLEN6316424 1)) 1)))))

; loop term $main_sum476
(assert
  (forall (($bound_off6336432 Int) ($glob2_pathlim_off6366435 Int) ($glob2_p_off6346433 Int) ($pathbuf_off6326431 Int) ($MAXPATHLEN6316430 Int) ($glob2_pathbuf_off6356434 Int))
    (=> (and (not (<= $glob2_p_off6346433 $glob2_pathlim_off6366435))
             ($main_inv476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 $glob2_p_off6346433 $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))
        ($main_sum476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 $glob2_p_off6346433 $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))))

; __VERIFIER_assert precondition
(assert
  (forall (($bound_off6336432 Int) ($glob2_pathlim_off6366435 Int) ($glob2_p_off6346433 Int) ($pathbuf_off6326431 Int) ($MAXPATHLEN6316430 Int) ($glob2_pathbuf_off6356434 Int))
    (=> (and (<= $glob2_p_off6346433 $glob2_pathlim_off6366435)
             ($main_inv476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 $glob2_p_off6346433 $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))
        ($__VERIFIER_assert_pre (ite (<= 0 $glob2_p_off6346433) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bound_off6336432 Int) ($glob2_pathlim_off6366435 Int) ($glob2_p_off6346433 Int) ($pathbuf_off6326431 Int) ($MAXPATHLEN6316430 Int) ($glob2_pathbuf_off6356434 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $glob2_p_off6346433) 1 0))
             (<= $glob2_p_off6346433 $glob2_pathlim_off6366435)
             ($main_inv476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 $glob2_p_off6346433 $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))
        ($__VERIFIER_assert_pre (ite (< $glob2_p_off6346433 (+ $MAXPATHLEN6316430 1)) 1 0)))))

; forwards $main_inv476
(assert
  (forall (($bound_off6336432 Int) ($glob2_pathlim_off6366435 Int) ($glob2_p_off6346433 Int) ($pathbuf_off6326431 Int) ($MAXPATHLEN6316430 Int) ($glob2_pathbuf_off6356434 Int))
    (=> (and (__VERIFIER_assert (ite (< $glob2_p_off6346433 (+ $MAXPATHLEN6316430 1)) 1 0))
             (__VERIFIER_assert (ite (<= 0 $glob2_p_off6346433) 1 0))
             (<= $glob2_p_off6346433 $glob2_pathlim_off6366435)
             ($main_inv476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 $glob2_p_off6346433 $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))
        ($main_inv476 $MAXPATHLEN6316430 $pathbuf_off6326431 $bound_off6336432 (+ $glob2_p_off6346433 1) $glob2_pathbuf_off6356434 $glob2_pathlim_off6366435))))

; label END
(assert
  (forall (($MAXPATHLEN6316436 Int) ($glob2_p_off6346439 Int) ($bound_off6336438 Int) ($glob2_pathlim_off6366441 Int) ($glob2_pathbuf_off6356440 Int) ($pathbuf_off6326437 Int))
    (=> (and ($main_sum476 $MAXPATHLEN6316436 $pathbuf_off6326437 $bound_off6336438 $glob2_p_off6346439 $glob2_pathbuf_off6356440 $glob2_pathlim_off6366441))
        ($main_END $MAXPATHLEN6316436 $pathbuf_off6326437 $bound_off6336438 $glob2_p_off6346439 $glob2_pathbuf_off6356440 $glob2_pathlim_off6366441))))

(check-sat)
