(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum138 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if545 (Int Int) Bool)
(declare-fun $main_inv139 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum139 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv138 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14170 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14170))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if545 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14171 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if545 cond cond14171))
        (__VERIFIER_assert cond14171))))

; loop entry $main_inv138
(assert
  (forall (($uint14172 Int) ($n489 Int) ($z492 Int) ($y491 Int) ($x490 Int))
    (=> (and (= $y491 0)
             (= $x490 $n489)
             (= $n489 $uint14172)
             (<= 0 $uint14172)
             (<= $uint14172 4294967295))
        ($main_inv138 $n489 $x490 $y491 $z492))))

; loop term $main_sum138
(assert
  (forall (($n48914173 Int) ($x49014174 Int) ($y49114175 Int) ($z49214176 Int))
    (=> (and (not (> $x49014174 0)))
        ($main_sum138 $n48914173 $x49014174 $y49114175 $z49214176 $n48914173 $x49014174 $y49114175 $z49214176))))

; forwards $main_inv138
(assert
  (forall (($n48914173 Int) ($x49014174 Int) ($y49114175 Int) ($z49214176 Int))
    (=> (and (> $x49014174 0)
             ($main_inv138 $n48914173 $x49014174 $y49114175 $z49214176))
        ($main_inv138 $n48914173 (- $x49014174 1) (+ $y49114175 1) $z49214176))))

; backwards $main_sum138
(assert
  (forall (($n48914173 Int) ($z49214176 Int) ($n48914177 Int) ($y49114179 Int) ($y49114175 Int) ($x49014178 Int) ($z49214180 Int) ($x49014174 Int))
    (=> (and ($main_sum138 $n48914173 (- $x49014174 1) (+ $y49114175 1) $z49214176 $n48914177 $x49014178 $y49114179 $z49214180)
             (> $x49014174 0))
        ($main_sum138 $n48914173 $x49014174 $y49114175 $z49214176 $n48914177 $x49014178 $y49114179 $z49214180))))

; loop entry $main_inv139
(assert
  (forall (($uint14172 Int) ($z49214184 Int) ($y49114183 Int) ($z492 Int) ($y491 Int) ($x490 Int) ($n48914181 Int) ($x49014182 Int) ($n489 Int))
    (=> (and ($main_sum138 $n489 $x490 $y491 $z492 $n48914181 $x49014182 $y49114183 $z49214184)
             (= $y491 0)
             (= $x490 $n489)
             (= $n489 $uint14172)
             (<= 0 $uint14172)
             (<= $uint14172 4294967295))
        ($main_inv139 $n48914181 $x49014182 $y49114183 $y49114183))))

; loop term $main_sum139
(assert
  (forall (($n48914185 Int) ($x49014186 Int) ($y49114187 Int) ($z49214188 Int))
    (=> (and (not (> $z49214188 0)))
        ($main_sum139 $n48914185 $x49014186 $y49114187 $z49214188 $n48914185 $x49014186 $y49114187 $z49214188))))

; forwards $main_inv139
(assert
  (forall (($n48914185 Int) ($x49014186 Int) ($y49114187 Int) ($z49214188 Int))
    (=> (and (> $z49214188 0)
             ($main_inv139 $n48914185 $x49014186 $y49114187 $z49214188))
        ($main_inv139 $n48914185 (+ $x49014186 1) $y49114187 (- $z49214188 1)))))

; backwards $main_sum139
(assert
  (forall (($n48914185 Int) ($n48914189 Int) ($x49014190 Int) ($x49014186 Int) ($z49214192 Int) ($z49214188 Int) ($y49114191 Int) ($y49114187 Int))
    (=> (and ($main_sum139 $n48914185 (+ $x49014186 1) $y49114187 (- $z49214188 1) $n48914189 $x49014190 $y49114191 $z49214192)
             (> $z49214188 0))
        ($main_sum139 $n48914185 $x49014186 $y49114187 $z49214188 $n48914189 $x49014190 $y49114191 $z49214192))))

; __VERIFIER_assert precondition
(assert
  (forall (($uint14172 Int) ($n48914193 Int) ($z49214184 Int) ($y49114183 Int) ($y49114195 Int) ($z492 Int) ($y491 Int) ($x490 Int) ($n48914181 Int) ($x49014194 Int) ($z49214196 Int) ($x49014182 Int) ($n489 Int))
    (=> (and ($main_sum139 $n48914181 $x49014182 $y49114183 $y49114183 $n48914193 $x49014194 $y49114195 $z49214196)
             ($main_sum138 $n489 $x490 $y491 $z492 $n48914181 $x49014182 $y49114183 $z49214184)
             (= $y491 0)
             (= $x490 $n489)
             (= $n489 $uint14172)
             (<= 0 $uint14172)
             (<= $uint14172 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x49014194 $n48914193) 1 0)))))

(check-sat)
