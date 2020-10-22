(set-logic HORN)

(declare-fun $assume_abort_if_not_if256 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if257 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum476 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if258 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv476 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if256 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9073 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if256 cond cond9073))
        (assume_abort_if_not cond9073))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9074 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9074))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if257 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9075 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if257 cond cond9075))
        (__VERIFIER_assert cond9075))))

; goto END
(assert
  (forall (($pathbuf_off632 Int) ($bound_off633 Int) ($glob2_p_off634 Int) ($int9076 Int) ($glob2_pathbuf_off635 Int) ($MAXPATHLEN631 Int) ($glob2_pathlim_off636 Int))
    (=> (and (not (and (> $int9076 0) (< $int9076 2147483647)))
             (<= (- 2147483648) $int9076)
             (<= $int9076 2147483647))
        ($main_END $MAXPATHLEN631 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636 $int9076 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636))))

; if then
(assert
  (forall (($pathbuf_off632 Int) ($bound_off633 Int) ($glob2_p_off634 Int) ($int9076 Int) ($glob2_pathbuf_off635 Int) ($MAXPATHLEN631 Int) ($glob2_pathlim_off636 Int))
    (=> (and (> $int9076 0)
             (< $int9076 2147483647)
             (<= (- 2147483648) $int9076)
             (<= $int9076 2147483647))
        ($main_if258 $MAXPATHLEN631 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636 $int9076 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636))))

; loop entry $main_inv476
(assert
  (forall (($pathbuf_off632 Int) ($bound_off633 Int) ($pathbuf_off6329078 Int) ($glob2_pathbuf_off635 Int) ($MAXPATHLEN631 Int) ($MAXPATHLEN6319077 Int) ($glob2_pathlim_off6369082 Int) ($glob2_p_off6349080 Int) ($glob2_p_off634 Int) ($glob2_pathbuf_off6359081 Int) ($glob2_pathlim_off636 Int) ($bound_off6339079 Int))
    (=> (and ($main_if258 $MAXPATHLEN631 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636 $MAXPATHLEN6319077 $pathbuf_off6329078 $bound_off6339079 $glob2_p_off6349080 $glob2_pathbuf_off6359081 $glob2_pathlim_off6369082))
        ($main_inv476 $MAXPATHLEN6319077 0 (- (+ 0 (+ $MAXPATHLEN6319077 1)) 1) 0 0 (- (+ 0 (+ $MAXPATHLEN6319077 1)) 1)))))

; loop term $main_sum476
(assert
  (forall (($bound_off6339085 Int) ($pathbuf_off6329084 Int) ($glob2_pathlim_off6369088 Int) ($MAXPATHLEN6319083 Int) ($glob2_p_off6349086 Int) ($glob2_pathbuf_off6359087 Int))
    (=> (and (not (<= $glob2_p_off6349086 $glob2_pathlim_off6369088)))
        ($main_sum476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088))))

; __VERIFIER_assert precondition
(assert
  (forall (($bound_off6339085 Int) ($pathbuf_off6329084 Int) ($glob2_pathlim_off6369088 Int) ($MAXPATHLEN6319083 Int) ($glob2_p_off6349086 Int) ($glob2_pathbuf_off6359087 Int))
    (=> (and (<= $glob2_p_off6349086 $glob2_pathlim_off6369088)
             ($main_inv476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088))
        ($__VERIFIER_assert_pre (ite (<= 0 $glob2_p_off6349086) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bound_off6339085 Int) ($pathbuf_off6329084 Int) ($glob2_pathlim_off6369088 Int) ($MAXPATHLEN6319083 Int) ($glob2_p_off6349086 Int) ($glob2_pathbuf_off6359087 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $glob2_p_off6349086) 1 0))
             (<= $glob2_p_off6349086 $glob2_pathlim_off6369088)
             ($main_inv476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088))
        ($__VERIFIER_assert_pre (ite (< $glob2_p_off6349086 (+ $MAXPATHLEN6319083 1)) 1 0)))))

; forwards $main_inv476
(assert
  (forall (($bound_off6339085 Int) ($pathbuf_off6329084 Int) ($glob2_pathlim_off6369088 Int) ($MAXPATHLEN6319083 Int) ($glob2_p_off6349086 Int) ($glob2_pathbuf_off6359087 Int))
    (=> (and (__VERIFIER_assert (ite (< $glob2_p_off6349086 (+ $MAXPATHLEN6319083 1)) 1 0))
             (__VERIFIER_assert (ite (<= 0 $glob2_p_off6349086) 1 0))
             (<= $glob2_p_off6349086 $glob2_pathlim_off6369088)
             ($main_inv476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088))
        ($main_inv476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 (+ $glob2_p_off6349086 1) $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088))))

; backwards $main_sum476
(assert
  (forall (($glob2_pathlim_off6369094 Int) ($glob2_pathbuf_off6359093 Int) ($pathbuf_off6329084 Int) ($bound_off6339091 Int) ($glob2_pathlim_off6369088 Int) ($MAXPATHLEN6319083 Int) ($glob2_p_off6349092 Int) ($glob2_p_off6349086 Int) ($glob2_pathbuf_off6359087 Int) ($MAXPATHLEN6319089 Int) ($bound_off6339085 Int) ($pathbuf_off6329090 Int))
    (=> (and ($main_sum476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 (+ $glob2_p_off6349086 1) $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088 $MAXPATHLEN6319089 $pathbuf_off6329090 $bound_off6339091 $glob2_p_off6349092 $glob2_pathbuf_off6359093 $glob2_pathlim_off6369094)
             (__VERIFIER_assert (ite (< $glob2_p_off6349086 (+ $MAXPATHLEN6319083 1)) 1 0))
             (__VERIFIER_assert (ite (<= 0 $glob2_p_off6349086) 1 0))
             (<= $glob2_p_off6349086 $glob2_pathlim_off6369088))
        ($main_sum476 $MAXPATHLEN6319083 $pathbuf_off6329084 $bound_off6339085 $glob2_p_off6349086 $glob2_pathbuf_off6359087 $glob2_pathlim_off6369088 $MAXPATHLEN6319089 $pathbuf_off6329090 $bound_off6339091 $glob2_p_off6349092 $glob2_pathbuf_off6359093 $glob2_pathlim_off6369094))))

; label END
(assert
  (forall (($bound_off633 Int) ($glob2_pathbuf_off6359099 Int) ($pathbuf_off6329078 Int) ($bound_off6339097 Int) ($glob2_pathbuf_off635 Int) ($MAXPATHLEN631 Int) ($glob2_pathlim_off6369100 Int) ($MAXPATHLEN6319077 Int) ($glob2_pathlim_off6369082 Int) ($pathbuf_off632 Int) ($pathbuf_off6329096 Int) ($glob2_p_off6349080 Int) ($glob2_p_off634 Int) ($glob2_p_off6349098 Int) ($MAXPATHLEN6319095 Int) ($glob2_pathbuf_off6359081 Int) ($glob2_pathlim_off636 Int) ($bound_off6339079 Int))
    (=> (and ($main_sum476 $MAXPATHLEN6319077 0 (- (+ 0 (+ $MAXPATHLEN6319077 1)) 1) 0 0 (- (+ 0 (+ $MAXPATHLEN6319077 1)) 1) $MAXPATHLEN6319095 $pathbuf_off6329096 $bound_off6339097 $glob2_p_off6349098 $glob2_pathbuf_off6359099 $glob2_pathlim_off6369100)
             ($main_if258 $MAXPATHLEN631 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636 $MAXPATHLEN6319077 $pathbuf_off6329078 $bound_off6339079 $glob2_p_off6349080 $glob2_pathbuf_off6359081 $glob2_pathlim_off6369082))
        ($main_END $MAXPATHLEN631 $pathbuf_off632 $bound_off633 $glob2_p_off634 $glob2_pathbuf_off635 $glob2_pathlim_off636 $MAXPATHLEN6319095 $pathbuf_off6329096 $bound_off6339097 $glob2_p_off6349098 $glob2_pathbuf_off6359099 $glob2_pathlim_off6369100))))

(check-sat)
