(set-logic HORN)

(declare-fun $main_inv257 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv258 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if685 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum260 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum257 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum258 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv260 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv259 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if684 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum259 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15042 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15042))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if684 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15043 Int))
    (=> (and ($__VERIFIER_assert_if684 cond15043))
        (__VERIFIER_assert cond15043))))

; loop entry $main_inv257
(assert
  (forall (($k723 Int) ($int15046 Int) ($N_LIN720 Int) ($N_COL721 Int) ($matriz724 (Array Int (Array Int Int))) ($uint15045 Int) ($uint15044 Int))
    (=> (and (<= (- 2147483648) $int15046)
             (<= $int15046 2147483647)
             (= $N_COL721 $uint15045)
             (<= 0 $uint15045)
             (<= $uint15045 4294967295)
             (= $N_LIN720 $uint15044)
             (<= 0 $uint15044)
             (<= $uint15044 4294967295))
        ($main_inv257 $N_LIN720 $N_COL721 0 $k723 $matriz724 $int15046))))

; loop term $main_sum257
(assert
  (forall (($k72315050 Int) ($maior72515052 Int) ($N_LIN72015047 Int) ($N_COL72115048 Int) ($matriz72415051 (Array Int (Array Int Int))) ($j72215049 Int))
    (=> (and (not (< $j72215049 $N_COL72115048))
             ($main_inv257 $N_LIN72015047 $N_COL72115048 $j72215049 $k72315050 $matriz72415051 $maior72515052))
        ($main_sum257 $N_LIN72015047 $N_COL72115048 $j72215049 $k72315050 $matriz72415051 $maior72515052))))

; loop entry $main_inv258
(assert
  (forall (($k72315050 Int) ($maior72515052 Int) ($N_LIN72015047 Int) ($N_COL72115048 Int) ($matriz72415051 (Array Int (Array Int Int))) ($j72215049 Int))
    (=> (and (< $j72215049 $N_COL72115048)
             ($main_inv257 $N_LIN72015047 $N_COL72115048 $j72215049 $k72315050 $matriz72415051 $maior72515052))
        ($main_inv258 $N_LIN72015047 $N_COL72115048 $j72215049 0 $matriz72415051 $maior72515052))))

; loop term $main_sum258
(assert
  (forall (($matriz72415057 (Array Int (Array Int Int))) ($maior72515058 Int) ($N_COL72115054 Int) ($k72315056 Int) ($j72215055 Int) ($N_LIN72015053 Int))
    (=> (and (not (< $k72315056 $N_LIN72015053))
             ($main_inv258 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 $matriz72415057 $maior72515058))
        ($main_sum258 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 $matriz72415057 $maior72515058))))

; if then
(assert
  (forall (($matriz72415057 (Array Int (Array Int Int))) ($maior72515058 Int) ($int15059 Int) ($N_COL72115054 Int) ($k72315056 Int) ($j72215055 Int) ($N_LIN72015053 Int))
    (=> (and (> (select (select (store $matriz72415057 $j72215055 (store (select $matriz72415057 $j72215055) $k72315056 $int15059)) $j72215055) $k72315056) $maior72515058)
             (<= (- 2147483648) $int15059)
             (<= $int15059 2147483647)
             (< $k72315056 $N_LIN72015053)
             ($main_inv258 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 $matriz72415057 $maior72515058))
        ($main_if685 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 (store $matriz72415057 $j72215055 (store (select $matriz72415057 $j72215055) $k72315056 $int15059)) (select (select (store $matriz72415057 $j72215055 (store (select $matriz72415057 $j72215055) $k72315056 $int15059)) $j72215055) $k72315056)))))

; if else
(assert
  (forall (($matriz72415057 (Array Int (Array Int Int))) ($maior72515058 Int) ($int15059 Int) ($N_COL72115054 Int) ($k72315056 Int) ($j72215055 Int) ($N_LIN72015053 Int))
    (=> (and (not (> (select (select (store $matriz72415057 $j72215055 (store (select $matriz72415057 $j72215055) $k72315056 $int15059)) $j72215055) $k72315056) $maior72515058))
             (<= (- 2147483648) $int15059)
             (<= $int15059 2147483647)
             (< $k72315056 $N_LIN72015053)
             ($main_inv258 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 $matriz72415057 $maior72515058))
        ($main_if685 $N_LIN72015053 $N_COL72115054 $j72215055 $k72315056 (store $matriz72415057 $j72215055 (store (select $matriz72415057 $j72215055) $k72315056 $int15059)) $maior72515058))))

; forwards $main_inv258
(assert
  (forall (($j72215062 Int) ($N_COL72115061 Int) ($k72315063 Int) ($matriz72415064 (Array Int (Array Int Int))) ($maior72515065 Int) ($N_LIN72015060 Int))
    (=> (and ($main_if685 $N_LIN72015060 $N_COL72115061 $j72215062 $k72315063 $matriz72415064 $maior72515065))
        ($main_inv258 $N_LIN72015060 $N_COL72115061 $j72215062 (+ $k72315063 1) $matriz72415064 $maior72515065))))

; forwards $main_inv257
(assert
  (forall (($j72215068 Int) ($N_COL72115067 Int) ($N_LIN72015066 Int) ($k72315069 Int) ($matriz72415070 (Array Int (Array Int Int))) ($maior72515071 Int))
    (=> (and ($main_sum258 $N_LIN72015066 $N_COL72115067 $j72215068 $k72315069 $matriz72415070 $maior72515071))
        ($main_inv257 $N_LIN72015066 $N_COL72115067 (+ $j72215068 1) $k72315069 $matriz72415070 $maior72515071))))

; loop entry $main_inv259
(assert
  (forall (($N_LIN72015072 Int) ($maior72515077 Int) ($N_COL72115073 Int) ($k72315075 Int) ($matriz72415076 (Array Int (Array Int Int))) ($j72215074 Int))
    (=> (and ($main_sum257 $N_LIN72015072 $N_COL72115073 $j72215074 $k72315075 $matriz72415076 $maior72515077))
        ($main_inv259 $N_LIN72015072 $N_COL72115073 0 $k72315075 $matriz72415076 $maior72515077))))

; loop term $main_sum259
(assert
  (forall (($k72315081 Int) ($maior72515083 Int) ($matriz72415082 (Array Int (Array Int Int))) ($N_LIN72015078 Int) ($j72215080 Int) ($N_COL72115079 Int))
    (=> (and (not (< $j72215080 $N_COL72115079))
             ($main_inv259 $N_LIN72015078 $N_COL72115079 $j72215080 $k72315081 $matriz72415082 $maior72515083))
        ($main_sum259 $N_LIN72015078 $N_COL72115079 $j72215080 $k72315081 $matriz72415082 $maior72515083))))

; loop entry $main_inv260
(assert
  (forall (($k72315081 Int) ($maior72515083 Int) ($matriz72415082 (Array Int (Array Int Int))) ($N_LIN72015078 Int) ($j72215080 Int) ($N_COL72115079 Int))
    (=> (and (< $j72215080 $N_COL72115079)
             ($main_inv259 $N_LIN72015078 $N_COL72115079 $j72215080 $k72315081 $matriz72415082 $maior72515083))
        ($main_inv260 $N_LIN72015078 $N_COL72115079 $j72215080 0 $matriz72415082 $maior72515083))))

; loop term $main_sum260
(assert
  (forall (($k72315087 Int) ($N_LIN72015084 Int) ($N_COL72115085 Int) ($maior72515089 Int) ($j72215086 Int) ($matriz72415088 (Array Int (Array Int Int))))
    (=> (and (not (< $k72315087 $N_LIN72015084))
             ($main_inv260 $N_LIN72015084 $N_COL72115085 $j72215086 $k72315087 $matriz72415088 $maior72515089))
        ($main_sum260 $N_LIN72015084 $N_COL72115085 $j72215086 $k72315087 $matriz72415088 $maior72515089))))

; __VERIFIER_assert precondition
(assert
  (forall (($k72315087 Int) ($N_LIN72015084 Int) ($N_COL72115085 Int) ($maior72515089 Int) ($j72215086 Int) ($matriz72415088 (Array Int (Array Int Int))))
    (=> (and (< $k72315087 $N_LIN72015084)
             ($main_inv260 $N_LIN72015084 $N_COL72115085 $j72215086 $k72315087 $matriz72415088 $maior72515089))
        ($__VERIFIER_assert_pre (ite (< (select (select $matriz72415088 $j72215086) $k72315087) $maior72515089) 1 0)))))

; forwards $main_inv260
(assert
  (forall (($k72315087 Int) ($N_LIN72015084 Int) ($N_COL72115085 Int) ($maior72515089 Int) ($j72215086 Int) ($matriz72415088 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (< (select (select $matriz72415088 $j72215086) $k72315087) $maior72515089) 1 0))
             (< $k72315087 $N_LIN72015084)
             ($main_inv260 $N_LIN72015084 $N_COL72115085 $j72215086 $k72315087 $matriz72415088 $maior72515089))
        ($main_inv260 $N_LIN72015084 $N_COL72115085 $j72215086 (+ $k72315087 1) $matriz72415088 $maior72515089))))

; forwards $main_inv259
(assert
  (forall (($j72215092 Int) ($N_LIN72015090 Int) ($maior72515095 Int) ($k72315093 Int) ($N_COL72115091 Int) ($matriz72415094 (Array Int (Array Int Int))))
    (=> (and ($main_sum260 $N_LIN72015090 $N_COL72115091 $j72215092 $k72315093 $matriz72415094 $maior72515095))
        ($main_inv259 $N_LIN72015090 $N_COL72115091 (+ $j72215092 1) $k72315093 $matriz72415094 $maior72515095))))

(check-sat)
