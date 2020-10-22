(set-logic HORN)

(declare-fun $main_inv209 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum210 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if63 (Int Int) Bool)
(declare-fun $main_inv210 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv212 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum211 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv211 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum209 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum212 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5095 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5095))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if63 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5096 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if63 cond cond5096))
        (__VERIFIER_assert cond5096))))

; loop entry $main_inv209
(assert
  (forall (($x310 Int) ($i309 Int) ($int5097 Int) ($a306 (Array Int Int)) ($b307 (Array Int Int)) ($incr308 Int))
    (=> (and (= $i309 0)
             (= $incr308 $int5097)
             (<= (- 2147483648) $int5097)
             (<= $int5097 2147483647))
        ($main_inv209 $a306 $b307 $incr308 $i309 $x310))))

; loop term $main_sum209
(assert
  (forall (($a3065098 (Array Int Int)) ($i3095101 Int) ($x3105102 Int) ($incr3085100 Int) ($b3075099 (Array Int Int)))
    (=> (and (not (< $i3095101 100000)))
        ($main_sum209 $a3065098 $b3075099 $incr3085100 $i3095101 $x3105102 $a3065098 $b3075099 $incr3085100 $i3095101 $x3105102))))

; forwards $main_inv209
(assert
  (forall (($a3065098 (Array Int Int)) ($i3095101 Int) ($x3105102 Int) ($incr3085100 Int) ($b3075099 (Array Int Int)))
    (=> (and (< $i3095101 100000)
             ($main_inv209 $a3065098 $b3075099 $incr3085100 $i3095101 $x3105102))
        ($main_inv209 (store $a3065098 $i3095101 42) $b3075099 $incr3085100 (+ $i3095101 1) $x3105102))))

; backwards $main_sum209
(assert
  (forall (($a3065098 (Array Int Int)) ($i3095101 Int) ($incr3085105 Int) ($x3105107 Int) ($x3105102 Int) ($incr3085100 Int) ($i3095106 Int) ($b3075104 (Array Int Int)) ($a3065103 (Array Int Int)) ($b3075099 (Array Int Int)))
    (=> (and ($main_sum209 (store $a3065098 $i3095101 42) $b3075099 $incr3085100 (+ $i3095101 1) $x3105102 $a3065103 $b3075104 $incr3085105 $i3095106 $x3105107)
             (< $i3095101 100000))
        ($main_sum209 $a3065098 $b3075099 $incr3085100 $i3095101 $x3105102 $a3065103 $b3075104 $incr3085105 $i3095106 $x3105107))))

; loop entry $main_inv210
(assert
  (forall (($x310 Int) ($incr3085110 Int) ($i309 Int) ($i3095111 Int) ($a306 (Array Int Int)) ($x3105112 Int) ($b307 (Array Int Int)) ($b3075109 (Array Int Int)) ($incr308 Int) ($a3065108 (Array Int Int)) ($int5097 Int))
    (=> (and ($main_sum209 $a306 $b307 $incr308 $i309 $x310 $a3065108 $b3075109 $incr3085110 $i3095111 $x3105112)
             (= $i309 0)
             (= $incr308 $int5097)
             (<= (- 2147483648) $int5097)
             (<= $int5097 2147483647))
        ($main_inv210 $a3065108 $b3075109 $incr3085110 0 $x3105112))))

; loop term $main_sum210
(assert
  (forall (($b3075114 (Array Int Int)) ($incr3085115 Int) ($i3095116 Int) ($a3065113 (Array Int Int)) ($x3105117 Int))
    (=> (and (not (< $i3095116 100000)))
        ($main_sum210 $a3065113 $b3075114 $incr3085115 $i3095116 $x3105117 $a3065113 $b3075114 $incr3085115 $i3095116 $x3105117))))

; forwards $main_inv210
(assert
  (forall (($b3075114 (Array Int Int)) ($incr3085115 Int) ($i3095116 Int) ($a3065113 (Array Int Int)) ($x3105117 Int))
    (=> (and (< $i3095116 100000)
             ($main_inv210 $a3065113 $b3075114 $incr3085115 $i3095116 $x3105117))
        ($main_inv210 $a3065113 (store $b3075114 $i3095116 (select $a3065113 $i3095116)) $incr3085115 (+ $i3095116 1) $x3105117))))

; backwards $main_sum210
(assert
  (forall (($i3095121 Int) ($b3075114 (Array Int Int)) ($b3075119 (Array Int Int)) ($incr3085115 Int) ($a3065118 (Array Int Int)) ($x3105122 Int) ($i3095116 Int) ($a3065113 (Array Int Int)) ($incr3085120 Int) ($x3105117 Int))
    (=> (and ($main_sum210 $a3065113 (store $b3075114 $i3095116 (select $a3065113 $i3095116)) $incr3085115 (+ $i3095116 1) $x3105117 $a3065118 $b3075119 $incr3085120 $i3095121 $x3105122)
             (< $i3095116 100000))
        ($main_sum210 $a3065113 $b3075114 $incr3085115 $i3095116 $x3105117 $a3065118 $b3075119 $incr3085120 $i3095121 $x3105122))))

; loop entry $main_inv211
(assert
  (forall (($incr3085110 Int) ($i309 Int) ($b3075124 (Array Int Int)) ($i3095111 Int) ($a306 (Array Int Int)) ($x3105112 Int) ($x3105127 Int) ($b307 (Array Int Int)) ($incr3085125 Int) ($b3075109 (Array Int Int)) ($incr308 Int) ($i3095126 Int) ($x310 Int) ($a3065108 (Array Int Int)) ($a3065123 (Array Int Int)) ($int5097 Int))
    (=> (and ($main_sum210 $a3065108 $b3075109 $incr3085110 0 $x3105112 $a3065123 $b3075124 $incr3085125 $i3095126 $x3105127)
             ($main_sum209 $a306 $b307 $incr308 $i309 $x310 $a3065108 $b3075109 $incr3085110 $i3095111 $x3105112)
             (= $i309 0)
             (= $incr308 $int5097)
             (<= (- 2147483648) $int5097)
             (<= $int5097 2147483647))
        ($main_inv211 $a3065123 $b3075124 $incr3085125 0 $x3105127))))

; loop term $main_sum211
(assert
  (forall (($b3075129 (Array Int Int)) ($a3065128 (Array Int Int)) ($i3095131 Int) ($x3105132 Int) ($incr3085130 Int))
    (=> (and (not (< $i3095131 100000)))
        ($main_sum211 $a3065128 $b3075129 $incr3085130 $i3095131 $x3105132 $a3065128 $b3075129 $incr3085130 $i3095131 $x3105132))))

; forwards $main_inv211
(assert
  (forall (($b3075129 (Array Int Int)) ($a3065128 (Array Int Int)) ($i3095131 Int) ($x3105132 Int) ($incr3085130 Int))
    (=> (and (< $i3095131 100000)
             ($main_inv211 $a3065128 $b3075129 $incr3085130 $i3095131 $x3105132))
        ($main_inv211 $a3065128 (store $b3075129 $i3095131 (+ (select $b3075129 $i3095131) $incr3085130)) $incr3085130 (+ $i3095131 1) $x3105132))))

; backwards $main_sum211
(assert
  (forall (($i3095136 Int) ($b3075129 (Array Int Int)) ($a3065128 (Array Int Int)) ($incr3085135 Int) ($b3075134 (Array Int Int)) ($i3095131 Int) ($x3105132 Int) ($incr3085130 Int) ($a3065133 (Array Int Int)) ($x3105137 Int))
    (=> (and ($main_sum211 $a3065128 (store $b3075129 $i3095131 (+ (select $b3075129 $i3095131) $incr3085130)) $incr3085130 (+ $i3095131 1) $x3105132 $a3065133 $b3075134 $incr3085135 $i3095136 $x3105137)
             (< $i3095131 100000))
        ($main_sum211 $a3065128 $b3075129 $incr3085130 $i3095131 $x3105132 $a3065133 $b3075134 $incr3085135 $i3095136 $x3105137))))

; loop entry $main_inv212
(assert
  (forall (($incr3085110 Int) ($i309 Int) ($incr3085140 Int) ($i3095141 Int) ($i3095111 Int) ($a306 (Array Int Int)) ($x3105112 Int) ($x3105127 Int) ($x3105142 Int) ($b307 (Array Int Int)) ($incr3085125 Int) ($a3065138 (Array Int Int)) ($b3075109 (Array Int Int)) ($incr308 Int) ($i3095126 Int) ($x310 Int) ($a3065108 (Array Int Int)) ($a3065123 (Array Int Int)) ($int5097 Int) ($b3075124 (Array Int Int)) ($b3075139 (Array Int Int)))
    (=> (and ($main_sum211 $a3065123 $b3075124 $incr3085125 0 $x3105127 $a3065138 $b3075139 $incr3085140 $i3095141 $x3105142)
             ($main_sum210 $a3065108 $b3075109 $incr3085110 0 $x3105112 $a3065123 $b3075124 $incr3085125 $i3095126 $x3105127)
             ($main_sum209 $a306 $b307 $incr308 $i309 $x310 $a3065108 $b3075109 $incr3085110 $i3095111 $x3105112)
             (= $i309 0)
             (= $incr308 $int5097)
             (<= (- 2147483648) $int5097)
             (<= $int5097 2147483647))
        ($main_inv212 $a3065138 $b3075139 $incr3085140 $i3095141 0))))

; loop term $main_sum212
(assert
  (forall (($incr3085145 Int) ($b3075144 (Array Int Int)) ($a3065143 (Array Int Int)) ($x3105147 Int) ($i3095146 Int))
    (=> (and (not (< $x3105147 100000)))
        ($main_sum212 $a3065143 $b3075144 $incr3085145 $i3095146 $x3105147 $a3065143 $b3075144 $incr3085145 $i3095146 $x3105147))))

; __VERIFIER_assert precondition
(assert
  (forall (($incr3085145 Int) ($b3075144 (Array Int Int)) ($a3065143 (Array Int Int)) ($x3105147 Int) ($i3095146 Int))
    (=> (and (< $x3105147 100000)
             ($main_inv212 $a3065143 $b3075144 $incr3085145 $i3095146 $x3105147))
        ($__VERIFIER_assert_pre (ite (= (select $b3075144 $x3105147) (+ 42 $incr3085145)) 1 0)))))

; forwards $main_inv212
(assert
  (forall (($incr3085145 Int) ($b3075144 (Array Int Int)) ($a3065143 (Array Int Int)) ($x3105147 Int) ($i3095146 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b3075144 $x3105147) (+ 42 $incr3085145)) 1 0))
             (< $x3105147 100000)
             ($main_inv212 $a3065143 $b3075144 $incr3085145 $i3095146 $x3105147))
        ($main_inv212 $a3065143 $b3075144 $incr3085145 $i3095146 (+ $x3105147 1)))))

; backwards $main_sum212
(assert
  (forall (($incr3085145 Int) ($x3105152 Int) ($i3095151 Int) ($b3075144 (Array Int Int)) ($a3065148 (Array Int Int)) ($x3105147 Int) ($i3095146 Int) ($b3075149 (Array Int Int)) ($incr3085150 Int) ($a3065143 (Array Int Int)))
    (=> (and ($main_sum212 $a3065143 $b3075144 $incr3085145 $i3095146 (+ $x3105147 1) $a3065148 $b3075149 $incr3085150 $i3095151 $x3105152)
             (__VERIFIER_assert (ite (= (select $b3075144 $x3105147) (+ 42 $incr3085145)) 1 0))
             (< $x3105147 100000))
        ($main_sum212 $a3065143 $b3075144 $incr3085145 $i3095146 $x3105147 $a3065148 $b3075149 $incr3085150 $i3095151 $x3105152))))

(check-sat)
