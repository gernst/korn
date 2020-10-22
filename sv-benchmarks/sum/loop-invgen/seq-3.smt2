(set-logic HORN)

(declare-fun $main_if268 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum478 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv480 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv478 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum479 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if267 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv479 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if266 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum480 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if265 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if265 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9158 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if265 cond cond9158))
        (assume_abort_if_not cond9158))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9159 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9159))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if266 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9160 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if266 cond cond9160))
        (__VERIFIER_assert cond9160))))

; if else
(assert
  (forall (($n0642 Int) ($n1643 Int) ($int9162 Int) ($i0644 Int) ($j1647 Int) ($i1646 Int) ($int9161 Int) ($k645 Int))
    (=> (and (<= (- 1000000) $int9161)
             (< $int9161 1000000)
             (<= (- 2147483648) $int9162)
             (<= $int9162 2147483647)
             (<= (- 2147483648) $int9161)
             (<= $int9161 2147483647)
             (= $k645 0)
             (= $i0644 0))
        ($main_if267 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $int9161 $int9162 $i0644 $k645 $i1646 $j1647))))

; if else
(assert
  (forall (($n0642 Int) ($n1643 Int) ($n06429163 Int) ($i0644 Int) ($j16479168 Int) ($j1647 Int) ($k6459166 Int) ($k645 Int) ($i1646 Int) ($i16469167 Int) ($n16439164 Int) ($i06449165 Int))
    (=> (and (<= (- 1000000) $n16439164)
             (< $n16439164 1000000)
             ($main_if267 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $n06429163 $n16439164 $i06449165 $k6459166 $i16469167 $j16479168))
        ($main_if268 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $n06429163 $n16439164 $i06449165 $k6459166 $i16469167 $j16479168))))

; loop entry $main_inv478
(assert
  (forall (($n0642 Int) ($n1643 Int) ($k6459172 Int) ($j1647 Int) ($j16479174 Int) ($i06449171 Int) ($n16439170 Int) ($i0644 Int) ($k645 Int) ($i16469173 Int) ($i1646 Int) ($n06429169 Int))
    (=> (and ($main_if268 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174))
        ($main_inv478 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174))))

; loop term $main_sum478
(assert
  (forall (($k6459178 Int) ($i16469179 Int) ($n06429175 Int) ($i06449177 Int) ($j16479180 Int) ($n16439176 Int))
    (=> (and (not (< $i06449177 $n06429175)))
        ($main_sum478 $n06429175 $n16439176 $i06449177 $k6459178 $i16469179 $j16479180 $n06429175 $n16439176 $i06449177 $k6459178 $i16469179 $j16479180))))

; forwards $main_inv478
(assert
  (forall (($k6459178 Int) ($i16469179 Int) ($n06429175 Int) ($i06449177 Int) ($j16479180 Int) ($n16439176 Int))
    (=> (and (< $i06449177 $n06429175)
             ($main_inv478 $n06429175 $n16439176 $i06449177 $k6459178 $i16469179 $j16479180))
        ($main_inv478 $n06429175 $n16439176 (+ $i06449177 1) (+ $k6459178 1) $i16469179 $j16479180))))

; backwards $main_sum478
(assert
  (forall (($k6459178 Int) ($n06429181 Int) ($n06429175 Int) ($i06449177 Int) ($j16479180 Int) ($k6459184 Int) ($i06449183 Int) ($i16469179 Int) ($n16439176 Int) ($i16469185 Int) ($n16439182 Int) ($j16479186 Int))
    (=> (and ($main_sum478 $n06429175 $n16439176 (+ $i06449177 1) (+ $k6459178 1) $i16469179 $j16479180 $n06429181 $n16439182 $i06449183 $k6459184 $i16469185 $j16479186)
             (< $i06449177 $n06429175))
        ($main_sum478 $n06429175 $n16439176 $i06449177 $k6459178 $i16469179 $j16479180 $n06429181 $n16439182 $i06449183 $k6459184 $i16469185 $j16479186))))

; loop entry $main_inv479
(assert
  (forall (($n0642 Int) ($n1643 Int) ($i16469191 Int) ($n06429187 Int) ($k6459172 Int) ($j1647 Int) ($n16439188 Int) ($k6459190 Int) ($j16479174 Int) ($i06449171 Int) ($j16479192 Int) ($i06449189 Int) ($n16439170 Int) ($i0644 Int) ($k645 Int) ($i16469173 Int) ($i1646 Int) ($n06429169 Int))
    (=> (and (= $i16469191 0)
             ($main_sum478 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174 $n06429187 $n16439188 $i06449189 $k6459190 $i16469191 $j16479192)
             ($main_if268 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174))
        ($main_inv479 $n06429187 $n16439188 $i06449189 $k6459190 $i16469191 $j16479192))))

; loop term $main_sum479
(assert
  (forall (($k6459196 Int) ($n06429193 Int) ($i16469197 Int) ($i06449195 Int) ($n16439194 Int) ($j16479198 Int))
    (=> (and (not (< $i16469197 $n16439194)))
        ($main_sum479 $n06429193 $n16439194 $i06449195 $k6459196 $i16469197 $j16479198 $n06429193 $n16439194 $i06449195 $k6459196 $i16469197 $j16479198))))

; forwards $main_inv479
(assert
  (forall (($k6459196 Int) ($n06429193 Int) ($i16469197 Int) ($i06449195 Int) ($n16439194 Int) ($j16479198 Int))
    (=> (and (< $i16469197 $n16439194)
             ($main_inv479 $n06429193 $n16439194 $i06449195 $k6459196 $i16469197 $j16479198))
        ($main_inv479 $n06429193 $n16439194 $i06449195 (+ $k6459196 1) (+ $i16469197 1) $j16479198))))

; backwards $main_sum479
(assert
  (forall (($k6459202 Int) ($j16479204 Int) ($k6459196 Int) ($n16439200 Int) ($i06449195 Int) ($i16469203 Int) ($n06429199 Int) ($n06429193 Int) ($i06449201 Int) ($i16469197 Int) ($n16439194 Int) ($j16479198 Int))
    (=> (and ($main_sum479 $n06429193 $n16439194 $i06449195 (+ $k6459196 1) (+ $i16469197 1) $j16479198 $n06429199 $n16439200 $i06449201 $k6459202 $i16469203 $j16479204)
             (< $i16469197 $n16439194))
        ($main_sum479 $n06429193 $n16439194 $i06449195 $k6459196 $i16469197 $j16479198 $n06429199 $n16439200 $i06449201 $k6459202 $i16469203 $j16479204))))

; loop entry $main_inv480
(assert
  (forall (($i06449207 Int) ($n0642 Int) ($i16469191 Int) ($n06429187 Int) ($n16439206 Int) ($j1647 Int) ($n16439188 Int) ($k6459190 Int) ($i06449171 Int) ($j16479192 Int) ($i06449189 Int) ($n1643 Int) ($i16469209 Int) ($n16439170 Int) ($i0644 Int) ($k6459172 Int) ($k6459208 Int) ($n06429205 Int) ($k645 Int) ($i16469173 Int) ($i1646 Int) ($n06429169 Int) ($j16479210 Int) ($j16479174 Int))
    (=> (and (= $j16479210 0)
             ($main_sum479 $n06429187 $n16439188 $i06449189 $k6459190 $i16469191 $j16479192 $n06429205 $n16439206 $i06449207 $k6459208 $i16469209 $j16479210)
             (= $i16469191 0)
             ($main_sum478 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174 $n06429187 $n16439188 $i06449189 $k6459190 $i16469191 $j16479192)
             ($main_if268 $n0642 $n1643 $i0644 $k645 $i1646 $j1647 $n06429169 $n16439170 $i06449171 $k6459172 $i16469173 $j16479174))
        ($main_inv480 $n06429205 $n16439206 $i06449207 $k6459208 $i16469209 $j16479210))))

; loop term $main_sum480
(assert
  (forall (($j16479216 Int) ($i16469215 Int) ($k6459214 Int) ($n06429211 Int) ($i06449213 Int) ($n16439212 Int))
    (=> (and (not (< $j16479216 (+ $n06429211 $n16439212))))
        ($main_sum480 $n06429211 $n16439212 $i06449213 $k6459214 $i16469215 $j16479216 $n06429211 $n16439212 $i06449213 $k6459214 $i16469215 $j16479216))))

; __VERIFIER_assert precondition
(assert
  (forall (($j16479216 Int) ($i16469215 Int) ($k6459214 Int) ($n06429211 Int) ($i06449213 Int) ($n16439212 Int))
    (=> (and (< $j16479216 (+ $n06429211 $n16439212))
             ($main_inv480 $n06429211 $n16439212 $i06449213 $k6459214 $i16469215 $j16479216))
        ($__VERIFIER_assert_pre (ite (> $k6459214 0) 1 0)))))

; forwards $main_inv480
(assert
  (forall (($j16479216 Int) ($i16469215 Int) ($k6459214 Int) ($n06429211 Int) ($i06449213 Int) ($n16439212 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6459214 0) 1 0))
             (< $j16479216 (+ $n06429211 $n16439212))
             ($main_inv480 $n06429211 $n16439212 $i06449213 $k6459214 $i16469215 $j16479216))
        ($main_inv480 $n06429211 $n16439212 $i06449213 (- $k6459214 1) $i16469215 (+ $j16479216 1)))))

; backwards $main_sum480
(assert
  (forall (($j16479216 Int) ($n06429211 Int) ($n06429217 Int) ($i06449213 Int) ($i16469221 Int) ($n16439212 Int) ($j16479222 Int) ($n16439218 Int) ($i16469215 Int) ($i06449219 Int) ($k6459220 Int) ($k6459214 Int))
    (=> (and ($main_sum480 $n06429211 $n16439212 $i06449213 (- $k6459214 1) $i16469215 (+ $j16479216 1) $n06429217 $n16439218 $i06449219 $k6459220 $i16469221 $j16479222)
             (__VERIFIER_assert (ite (> $k6459214 0) 1 0))
             (< $j16479216 (+ $n06429211 $n16439212)))
        ($main_sum480 $n06429211 $n16439212 $i06449213 $k6459214 $i16469215 $j16479216 $n06429217 $n16439218 $i06449219 $k6459220 $i16469221 $j16479222))))

(check-sat)
