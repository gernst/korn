(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv310 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum313 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv312 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum307 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv308 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum304 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv305 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum311 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv309 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum306 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if81 (Int) Bool)
(declare-fun $main_inv307 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum309 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum305 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum308 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum312 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv313 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv306 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv304 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum310 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv311 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4143 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4143))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if81 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4144 Int))
    (=> (and ($__VERIFIER_assert_if81 cond4144))
        (__VERIFIER_assert cond4144))))

; loop entry $main_inv304
(assert
  (forall (($a364 (Array Int Int)) ($i365 Int) ($x366 Int))
    (=> (and (= $i365 0))
        ($main_inv304 $a364 $i365 $x366))))

; loop term $main_sum304
(assert
  (forall (($a3644145 (Array Int Int)) ($i3654146 Int) ($x3664147 Int))
    (=> (and (not (< $i3654146 100000))
             ($main_inv304 $a3644145 $i3654146 $x3664147))
        ($main_sum304 $a3644145 $i3654146 $x3664147))))

; forwards $main_inv304
(assert
  (forall (($a3644145 (Array Int Int)) ($i3654146 Int) ($x3664147 Int))
    (=> (and (< $i3654146 100000)
             ($main_inv304 $a3644145 $i3654146 $x3664147))
        ($main_inv304 (store $a3644145 $i3654146 42) (+ $i3654146 1) $x3664147))))

; loop entry $main_inv305
(assert
  (forall (($a3644148 (Array Int Int)) ($x3664150 Int) ($i3654149 Int))
    (=> (and ($main_sum304 $a3644148 $i3654149 $x3664150))
        ($main_inv305 $a3644148 0 $x3664150))))

; loop term $main_sum305
(assert
  (forall (($a3644151 (Array Int Int)) ($i3654152 Int) ($x3664153 Int))
    (=> (and (not (< $i3654152 100000))
             ($main_inv305 $a3644151 $i3654152 $x3664153))
        ($main_sum305 $a3644151 $i3654152 $x3664153))))

; forwards $main_inv305
(assert
  (forall (($a3644151 (Array Int Int)) ($i3654152 Int) ($x3664153 Int))
    (=> (and (< $i3654152 100000)
             ($main_inv305 $a3644151 $i3654152 $x3664153))
        ($main_inv305 (store $a3644151 $i3654152 43) (+ $i3654152 1) $x3664153))))

; loop entry $main_inv306
(assert
  (forall (($a3644154 (Array Int Int)) ($x3664156 Int) ($i3654155 Int))
    (=> (and ($main_sum305 $a3644154 $i3654155 $x3664156))
        ($main_inv306 $a3644154 0 $x3664156))))

; loop term $main_sum306
(assert
  (forall (($a3644157 (Array Int Int)) ($i3654158 Int) ($x3664159 Int))
    (=> (and (not (< $i3654158 100000))
             ($main_inv306 $a3644157 $i3654158 $x3664159))
        ($main_sum306 $a3644157 $i3654158 $x3664159))))

; forwards $main_inv306
(assert
  (forall (($a3644157 (Array Int Int)) ($i3654158 Int) ($x3664159 Int))
    (=> (and (< $i3654158 100000)
             ($main_inv306 $a3644157 $i3654158 $x3664159))
        ($main_inv306 (store $a3644157 $i3654158 44) (+ $i3654158 1) $x3664159))))

; loop entry $main_inv307
(assert
  (forall (($a3644160 (Array Int Int)) ($x3664162 Int) ($i3654161 Int))
    (=> (and ($main_sum306 $a3644160 $i3654161 $x3664162))
        ($main_inv307 $a3644160 0 $x3664162))))

; loop term $main_sum307
(assert
  (forall (($a3644163 (Array Int Int)) ($i3654164 Int) ($x3664165 Int))
    (=> (and (not (< $i3654164 100000))
             ($main_inv307 $a3644163 $i3654164 $x3664165))
        ($main_sum307 $a3644163 $i3654164 $x3664165))))

; forwards $main_inv307
(assert
  (forall (($a3644163 (Array Int Int)) ($i3654164 Int) ($x3664165 Int))
    (=> (and (< $i3654164 100000)
             ($main_inv307 $a3644163 $i3654164 $x3664165))
        ($main_inv307 (store $a3644163 $i3654164 45) (+ $i3654164 1) $x3664165))))

; loop entry $main_inv308
(assert
  (forall (($a3644166 (Array Int Int)) ($x3664168 Int) ($i3654167 Int))
    (=> (and ($main_sum307 $a3644166 $i3654167 $x3664168))
        ($main_inv308 $a3644166 0 $x3664168))))

; loop term $main_sum308
(assert
  (forall (($a3644169 (Array Int Int)) ($i3654170 Int) ($x3664171 Int))
    (=> (and (not (< $i3654170 100000))
             ($main_inv308 $a3644169 $i3654170 $x3664171))
        ($main_sum308 $a3644169 $i3654170 $x3664171))))

; forwards $main_inv308
(assert
  (forall (($a3644169 (Array Int Int)) ($i3654170 Int) ($x3664171 Int))
    (=> (and (< $i3654170 100000)
             ($main_inv308 $a3644169 $i3654170 $x3664171))
        ($main_inv308 (store $a3644169 $i3654170 46) (+ $i3654170 1) $x3664171))))

; loop entry $main_inv309
(assert
  (forall (($a3644172 (Array Int Int)) ($x3664174 Int) ($i3654173 Int))
    (=> (and ($main_sum308 $a3644172 $i3654173 $x3664174))
        ($main_inv309 $a3644172 0 $x3664174))))

; loop term $main_sum309
(assert
  (forall (($a3644175 (Array Int Int)) ($i3654176 Int) ($x3664177 Int))
    (=> (and (not (< $i3654176 100000))
             ($main_inv309 $a3644175 $i3654176 $x3664177))
        ($main_sum309 $a3644175 $i3654176 $x3664177))))

; forwards $main_inv309
(assert
  (forall (($a3644175 (Array Int Int)) ($i3654176 Int) ($x3664177 Int))
    (=> (and (< $i3654176 100000)
             ($main_inv309 $a3644175 $i3654176 $x3664177))
        ($main_inv309 (store $a3644175 $i3654176 47) (+ $i3654176 1) $x3664177))))

; loop entry $main_inv310
(assert
  (forall (($a3644178 (Array Int Int)) ($x3664180 Int) ($i3654179 Int))
    (=> (and ($main_sum309 $a3644178 $i3654179 $x3664180))
        ($main_inv310 $a3644178 0 $x3664180))))

; loop term $main_sum310
(assert
  (forall (($a3644181 (Array Int Int)) ($i3654182 Int) ($x3664183 Int))
    (=> (and (not (< $i3654182 100000))
             ($main_inv310 $a3644181 $i3654182 $x3664183))
        ($main_sum310 $a3644181 $i3654182 $x3664183))))

; forwards $main_inv310
(assert
  (forall (($a3644181 (Array Int Int)) ($i3654182 Int) ($x3664183 Int))
    (=> (and (< $i3654182 100000)
             ($main_inv310 $a3644181 $i3654182 $x3664183))
        ($main_inv310 (store $a3644181 $i3654182 48) (+ $i3654182 1) $x3664183))))

; loop entry $main_inv311
(assert
  (forall (($a3644184 (Array Int Int)) ($x3664186 Int) ($i3654185 Int))
    (=> (and ($main_sum310 $a3644184 $i3654185 $x3664186))
        ($main_inv311 $a3644184 0 $x3664186))))

; loop term $main_sum311
(assert
  (forall (($a3644187 (Array Int Int)) ($i3654188 Int) ($x3664189 Int))
    (=> (and (not (< $i3654188 100000))
             ($main_inv311 $a3644187 $i3654188 $x3664189))
        ($main_sum311 $a3644187 $i3654188 $x3664189))))

; forwards $main_inv311
(assert
  (forall (($a3644187 (Array Int Int)) ($i3654188 Int) ($x3664189 Int))
    (=> (and (< $i3654188 100000)
             ($main_inv311 $a3644187 $i3654188 $x3664189))
        ($main_inv311 (store $a3644187 $i3654188 49) (+ $i3654188 1) $x3664189))))

; loop entry $main_inv312
(assert
  (forall (($a3644190 (Array Int Int)) ($x3664192 Int) ($i3654191 Int))
    (=> (and ($main_sum311 $a3644190 $i3654191 $x3664192))
        ($main_inv312 $a3644190 0 $x3664192))))

; loop term $main_sum312
(assert
  (forall (($a3644193 (Array Int Int)) ($i3654194 Int) ($x3664195 Int))
    (=> (and (not (< $i3654194 100000))
             ($main_inv312 $a3644193 $i3654194 $x3664195))
        ($main_sum312 $a3644193 $i3654194 $x3664195))))

; forwards $main_inv312
(assert
  (forall (($a3644193 (Array Int Int)) ($i3654194 Int) ($x3664195 Int))
    (=> (and (< $i3654194 100000)
             ($main_inv312 $a3644193 $i3654194 $x3664195))
        ($main_inv312 (store $a3644193 $i3654194 50) (+ $i3654194 1) $x3664195))))

; loop entry $main_inv313
(assert
  (forall (($a3644196 (Array Int Int)) ($i3654197 Int) ($x3664198 Int))
    (=> (and ($main_sum312 $a3644196 $i3654197 $x3664198))
        ($main_inv313 $a3644196 $i3654197 0))))

; loop term $main_sum313
(assert
  (forall (($a3644199 (Array Int Int)) ($i3654200 Int) ($x3664201 Int))
    (=> (and (not (< $x3664201 100000))
             ($main_inv313 $a3644199 $i3654200 $x3664201))
        ($main_sum313 $a3644199 $i3654200 $x3664201))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3644199 (Array Int Int)) ($x3664201 Int) ($i3654200 Int))
    (=> (and (< $x3664201 100000)
             ($main_inv313 $a3644199 $i3654200 $x3664201))
        ($__VERIFIER_assert_pre (ite (= (select $a3644199 $x3664201) 49) 1 0)))))

; forwards $main_inv313
(assert
  (forall (($a3644199 (Array Int Int)) ($i3654200 Int) ($x3664201 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3644199 $x3664201) 49) 1 0))
             (< $x3664201 100000)
             ($main_inv313 $a3644199 $i3654200 $x3664201))
        ($main_inv313 $a3644199 $i3654200 (+ $x3664201 1)))))

(check-sat)
