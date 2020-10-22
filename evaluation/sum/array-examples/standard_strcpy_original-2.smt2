(set-logic HORN)

(declare-fun $__VERIFIER_assert_if119 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv374 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum374 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv376 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv375 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum375 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum376 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7159 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7159))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if119 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7160 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if119 cond cond7160))
        (__VERIFIER_assert cond7160))))

; loop entry $main_inv374
(assert
  (forall (($src452 (Array Int Int)) ($dst453 (Array Int Int)) ($i454 Int) ($j455 Int))
    (=> (and (= $j455 0)
             (= $i454 0))
        ($main_inv374 $src452 $dst453 $i454 $j455))))

; loop term $main_sum374
(assert
  (forall (($src4527161 (Array Int Int)) ($dst4537162 (Array Int Int)) ($i4547163 Int) ($j4557164 Int))
    (=> (and (not (< $j4557164 100000)))
        ($main_sum374 $src4527161 $dst4537162 $i4547163 $j4557164 $src4527161 $dst4537162 $i4547163 $j4557164))))

; forwards $main_inv374
(assert
  (forall (($i4547163 Int) ($j4557164 Int) ($src4527161 (Array Int Int)) ($int7165 Int) ($dst4537162 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7165)
             (<= $int7165 2147483647)
             (< $j4557164 100000)
             ($main_inv374 $src4527161 $dst4537162 $i4547163 $j4557164))
        ($main_inv374 (store $src4527161 $j4557164 $int7165) $dst4537162 $i4547163 (+ $j4557164 1)))))

; backwards $main_sum374
(assert
  (forall (($j4557169 Int) ($i4547163 Int) ($i4547168 Int) ($j4557164 Int) ($dst4537167 (Array Int Int)) ($src4527161 (Array Int Int)) ($src4527166 (Array Int Int)) ($int7165 Int) ($dst4537162 (Array Int Int)))
    (=> (and ($main_sum374 (store $src4527161 $j4557164 $int7165) $dst4537162 $i4547163 (+ $j4557164 1) $src4527166 $dst4537167 $i4547168 $j4557169)
             (<= (- 2147483648) $int7165)
             (<= $int7165 2147483647)
             (< $j4557164 100000))
        ($main_sum374 $src4527161 $dst4537162 $i4547163 $j4557164 $src4527166 $dst4537167 $i4547168 $j4557169))))

; loop entry $main_inv375
(assert
  (forall (($j4557173 Int) ($src4527170 (Array Int Int)) ($j455 Int) ($i4547172 Int) ($dst4537171 (Array Int Int)) ($i454 Int) ($dst453 (Array Int Int)) ($src452 (Array Int Int)))
    (=> (and ($main_sum374 $src452 $dst453 $i454 $j455 $src4527170 $dst4537171 $i4547172 $j4557173)
             (= $j455 0)
             (= $i454 0))
        ($main_inv375 $src4527170 $dst4537171 $i4547172 $j4557173))))

; loop term $main_sum375
(assert
  (forall (($src4527174 (Array Int Int)) ($dst4537175 (Array Int Int)) ($i4547176 Int) ($j4557177 Int))
    (=> (and (not (and (< $i4547176 100000) (not (= (select $src4527174 $i4547176) 0)))))
        ($main_sum375 $src4527174 $dst4537175 $i4547176 $j4557177 $src4527174 $dst4537175 $i4547176 $j4557177))))

; forwards $main_inv375
(assert
  (forall (($src4527174 (Array Int Int)) ($dst4537175 (Array Int Int)) ($i4547176 Int) ($j4557177 Int))
    (=> (and (< $i4547176 100000)
             (not (= (select $src4527174 $i4547176) 0))
             ($main_inv375 $src4527174 $dst4537175 $i4547176 $j4557177))
        ($main_inv375 $src4527174 (store $dst4537175 $i4547176 (select $src4527174 $i4547176)) (+ $i4547176 1) $j4557177))))

; backwards $main_sum375
(assert
  (forall (($dst4537175 (Array Int Int)) ($i4547176 Int) ($src4527174 (Array Int Int)) ($j4557181 Int) ($i4547180 Int) ($dst4537179 (Array Int Int)) ($j4557177 Int) ($src4527178 (Array Int Int)))
    (=> (and ($main_sum375 $src4527174 (store $dst4537175 $i4547176 (select $src4527174 $i4547176)) (+ $i4547176 1) $j4557177 $src4527178 $dst4537179 $i4547180 $j4557181)
             (< $i4547176 100000)
             (not (= (select $src4527174 $i4547176) 0)))
        ($main_sum375 $src4527174 $dst4537175 $i4547176 $j4557177 $src4527178 $dst4537179 $i4547180 $j4557181))))

; loop entry $main_inv376
(assert
  (forall (($src4527182 (Array Int Int)) ($j4557173 Int) ($src4527170 (Array Int Int)) ($i4547172 Int) ($i4547184 Int) ($dst4537183 (Array Int Int)) ($j4557185 Int) ($j455 Int) ($dst4537171 (Array Int Int)) ($i454 Int) ($dst453 (Array Int Int)) ($src452 (Array Int Int)))
    (=> (and ($main_sum375 $src4527170 $dst4537171 $i4547172 $j4557173 $src4527182 $dst4537183 $i4547184 $j4557185)
             ($main_sum374 $src452 $dst453 $i454 $j455 $src4527170 $dst4537171 $i4547172 $j4557173)
             (= $j455 0)
             (= $i454 0))
        ($main_inv376 $src4527182 $dst4537183 0 $j4557185))))

; loop term $main_sum376
(assert
  (forall (($src4527186 (Array Int Int)) ($dst4537187 (Array Int Int)) ($i4547188 Int) ($j4557189 Int))
    (=> (and (not (and (< $i4547188 100000) (not (= (select $src4527186 $i4547188) 0)))))
        ($main_sum376 $src4527186 $dst4537187 $i4547188 $j4557189 $src4527186 $dst4537187 $i4547188 $j4557189))))

; __VERIFIER_assert precondition
(assert
  (forall (($dst4537187 (Array Int Int)) ($i4547188 Int) ($src4527186 (Array Int Int)) ($j4557189 Int))
    (=> (and (< $i4547188 100000)
             (not (= (select $src4527186 $i4547188) 0))
             ($main_inv376 $src4527186 $dst4537187 $i4547188 $j4557189))
        ($__VERIFIER_assert_pre (ite (= (select $dst4537187 $i4547188) (select $src4527186 $i4547188)) 1 0)))))

; forwards $main_inv376
(assert
  (forall (($src4527186 (Array Int Int)) ($dst4537187 (Array Int Int)) ($i4547188 Int) ($j4557189 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $dst4537187 $i4547188) (select $src4527186 $i4547188)) 1 0))
             (< $i4547188 100000)
             (not (= (select $src4527186 $i4547188) 0))
             ($main_inv376 $src4527186 $dst4537187 $i4547188 $j4557189))
        ($main_inv376 $src4527186 $dst4537187 (+ $i4547188 1) $j4557189))))

; backwards $main_sum376
(assert
  (forall (($j4557193 Int) ($i4547192 Int) ($i4547188 Int) ($dst4537191 (Array Int Int)) ($src4527186 (Array Int Int)) ($src4527190 (Array Int Int)) ($dst4537187 (Array Int Int)) ($j4557189 Int))
    (=> (and ($main_sum376 $src4527186 $dst4537187 (+ $i4547188 1) $j4557189 $src4527190 $dst4537191 $i4547192 $j4557193)
             (__VERIFIER_assert (ite (= (select $dst4537187 $i4547188) (select $src4527186 $i4547188)) 1 0))
             (< $i4547188 100000)
             (not (= (select $src4527186 $i4547188) 0)))
        ($main_sum376 $src4527186 $dst4537187 $i4547188 $j4557189 $src4527190 $dst4537191 $i4547192 $j4557193))))

(check-sat)
