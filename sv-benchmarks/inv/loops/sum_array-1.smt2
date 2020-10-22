(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum264 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum265 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if690 (Int) Bool)
(declare-fun $main_inv266 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum266 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv265 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv264 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum263 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv263 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15129 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15129))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if690 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15130 Int))
    (=> (and ($__VERIFIER_assert_if690 cond15130))
        (__VERIFIER_assert cond15130))))

; loop entry $main_inv263
(assert
  (forall (($C736 (Array Int Int)) ($A734 (Array Int Int)) ($M733 Int) ($B735 (Array Int Int)) ($uint15131 Int))
    (=> (and (= $M733 $uint15131)
             (<= 0 $uint15131)
             (<= $uint15131 4294967295))
        ($main_inv263 $M733 $A734 $B735 $C736 0))))

; loop term $main_sum263
(assert
  (forall (($C73615135 (Array Int Int)) ($i73715136 Int) ($B73515134 (Array Int Int)) ($A73415133 (Array Int Int)) ($M73315132 Int))
    (=> (and (not (< $i73715136 $M73315132))
             ($main_inv263 $M73315132 $A73415133 $B73515134 $C73615135 $i73715136))
        ($main_sum263 $M73315132 $A73415133 $B73515134 $C73615135 $i73715136))))

; forwards $main_inv263
(assert
  (forall (($C73615135 (Array Int Int)) ($i73715136 Int) ($B73515134 (Array Int Int)) ($int15137 Int) ($A73415133 (Array Int Int)) ($M73315132 Int))
    (=> (and (<= (- 2147483648) $int15137)
             (<= $int15137 2147483647)
             (< $i73715136 $M73315132)
             ($main_inv263 $M73315132 $A73415133 $B73515134 $C73615135 $i73715136))
        ($main_inv263 $M73315132 (store $A73415133 $i73715136 $int15137) $B73515134 $C73615135 (+ $i73715136 1)))))

; loop entry $main_inv264
(assert
  (forall (($A73415139 (Array Int Int)) ($C73615141 (Array Int Int)) ($M73315138 Int) ($i73715142 Int) ($B73515140 (Array Int Int)))
    (=> (and ($main_sum263 $M73315138 $A73415139 $B73515140 $C73615141 $i73715142))
        ($main_inv264 $M73315138 $A73415139 $B73515140 $C73615141 0))))

; loop term $main_sum264
(assert
  (forall (($A73415144 (Array Int Int)) ($C73615146 (Array Int Int)) ($i73715147 Int) ($M73315143 Int) ($B73515145 (Array Int Int)))
    (=> (and (not (< $i73715147 $M73315143))
             ($main_inv264 $M73315143 $A73415144 $B73515145 $C73615146 $i73715147))
        ($main_sum264 $M73315143 $A73415144 $B73515145 $C73615146 $i73715147))))

; forwards $main_inv264
(assert
  (forall (($A73415144 (Array Int Int)) ($C73615146 (Array Int Int)) ($int15148 Int) ($i73715147 Int) ($M73315143 Int) ($B73515145 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int15148)
             (<= $int15148 2147483647)
             (< $i73715147 $M73315143)
             ($main_inv264 $M73315143 $A73415144 $B73515145 $C73615146 $i73715147))
        ($main_inv264 $M73315143 $A73415144 (store $B73515145 $i73715147 $int15148) $C73615146 (+ $i73715147 1)))))

; loop entry $main_inv265
(assert
  (forall (($M73315149 Int) ($B73515151 (Array Int Int)) ($i73715153 Int) ($A73415150 (Array Int Int)) ($C73615152 (Array Int Int)))
    (=> (and ($main_sum264 $M73315149 $A73415150 $B73515151 $C73615152 $i73715153))
        ($main_inv265 $M73315149 $A73415150 $B73515151 $C73615152 0))))

; loop term $main_sum265
(assert
  (forall (($B73515156 (Array Int Int)) ($C73615157 (Array Int Int)) ($A73415155 (Array Int Int)) ($M73315154 Int) ($i73715158 Int))
    (=> (and (not (< $i73715158 $M73315154))
             ($main_inv265 $M73315154 $A73415155 $B73515156 $C73615157 $i73715158))
        ($main_sum265 $M73315154 $A73415155 $B73515156 $C73615157 $i73715158))))

; forwards $main_inv265
(assert
  (forall (($B73515156 (Array Int Int)) ($C73615157 (Array Int Int)) ($A73415155 (Array Int Int)) ($M73315154 Int) ($i73715158 Int))
    (=> (and (< $i73715158 $M73315154)
             ($main_inv265 $M73315154 $A73415155 $B73515156 $C73615157 $i73715158))
        ($main_inv265 $M73315154 $A73415155 $B73515156 (store $C73615157 $i73715158 (+ (select $A73415155 $i73715158) (select $B73515156 $i73715158))) (+ $i73715158 1)))))

; loop entry $main_inv266
(assert
  (forall (($B73515161 (Array Int Int)) ($C73615162 (Array Int Int)) ($i73715163 Int) ($M73315159 Int) ($A73415160 (Array Int Int)))
    (=> (and ($main_sum265 $M73315159 $A73415160 $B73515161 $C73615162 $i73715163))
        ($main_inv266 $M73315159 $A73415160 $B73515161 $C73615162 0))))

; loop term $main_sum266
(assert
  (forall (($A73415165 (Array Int Int)) ($B73515166 (Array Int Int)) ($i73715168 Int) ($M73315164 Int) ($C73615167 (Array Int Int)))
    (=> (and (not (< $i73715168 $M73315164))
             ($main_inv266 $M73315164 $A73415165 $B73515166 $C73615167 $i73715168))
        ($main_sum266 $M73315164 $A73415165 $B73515166 $C73615167 $i73715168))))

; __VERIFIER_assert precondition
(assert
  (forall (($A73415165 (Array Int Int)) ($B73515166 (Array Int Int)) ($i73715168 Int) ($M73315164 Int) ($C73615167 (Array Int Int)))
    (=> (and (< $i73715168 $M73315164)
             ($main_inv266 $M73315164 $A73415165 $B73515166 $C73615167 $i73715168))
        ($__VERIFIER_assert_pre (ite (= (select $C73615167 $i73715168) (- (select $A73415165 $i73715168) (select $B73515166 $i73715168))) 1 0)))))

; forwards $main_inv266
(assert
  (forall (($A73415165 (Array Int Int)) ($B73515166 (Array Int Int)) ($i73715168 Int) ($M73315164 Int) ($C73615167 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $C73615167 $i73715168) (- (select $A73415165 $i73715168) (select $B73515166 $i73715168))) 1 0))
             (< $i73715168 $M73315164)
             ($main_inv266 $M73315164 $A73415165 $B73515166 $C73615167 $i73715168))
        ($main_inv266 $M73315164 $A73415165 $B73515166 $C73615167 (+ $i73715168 1)))))

(check-sat)
