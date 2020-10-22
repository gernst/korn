(set-logic HORN)

(declare-fun $main_if543 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum137 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if541 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if540 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv137 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if544 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if542 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if540 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14141 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if540 cond cond14141))
        (assume_abort_if_not cond14141))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14142 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14142))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if541 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14143 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if541 cond cond14143))
        (__VERIFIER_assert cond14143))))

; if else
(assert
  (forall (($n485 Int) ($i486 Int) ($k487 Int) ($uint14145 Int) ($j488 Int))
    (=> (and (<= $uint14145 20000001)
             (<= 0 $uint14145)
             (<= $uint14145 4294967295))
        ($main_if542 $n485 $i486 $k487 $j488 $uint14145 $i486 $k487 $j488))))

; loop entry $main_inv137
(assert
  (forall (($n485 Int) ($i486 Int) ($k487 Int) ($j48814149 Int) ($j488 Int) ($n48514146 Int) ($i48614147 Int) ($k48714148 Int))
    (=> (and ($main_if542 $n485 $i486 $k487 $j488 $n48514146 $i48614147 $k48714148 $j48814149))
        ($main_inv137 $n48514146 0 0 0))))

; loop term $main_sum137
(assert
  (forall (($n48514150 Int) ($i48614151 Int) ($k48714152 Int) ($j48814153 Int))
    (=> (and (not (< $i48614151 $n48514150)))
        ($main_sum137 $n48514150 $i48614151 $k48714152 $j48814153 $n48514150 $i48614151 $k48714152 $j48814153))))

; if then
(assert
  (forall (($n48514150 Int) ($i48614151 Int) ($k48714152 Int) ($j48814153 Int))
    (=> (and (not (= (mod (+ $i48614151 3) 2) 0))
             (< $i48614151 $n48514150)
             ($main_inv137 $n48514150 $i48614151 $k48714152 $j48814153))
        ($main_if543 $n48514150 $i48614151 $k48714152 $j48814153 $n48514150 (+ $i48614151 3) $k48714152 (+ $j48814153 3)))))

; if else
(assert
  (forall (($n48514150 Int) ($i48614151 Int) ($k48714152 Int) ($j48814153 Int))
    (=> (and (= (mod (+ $i48614151 3) 2) 0)
             (< $i48614151 $n48514150)
             ($main_inv137 $n48514150 $i48614151 $k48714152 $j48814153))
        ($main_if543 $n48514150 $i48614151 $k48714152 $j48814153 $n48514150 (+ $i48614151 3) (+ $k48714152 3) $j48814153))))

; __VERIFIER_assert precondition
(assert
  (forall (($i48614155 Int) ($n48514154 Int) ($k48714152 Int) ($i48614151 Int) ($j48814153 Int) ($n48514150 Int) ($j48814157 Int) ($k48714156 Int))
    (=> (and (> $n48514154 0)
             ($main_if543 $n48514150 $i48614151 $k48714152 $j48814153 $n48514154 $i48614155 $k48714156 $j48814157))
        ($__VERIFIER_assert_pre (ite (<= (div $i48614155 2) $j48814157) 1 0)))))

; if then
(assert
  (forall (($i48614155 Int) ($n48514154 Int) ($k48714152 Int) ($i48614151 Int) ($j48814153 Int) ($n48514150 Int) ($j48814157 Int) ($k48714156 Int))
    (=> (and (__VERIFIER_assert (ite (<= (div $i48614155 2) $j48814157) 1 0))
             (> $n48514154 0)
             ($main_if543 $n48514150 $i48614151 $k48714152 $j48814153 $n48514154 $i48614155 $k48714156 $j48814157))
        ($main_if544 $n48514150 $i48614151 $k48714152 $j48814153 $n48514154 $i48614155 $k48714156 $j48814157))))

; if else
(assert
  (forall (($i48614155 Int) ($n48514154 Int) ($k48714152 Int) ($i48614151 Int) ($j48814153 Int) ($n48514150 Int) ($j48814157 Int) ($k48714156 Int))
    (=> (and (not (> $n48514154 0))
             ($main_if543 $n48514150 $i48614151 $k48714152 $j48814153 $n48514154 $i48614155 $k48714156 $j48814157))
        ($main_if544 $n48514150 $i48614151 $k48714152 $j48814153 $n48514154 $i48614155 $k48714156 $j48814157))))

; forwards $main_inv137
(assert
  (forall (($n48514158 Int) ($k48714152 Int) ($i48614151 Int) ($j48814161 Int) ($n48514150 Int) ($k48714160 Int) ($i48614159 Int) ($j48814153 Int))
    (=> (and ($main_if544 $n48514150 $i48614151 $k48714152 $j48814153 $n48514158 $i48614159 $k48714160 $j48814161))
        ($main_inv137 $n48514158 $i48614159 $k48714160 $j48814161))))

; backwards $main_sum137
(assert
  (forall (($k48714152 Int) ($i48614151 Int) ($k48714164 Int) ($j48814161 Int) ($n48514150 Int) ($k48714160 Int) ($j48814165 Int) ($n48514158 Int) ($n48514162 Int) ($i48614163 Int) ($i48614159 Int) ($j48814153 Int))
    (=> (and ($main_sum137 $n48514158 $i48614159 $k48714160 $j48814161 $n48514162 $i48614163 $k48714164 $j48814165)
             ($main_if544 $n48514150 $i48614151 $k48714152 $j48814153 $n48514158 $i48614159 $k48714160 $j48814161))
        ($main_sum137 $n48514150 $i48614151 $k48714152 $j48814153 $n48514162 $i48614163 $k48714164 $j48814165))))

(check-sat)
