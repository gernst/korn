(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum442 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_if168 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if166 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if167 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv442 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if166 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8173 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if166 cond cond8173))
        (assume_abort_if_not cond8173))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8174 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8174))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if167 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8175 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if167 cond cond8175))
        (__VERIFIER_assert cond8175))))

; loop entry $main_inv442
(assert
  (forall (($array554 (Array Int Int)) ($index555 Int) ($tmp556 Int))
    (=> (and (= $tmp556 0)
             (= $index555 0))
        ($main_inv442 $array554 $index555 $tmp556))))

; loop term $main_sum442
(assert
  (forall (($array5548176 (Array Int Int)) ($index5558177 Int) ($tmp5568178 Int))
    (=> (and (= 1 0))
        ($main_sum442 $array5548176 $index5558177 $tmp5568178 $array5548176 $index5558177 $tmp5568178))))

; break $main_sum442
(assert
  (forall (($array5548176 (Array Int Int)) ($index5558177 Int) ($tmp5568178 Int) ($uint8179 Int))
    (=> (and (>= $uint8179 10000)
             (<= 0 $uint8179)
             (<= $uint8179 4294967295)
             (not (= 1 0))
             ($main_inv442 $array5548176 $index5558177 $tmp5568178))
        ($main_sum442 $array5548176 $index5558177 $tmp5568178 $array5548176 $uint8179 $tmp5568178))))

; if else
(assert
  (forall (($array5548176 (Array Int Int)) ($index5558177 Int) ($tmp5568178 Int) ($uint8179 Int))
    (=> (and (not (>= $uint8179 10000))
             (<= 0 $uint8179)
             (<= $uint8179 4294967295)
             (not (= 1 0))
             ($main_inv442 $array5548176 $index5558177 $tmp5568178))
        ($main_if168 $array5548176 $index5558177 $tmp5568178 $array5548176 $uint8179 $tmp5568178))))

; forwards $main_inv442
(assert
  (forall (($array5548180 (Array Int Int)) ($array5548176 (Array Int Int)) ($tmp5568182 Int) ($index5558177 Int) ($tmp5568178 Int) ($index5558181 Int))
    (=> (and ($main_if168 $array5548176 $index5558177 $tmp5568178 $array5548180 $index5558181 $tmp5568182))
        ($main_inv442 (store $array5548180 $index5558181 $index5558181) $index5558181 $index5558181))))

; backwards $main_sum442
(assert
  (forall (($array5548180 (Array Int Int)) ($array5548176 (Array Int Int)) ($tmp5568182 Int) ($index5558177 Int) ($tmp5568178 Int) ($index5558181 Int) ($tmp5568185 Int) ($index5558184 Int) ($array5548183 (Array Int Int)))
    (=> (and ($main_sum442 (store $array5548180 $index5558181 $index5558181) $index5558181 $index5558181 $array5548183 $index5558184 $tmp5568185)
             ($main_if168 $array5548176 $index5558177 $tmp5568178 $array5548180 $index5558181 $tmp5568182))
        ($main_sum442 $array5548176 $index5558177 $tmp5568178 $array5548183 $index5558184 $tmp5568185))))

; __VERIFIER_assert precondition
(assert
  (forall (($tmp5568188 Int) ($array5548186 (Array Int Int)) ($index555 Int) ($array554 (Array Int Int)) ($index5558187 Int) ($tmp556 Int))
    (=> (and ($main_sum442 $array554 $index555 $tmp556 $array5548186 $index5558187 $tmp5568188)
             (= $tmp556 0)
             (= $index555 0))
        ($__VERIFIER_assert_pre (ite (and (< $tmp5568188 10000) (= (select $array5548186 $tmp5568188) $tmp5568188)) 1 0)))))

(check-sat)
