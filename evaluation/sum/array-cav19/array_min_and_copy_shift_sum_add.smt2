(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum8 (Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv8 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_sum10 (Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum9 (Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv9 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv10 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if9 (Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if8 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if7 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if7 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond106 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if7 cond cond106))
        (assume_abort_if_not cond106))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond107 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond107))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if8 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond108 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if8 cond cond108))
        (__VERIFIER_assert cond108))))

; assume_abort_if_not precondition
(assert
  (forall (($j15 Int) ($int109 Int))
    (=> (and (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($assume_abort_if_not_pre (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($k16 Int) ($int110 Int) ($int109 Int) ($N17 Int) ($j15 Int))
    (=> (and (= $N17 $int110)
             (<= (- 2147483648) $int110)
             (<= $int110 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($assume_abort_if_not_pre (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0)))))

; loop entry $main_inv8
(assert
  (forall (($a18 (Array Int Int)) ($k16 Int) ($int110 Int) ($int109 Int) ($N17 Int) ($b19 (Array Int Int)) ($j15 Int))
    (=> (and (assume_abort_if_not (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0))
             (= $N17 $int110)
             (<= (- 2147483648) $int110)
             (<= $int110 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($main_inv8 0 $j15 $k16 $N17 $a18 $b19))))

; loop term $main_sum8
(assert
  (forall (($k16113 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($i14111 Int) ($N17114 Int))
    (=> (and (not (< $i14111 $N17114)))
        ($main_sum8 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116))))

; assume_abort_if_not precondition
(assert
  (forall (($k16113 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($i14111 Int) ($N17114 Int))
    (=> (and (< $i14111 $N17114)
             ($main_inv8 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116))
        ($assume_abort_if_not_pre (ite (and (< (select $a18115 $i14111) 10000) (> (select $a18115 $i14111) (- 10000))) 1 0)))))

; if then
(assert
  (forall (($k16113 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($i14111 Int) ($N17114 Int))
    (=> (and (> $j15112 (select $a18115 $i14111))
             (assume_abort_if_not (ite (and (< (select $a18115 $i14111) 10000) (> (select $a18115 $i14111) (- 10000))) 1 0))
             (< $i14111 $N17114)
             ($main_inv8 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116))
        ($main_if9 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14111 (select $a18115 $i14111) $k16113 $N17114 $a18115 $b19116))))

; if else
(assert
  (forall (($k16113 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($i14111 Int) ($N17114 Int))
    (=> (and (not (> $j15112 (select $a18115 $i14111)))
             (assume_abort_if_not (ite (and (< (select $a18115 $i14111) 10000) (> (select $a18115 $i14111) (- 10000))) 1 0))
             (< $i14111 $N17114)
             ($main_inv8 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116))
        ($main_if9 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116))))

; forwards $main_inv8
(assert
  (forall (($k16113 Int) ($a18121 (Array Int Int)) ($N17120 Int) ($b19122 (Array Int Int)) ($k16119 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($i14111 Int) ($N17114 Int) ($j15118 Int) ($i14117 Int))
    (=> (and ($main_if9 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14117 $j15118 $k16119 $N17120 $a18121 $b19122))
        ($main_inv8 (+ $i14117 1) $j15118 $k16119 $N17120 $a18121 $b19122))))

; backwards $main_sum8
(assert
  (forall (($k16113 Int) ($b19128 (Array Int Int)) ($a18121 (Array Int Int)) ($b19122 (Array Int Int)) ($k16119 Int) ($b19116 (Array Int Int)) ($j15112 Int) ($a18115 (Array Int Int)) ($a18127 (Array Int Int)) ($i14111 Int) ($N17114 Int) ($N17126 Int) ($j15118 Int) ($i14117 Int) ($N17120 Int) ($j15124 Int) ($k16125 Int) ($i14123 Int))
    (=> (and ($main_sum8 (+ $i14117 1) $j15118 $k16119 $N17120 $a18121 $b19122 $i14123 $j15124 $k16125 $N17126 $a18127 $b19128)
             ($main_if9 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14117 $j15118 $k16119 $N17120 $a18121 $b19122))
        ($main_sum8 $i14111 $j15112 $k16113 $N17114 $a18115 $b19116 $i14123 $j15124 $k16125 $N17126 $a18127 $b19128))))

; loop entry $main_inv9
(assert
  (forall (($k16 Int) ($int110 Int) ($b19134 (Array Int Int)) ($i14129 Int) ($N17 Int) ($j15 Int) ($j15130 Int) ($k16131 Int) ($a18 (Array Int Int)) ($int109 Int) ($N17132 Int) ($b19 (Array Int Int)) ($a18133 (Array Int Int)))
    (=> (and ($main_sum8 0 $j15 $k16 $N17 $a18 $b19 $i14129 $j15130 $k16131 $N17132 $a18133 $b19134)
             (assume_abort_if_not (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0))
             (= $N17 $int110)
             (<= (- 2147483648) $int110)
             (<= $int110 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($main_inv9 0 $j15130 $k16131 $N17132 $a18133 $b19134))))

; loop term $main_sum9
(assert
  (forall (($i14135 Int) ($N17138 Int) ($a18139 (Array Int Int)) ($k16137 Int) ($b19140 (Array Int Int)) ($j15136 Int))
    (=> (and (not (< $i14135 $N17138)))
        ($main_sum9 $i14135 $j15136 $k16137 $N17138 $a18139 $b19140 $i14135 $j15136 $k16137 $N17138 $a18139 $b19140))))

; forwards $main_inv9
(assert
  (forall (($i14135 Int) ($N17138 Int) ($a18139 (Array Int Int)) ($k16137 Int) ($b19140 (Array Int Int)) ($j15136 Int))
    (=> (and (< $i14135 $N17138)
             ($main_inv9 $i14135 $j15136 $k16137 $N17138 $a18139 $b19140))
        ($main_inv9 (+ $i14135 1) $j15136 $k16137 $N17138 $a18139 (store $b19140 $i14135 (- (select $a18139 $i14135) $j15136))))))

; backwards $main_sum9
(assert
  (forall (($N17138 Int) ($a18145 (Array Int Int)) ($i14141 Int) ($j15142 Int) ($a18139 (Array Int Int)) ($k16137 Int) ($N17144 Int) ($k16143 Int) ($i14135 Int) ($b19146 (Array Int Int)) ($b19140 (Array Int Int)) ($j15136 Int))
    (=> (and ($main_sum9 (+ $i14135 1) $j15136 $k16137 $N17138 $a18139 (store $b19140 $i14135 (- (select $a18139 $i14135) $j15136)) $i14141 $j15142 $k16143 $N17144 $a18145 $b19146)
             (< $i14135 $N17138))
        ($main_sum9 $i14135 $j15136 $k16137 $N17138 $a18139 $b19140 $i14141 $j15142 $k16143 $N17144 $a18145 $b19146))))

; loop entry $main_inv10
(assert
  (forall (($N17150 Int) ($j15148 Int) ($k16 Int) ($k16149 Int) ($int110 Int) ($b19134 (Array Int Int)) ($i14147 Int) ($i14129 Int) ($N17 Int) ($b19152 (Array Int Int)) ($j15 Int) ($a18151 (Array Int Int)) ($j15130 Int) ($k16131 Int) ($a18 (Array Int Int)) ($int109 Int) ($N17132 Int) ($b19 (Array Int Int)) ($a18133 (Array Int Int)))
    (=> (and ($main_sum9 0 $j15130 $k16131 $N17132 $a18133 $b19134 $i14147 $j15148 $k16149 $N17150 $a18151 $b19152)
             ($main_sum8 0 $j15 $k16 $N17 $a18 $b19 $i14129 $j15130 $k16131 $N17132 $a18133 $b19134)
             (assume_abort_if_not (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0))
             (= $N17 $int110)
             (<= (- 2147483648) $int110)
             (<= $int110 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($main_inv10 0 $j15148 $k16149 $N17150 $a18151 $b19152))))

; loop term $main_sum10
(assert
  (forall (($i14153 Int) ($k16155 Int) ($b19158 (Array Int Int)) ($j15154 Int) ($a18157 (Array Int Int)) ($N17156 Int))
    (=> (and (not (< $i14153 $N17156)))
        ($main_sum10 $i14153 $j15154 $k16155 $N17156 $a18157 $b19158 $i14153 $j15154 $k16155 $N17156 $a18157 $b19158))))

; forwards $main_inv10
(assert
  (forall (($i14153 Int) ($k16155 Int) ($b19158 (Array Int Int)) ($j15154 Int) ($a18157 (Array Int Int)) ($N17156 Int))
    (=> (and (< $i14153 $N17156)
             ($main_inv10 $i14153 $j15154 $k16155 $N17156 $a18157 $b19158))
        ($main_inv10 (+ $i14153 1) $j15154 (+ (+ $k16155 (select $b19158 $i14153)) $i14153) $N17156 $a18157 $b19158))))

; backwards $main_sum10
(assert
  (forall (($i14159 Int) ($k16161 Int) ($N17162 Int) ($a18163 (Array Int Int)) ($b19164 (Array Int Int)) ($i14153 Int) ($k16155 Int) ($j15160 Int) ($b19158 (Array Int Int)) ($j15154 Int) ($a18157 (Array Int Int)) ($N17156 Int))
    (=> (and ($main_sum10 (+ $i14153 1) $j15154 (+ (+ $k16155 (select $b19158 $i14153)) $i14153) $N17156 $a18157 $b19158 $i14159 $j15160 $k16161 $N17162 $a18163 $b19164)
             (< $i14153 $N17156))
        ($main_sum10 $i14153 $j15154 $k16155 $N17156 $a18157 $b19158 $i14159 $j15160 $k16161 $N17162 $a18163 $b19164))))

; __VERIFIER_assert precondition
(assert
  (forall (($N17150 Int) ($k16149 Int) ($int110 Int) ($b19134 (Array Int Int)) ($j15166 Int) ($i14147 Int) ($i14129 Int) ($N17 Int) ($j15 Int) ($j15130 Int) ($a18169 (Array Int Int)) ($j15148 Int) ($k16131 Int) ($a18 (Array Int Int)) ($N17168 Int) ($i14165 Int) ($k16 Int) ($int109 Int) ($N17132 Int) ($b19 (Array Int Int)) ($a18133 (Array Int Int)) ($k16167 Int) ($b19152 (Array Int Int)) ($b19170 (Array Int Int)) ($a18151 (Array Int Int)))
    (=> (and ($main_sum10 0 $j15148 $k16149 $N17150 $a18151 $b19152 $i14165 $j15166 $k16167 $N17168 $a18169 $b19170)
             ($main_sum9 0 $j15130 $k16131 $N17132 $a18133 $b19134 $i14147 $j15148 $k16149 $N17150 $a18151 $b19152)
             ($main_sum8 0 $j15 $k16 $N17 $a18 $b19 $i14129 $j15130 $k16131 $N17132 $a18133 $b19134)
             (assume_abort_if_not (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0))
             (= $N17 $int110)
             (<= (- 2147483648) $int110)
             (<= $int110 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int109)
             (<= (- 2147483648) $int109)
             (<= $int109 2147483647))
        ($__VERIFIER_assert_pre (ite (>= $k16167 0) 1 0)))))

(check-sat)
