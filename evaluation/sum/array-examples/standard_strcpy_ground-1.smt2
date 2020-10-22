(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if118 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum371 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum373 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv371 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv373 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv372 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum372 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7111 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7111))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if118 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7112 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if118 cond cond7112))
        (__VERIFIER_assert cond7112))))

; loop entry $main_inv371
(assert
  (forall (($dst448 (Array Int Int)) ($i449 Int) ($j450 Int) ($x451 Int) ($src447 (Array Int Int)))
    (=> (and (= $j450 0)
             (= $i449 0))
        ($main_inv371 $src447 $dst448 $i449 $j450 $x451))))

; loop term $main_sum371
(assert
  (forall (($src4477113 (Array Int Int)) ($dst4487114 (Array Int Int)) ($x4517117 Int) ($j4507116 Int) ($i4497115 Int))
    (=> (and (not (< $j4507116 100000)))
        ($main_sum371 $src4477113 $dst4487114 $i4497115 $j4507116 $x4517117 $src4477113 $dst4487114 $i4497115 $j4507116 $x4517117))))

; forwards $main_inv371
(assert
  (forall (($src4477113 (Array Int Int)) ($dst4487114 (Array Int Int)) ($x4517117 Int) ($j4507116 Int) ($int7118 Int) ($i4497115 Int))
    (=> (and (<= (- 2147483648) $int7118)
             (<= $int7118 2147483647)
             (< $j4507116 100000)
             ($main_inv371 $src4477113 $dst4487114 $i4497115 $j4507116 $x4517117))
        ($main_inv371 (store $src4477113 $j4507116 $int7118) $dst4487114 $i4497115 (+ $j4507116 1) $x4517117))))

; backwards $main_sum371
(assert
  (forall (($dst4487120 (Array Int Int)) ($j4507122 Int) ($x4517123 Int) ($src4477119 (Array Int Int)) ($src4477113 (Array Int Int)) ($dst4487114 (Array Int Int)) ($j4507116 Int) ($int7118 Int) ($i4497115 Int) ($x4517117 Int) ($i4497121 Int))
    (=> (and ($main_sum371 (store $src4477113 $j4507116 $int7118) $dst4487114 $i4497115 (+ $j4507116 1) $x4517117 $src4477119 $dst4487120 $i4497121 $j4507122 $x4517123)
             (<= (- 2147483648) $int7118)
             (<= $int7118 2147483647)
             (< $j4507116 100000))
        ($main_sum371 $src4477113 $dst4487114 $i4497115 $j4507116 $x4517117 $src4477119 $dst4487120 $i4497121 $j4507122 $x4517123))))

; loop entry $main_inv372
(assert
  (forall (($dst448 (Array Int Int)) ($i4497126 Int) ($dst4487125 (Array Int Int)) ($i449 Int) ($j450 Int) ($x451 Int) ($src4477124 (Array Int Int)) ($j4507127 Int) ($src447 (Array Int Int)) ($x4517128 Int))
    (=> (and ($main_sum371 $src447 $dst448 $i449 $j450 $x451 $src4477124 $dst4487125 $i4497126 $j4507127 $x4517128)
             (= $j450 0)
             (= $i449 0))
        ($main_inv372 $src4477124 $dst4487125 $i4497126 $j4507127 $x4517128))))

; loop term $main_sum372
(assert
  (forall (($src4477129 (Array Int Int)) ($x4517133 Int) ($j4507132 Int) ($dst4487130 (Array Int Int)) ($i4497131 Int))
    (=> (and (not (and (< $i4497131 100000) (not (= (select $src4477129 $i4497131) 0)))))
        ($main_sum372 $src4477129 $dst4487130 $i4497131 $j4507132 $x4517133 $src4477129 $dst4487130 $i4497131 $j4507132 $x4517133))))

; forwards $main_inv372
(assert
  (forall (($src4477129 (Array Int Int)) ($x4517133 Int) ($j4507132 Int) ($dst4487130 (Array Int Int)) ($i4497131 Int))
    (=> (and (< $i4497131 100000)
             (not (= (select $src4477129 $i4497131) 0))
             ($main_inv372 $src4477129 $dst4487130 $i4497131 $j4507132 $x4517133))
        ($main_inv372 $src4477129 (store $dst4487130 $i4497131 (select $src4477129 $i4497131)) (+ $i4497131 1) $j4507132 $x4517133))))

; backwards $main_sum372
(assert
  (forall (($src4477134 (Array Int Int)) ($src4477129 (Array Int Int)) ($dst4487135 (Array Int Int)) ($j4507137 Int) ($dst4487130 (Array Int Int)) ($i4497131 Int) ($i4497136 Int) ($x4517133 Int) ($j4507132 Int) ($x4517138 Int))
    (=> (and ($main_sum372 $src4477129 (store $dst4487130 $i4497131 (select $src4477129 $i4497131)) (+ $i4497131 1) $j4507132 $x4517133 $src4477134 $dst4487135 $i4497136 $j4507137 $x4517138)
             (< $i4497131 100000)
             (not (= (select $src4477129 $i4497131) 0)))
        ($main_sum372 $src4477129 $dst4487130 $i4497131 $j4507132 $x4517133 $src4477134 $dst4487135 $i4497136 $j4507137 $x4517138))))

; loop entry $main_inv373
(assert
  (forall (($dst448 (Array Int Int)) ($i4497126 Int) ($dst4487125 (Array Int Int)) ($src4477139 (Array Int Int)) ($j4507142 Int) ($x4517143 Int) ($i449 Int) ($j450 Int) ($src4477124 (Array Int Int)) ($j4507127 Int) ($i4497141 Int) ($src447 (Array Int Int)) ($x4517128 Int) ($dst4487140 (Array Int Int)) ($x451 Int))
    (=> (and ($main_sum372 $src4477124 $dst4487125 $i4497126 $j4507127 $x4517128 $src4477139 $dst4487140 $i4497141 $j4507142 $x4517143)
             ($main_sum371 $src447 $dst448 $i449 $j450 $x451 $src4477124 $dst4487125 $i4497126 $j4507127 $x4517128)
             (= $j450 0)
             (= $i449 0))
        ($main_inv373 $src4477139 $dst4487140 $i4497141 $j4507142 0))))

; loop term $main_sum373
(assert
  (forall (($dst4487145 (Array Int Int)) ($i4497146 Int) ($x4517148 Int) ($src4477144 (Array Int Int)) ($j4507147 Int))
    (=> (and (not (< $x4517148 $i4497146)))
        ($main_sum373 $src4477144 $dst4487145 $i4497146 $j4507147 $x4517148 $src4477144 $dst4487145 $i4497146 $j4507147 $x4517148))))

; __VERIFIER_assert precondition
(assert
  (forall (($dst4487145 (Array Int Int)) ($i4497146 Int) ($x4517148 Int) ($src4477144 (Array Int Int)) ($j4507147 Int))
    (=> (and (< $x4517148 $i4497146)
             ($main_inv373 $src4477144 $dst4487145 $i4497146 $j4507147 $x4517148))
        ($__VERIFIER_assert_pre (ite (= (select $dst4487145 $x4517148) (select $src4477144 $x4517148)) 1 0)))))

; forwards $main_inv373
(assert
  (forall (($dst4487145 (Array Int Int)) ($i4497146 Int) ($x4517148 Int) ($src4477144 (Array Int Int)) ($j4507147 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $dst4487145 $x4517148) (select $src4477144 $x4517148)) 1 0))
             (< $x4517148 $i4497146)
             ($main_inv373 $src4477144 $dst4487145 $i4497146 $j4507147 $x4517148))
        ($main_inv373 $src4477144 $dst4487145 $i4497146 $j4507147 (+ $x4517148 1)))))

; backwards $main_sum373
(assert
  (forall (($dst4487145 (Array Int Int)) ($x4517153 Int) ($dst4487150 (Array Int Int)) ($i4497151 Int) ($x4517148 Int) ($src4477144 (Array Int Int)) ($j4507147 Int) ($j4507152 Int) ($i4497146 Int) ($src4477149 (Array Int Int)))
    (=> (and ($main_sum373 $src4477144 $dst4487145 $i4497146 $j4507147 (+ $x4517148 1) $src4477149 $dst4487150 $i4497151 $j4507152 $x4517153)
             (__VERIFIER_assert (ite (= (select $dst4487145 $x4517148) (select $src4477144 $x4517148)) 1 0))
             (< $x4517148 $i4497146))
        ($main_sum373 $src4477144 $dst4487145 $i4497146 $j4507147 $x4517148 $src4477149 $dst4487150 $i4497151 $j4507152 $x4517153))))

(check-sat)
