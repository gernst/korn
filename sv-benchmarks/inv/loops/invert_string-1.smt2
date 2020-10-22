(set-logic HORN)

(declare-fun $main_sum250 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv249 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv250 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv251 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if680 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum249 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $__VERIFIER_assert_if679 (Int) Bool)
(declare-fun $main_sum251 (Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14929 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14929))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if679 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14930 Int))
    (=> (and ($__VERIFIER_assert_if679 cond14930))
        (__VERIFIER_assert cond14930))))

; if else
(assert
  (forall (($str2705 (Array Int Int)) ($i707 Int) ($uint14931 Int) ($str1704 (Array Int Int)) ($j708 Int) ($MAX703 Int) ($cont706 Int))
    (=> (and (> $MAX703 0)
             (= $MAX703 $uint14931)
             (<= 0 $uint14931)
             (<= $uint14931 4294967295))
        ($main_if680 $MAX703 $str1704 $str2705 $cont706 $i707 $j708))))

; loop entry $main_inv249
(assert
  (forall (($str270514934 (Array Int Int)) ($str170414933 (Array Int Int)) ($MAX70314932 Int) ($i70714936 Int) ($j70814937 Int) ($cont70614935 Int))
    (=> (and ($main_if680 $MAX70314932 $str170414933 $str270514934 $cont70614935 $i70714936 $j70814937))
        ($main_inv249 $MAX70314932 $str170414933 $str270514934 0 0 $j70814937))))

; loop term $main_sum249
(assert
  (forall (($cont70614941 Int) ($str170414939 (Array Int Int)) ($str270514940 (Array Int Int)) ($i70714942 Int) ($j70814943 Int) ($MAX70314938 Int))
    (=> (and (not (< $i70714942 $MAX70314938))
             ($main_inv249 $MAX70314938 $str170414939 $str270514940 $cont70614941 $i70714942 $j70814943))
        ($main_sum249 $MAX70314938 $str170414939 $str270514940 $cont70614941 $i70714942 $j70814943))))

; forwards $main_inv249
(assert
  (forall (($cont70614941 Int) ($str170414939 (Array Int Int)) ($str270514940 (Array Int Int)) ($i70714942 Int) ($j70814943 Int) ($MAX70314938 Int) ($char14944 Int))
    (=> (and (<= (- 128) $char14944)
             (<= $char14944 127)
             (< $i70714942 $MAX70314938)
             ($main_inv249 $MAX70314938 $str170414939 $str270514940 $cont70614941 $i70714942 $j70814943))
        ($main_inv249 $MAX70314938 (store $str170414939 $i70714942 $char14944) $str270514940 $cont70614941 (+ $i70714942 1) $j70814943))))

; loop entry $main_inv250
(assert
  (forall (($cont70614948 Int) ($j70814950 Int) ($str170414946 (Array Int Int)) ($str270514947 (Array Int Int)) ($i70714949 Int) ($MAX70314945 Int))
    (=> (and ($main_sum249 $MAX70314945 $str170414946 $str270514947 $cont70614948 $i70714949 $j70814950))
        ($main_inv250 $MAX70314945 (store $str170414946 (- $MAX70314945 1) 48) $str270514947 $cont70614948 (- $MAX70314945 1) 0))))

; loop term $main_sum250
(assert
  (forall (($MAX70314951 Int) ($cont70614954 Int) ($str170414952 (Array Int Int)) ($j70814956 Int) ($str270514953 (Array Int Int)) ($i70714955 Int))
    (=> (and (not (>= $i70714955 0))
             ($main_inv250 $MAX70314951 $str170414952 $str270514953 $cont70614954 $i70714955 $j70814956))
        ($main_sum250 $MAX70314951 $str170414952 $str270514953 $cont70614954 $i70714955 $j70814956))))

; forwards $main_inv250
(assert
  (forall (($MAX70314951 Int) ($cont70614954 Int) ($str170414952 (Array Int Int)) ($j70814956 Int) ($str270514953 (Array Int Int)) ($i70714955 Int))
    (=> (and (>= $i70714955 0)
             ($main_inv250 $MAX70314951 $str170414952 $str270514953 $cont70614954 $i70714955 $j70814956))
        ($main_inv250 $MAX70314951 $str170414952 (store $str270514953 $j70814956 (select $str170414952 0)) $cont70614954 (- $i70714955 1) (+ $j70814956 1)))))

; loop entry $main_inv251
(assert
  (forall (($MAX70314957 Int) ($cont70614960 Int) ($j70814962 Int) ($str270514959 (Array Int Int)) ($str170414958 (Array Int Int)) ($i70714961 Int))
    (=> (and ($main_sum250 $MAX70314957 $str170414958 $str270514959 $cont70614960 $i70714961 $j70814962))
        ($main_inv251 $MAX70314957 $str170414958 $str270514959 $cont70614960 0 (- $MAX70314957 1)))))

; loop term $main_sum251
(assert
  (forall (($str270514965 (Array Int Int)) ($MAX70314963 Int) ($str170414964 (Array Int Int)) ($cont70614966 Int) ($j70814968 Int) ($i70714967 Int))
    (=> (and (not (< $i70714967 $MAX70314963))
             ($main_inv251 $MAX70314963 $str170414964 $str270514965 $cont70614966 $i70714967 $j70814968))
        ($main_sum251 $MAX70314963 $str170414964 $str270514965 $cont70614966 $i70714967 $j70814968))))

; __VERIFIER_assert precondition
(assert
  (forall (($str270514965 (Array Int Int)) ($MAX70314963 Int) ($str170414964 (Array Int Int)) ($cont70614966 Int) ($j70814968 Int) ($i70714967 Int))
    (=> (and (< $i70714967 $MAX70314963)
             ($main_inv251 $MAX70314963 $str170414964 $str270514965 $cont70614966 $i70714967 $j70814968))
        ($__VERIFIER_assert_pre (ite (= (select $str170414964 $i70714967) (select $str270514965 $j70814968)) 1 0)))))

; forwards $main_inv251
(assert
  (forall (($str270514965 (Array Int Int)) ($MAX70314963 Int) ($str170414964 (Array Int Int)) ($cont70614966 Int) ($j70814968 Int) ($i70714967 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $str170414964 $i70714967) (select $str270514965 $j70814968)) 1 0))
             (< $i70714967 $MAX70314963)
             ($main_inv251 $MAX70314963 $str170414964 $str270514965 $cont70614966 $i70714967 $j70814968))
        ($main_inv251 $MAX70314963 $str170414964 $str270514965 $cont70614966 (+ $i70714967 1) (- $j70814968 1)))))

(check-sat)
