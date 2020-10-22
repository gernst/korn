(set-logic HORN)

(declare-fun $main_inv527 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum526 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $assume_abort_if_not_if377 (Int Int) Bool)
(declare-fun $main_inv526 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv529 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv528 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if379 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if378 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if380 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum527 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum528 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum529 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if377 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond10039 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if377 cond cond10039))
        (assume_abort_if_not cond10039))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10040 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10040))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if378 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10041 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if378 cond cond10041))
        (__VERIFIER_assert cond10041))))

; loop entry $main_inv526
(assert
  (forall (($uint10042 Int) ($C761 (Array Int Int)) ($A759 (Array Int Int)) ($B760 (Array Int Int)) ($M758 Int))
    (=> (and (= $M758 $uint10042)
             (<= 0 $uint10042)
             (<= $uint10042 4294967295))
        ($main_inv526 $M758 $A759 $B760 $C761 0))))

; loop term $main_sum526
(assert
  (forall (($M75810043 Int) ($i76210047 Int) ($C76110046 (Array Int Int)) ($A75910044 (Array Int Int)) ($B76010045 (Array Int Int)))
    (=> (and (not (< $i76210047 $M75810043)))
        ($main_sum526 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047))))

; if else
(assert
  (forall (($M75810043 Int) ($i76210047 Int) ($C76110046 (Array Int Int)) ($A75910044 (Array Int Int)) ($int10048 Int) ($B76010045 (Array Int Int)))
    (=> (and (<= (select (store $A75910044 $i76210047 $int10048) $i76210047) 1000000)
             (<= (- 2147483648) $int10048)
             (<= $int10048 2147483647)
             (< $i76210047 $M75810043)
             ($main_inv526 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047))
        ($main_if379 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047 $M75810043 (store $A75910044 $i76210047 $int10048) $B76010045 $C76110046 $i76210047))))

; forwards $main_inv526
(assert
  (forall (($M75810043 Int) ($i76210047 Int) ($i76210053 Int) ($M75810049 Int) ($A75910050 (Array Int Int)) ($B76010051 (Array Int Int)) ($C76110046 (Array Int Int)) ($B76010045 (Array Int Int)) ($A75910044 (Array Int Int)) ($C76110052 (Array Int Int)))
    (=> (and ($main_if379 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047 $M75810049 $A75910050 $B76010051 $C76110052 $i76210053))
        ($main_inv526 $M75810049 $A75910050 $B76010051 $C76110052 (+ $i76210053 1)))))

; backwards $main_sum526
(assert
  (forall (($M75810043 Int) ($i76210047 Int) ($i76210053 Int) ($i76210058 Int) ($M75810049 Int) ($A75910050 (Array Int Int)) ($C76110046 (Array Int Int)) ($M75810054 Int) ($C76110057 (Array Int Int)) ($A75910055 (Array Int Int)) ($B76010045 (Array Int Int)) ($B76010051 (Array Int Int)) ($B76010056 (Array Int Int)) ($A75910044 (Array Int Int)) ($C76110052 (Array Int Int)))
    (=> (and ($main_sum526 $M75810049 $A75910050 $B76010051 $C76110052 (+ $i76210053 1) $M75810054 $A75910055 $B76010056 $C76110057 $i76210058)
             ($main_if379 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047 $M75810049 $A75910050 $B76010051 $C76110052 $i76210053))
        ($main_sum526 $M75810043 $A75910044 $B76010045 $C76110046 $i76210047 $M75810054 $A75910055 $B76010056 $C76110057 $i76210058))))

; loop entry $main_inv527
(assert
  (forall (($B76010061 (Array Int Int)) ($uint10042 Int) ($C761 (Array Int Int)) ($A759 (Array Int Int)) ($A75910060 (Array Int Int)) ($B760 (Array Int Int)) ($M75810059 Int) ($M758 Int) ($i76210063 Int) ($C76110062 (Array Int Int)))
    (=> (and ($main_sum526 $M758 $A759 $B760 $C761 0 $M75810059 $A75910060 $B76010061 $C76110062 $i76210063)
             (= $M758 $uint10042)
             (<= 0 $uint10042)
             (<= $uint10042 4294967295))
        ($main_inv527 $M75810059 $A75910060 $B76010061 $C76110062 0))))

; loop term $main_sum527
(assert
  (forall (($i76210068 Int) ($A75910065 (Array Int Int)) ($C76110067 (Array Int Int)) ($M75810064 Int) ($B76010066 (Array Int Int)))
    (=> (and (not (< $i76210068 $M75810064)))
        ($main_sum527 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068))))

; if else
(assert
  (forall (($int10069 Int) ($i76210068 Int) ($A75910065 (Array Int Int)) ($C76110067 (Array Int Int)) ($M75810064 Int) ($B76010066 (Array Int Int)))
    (=> (and (<= (select (store $B76010066 $i76210068 $int10069) $i76210068) 1000000)
             (<= (- 2147483648) $int10069)
             (<= $int10069 2147483647)
             (< $i76210068 $M75810064)
             ($main_inv527 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068))
        ($main_if380 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068 $M75810064 $A75910065 (store $B76010066 $i76210068 $int10069) $C76110067 $i76210068))))

; forwards $main_inv527
(assert
  (forall (($i76210068 Int) ($A75910065 (Array Int Int)) ($A75910071 (Array Int Int)) ($C76110067 (Array Int Int)) ($C76110073 (Array Int Int)) ($M75810064 Int) ($B76010066 (Array Int Int)) ($M75810070 Int) ($i76210074 Int) ($B76010072 (Array Int Int)))
    (=> (and ($main_if380 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068 $M75810070 $A75910071 $B76010072 $C76110073 $i76210074))
        ($main_inv527 $M75810070 $A75910071 $B76010072 $C76110073 (+ $i76210074 1)))))

; backwards $main_sum527
(assert
  (forall (($A75910065 (Array Int Int)) ($C76110067 (Array Int Int)) ($M75810064 Int) ($C76110078 (Array Int Int)) ($B76010066 (Array Int Int)) ($M75810075 Int) ($M75810070 Int) ($i76210074 Int) ($B76010072 (Array Int Int)) ($i76210068 Int) ($B76010077 (Array Int Int)) ($A75910071 (Array Int Int)) ($i76210079 Int) ($C76110073 (Array Int Int)) ($A75910076 (Array Int Int)))
    (=> (and ($main_sum527 $M75810070 $A75910071 $B76010072 $C76110073 (+ $i76210074 1) $M75810075 $A75910076 $B76010077 $C76110078 $i76210079)
             ($main_if380 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068 $M75810070 $A75910071 $B76010072 $C76110073 $i76210074))
        ($main_sum527 $M75810064 $A75910065 $B76010066 $C76110067 $i76210068 $M75810075 $A75910076 $B76010077 $C76110078 $i76210079))))

; loop entry $main_inv528
(assert
  (forall (($B76010061 (Array Int Int)) ($M75810080 Int) ($C761 (Array Int Int)) ($A759 (Array Int Int)) ($A75910060 (Array Int Int)) ($i76210084 Int) ($M75810059 Int) ($uint10042 Int) ($B76010082 (Array Int Int)) ($i76210063 Int) ($C76110062 (Array Int Int)) ($B760 (Array Int Int)) ($A75910081 (Array Int Int)) ($C76110083 (Array Int Int)) ($M758 Int))
    (=> (and ($main_sum527 $M75810059 $A75910060 $B76010061 $C76110062 0 $M75810080 $A75910081 $B76010082 $C76110083 $i76210084)
             ($main_sum526 $M758 $A759 $B760 $C761 0 $M75810059 $A75910060 $B76010061 $C76110062 $i76210063)
             (= $M758 $uint10042)
             (<= 0 $uint10042)
             (<= $uint10042 4294967295))
        ($main_inv528 $M75810080 $A75910081 $B76010082 $C76110083 0))))

; loop term $main_sum528
(assert
  (forall (($C76110088 (Array Int Int)) ($M75810085 Int) ($A75910086 (Array Int Int)) ($i76210089 Int) ($B76010087 (Array Int Int)))
    (=> (and (not (< $i76210089 $M75810085)))
        ($main_sum528 $M75810085 $A75910086 $B76010087 $C76110088 $i76210089 $M75810085 $A75910086 $B76010087 $C76110088 $i76210089))))

; forwards $main_inv528
(assert
  (forall (($C76110088 (Array Int Int)) ($M75810085 Int) ($A75910086 (Array Int Int)) ($i76210089 Int) ($B76010087 (Array Int Int)))
    (=> (and (< $i76210089 $M75810085)
             ($main_inv528 $M75810085 $A75910086 $B76010087 $C76110088 $i76210089))
        ($main_inv528 $M75810085 $A75910086 $B76010087 (store $C76110088 $i76210089 (+ (select $A75910086 $i76210089) (select $B76010087 $i76210089))) (+ $i76210089 1)))))

; backwards $main_sum528
(assert
  (forall (($C76110088 (Array Int Int)) ($B76010092 (Array Int Int)) ($M75810085 Int) ($i76210094 Int) ($i76210089 Int) ($C76110093 (Array Int Int)) ($B76010087 (Array Int Int)) ($M75810090 Int) ($A75910091 (Array Int Int)) ($A75910086 (Array Int Int)))
    (=> (and ($main_sum528 $M75810085 $A75910086 $B76010087 (store $C76110088 $i76210089 (+ (select $A75910086 $i76210089) (select $B76010087 $i76210089))) (+ $i76210089 1) $M75810090 $A75910091 $B76010092 $C76110093 $i76210094)
             (< $i76210089 $M75810085))
        ($main_sum528 $M75810085 $A75910086 $B76010087 $C76110088 $i76210089 $M75810090 $A75910091 $B76010092 $C76110093 $i76210094))))

; loop entry $main_inv529
(assert
  (forall (($B76010061 (Array Int Int)) ($M75810080 Int) ($A759 (Array Int Int)) ($A75910060 (Array Int Int)) ($i76210084 Int) ($M75810059 Int) ($A75910096 (Array Int Int)) ($B76010097 (Array Int Int)) ($uint10042 Int) ($B76010082 (Array Int Int)) ($i76210099 Int) ($C761 (Array Int Int)) ($M75810095 Int) ($i76210063 Int) ($C76110062 (Array Int Int)) ($B760 (Array Int Int)) ($A75910081 (Array Int Int)) ($C76110098 (Array Int Int)) ($C76110083 (Array Int Int)) ($M758 Int))
    (=> (and ($main_sum528 $M75810080 $A75910081 $B76010082 $C76110083 0 $M75810095 $A75910096 $B76010097 $C76110098 $i76210099)
             ($main_sum527 $M75810059 $A75910060 $B76010061 $C76110062 0 $M75810080 $A75910081 $B76010082 $C76110083 $i76210084)
             ($main_sum526 $M758 $A759 $B760 $C761 0 $M75810059 $A75910060 $B76010061 $C76110062 $i76210063)
             (= $M758 $uint10042)
             (<= 0 $uint10042)
             (<= $uint10042 4294967295))
        ($main_inv529 $M75810095 $A75910096 $B76010097 $C76110098 0))))

; loop term $main_sum529
(assert
  (forall (($C76110103 (Array Int Int)) ($M75810100 Int) ($B76010102 (Array Int Int)) ($A75910101 (Array Int Int)) ($i76210104 Int))
    (=> (and (not (< $i76210104 $M75810100)))
        ($main_sum529 $M75810100 $A75910101 $B76010102 $C76110103 $i76210104 $M75810100 $A75910101 $B76010102 $C76110103 $i76210104))))

; __VERIFIER_assert precondition
(assert
  (forall (($C76110103 (Array Int Int)) ($M75810100 Int) ($B76010102 (Array Int Int)) ($A75910101 (Array Int Int)) ($i76210104 Int))
    (=> (and (< $i76210104 $M75810100)
             ($main_inv529 $M75810100 $A75910101 $B76010102 $C76110103 $i76210104))
        ($__VERIFIER_assert_pre (ite (= (select $C76110103 $i76210104) (+ (select $A75910101 $i76210104) (select $B76010102 $i76210104))) 1 0)))))

; forwards $main_inv529
(assert
  (forall (($C76110103 (Array Int Int)) ($M75810100 Int) ($B76010102 (Array Int Int)) ($A75910101 (Array Int Int)) ($i76210104 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $C76110103 $i76210104) (+ (select $A75910101 $i76210104) (select $B76010102 $i76210104))) 1 0))
             (< $i76210104 $M75810100)
             ($main_inv529 $M75810100 $A75910101 $B76010102 $C76110103 $i76210104))
        ($main_inv529 $M75810100 $A75910101 $B76010102 $C76110103 (+ $i76210104 1)))))

; backwards $main_sum529
(assert
  (forall (($C76110103 (Array Int Int)) ($M75810100 Int) ($B76010102 (Array Int Int)) ($C76110108 (Array Int Int)) ($B76010107 (Array Int Int)) ($i76210104 Int) ($i76210109 Int) ($M75810105 Int) ($A75910101 (Array Int Int)) ($A75910106 (Array Int Int)))
    (=> (and ($main_sum529 $M75810100 $A75910101 $B76010102 $C76110103 (+ $i76210104 1) $M75810105 $A75910106 $B76010107 $C76110108 $i76210109)
             (__VERIFIER_assert (ite (= (select $C76110103 $i76210104) (+ (select $A75910101 $i76210104) (select $B76010102 $i76210104))) 1 0))
             (< $i76210104 $M75810100))
        ($main_sum529 $M75810100 $A75910101 $B76010102 $C76110103 $i76210104 $M75810105 $A75910106 $B76010107 $C76110108 $i76210109))))

(check-sat)
