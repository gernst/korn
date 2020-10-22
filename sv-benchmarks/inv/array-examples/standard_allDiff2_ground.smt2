(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum78 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if36 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if35 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv77 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum79 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv79 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv78 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv80 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if34 (Int) Bool)
(declare-fun $main_sum77 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum80 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv81 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum81 ((Array Int Int) Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1177 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1177))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if34 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1178 Int))
    (=> (and ($__VERIFIER_assert_if34 cond1178))
        (__VERIFIER_assert cond1178))))

; loop entry $main_inv77
(assert
  (forall (($a135 (Array Int Int)) ($x139 Int) ($j138 Int) ($y140 Int) ($r137 Int))
    (=> (and (= $r137 1))
        ($main_inv77 $a135 0 $r137 $j138 $x139 $y140))))

; loop term $main_sum77
(assert
  (forall (($i1361180 Int) ($y1401184 Int) ($j1381182 Int) ($a1351179 (Array Int Int)) ($x1391183 Int) ($r1371181 Int))
    (=> (and (not (< $i1361180 100000))
             ($main_inv77 $a1351179 $i1361180 $r1371181 $j1381182 $x1391183 $y1401184))
        ($main_sum77 $a1351179 $i1361180 $r1371181 $j1381182 $x1391183 $y1401184))))

; forwards $main_inv77
(assert
  (forall (($i1361180 Int) ($int1185 Int) ($y1401184 Int) ($j1381182 Int) ($a1351179 (Array Int Int)) ($x1391183 Int) ($r1371181 Int))
    (=> (and (<= (- 2147483648) $int1185)
             (<= $int1185 2147483647)
             (< $i1361180 100000)
             ($main_inv77 $a1351179 $i1361180 $r1371181 $j1381182 $x1391183 $y1401184))
        ($main_inv77 (store $a1351179 $i1361180 $int1185) (+ $i1361180 1) $r1371181 $j1381182 $x1391183 $y1401184))))

; loop entry $main_inv78
(assert
  (forall (($j1381189 Int) ($y1401191 Int) ($x1391190 Int) ($i1361187 Int) ($a1351186 (Array Int Int)) ($r1371188 Int))
    (=> (and ($main_sum77 $a1351186 $i1361187 $r1371188 $j1381189 $x1391190 $y1401191))
        ($main_inv78 $a1351186 1 $r1371188 $j1381189 $x1391190 $y1401191))))

; loop term $main_sum78
(assert
  (forall (($j1381195 Int) ($i1361193 Int) ($y1401197 Int) ($r1371194 Int) ($a1351192 (Array Int Int)) ($x1391196 Int))
    (=> (and (not (and (< $i1361193 100000) (not (= $r1371194 0))))
             ($main_inv78 $a1351192 $i1361193 $r1371194 $j1381195 $x1391196 $y1401197))
        ($main_sum78 $a1351192 $i1361193 $r1371194 $j1381195 $x1391196 $y1401197))))

; loop entry $main_inv79
(assert
  (forall (($j1381195 Int) ($i1361193 Int) ($y1401197 Int) ($r1371194 Int) ($a1351192 (Array Int Int)) ($x1391196 Int))
    (=> (and (< $i1361193 100000)
             (not (= $r1371194 0))
             ($main_inv78 $a1351192 $i1361193 $r1371194 $j1381195 $x1391196 $y1401197))
        ($main_inv79 $a1351192 $i1361193 $r1371194 (- $i1361193 1) $x1391196 $y1401197))))

; loop term $main_sum79
(assert
  (forall (($i1361199 Int) ($a1351198 (Array Int Int)) ($r1371200 Int) ($j1381201 Int) ($x1391202 Int) ($y1401203 Int))
    (=> (and (not (and (>= $j1381201 0) (not (= $r1371200 0))))
             ($main_inv79 $a1351198 $i1361199 $r1371200 $j1381201 $x1391202 $y1401203))
        ($main_sum79 $a1351198 $i1361199 $r1371200 $j1381201 $x1391202 $y1401203))))

; if then
(assert
  (forall (($i1361199 Int) ($a1351198 (Array Int Int)) ($r1371200 Int) ($j1381201 Int) ($x1391202 Int) ($y1401203 Int))
    (=> (and (= (select $a1351198 $i1361199) (select $a1351198 $j1381201))
             (>= $j1381201 0)
             (not (= $r1371200 0))
             ($main_inv79 $a1351198 $i1361199 $r1371200 $j1381201 $x1391202 $y1401203))
        ($main_if35 $a1351198 $i1361199 1 $j1381201 $x1391202 $y1401203))))

; if else
(assert
  (forall (($i1361199 Int) ($a1351198 (Array Int Int)) ($r1371200 Int) ($j1381201 Int) ($x1391202 Int) ($y1401203 Int))
    (=> (and (not (= (select $a1351198 $i1361199) (select $a1351198 $j1381201)))
             (>= $j1381201 0)
             (not (= $r1371200 0))
             ($main_inv79 $a1351198 $i1361199 $r1371200 $j1381201 $x1391202 $y1401203))
        ($main_if35 $a1351198 $i1361199 $r1371200 $j1381201 $x1391202 $y1401203))))

; forwards $main_inv79
(assert
  (forall (($y1401209 Int) ($i1361205 Int) ($j1381207 Int) ($r1371206 Int) ($a1351204 (Array Int Int)) ($x1391208 Int))
    (=> (and ($main_if35 $a1351204 $i1361205 $r1371206 $j1381207 $x1391208 $y1401209))
        ($main_inv79 $a1351204 $i1361205 $r1371206 (- $j1381207 1) $x1391208 $y1401209))))

; forwards $main_inv78
(assert
  (forall (($r1371212 Int) ($i1361211 Int) ($x1391214 Int) ($a1351210 (Array Int Int)) ($y1401215 Int) ($j1381213 Int))
    (=> (and ($main_sum79 $a1351210 $i1361211 $r1371212 $j1381213 $x1391214 $y1401215))
        ($main_inv78 $a1351210 (+ $i1361211 1) $r1371212 $j1381213 $x1391214 $y1401215))))

; loop entry $main_inv80
(assert
  (forall (($a1351216 (Array Int Int)) ($x1391220 Int) ($y1401221 Int) ($i1361217 Int) ($r1371218 Int) ($j1381219 Int))
    (=> (and (not (= $r1371218 0))
             ($main_sum78 $a1351216 $i1361217 $r1371218 $j1381219 $x1391220 $y1401221))
        ($main_inv80 $a1351216 $i1361217 $r1371218 $j1381219 0 $y1401221))))

; loop term $main_sum80
(assert
  (forall (($i1361223 Int) ($r1371224 Int) ($a1351222 (Array Int Int)) ($y1401227 Int) ($x1391226 Int) ($j1381225 Int))
    (=> (and (not (< $x1391226 100000))
             ($main_inv80 $a1351222 $i1361223 $r1371224 $j1381225 $x1391226 $y1401227))
        ($main_sum80 $a1351222 $i1361223 $r1371224 $j1381225 $x1391226 $y1401227))))

; loop entry $main_inv81
(assert
  (forall (($i1361223 Int) ($r1371224 Int) ($a1351222 (Array Int Int)) ($y1401227 Int) ($x1391226 Int) ($j1381225 Int))
    (=> (and (< $x1391226 100000)
             ($main_inv80 $a1351222 $i1361223 $r1371224 $j1381225 $x1391226 $y1401227))
        ($main_inv81 $a1351222 $i1361223 $r1371224 $j1381225 $x1391226 (+ $x1391226 1)))))

; loop term $main_sum81
(assert
  (forall (($a1351228 (Array Int Int)) ($j1381231 Int) ($y1401233 Int) ($i1361229 Int) ($x1391232 Int) ($r1371230 Int))
    (=> (and (not (< $y1401233 100000))
             ($main_inv81 $a1351228 $i1361229 $r1371230 $j1381231 $x1391232 $y1401233))
        ($main_sum81 $a1351228 $i1361229 $r1371230 $j1381231 $x1391232 $y1401233))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1351228 (Array Int Int)) ($j1381231 Int) ($y1401233 Int) ($i1361229 Int) ($x1391232 Int) ($r1371230 Int))
    (=> (and (< $y1401233 100000)
             ($main_inv81 $a1351228 $i1361229 $r1371230 $j1381231 $x1391232 $y1401233))
        ($__VERIFIER_assert_pre (ite (not (= (select $a1351228 $x1391232) (select $a1351228 $y1401233))) 1 0)))))

; forwards $main_inv81
(assert
  (forall (($a1351228 (Array Int Int)) ($j1381231 Int) ($y1401233 Int) ($i1361229 Int) ($x1391232 Int) ($r1371230 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a1351228 $x1391232) (select $a1351228 $y1401233))) 1 0))
             (< $y1401233 100000)
             ($main_inv81 $a1351228 $i1361229 $r1371230 $j1381231 $x1391232 $y1401233))
        ($main_inv81 $a1351228 $i1361229 $r1371230 $j1381231 $x1391232 (+ $y1401233 1)))))

; forwards $main_inv80
(assert
  (forall (($j1381237 Int) ($y1401239 Int) ($a1351234 (Array Int Int)) ($r1371236 Int) ($i1361235 Int) ($x1391238 Int))
    (=> (and ($main_sum81 $a1351234 $i1361235 $r1371236 $j1381237 $x1391238 $y1401239))
        ($main_inv80 $a1351234 $i1361235 $r1371236 $j1381237 (+ $x1391238 1) $y1401239))))

; if then
(assert
  (forall (($a1351240 (Array Int Int)) ($i1361241 Int) ($r1371242 Int) ($y1401245 Int) ($j1381243 Int) ($x1391244 Int))
    (=> (and ($main_sum80 $a1351240 $i1361241 $r1371242 $j1381243 $x1391244 $y1401245))
        ($main_if36 $a1351240 $i1361241 $r1371242 $j1381243 $x1391244 $y1401245))))

; if else
(assert
  (forall (($a1351216 (Array Int Int)) ($x1391220 Int) ($y1401221 Int) ($i1361217 Int) ($r1371218 Int) ($j1381219 Int))
    (=> (and (= $r1371218 0)
             ($main_sum78 $a1351216 $i1361217 $r1371218 $j1381219 $x1391220 $y1401221))
        ($main_if36 $a1351216 $i1361217 $r1371218 $j1381219 $x1391220 $y1401221))))

(check-sat)
