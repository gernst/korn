(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum220 (Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if616 (Int) Bool)
(declare-fun $main_if619 (Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if617 (Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if618 (Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if615 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv220 (Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if621 (Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if620 (Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if615 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14114 Int))
    (=> (and ($assume_abort_if_not_if615 cond14114))
        (assume_abort_if_not cond14114))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14115 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14115))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if616 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14116 Int))
    (=> (and ($__VERIFIER_assert_if616 cond14116))
        (__VERIFIER_assert cond14116))))

; if else
(assert
  (forall (($v4613 Int) ($int14118 Int) ($j610 Int) ($v3612 Int) ($k609 Int) ($l611 Int) ($n607 Int) ($i608 Int))
    (=> (and (<= $int14118 20000001)
             (<= (- 2147483648) $int14118)
             (<= $int14118 2147483647)
             (= $v4613 0)
             (= $v3612 0)
             (= $l611 0)
             (= $j610 0)
             (= $k609 0)
             (= $i608 0)
             (= $n607 0))
        ($main_if617 $int14118 $i608 $k609 $j610 $l611 $v3612 $v4613))))

; loop entry $main_inv220
(assert
  (forall (($v461314125 Int) ($j61014122 Int) ($n60714119 Int) ($l61114123 Int) ($k60914121 Int) ($v361214124 Int) ($i60814120 Int))
    (=> (and ($main_if617 $n60714119 $i60814120 $k60914121 $j61014122 $l61114123 $v361214124 $v461314125))
        ($main_inv220 $n60714119 $i60814120 $k60914121 $j61014122 $l61114123 $v361214124 $v461314125))))

; loop term $main_sum220
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (not (< $l61114130 $n60714126))
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_sum220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))))

; if then
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (= (mod $l61114130 2) 0)
             (not (= (mod $l61114130 3) 0))
             (not (= (mod $l61114130 4) 0))
             (not (= (mod $l61114130 5) 0))
             (< $l61114130 $n60714126)
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_if618 $n60714126 $i60814127 $k60914128 (+ $j61014129 1) $l61114130 $v361214131 $v461314132))))

; if else
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (not (= (mod $l61114130 2) 0))
             (not (= (mod $l61114130 3) 0))
             (not (= (mod $l61114130 4) 0))
             (not (= (mod $l61114130 5) 0))
             (< $l61114130 $n60714126)
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_if618 $n60714126 $i60814127 (+ $k60914128 1) $j61014129 $l61114130 $v361214131 $v461314132))))

; if then
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (= (mod $l61114130 3) 0)
             (not (= (mod $l61114130 4) 0))
             (not (= (mod $l61114130 5) 0))
             (< $l61114130 $n60714126)
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_if619 $n60714126 (+ $i60814127 1) $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))))

; if else
(assert
  (forall (($l61114137 Int) ($v361214138 Int) ($n60714133 Int) ($j61014136 Int) ($v461314139 Int) ($k60914135 Int) ($i60814134 Int))
    (=> (and ($main_if618 $n60714133 $i60814134 $k60914135 $j61014136 $l61114137 $v361214138 $v461314139))
        ($main_if619 $n60714133 $i60814134 $k60914135 $j61014136 $l61114137 $v361214138 $v461314139))))

; if then
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (= (mod $l61114130 4) 0)
             (not (= (mod $l61114130 5) 0))
             (< $l61114130 $n60714126)
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_if620 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 (+ $v461314132 1)))))

; if else
(assert
  (forall (($v461314146 Int) ($l61114144 Int) ($k60914142 Int) ($j61014143 Int) ($i60814141 Int) ($n60714140 Int) ($v361214145 Int))
    (=> (and ($main_if619 $n60714140 $i60814141 $k60914142 $j61014143 $l61114144 $v361214145 $v461314146))
        ($main_if620 $n60714140 $i60814141 $k60914142 $j61014143 $l61114144 $v361214145 $v461314146))))

; if then
(assert
  (forall (($i60814127 Int) ($n60714126 Int) ($v461314132 Int) ($k60914128 Int) ($l61114130 Int) ($v361214131 Int) ($j61014129 Int))
    (=> (and (= (mod $l61114130 5) 0)
             (< $l61114130 $n60714126)
             ($main_inv220 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 $v361214131 $v461314132))
        ($main_if621 $n60714126 $i60814127 $k60914128 $j61014129 $l61114130 (+ $v361214131 1) $v461314132))))

; if else
(assert
  (forall (($v361214152 Int) ($l61114151 Int) ($i60814148 Int) ($n60714147 Int) ($k60914149 Int) ($j61014150 Int) ($v461314153 Int))
    (=> (and ($main_if620 $n60714147 $i60814148 $k60914149 $j61014150 $l61114151 $v361214152 $v461314153))
        ($main_if621 $n60714147 $i60814148 $k60914149 $j61014150 $l61114151 $v361214152 $v461314153))))

; forwards $main_inv220
(assert
  (forall (($k60914156 Int) ($v461314160 Int) ($i60814155 Int) ($j61014157 Int) ($v361214159 Int) ($n60714154 Int) ($l61114158 Int))
    (=> (and ($main_if621 $n60714154 $i60814155 $k60914156 $j61014157 $l61114158 $v361214159 $v461314160))
        ($main_inv220 $n60714154 $i60814155 $k60914156 $j61014157 (+ $l61114158 1) $v361214159 $v461314160))))

; __VERIFIER_assert precondition
(assert
  (forall (($v361214166 Int) ($i60814162 Int) ($k60914163 Int) ($j61014164 Int) ($l61114165 Int) ($v461314167 Int) ($n60714161 Int))
    (=> (and ($main_sum220 $n60714161 $i60814162 $k60914163 $j61014164 $l61114165 $v361214166 $v461314167))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (+ (+ $i60814162 $j61014164) $k60914163) $v461314167) $v361214166) $l61114165) 1 0)))))

(check-sat)
