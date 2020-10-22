(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum133 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if534 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv133 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_if535 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14069 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14069))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if534 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14070 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if534 cond cond14070))
        (__VERIFIER_assert cond14070))))

; loop entry $main_inv133
(assert
  (forall (($SIZE469 Int) ($k471 Int) ($array472 (Array Int Int)) ($int14071 Int))
    (=> (and (<= (- 2147483648) $int14071)
             (<= $int14071 2147483647)
             (= $SIZE469 1))
        ($main_inv133 $SIZE469 0 $k471 $array472 $int14071))))

; loop term $main_sum133
(assert
  (forall (($SIZE46914072 Int) ($menor47314076 Int) ($array47214075 (Array Int Int)) ($k47114074 Int) ($j47014073 Int))
    (=> (and (not (< $j47014073 $SIZE46914072)))
        ($main_sum133 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076))))

; if then
(assert
  (forall (($SIZE46914072 Int) ($array47214075 (Array Int Int)) ($k47114074 Int) ($j47014073 Int) ($int14077 Int) ($menor47314076 Int))
    (=> (and (<= (select (store $array47214075 $j47014073 $int14077) $j47014073) $menor47314076)
             (<= (- 2147483648) $int14077)
             (<= $int14077 2147483647)
             (< $j47014073 $SIZE46914072)
             ($main_inv133 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076))
        ($main_if535 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914072 $j47014073 $k47114074 (store $array47214075 $j47014073 $int14077) (select (store $array47214075 $j47014073 $int14077) $j47014073)))))

; if else
(assert
  (forall (($SIZE46914072 Int) ($array47214075 (Array Int Int)) ($k47114074 Int) ($j47014073 Int) ($int14077 Int) ($menor47314076 Int))
    (=> (and (not (<= (select (store $array47214075 $j47014073 $int14077) $j47014073) $menor47314076))
             (<= (- 2147483648) $int14077)
             (<= $int14077 2147483647)
             (< $j47014073 $SIZE46914072)
             ($main_inv133 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076))
        ($main_if535 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914072 $j47014073 $k47114074 (store $array47214075 $j47014073 $int14077) $menor47314076))))

; forwards $main_inv133
(assert
  (forall (($SIZE46914072 Int) ($array47214081 (Array Int Int)) ($menor47314076 Int) ($menor47314082 Int) ($array47214075 (Array Int Int)) ($j47014079 Int) ($k47114080 Int) ($SIZE46914078 Int) ($k47114074 Int) ($j47014073 Int))
    (=> (and ($main_if535 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914078 $j47014079 $k47114080 $array47214081 $menor47314082))
        ($main_inv133 $SIZE46914078 (+ $j47014079 1) $k47114080 $array47214081 $menor47314082))))

; backwards $main_sum133
(assert
  (forall (($SIZE46914083 Int) ($SIZE46914072 Int) ($array47214081 (Array Int Int)) ($menor47314076 Int) ($menor47314082 Int) ($k47114085 Int) ($j47014084 Int) ($j47014079 Int) ($k47114080 Int) ($menor47314087 Int) ($SIZE46914078 Int) ($k47114074 Int) ($j47014073 Int) ($array47214075 (Array Int Int)) ($array47214086 (Array Int Int)))
    (=> (and ($main_sum133 $SIZE46914078 (+ $j47014079 1) $k47114080 $array47214081 $menor47314082 $SIZE46914083 $j47014084 $k47114085 $array47214086 $menor47314087)
             ($main_if535 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914078 $j47014079 $k47114080 $array47214081 $menor47314082))
        ($main_sum133 $SIZE46914072 $j47014073 $k47114074 $array47214075 $menor47314076 $SIZE46914083 $j47014084 $k47114085 $array47214086 $menor47314087))))

; __VERIFIER_assert precondition
(assert
  (forall (($j47014089 Int) ($SIZE469 Int) ($k47114090 Int) ($k471 Int) ($SIZE46914088 Int) ($menor47314092 Int) ($array472 (Array Int Int)) ($array47214091 (Array Int Int)) ($int14071 Int))
    (=> (and ($main_sum133 $SIZE469 0 $k471 $array472 $int14071 $SIZE46914088 $j47014089 $k47114090 $array47214091 $menor47314092)
             (<= (- 2147483648) $int14071)
             (<= $int14071 2147483647)
             (= $SIZE469 1))
        ($__VERIFIER_assert_pre (ite (>= (select $array47214091 0) $menor47314092) 1 0)))))

(check-sat)
