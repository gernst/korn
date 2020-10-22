(set-logic HORN)

(declare-fun $main_sum17 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if17 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv15 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv17 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv16 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_sum16 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum18 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv18 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_sum15 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_if15 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_if16 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if14 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond157 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond157))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if14 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond158 Int))
    (=> (and ($__VERIFIER_assert_if14 cond158))
        (__VERIFIER_assert cond158))))

; loop entry $main_inv15
(assert
  (forall (($pos29 Int) ($x33 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($n28 Int) ($int159 Int) ($element30 Int))
    (=> (and (= $found31 0)
             (= $element30 $int159)
             (<= (- 2147483648) $int159)
             (<= $int159 2147483647)
             (= $n28 100000))
        ($main_inv15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33))))

; loop term $main_sum15
(assert
  (forall (($x33166 Int) ($found31164 Int) ($n28161 Int) ($vectorx32165 (Array Int Int)) ($i27160 Int) ($pos29162 Int) ($element30163 Int))
    (=> (and (not (< $i27160 $n28161))
             ($main_inv15 $i27160 $n28161 $pos29162 $element30163 $found31164 $vectorx32165 $x33166))
        ($main_sum15 $i27160 $n28161 $pos29162 $element30163 $found31164 $vectorx32165 $x33166))))

; forwards $main_inv15
(assert
  (forall (($x33166 Int) ($found31164 Int) ($n28161 Int) ($int167 Int) ($vectorx32165 (Array Int Int)) ($i27160 Int) ($pos29162 Int) ($element30163 Int))
    (=> (and (<= (- 2147483648) $int167)
             (<= $int167 2147483647)
             (< $i27160 $n28161)
             ($main_inv15 $i27160 $n28161 $pos29162 $element30163 $found31164 $vectorx32165 $x33166))
        ($main_inv15 (+ $i27160 1) $n28161 $pos29162 $element30163 $found31164 (store $vectorx32165 $i27160 $int167) $x33166))))

; loop entry $main_inv16
(assert
  (forall (($x33174 Int) ($found31172 Int) ($vectorx32173 (Array Int Int)) ($n28169 Int) ($element30171 Int) ($pos29170 Int) ($i27168 Int))
    (=> (and ($main_sum15 $i27168 $n28169 $pos29170 $element30171 $found31172 $vectorx32173 $x33174))
        ($main_inv16 0 $n28169 $pos29170 $element30171 $found31172 $vectorx32173 $x33174))))

; loop term $main_sum16
(assert
  (forall (($x33181 Int) ($vectorx32180 (Array Int Int)) ($found31179 Int) ($n28176 Int) ($element30178 Int) ($pos29177 Int) ($i27175 Int))
    (=> (and (not (and (< $i27175 $n28176) (= $found31179 0)))
             ($main_inv16 $i27175 $n28176 $pos29177 $element30178 $found31179 $vectorx32180 $x33181))
        ($main_sum16 $i27175 $n28176 $pos29177 $element30178 $found31179 $vectorx32180 $x33181))))

; if then
(assert
  (forall (($x33181 Int) ($vectorx32180 (Array Int Int)) ($found31179 Int) ($n28176 Int) ($element30178 Int) ($pos29177 Int) ($i27175 Int))
    (=> (and (= (select $vectorx32180 $i27175) $element30178)
             (< $i27175 $n28176)
             (= $found31179 0)
             ($main_inv16 $i27175 $n28176 $pos29177 $element30178 $found31179 $vectorx32180 $x33181))
        ($main_if15 $i27175 $n28176 $i27175 $element30178 1 $vectorx32180 $x33181))))

; if else
(assert
  (forall (($x33181 Int) ($vectorx32180 (Array Int Int)) ($found31179 Int) ($n28176 Int) ($element30178 Int) ($pos29177 Int) ($i27175 Int))
    (=> (and (not (= (select $vectorx32180 $i27175) $element30178))
             (< $i27175 $n28176)
             (= $found31179 0)
             ($main_inv16 $i27175 $n28176 $pos29177 $element30178 $found31179 $vectorx32180 $x33181))
        ($main_if15 $i27175 $n28176 $pos29177 $element30178 $found31179 $vectorx32180 $x33181))))

; forwards $main_inv16
(assert
  (forall (($x33188 Int) ($element30185 Int) ($found31186 Int) ($vectorx32187 (Array Int Int)) ($i27182 Int) ($n28183 Int) ($pos29184 Int))
    (=> (and ($main_if15 $i27182 $n28183 $pos29184 $element30185 $found31186 $vectorx32187 $x33188))
        ($main_inv16 (+ $i27182 1) $n28183 $pos29184 $element30185 $found31186 $vectorx32187 $x33188))))

; loop entry $main_inv17
(assert
  (forall (($n28190 Int) ($element30192 Int) ($pos29191 Int) ($i27189 Int) ($x33195 Int) ($vectorx32194 (Array Int Int)) ($found31193 Int))
    (=> (and (not (= $found31193 0))
             ($main_sum16 $i27189 $n28190 $pos29191 $element30192 $found31193 $vectorx32194 $x33195))
        ($main_inv17 $pos29191 $n28190 $pos29191 $element30192 $found31193 $vectorx32194 $x33195))))

; loop term $main_sum17
(assert
  (forall (($i27196 Int) ($vectorx32201 (Array Int Int)) ($pos29198 Int) ($x33202 Int) ($n28197 Int) ($element30199 Int) ($found31200 Int))
    (=> (and (not (< $i27196 (- $n28197 1)))
             ($main_inv17 $i27196 $n28197 $pos29198 $element30199 $found31200 $vectorx32201 $x33202))
        ($main_sum17 $i27196 $n28197 $pos29198 $element30199 $found31200 $vectorx32201 $x33202))))

; forwards $main_inv17
(assert
  (forall (($i27196 Int) ($vectorx32201 (Array Int Int)) ($pos29198 Int) ($x33202 Int) ($n28197 Int) ($element30199 Int) ($found31200 Int))
    (=> (and (< $i27196 (- $n28197 1))
             ($main_inv17 $i27196 $n28197 $pos29198 $element30199 $found31200 $vectorx32201 $x33202))
        ($main_inv17 (+ $i27196 1) $n28197 $pos29198 $element30199 $found31200 (store $vectorx32201 $i27196 (select $vectorx32201 (+ $i27196 1))) $x33202))))

; if then
(assert
  (forall (($n28204 Int) ($element30206 Int) ($vectorx32208 (Array Int Int)) ($pos29205 Int) ($found31207 Int) ($i27203 Int) ($x33209 Int))
    (=> (and ($main_sum17 $i27203 $n28204 $pos29205 $element30206 $found31207 $vectorx32208 $x33209))
        ($main_if16 $i27203 $n28204 $pos29205 $element30206 $found31207 $vectorx32208 $x33209))))

; if else
(assert
  (forall (($n28190 Int) ($element30192 Int) ($pos29191 Int) ($i27189 Int) ($x33195 Int) ($vectorx32194 (Array Int Int)) ($found31193 Int))
    (=> (and (= $found31193 0)
             ($main_sum16 $i27189 $n28190 $pos29191 $element30192 $found31193 $vectorx32194 $x33195))
        ($main_if16 $i27189 $n28190 $pos29191 $element30192 $found31193 $vectorx32194 $x33195))))

; loop entry $main_inv18
(assert
  (forall (($n28211 Int) ($pos29212 Int) ($element30213 Int) ($x33216 Int) ($vectorx32215 (Array Int Int)) ($found31214 Int) ($i27210 Int))
    (=> (and (not (= $found31214 0))
             ($main_if16 $i27210 $n28211 $pos29212 $element30213 $found31214 $vectorx32215 $x33216))
        ($main_inv18 $i27210 $n28211 $pos29212 $element30213 $found31214 $vectorx32215 0))))

; loop term $main_sum18
(assert
  (forall (($pos29219 Int) ($vectorx32222 (Array Int Int)) ($n28218 Int) ($found31221 Int) ($x33223 Int) ($element30220 Int) ($i27217 Int))
    (=> (and (not (< $x33223 $pos29219))
             ($main_inv18 $i27217 $n28218 $pos29219 $element30220 $found31221 $vectorx32222 $x33223))
        ($main_sum18 $i27217 $n28218 $pos29219 $element30220 $found31221 $vectorx32222 $x33223))))

; __VERIFIER_assert precondition
(assert
  (forall (($pos29219 Int) ($vectorx32222 (Array Int Int)) ($n28218 Int) ($found31221 Int) ($x33223 Int) ($element30220 Int) ($i27217 Int))
    (=> (and (< $x33223 $pos29219)
             ($main_inv18 $i27217 $n28218 $pos29219 $element30220 $found31221 $vectorx32222 $x33223))
        ($__VERIFIER_assert_pre (ite (not (= (select $vectorx32222 $x33223) $element30220)) 1 0)))))

; forwards $main_inv18
(assert
  (forall (($pos29219 Int) ($vectorx32222 (Array Int Int)) ($n28218 Int) ($found31221 Int) ($x33223 Int) ($element30220 Int) ($i27217 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $vectorx32222 $x33223) $element30220)) 1 0))
             (< $x33223 $pos29219)
             ($main_inv18 $i27217 $n28218 $pos29219 $element30220 $found31221 $vectorx32222 $x33223))
        ($main_inv18 $i27217 $n28218 $pos29219 $element30220 $found31221 $vectorx32222 (+ $x33223 1)))))

; if then
(assert
  (forall (($n28225 Int) ($x33230 Int) ($pos29226 Int) ($element30227 Int) ($vectorx32229 (Array Int Int)) ($i27224 Int) ($found31228 Int))
    (=> (and ($main_sum18 $i27224 $n28225 $pos29226 $element30227 $found31228 $vectorx32229 $x33230))
        ($main_if17 $i27224 $n28225 $pos29226 $element30227 $found31228 $vectorx32229 $x33230))))

; if else
(assert
  (forall (($n28211 Int) ($pos29212 Int) ($element30213 Int) ($x33216 Int) ($vectorx32215 (Array Int Int)) ($found31214 Int) ($i27210 Int))
    (=> (and (= $found31214 0)
             ($main_if16 $i27210 $n28211 $pos29212 $element30213 $found31214 $vectorx32215 $x33216))
        ($main_if17 $i27210 $n28211 $pos29212 $element30213 $found31214 $vectorx32215 $x33216))))

(check-sat)
