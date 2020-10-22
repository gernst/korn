(set-logic HORN)

(declare-fun $main_sum206 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum205 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv205 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv204 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum204 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if62 (Int Int) Bool)
(declare-fun $main_inv206 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum207 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv208 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum208 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv207 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5033 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5033))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if62 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5034 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if62 cond cond5034))
        (__VERIFIER_assert cond5034))))

; loop entry $main_inv204
(assert
  (forall (($a302 (Array Int Int)) ($b303 (Array Int Int)) ($i304 Int) ($x305 Int))
    (=> (and (= $i304 0))
        ($main_inv204 $a302 $b303 $i304 $x305))))

; loop term $main_sum204
(assert
  (forall (($a3025035 (Array Int Int)) ($b3035036 (Array Int Int)) ($i3045037 Int) ($x3055038 Int))
    (=> (and (not (< $i3045037 100000)))
        ($main_sum204 $a3025035 $b3035036 $i3045037 $x3055038 $a3025035 $b3035036 $i3045037 $x3055038))))

; forwards $main_inv204
(assert
  (forall (($a3025035 (Array Int Int)) ($i3045037 Int) ($b3035036 (Array Int Int)) ($x3055038 Int))
    (=> (and (< $i3045037 100000)
             ($main_inv204 $a3025035 $b3035036 $i3045037 $x3055038))
        ($main_inv204 (store $a3025035 $i3045037 42) $b3035036 (+ $i3045037 1) $x3055038))))

; backwards $main_sum204
(assert
  (forall (($b3035040 (Array Int Int)) ($x3055042 Int) ($a3025035 (Array Int Int)) ($i3045037 Int) ($b3035036 (Array Int Int)) ($a3025039 (Array Int Int)) ($x3055038 Int) ($i3045041 Int))
    (=> (and ($main_sum204 (store $a3025035 $i3045037 42) $b3035036 (+ $i3045037 1) $x3055038 $a3025039 $b3035040 $i3045041 $x3055042)
             (< $i3045037 100000))
        ($main_sum204 $a3025035 $b3035036 $i3045037 $x3055038 $a3025039 $b3035040 $i3045041 $x3055042))))

; loop entry $main_inv205
(assert
  (forall (($i3045045 Int) ($a302 (Array Int Int)) ($x3055046 Int) ($b303 (Array Int Int)) ($a3025043 (Array Int Int)) ($i304 Int) ($b3035044 (Array Int Int)) ($x305 Int))
    (=> (and ($main_sum204 $a302 $b303 $i304 $x305 $a3025043 $b3035044 $i3045045 $x3055046)
             (= $i304 0))
        ($main_inv205 $a3025043 $b3035044 0 $x3055046))))

; loop term $main_sum205
(assert
  (forall (($a3025047 (Array Int Int)) ($b3035048 (Array Int Int)) ($i3045049 Int) ($x3055050 Int))
    (=> (and (not (< $i3045049 100000)))
        ($main_sum205 $a3025047 $b3035048 $i3045049 $x3055050 $a3025047 $b3035048 $i3045049 $x3055050))))

; forwards $main_inv205
(assert
  (forall (($a3025047 (Array Int Int)) ($b3035048 (Array Int Int)) ($i3045049 Int) ($x3055050 Int))
    (=> (and (< $i3045049 100000)
             ($main_inv205 $a3025047 $b3035048 $i3045049 $x3055050))
        ($main_inv205 $a3025047 (store $b3035048 $i3045049 (select $a3025047 $i3045049)) (+ $i3045049 1) $x3055050))))

; backwards $main_sum205
(assert
  (forall (($i3045049 Int) ($b3035048 (Array Int Int)) ($i3045053 Int) ($b3035052 (Array Int Int)) ($a3025047 (Array Int Int)) ($a3025051 (Array Int Int)) ($x3055054 Int) ($x3055050 Int))
    (=> (and ($main_sum205 $a3025047 (store $b3035048 $i3045049 (select $a3025047 $i3045049)) (+ $i3045049 1) $x3055050 $a3025051 $b3035052 $i3045053 $x3055054)
             (< $i3045049 100000))
        ($main_sum205 $a3025047 $b3035048 $i3045049 $x3055050 $a3025051 $b3035052 $i3045053 $x3055054))))

; loop entry $main_inv206
(assert
  (forall (($i3045045 Int) ($a302 (Array Int Int)) ($b3035056 (Array Int Int)) ($x3055046 Int) ($a3025043 (Array Int Int)) ($i304 Int) ($x3055058 Int) ($x305 Int) ($b303 (Array Int Int)) ($a3025055 (Array Int Int)) ($i3045057 Int) ($b3035044 (Array Int Int)))
    (=> (and ($main_sum205 $a3025043 $b3035044 0 $x3055046 $a3025055 $b3035056 $i3045057 $x3055058)
             ($main_sum204 $a302 $b303 $i304 $x305 $a3025043 $b3035044 $i3045045 $x3055046)
             (= $i304 0))
        ($main_inv206 $a3025055 $b3035056 0 $x3055058))))

; loop term $main_sum206
(assert
  (forall (($a3025059 (Array Int Int)) ($b3035060 (Array Int Int)) ($i3045061 Int) ($x3055062 Int))
    (=> (and (not (< $i3045061 100000)))
        ($main_sum206 $a3025059 $b3035060 $i3045061 $x3055062 $a3025059 $b3035060 $i3045061 $x3055062))))

; forwards $main_inv206
(assert
  (forall (($a3025059 (Array Int Int)) ($b3035060 (Array Int Int)) ($i3045061 Int) ($x3055062 Int))
    (=> (and (< $i3045061 100000)
             ($main_inv206 $a3025059 $b3035060 $i3045061 $x3055062))
        ($main_inv206 $a3025059 (store $b3035060 $i3045061 (+ (select $b3035060 $i3045061) $i3045061)) (+ $i3045061 1) $x3055062))))

; backwards $main_sum206
(assert
  (forall (($i3045065 Int) ($a3025059 (Array Int Int)) ($b3035060 (Array Int Int)) ($a3025063 (Array Int Int)) ($i3045061 Int) ($x3055062 Int) ($x3055066 Int) ($b3035064 (Array Int Int)))
    (=> (and ($main_sum206 $a3025059 (store $b3035060 $i3045061 (+ (select $b3035060 $i3045061) $i3045061)) (+ $i3045061 1) $x3055062 $a3025063 $b3035064 $i3045065 $x3055066)
             (< $i3045061 100000))
        ($main_sum206 $a3025059 $b3035060 $i3045061 $x3055062 $a3025063 $b3035064 $i3045065 $x3055066))))

; loop entry $main_inv207
(assert
  (forall (($a302 (Array Int Int)) ($b3035056 (Array Int Int)) ($b3035068 (Array Int Int)) ($x3055070 Int) ($x3055046 Int) ($a3025043 (Array Int Int)) ($a3025067 (Array Int Int)) ($i304 Int) ($x3055058 Int) ($x305 Int) ($i3045069 Int) ($i3045045 Int) ($b303 (Array Int Int)) ($a3025055 (Array Int Int)) ($i3045057 Int) ($b3035044 (Array Int Int)))
    (=> (and ($main_sum206 $a3025055 $b3035056 0 $x3055058 $a3025067 $b3035068 $i3045069 $x3055070)
             ($main_sum205 $a3025043 $b3035044 0 $x3055046 $a3025055 $b3035056 $i3045057 $x3055058)
             ($main_sum204 $a302 $b303 $i304 $x305 $a3025043 $b3035044 $i3045045 $x3055046)
             (= $i304 0))
        ($main_inv207 $a3025067 $b3035068 0 $x3055070))))

; loop term $main_sum207
(assert
  (forall (($a3025071 (Array Int Int)) ($b3035072 (Array Int Int)) ($i3045073 Int) ($x3055074 Int))
    (=> (and (not (< $i3045073 100000)))
        ($main_sum207 $a3025071 $b3035072 $i3045073 $x3055074 $a3025071 $b3035072 $i3045073 $x3055074))))

; forwards $main_inv207
(assert
  (forall (($a3025071 (Array Int Int)) ($b3035072 (Array Int Int)) ($i3045073 Int) ($x3055074 Int))
    (=> (and (< $i3045073 100000)
             ($main_inv207 $a3025071 $b3035072 $i3045073 $x3055074))
        ($main_inv207 $a3025071 (store $b3035072 $i3045073 (- (select $b3035072 $i3045073) (select $a3025071 $i3045073))) (+ $i3045073 1) $x3055074))))

; backwards $main_sum207
(assert
  (forall (($i3045073 Int) ($x3055078 Int) ($a3025071 (Array Int Int)) ($x3055074 Int) ($b3035072 (Array Int Int)) ($b3035076 (Array Int Int)) ($i3045077 Int) ($a3025075 (Array Int Int)))
    (=> (and ($main_sum207 $a3025071 (store $b3035072 $i3045073 (- (select $b3035072 $i3045073) (select $a3025071 $i3045073))) (+ $i3045073 1) $x3055074 $a3025075 $b3035076 $i3045077 $x3055078)
             (< $i3045073 100000))
        ($main_sum207 $a3025071 $b3035072 $i3045073 $x3055074 $a3025075 $b3035076 $i3045077 $x3055078))))

; loop entry $main_inv208
(assert
  (forall (($x3055082 Int) ($a302 (Array Int Int)) ($b3035056 (Array Int Int)) ($b3035068 (Array Int Int)) ($i3045081 Int) ($x3055070 Int) ($a3025043 (Array Int Int)) ($a3025067 (Array Int Int)) ($a3025079 (Array Int Int)) ($i304 Int) ($x3055058 Int) ($x305 Int) ($i3045069 Int) ($i3045045 Int) ($b3035080 (Array Int Int)) ($x3055046 Int) ($b303 (Array Int Int)) ($a3025055 (Array Int Int)) ($i3045057 Int) ($b3035044 (Array Int Int)))
    (=> (and ($main_sum207 $a3025067 $b3035068 0 $x3055070 $a3025079 $b3035080 $i3045081 $x3055082)
             ($main_sum206 $a3025055 $b3035056 0 $x3055058 $a3025067 $b3035068 $i3045069 $x3055070)
             ($main_sum205 $a3025043 $b3035044 0 $x3055046 $a3025055 $b3035056 $i3045057 $x3055058)
             ($main_sum204 $a302 $b303 $i304 $x305 $a3025043 $b3035044 $i3045045 $x3055046)
             (= $i304 0))
        ($main_inv208 $a3025079 $b3035080 $i3045081 0))))

; loop term $main_sum208
(assert
  (forall (($a3025083 (Array Int Int)) ($b3035084 (Array Int Int)) ($i3045085 Int) ($x3055086 Int))
    (=> (and (not (< $x3055086 100000)))
        ($main_sum208 $a3025083 $b3035084 $i3045085 $x3055086 $a3025083 $b3035084 $i3045085 $x3055086))))

; __VERIFIER_assert precondition
(assert
  (forall (($b3035084 (Array Int Int)) ($x3055086 Int) ($a3025083 (Array Int Int)) ($i3045085 Int))
    (=> (and (< $x3055086 100000)
             ($main_inv208 $a3025083 $b3035084 $i3045085 $x3055086))
        ($__VERIFIER_assert_pre (ite (= (select $b3035084 $x3055086) $x3055086) 1 0)))))

; forwards $main_inv208
(assert
  (forall (($a3025083 (Array Int Int)) ($b3035084 (Array Int Int)) ($i3045085 Int) ($x3055086 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b3035084 $x3055086) $x3055086) 1 0))
             (< $x3055086 100000)
             ($main_inv208 $a3025083 $b3035084 $i3045085 $x3055086))
        ($main_inv208 $a3025083 $b3035084 $i3045085 (+ $x3055086 1)))))

; backwards $main_sum208
(assert
  (forall (($b3035088 (Array Int Int)) ($x3055090 Int) ($a3025083 (Array Int Int)) ($x3055086 Int) ($i3045089 Int) ($i3045085 Int) ($b3035084 (Array Int Int)) ($a3025087 (Array Int Int)))
    (=> (and ($main_sum208 $a3025083 $b3035084 $i3045085 (+ $x3055086 1) $a3025087 $b3035088 $i3045089 $x3055090)
             (__VERIFIER_assert (ite (= (select $b3035084 $x3055086) $x3055086) 1 0))
             (< $x3055086 100000))
        ($main_sum208 $a3025083 $b3035084 $i3045085 $x3055086 $a3025087 $b3035088 $i3045089 $x3055090))))

(check-sat)
