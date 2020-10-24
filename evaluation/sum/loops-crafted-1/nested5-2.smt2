(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv212 (Int Int Int Int Int) Bool)
(declare-fun $main_inv215 (Int Int Int Int Int) Bool)
(declare-fun $main_sum216 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv216 (Int Int Int Int Int) Bool)
(declare-fun $main_inv213 (Int Int Int Int Int) Bool)
(declare-fun $main_sum212 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum214 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if599 (Int Int) Bool)
(declare-fun $main_sum213 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum215 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv214 (Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15110 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15110))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if599 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15111 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if599 cond cond15111))
        (__VERIFIER_assert cond15111))))

; loop entry $main_inv212
(assert
  (forall (($v591 Int) ($y588 Int) ($x587 Int) ($z589 Int) ($w590 Int))
    (=> (and (= $v591 0)
             (= $w590 0)
             (= $z589 0)
             (= $y588 0)
             (= $x587 0))
        ($main_inv212 $x587 $y588 $z589 0 $v591))))

; loop term $main_sum212
(assert
  (forall (($v59115116 Int) ($w59015115 Int) ($x58715112 Int) ($y58815113 Int) ($z58915114 Int))
    (=> (and (not (< $w59015115 268435455)))
        ($main_sum212 $x58715112 $y58815113 $z58915114 $w59015115 $v59115116 $x58715112 $y58815113 $z58915114 $w59015115 $v59115116))))

; loop entry $main_inv213
(assert
  (forall (($v59115116 Int) ($w59015115 Int) ($x58715112 Int) ($y58815113 Int) ($z58915114 Int))
    (=> (and (< $w59015115 268435455)
             ($main_inv212 $x58715112 $y58815113 $z58915114 $w59015115 $v59115116))
        ($main_inv213 0 $y58815113 $z58915114 $w59015115 $v59115116))))

; loop term $main_sum213
(assert
  (forall (($w59015120 Int) ($y58815118 Int) ($x58715117 Int) ($z58915119 Int) ($v59115121 Int))
    (=> (and (not (< $x58715117 10)))
        ($main_sum213 $x58715117 $y58815118 $z58915119 $w59015120 $v59115121 $x58715117 $y58815118 $z58915119 $w59015120 $v59115121))))

; loop entry $main_inv214
(assert
  (forall (($w59015120 Int) ($y58815118 Int) ($x58715117 Int) ($z58915119 Int) ($v59115121 Int))
    (=> (and (< $x58715117 10)
             ($main_inv213 $x58715117 $y58815118 $z58915119 $w59015120 $v59115121))
        ($main_inv214 $x58715117 0 $z58915119 $w59015120 $v59115121))))

; loop term $main_sum214
(assert
  (forall (($y58815123 Int) ($z58915124 Int) ($x58715122 Int) ($w59015125 Int) ($v59115126 Int))
    (=> (and (not (< $y58815123 10)))
        ($main_sum214 $x58715122 $y58815123 $z58915124 $w59015125 $v59115126 $x58715122 $y58815123 $z58915124 $w59015125 $v59115126))))

; loop entry $main_inv215
(assert
  (forall (($y58815123 Int) ($z58915124 Int) ($x58715122 Int) ($w59015125 Int) ($v59115126 Int))
    (=> (and (< $y58815123 10)
             ($main_inv214 $x58715122 $y58815123 $z58915124 $w59015125 $v59115126))
        ($main_inv215 $x58715122 $y58815123 0 $w59015125 $v59115126))))

; loop term $main_sum215
(assert
  (forall (($v59115131 Int) ($x58715127 Int) ($w59015130 Int) ($z58915129 Int) ($y58815128 Int))
    (=> (and (not (< $z58915129 10)))
        ($main_sum215 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131))))

; loop entry $main_inv216
(assert
  (forall (($v59115131 Int) ($x58715127 Int) ($w59015130 Int) ($z58915129 Int) ($y58815128 Int))
    (=> (and (< $z58915129 10)
             ($main_inv215 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131))
        ($main_inv216 $x58715127 $y58815128 $z58915129 $w59015130 0))))

; loop term $main_sum216
(assert
  (forall (($v59115136 Int) ($y58815133 Int) ($w59015135 Int) ($x58715132 Int) ($z58915134 Int))
    (=> (and (not (< $v59115136 268435455)))
        ($main_sum216 $x58715132 $y58815133 $z58915134 $w59015135 $v59115136 $x58715132 $y58815133 $z58915134 $w59015135 $v59115136))))

; forwards $main_inv216
(assert
  (forall (($v59115136 Int) ($y58815133 Int) ($w59015135 Int) ($x58715132 Int) ($z58915134 Int))
    (=> (and (< $v59115136 268435455)
             ($main_inv216 $x58715132 $y58815133 $z58915134 $w59015135 $v59115136))
        ($main_inv216 $x58715132 $y58815133 $z58915134 $w59015135 (+ $v59115136 1)))))

; backwards $main_sum216
(assert
  (forall (($v59115136 Int) ($y58815133 Int) ($x58715137 Int) ($z58915139 Int) ($w59015140 Int) ($w59015135 Int) ($x58715132 Int) ($y58815138 Int) ($z58915134 Int) ($v59115141 Int))
    (=> (and ($main_sum216 $x58715132 $y58815133 $z58915134 $w59015135 (+ $v59115136 1) $x58715137 $y58815138 $z58915139 $w59015140 $v59115141)
             (< $v59115136 268435455))
        ($main_sum216 $x58715132 $y58815133 $z58915134 $w59015135 $v59115136 $x58715137 $y58815138 $z58915139 $w59015140 $v59115141))))

; __VERIFIER_assert precondition
(assert
  (forall (($z58915144 Int) ($y58815143 Int) ($w59015145 Int) ($v59115131 Int) ($x58715127 Int) ($w59015130 Int) ($x58715142 Int) ($z58915129 Int) ($v59115146 Int) ($y58815128 Int))
    (=> (and ($main_sum216 $x58715127 $y58815128 $z58915129 $w59015130 0 $x58715142 $y58815143 $z58915144 $w59015145 $v59115146)
             (< $z58915129 10)
             ($main_inv215 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131))
        ($__VERIFIER_assert_pre (ite (= (mod $v59115146 4) 0) 1 0)))))

; forwards $main_inv215
(assert
  (forall (($z58915144 Int) ($y58815143 Int) ($w59015145 Int) ($v59115131 Int) ($x58715127 Int) ($w59015130 Int) ($x58715142 Int) ($z58915129 Int) ($v59115146 Int) ($y58815128 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $v59115146 4) 0) 1 0))
             ($main_sum216 $x58715127 $y58815128 $z58915129 $w59015130 0 $x58715142 $y58815143 $z58915144 $w59015145 $v59115146)
             (< $z58915129 10)
             ($main_inv215 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131))
        ($main_inv215 $x58715142 $y58815143 (+ $z58915144 1) $w59015145 $v59115146))))

; backwards $main_sum215
(assert
  (forall (($z58915144 Int) ($y58815143 Int) ($w59015145 Int) ($w59015150 Int) ($x58715127 Int) ($z58915129 Int) ($v59115146 Int) ($z58915149 Int) ($v59115131 Int) ($v59115151 Int) ($w59015130 Int) ($x58715142 Int) ($y58815148 Int) ($y58815128 Int) ($x58715147 Int))
    (=> (and ($main_sum215 $x58715142 $y58815143 (+ $z58915144 1) $w59015145 $v59115146 $x58715147 $y58815148 $z58915149 $w59015150 $v59115151)
             (__VERIFIER_assert (ite (= (mod $v59115146 4) 0) 1 0))
             ($main_sum216 $x58715127 $y58815128 $z58915129 $w59015130 0 $x58715142 $y58815143 $z58915144 $w59015145 $v59115146)
             (< $z58915129 10))
        ($main_sum215 $x58715127 $y58815128 $z58915129 $w59015130 $v59115131 $x58715147 $y58815148 $z58915149 $w59015150 $v59115151))))

; forwards $main_inv214
(assert
  (forall (($x58715152 Int) ($y58815123 Int) ($z58915154 Int) ($z58915124 Int) ($y58815153 Int) ($x58715122 Int) ($w59015155 Int) ($w59015125 Int) ($v59115156 Int) ($v59115126 Int))
    (=> (and ($main_sum215 $x58715122 $y58815123 0 $w59015125 $v59115126 $x58715152 $y58815153 $z58915154 $w59015155 $v59115156)
             (< $y58815123 10)
             ($main_inv214 $x58715122 $y58815123 $z58915124 $w59015125 $v59115126))
        ($main_inv214 $x58715152 (+ $y58815153 1) $z58915154 $w59015155 $v59115156))))

; backwards $main_sum214
(assert
  (forall (($x58715157 Int) ($w59015160 Int) ($x58715152 Int) ($y58815123 Int) ($z58915154 Int) ($z58915159 Int) ($z58915124 Int) ($y58815158 Int) ($y58815153 Int) ($x58715122 Int) ($w59015155 Int) ($w59015125 Int) ($v59115156 Int) ($v59115126 Int) ($v59115161 Int))
    (=> (and ($main_sum214 $x58715152 (+ $y58815153 1) $z58915154 $w59015155 $v59115156 $x58715157 $y58815158 $z58915159 $w59015160 $v59115161)
             ($main_sum215 $x58715122 $y58815123 0 $w59015125 $v59115126 $x58715152 $y58815153 $z58915154 $w59015155 $v59115156)
             (< $y58815123 10))
        ($main_sum214 $x58715122 $y58815123 $z58915124 $w59015125 $v59115126 $x58715157 $y58815158 $z58915159 $w59015160 $v59115161))))

; forwards $main_inv213
(assert
  (forall (($w59015120 Int) ($v59115166 Int) ($x58715117 Int) ($z58915119 Int) ($z58915164 Int) ($w59015165 Int) ($v59115121 Int) ($y58815163 Int) ($x58715162 Int) ($y58815118 Int))
    (=> (and ($main_sum214 $x58715117 0 $z58915119 $w59015120 $v59115121 $x58715162 $y58815163 $z58915164 $w59015165 $v59115166)
             (< $x58715117 10)
             ($main_inv213 $x58715117 $y58815118 $z58915119 $w59015120 $v59115121))
        ($main_inv213 (+ $x58715162 1) $y58815163 $z58915164 $w59015165 $v59115166))))

; backwards $main_sum213
(assert
  (forall (($v59115166 Int) ($x58715117 Int) ($z58915164 Int) ($w59015165 Int) ($y58815163 Int) ($w59015170 Int) ($w59015120 Int) ($x58715162 Int) ($y58815118 Int) ($z58915119 Int) ($y58815168 Int) ($x58715167 Int) ($z58915169 Int) ($v59115171 Int) ($v59115121 Int))
    (=> (and ($main_sum213 (+ $x58715162 1) $y58815163 $z58915164 $w59015165 $v59115166 $x58715167 $y58815168 $z58915169 $w59015170 $v59115171)
             ($main_sum214 $x58715117 0 $z58915119 $w59015120 $v59115121 $x58715162 $y58815163 $z58915164 $w59015165 $v59115166)
             (< $x58715117 10))
        ($main_sum213 $x58715117 $y58815118 $z58915119 $w59015120 $v59115121 $x58715167 $y58815168 $z58915169 $w59015170 $v59115171))))

; forwards $main_inv212
(assert
  (forall (($v59115116 Int) ($v59115176 Int) ($x58715112 Int) ($z58915174 Int) ($x58715172 Int) ($y58815173 Int) ($w59015175 Int) ($w59015115 Int) ($y58815113 Int) ($z58915114 Int))
    (=> (and ($main_sum213 0 $y58815113 $z58915114 $w59015115 $v59115116 $x58715172 $y58815173 $z58915174 $w59015175 $v59115176)
             (< $w59015115 268435455)
             ($main_inv212 $x58715112 $y58815113 $z58915114 $w59015115 $v59115116))
        ($main_inv212 $x58715172 $y58815173 $z58915174 (+ $w59015175 1) $v59115176))))

; backwards $main_sum212
(assert
  (forall (($v59115176 Int) ($v59115181 Int) ($z58915179 Int) ($z58915174 Int) ($x58715172 Int) ($y58815178 Int) ($v59115116 Int) ($w59015180 Int) ($y58815173 Int) ($w59015175 Int) ($w59015115 Int) ($x58715112 Int) ($x58715177 Int) ($y58815113 Int) ($z58915114 Int))
    (=> (and ($main_sum212 $x58715172 $y58815173 $z58915174 (+ $w59015175 1) $v59115176 $x58715177 $y58815178 $z58915179 $w59015180 $v59115181)
             ($main_sum213 0 $y58815113 $z58915114 $w59015115 $v59115116 $x58715172 $y58815173 $z58915174 $w59015175 $v59115176)
             (< $w59015115 268435455))
        ($main_sum212 $x58715112 $y58815113 $z58915114 $w59015115 $v59115116 $x58715177 $y58815178 $z58915179 $w59015180 $v59115181))))

(check-sat)
