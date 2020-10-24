(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum397 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv396 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv395 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if126 (Int) Bool)
(declare-fun $main_sum396 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum395 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv397 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5138 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5138))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if126 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5139 Int))
    (=> (and ($__VERIFIER_assert_if126 cond5139))
        (__VERIFIER_assert cond5139))))

; loop entry $main_inv395
(assert
  (forall (($a480 (Array Int Int)) ($b481 (Array Int Int)) ($i482 Int) ($j483 Int))
    (=> (and (= $j483 0)
             (= $i482 0))
        ($main_inv395 $a480 $b481 $i482 $j483))))

; loop term $main_sum395
(assert
  (forall (($a4805140 (Array Int Int)) ($b4815141 (Array Int Int)) ($i4825142 Int) ($j4835143 Int))
    (=> (and (not (< $i4825142 100000))
             ($main_inv395 $a4805140 $b4815141 $i4825142 $j4835143))
        ($main_sum395 $a4805140 $b4815141 $i4825142 $j4835143))))

; forwards $main_inv395
(assert
  (forall (($a4805140 (Array Int Int)) ($i4825142 Int) ($j4835143 Int) ($int5144 Int) ($b4815141 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int5144)
             (<= $int5144 2147483647)
             (< $i4825142 100000)
             ($main_inv395 $a4805140 $b4815141 $i4825142 $j4835143))
        ($main_inv395 $a4805140 (store $b4815141 $i4825142 $int5144) (+ $i4825142 1) $j4835143))))

; loop entry $main_inv396
(assert
  (forall (($a4805145 (Array Int Int)) ($b4815146 (Array Int Int)) ($j4835148 Int) ($i4825147 Int))
    (=> (and ($main_sum395 $a4805145 $b4815146 $i4825147 $j4835148))
        ($main_inv396 $a4805145 $b4815146 1 $j4835148))))

; loop term $main_sum396
(assert
  (forall (($a4805149 (Array Int Int)) ($b4815150 (Array Int Int)) ($i4825151 Int) ($j4835152 Int))
    (=> (and (not (< $i4825151 100000))
             ($main_inv396 $a4805149 $b4815150 $i4825151 $j4835152))
        ($main_sum396 $a4805149 $b4815150 $i4825151 $j4835152))))

; forwards $main_inv396
(assert
  (forall (($a4805149 (Array Int Int)) ($j4835152 Int) ($b4815150 (Array Int Int)) ($i4825151 Int))
    (=> (and (< $i4825151 100000)
             ($main_inv396 $a4805149 $b4815150 $i4825151 $j4835152))
        ($main_inv396 (store $a4805149 $j4835152 (select $b4815150 $i4825151)) $b4815150 (+ $i4825151 7) (+ $j4835152 1)))))

; loop entry $main_inv397
(assert
  (forall (($a4805153 (Array Int Int)) ($b4815154 (Array Int Int)) ($i4825155 Int) ($j4835156 Int))
    (=> (and ($main_sum396 $a4805153 $b4815154 $i4825155 $j4835156))
        ($main_inv397 $a4805153 $b4815154 1 0))))

; loop term $main_sum397
(assert
  (forall (($a4805157 (Array Int Int)) ($b4815158 (Array Int Int)) ($i4825159 Int) ($j4835160 Int))
    (=> (and (not (< $i4825159 100000))
             ($main_inv397 $a4805157 $b4815158 $i4825159 $j4835160))
        ($main_sum397 $a4805157 $b4815158 $i4825159 $j4835160))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4805157 (Array Int Int)) ($j4835160 Int) ($b4815158 (Array Int Int)) ($i4825159 Int))
    (=> (and (< $i4825159 100000)
             ($main_inv397 $a4805157 $b4815158 $i4825159 $j4835160))
        ($__VERIFIER_assert_pre (ite (= (select $a4805157 $j4835160) (select $b4815158 (+ (* 7 $j4835160) 1))) 1 0)))))

; forwards $main_inv397
(assert
  (forall (($a4805157 (Array Int Int)) ($b4815158 (Array Int Int)) ($i4825159 Int) ($j4835160 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4805157 $j4835160) (select $b4815158 (+ (* 7 $j4835160) 1))) 1 0))
             (< $i4825159 100000)
             ($main_inv397 $a4805157 $b4815158 $i4825159 $j4835160))
        ($main_inv397 $a4805157 $b4815158 (+ $i4825159 7) (+ $j4835160 1)))))

(check-sat)
