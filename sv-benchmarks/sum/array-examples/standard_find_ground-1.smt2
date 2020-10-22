(set-logic HORN)

(declare-fun $__VERIFIER_assert_if64 (Int Int) Bool)
(declare-fun $main_inv213 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum214 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv215 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum213 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum215 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv214 ((Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5158 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5158))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if64 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5159 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if64 cond cond5159))
        (__VERIFIER_assert cond5159))))

; loop entry $main_inv213
(assert
  (forall (($int5160 Int) ($a311 (Array Int Int)) ($x315 Int) ($i313 Int) ($e312 Int))
    (=> (and (= $i313 0)
             (= $e312 $int5160)
             (<= (- 2147483648) $int5160)
             (<= $int5160 2147483647))
        ($main_inv213 $a311 $e312 $i313 0 $x315))))

; loop term $main_sum213
(assert
  (forall (($j3145164 Int) ($x3155165 Int) ($a3115161 (Array Int Int)) ($i3135163 Int) ($e3125162 Int))
    (=> (and (not (< $j3145164 100000)))
        ($main_sum213 $a3115161 $e3125162 $i3135163 $j3145164 $x3155165 $a3115161 $e3125162 $i3135163 $j3145164 $x3155165))))

; forwards $main_inv213
(assert
  (forall (($j3145164 Int) ($int5166 Int) ($x3155165 Int) ($a3115161 (Array Int Int)) ($i3135163 Int) ($e3125162 Int))
    (=> (and (<= (- 2147483648) $int5166)
             (<= $int5166 2147483647)
             (< $j3145164 100000)
             ($main_inv213 $a3115161 $e3125162 $i3135163 $j3145164 $x3155165))
        ($main_inv213 (store $a3115161 $j3145164 $int5166) $e3125162 $i3135163 (+ $j3145164 1) $x3155165))))

; backwards $main_sum213
(assert
  (forall (($int5166 Int) ($x3155171 Int) ($a3115167 (Array Int Int)) ($a3115161 (Array Int Int)) ($i3135163 Int) ($j3145170 Int) ($e3125162 Int) ($j3145164 Int) ($i3135169 Int) ($e3125168 Int) ($x3155165 Int))
    (=> (and ($main_sum213 (store $a3115161 $j3145164 $int5166) $e3125162 $i3135163 (+ $j3145164 1) $x3155165 $a3115167 $e3125168 $i3135169 $j3145170 $x3155171)
             (<= (- 2147483648) $int5166)
             (<= $int5166 2147483647)
             (< $j3145164 100000))
        ($main_sum213 $a3115161 $e3125162 $i3135163 $j3145164 $x3155165 $a3115167 $e3125168 $i3135169 $j3145170 $x3155171))))

; loop entry $main_inv214
(assert
  (forall (($a3115172 (Array Int Int)) ($int5160 Int) ($i3135174 Int) ($x3155176 Int) ($a311 (Array Int Int)) ($e3125173 Int) ($i313 Int) ($e312 Int) ($j3145175 Int) ($x315 Int))
    (=> (and ($main_sum213 $a311 $e312 $i313 0 $x315 $a3115172 $e3125173 $i3135174 $j3145175 $x3155176)
             (= $i313 0)
             (= $e312 $int5160)
             (<= (- 2147483648) $int5160)
             (<= $int5160 2147483647))
        ($main_inv214 $a3115172 $e3125173 $i3135174 $j3145175 $x3155176))))

; loop term $main_sum214
(assert
  (forall (($j3145180 Int) ($x3155181 Int) ($a3115177 (Array Int Int)) ($i3135179 Int) ($e3125178 Int))
    (=> (and (not (and (< $i3135179 100000) (not (= (select $a3115177 $i3135179) $e3125178)))))
        ($main_sum214 $a3115177 $e3125178 $i3135179 $j3145180 $x3155181 $a3115177 $e3125178 $i3135179 $j3145180 $x3155181))))

; forwards $main_inv214
(assert
  (forall (($j3145180 Int) ($x3155181 Int) ($a3115177 (Array Int Int)) ($i3135179 Int) ($e3125178 Int))
    (=> (and (< $i3135179 100000)
             (not (= (select $a3115177 $i3135179) $e3125178))
             ($main_inv214 $a3115177 $e3125178 $i3135179 $j3145180 $x3155181))
        ($main_inv214 $a3115177 $e3125178 (+ $i3135179 1) $j3145180 $x3155181))))

; backwards $main_sum214
(assert
  (forall (($j3145180 Int) ($x3155181 Int) ($x3155186 Int) ($a3115182 (Array Int Int)) ($a3115177 (Array Int Int)) ($i3135184 Int) ($e3125183 Int) ($j3145185 Int) ($i3135179 Int) ($e3125178 Int))
    (=> (and ($main_sum214 $a3115177 $e3125178 (+ $i3135179 1) $j3145180 $x3155181 $a3115182 $e3125183 $i3135184 $j3145185 $x3155186)
             (< $i3135179 100000)
             (not (= (select $a3115177 $i3135179) $e3125178)))
        ($main_sum214 $a3115177 $e3125178 $i3135179 $j3145180 $x3155181 $a3115182 $e3125183 $i3135184 $j3145185 $x3155186))))

; loop entry $main_inv215
(assert
  (forall (($a3115172 (Array Int Int)) ($int5160 Int) ($i3135174 Int) ($x3155176 Int) ($a311 (Array Int Int)) ($e3125173 Int) ($a3115187 (Array Int Int)) ($i3135189 Int) ($i313 Int) ($x3155191 Int) ($j3145190 Int) ($e3125188 Int) ($e312 Int) ($j3145175 Int) ($x315 Int))
    (=> (and ($main_sum214 $a3115172 $e3125173 $i3135174 $j3145175 $x3155176 $a3115187 $e3125188 $i3135189 $j3145190 $x3155191)
             ($main_sum213 $a311 $e312 $i313 0 $x315 $a3115172 $e3125173 $i3135174 $j3145175 $x3155176)
             (= $i313 0)
             (= $e312 $int5160)
             (<= (- 2147483648) $int5160)
             (<= $int5160 2147483647))
        ($main_inv215 $a3115187 $e3125188 $i3135189 $j3145190 0))))

; loop term $main_sum215
(assert
  (forall (($x3155196 Int) ($a3115192 (Array Int Int)) ($i3135194 Int) ($e3125193 Int) ($j3145195 Int))
    (=> (and (not (< $x3155196 $i3135194)))
        ($main_sum215 $a3115192 $e3125193 $i3135194 $j3145195 $x3155196 $a3115192 $e3125193 $i3135194 $j3145195 $x3155196))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3155196 Int) ($a3115192 (Array Int Int)) ($i3135194 Int) ($e3125193 Int) ($j3145195 Int))
    (=> (and (< $x3155196 $i3135194)
             ($main_inv215 $a3115192 $e3125193 $i3135194 $j3145195 $x3155196))
        ($__VERIFIER_assert_pre (ite (not (= (select $a3115192 $x3155196) $e3125193)) 1 0)))))

; forwards $main_inv215
(assert
  (forall (($x3155196 Int) ($a3115192 (Array Int Int)) ($i3135194 Int) ($e3125193 Int) ($j3145195 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a3115192 $x3155196) $e3125193)) 1 0))
             (< $x3155196 $i3135194)
             ($main_inv215 $a3115192 $e3125193 $i3135194 $j3145195 $x3155196))
        ($main_inv215 $a3115192 $e3125193 $i3135194 $j3145195 (+ $x3155196 1)))))

; backwards $main_sum215
(assert
  (forall (($x3155196 Int) ($i3135199 Int) ($e3125198 Int) ($x3155201 Int) ($a3115192 (Array Int Int)) ($j3145200 Int) ($i3135194 Int) ($a3115197 (Array Int Int)) ($e3125193 Int) ($j3145195 Int))
    (=> (and ($main_sum215 $a3115192 $e3125193 $i3135194 $j3145195 (+ $x3155196 1) $a3115197 $e3125198 $i3135199 $j3145200 $x3155201)
             (__VERIFIER_assert (ite (not (= (select $a3115192 $x3155196) $e3125193)) 1 0))
             (< $x3155196 $i3135194))
        ($main_sum215 $a3115192 $e3125193 $i3135194 $j3145195 $x3155196 $a3115197 $e3125198 $i3135199 $j3145200 $x3155201))))

(check-sat)
