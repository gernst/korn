(set-logic HORN)

(declare-fun $__VERIFIER_assert_if28 (Int Int) Bool)
(declare-fun $main_inv61 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv63 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum62 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv59 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum60 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum64 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv64 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum63 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv60 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv62 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum61 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_if29 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum59 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1168 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1168))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if28 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1169 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if28 cond cond1169))
        (__VERIFIER_assert cond1169))))

; loop entry $main_inv59
(assert
  (forall (($m83 Int) ($n84 Int) ($A85 (Array Int (Array Int Int))) ($min86 Int))
    (=> (and (= $n84 1500)
             (= $m83 1000))
        ($main_inv59 0 0 $m83 $n84 $A85 $min86))))

; loop term $main_sum59
(assert
  (forall (($min861175 Int) ($A851174 (Array Int (Array Int Int))) ($m831172 Int) ($i811170 Int) ($n841173 Int) ($j821171 Int))
    (=> (and (not (< $i811170 $m831172)))
        ($main_sum59 $i811170 $j821171 $m831172 $n841173 $A851174 $min861175 $i811170 $j821171 $m831172 $n841173 $A851174 $min861175))))

; loop entry $main_inv60
(assert
  (forall (($min861175 Int) ($A851174 (Array Int (Array Int Int))) ($m831172 Int) ($i811170 Int) ($n841173 Int) ($j821171 Int))
    (=> (and (< $i811170 $m831172)
             ($main_inv59 $i811170 $j821171 $m831172 $n841173 $A851174 $min861175))
        ($main_inv60 $i811170 0 $m831172 $n841173 $A851174 $min861175))))

; loop term $main_sum60
(assert
  (forall (($A851180 (Array Int (Array Int Int))) ($m831178 Int) ($i811176 Int) ($n841179 Int) ($j821177 Int) ($min861181 Int))
    (=> (and (not (< $j821177 $n841179)))
        ($main_sum60 $i811176 $j821177 $m831178 $n841179 $A851180 $min861181 $i811176 $j821177 $m831178 $n841179 $A851180 $min861181))))

; forwards $main_inv60
(assert
  (forall (($A851180 (Array Int (Array Int Int))) ($int1182 Int) ($m831178 Int) ($i811176 Int) ($n841179 Int) ($j821177 Int) ($min861181 Int))
    (=> (and (<= (- 2147483648) $int1182)
             (<= $int1182 2147483647)
             (< $j821177 $n841179)
             ($main_inv60 $i811176 $j821177 $m831178 $n841179 $A851180 $min861181))
        ($main_inv60 $i811176 (+ $j821177 1) $m831178 $n841179 (store $A851180 $i811176 (store (select $A851180 $i811176) $j821177 $int1182)) $min861181))))

; backwards $main_sum60
(assert
  (forall (($m831185 Int) ($A851180 (Array Int (Array Int Int))) ($int1182 Int) ($m831178 Int) ($i811176 Int) ($i811183 Int) ($j821184 Int) ($A851187 (Array Int (Array Int Int))) ($min861188 Int) ($j821177 Int) ($min861181 Int) ($n841186 Int) ($n841179 Int))
    (=> (and ($main_sum60 $i811176 (+ $j821177 1) $m831178 $n841179 (store $A851180 $i811176 (store (select $A851180 $i811176) $j821177 $int1182)) $min861181 $i811183 $j821184 $m831185 $n841186 $A851187 $min861188)
             (<= (- 2147483648) $int1182)
             (<= $int1182 2147483647)
             (< $j821177 $n841179))
        ($main_sum60 $i811176 $j821177 $m831178 $n841179 $A851180 $min861181 $i811183 $j821184 $m831185 $n841186 $A851187 $min861188))))

; forwards $main_inv59
(assert
  (forall (($m831191 Int) ($j821190 Int) ($A851174 (Array Int (Array Int Int))) ($i811170 Int) ($n841192 Int) ($min861194 Int) ($n841173 Int) ($j821171 Int) ($min861175 Int) ($A851193 (Array Int (Array Int Int))) ($m831172 Int) ($i811189 Int))
    (=> (and ($main_sum60 $i811170 0 $m831172 $n841173 $A851174 $min861175 $i811189 $j821190 $m831191 $n841192 $A851193 $min861194)
             (< $i811170 $m831172)
             ($main_inv59 $i811170 $j821171 $m831172 $n841173 $A851174 $min861175))
        ($main_inv59 (+ $i811189 1) $j821190 $m831191 $n841192 $A851193 $min861194))))

; backwards $main_sum59
(assert
  (forall (($j821196 Int) ($j821190 Int) ($i811170 Int) ($min861200 Int) ($m831197 Int) ($min861194 Int) ($n841173 Int) ($j821171 Int) ($n841198 Int) ($m831191 Int) ($min861175 Int) ($A851193 (Array Int (Array Int Int))) ($A851199 (Array Int (Array Int Int))) ($A851174 (Array Int (Array Int Int))) ($m831172 Int) ($i811189 Int) ($n841192 Int) ($i811195 Int))
    (=> (and ($main_sum59 (+ $i811189 1) $j821190 $m831191 $n841192 $A851193 $min861194 $i811195 $j821196 $m831197 $n841198 $A851199 $min861200)
             ($main_sum60 $i811170 0 $m831172 $n841173 $A851174 $min861175 $i811189 $j821190 $m831191 $n841192 $A851193 $min861194)
             (< $i811170 $m831172))
        ($main_sum59 $i811170 $j821171 $m831172 $n841173 $A851174 $min861175 $i811195 $j821196 $m831197 $n841198 $A851199 $min861200))))

; loop entry $main_inv61
(assert
  (forall (($m83 Int) ($A851205 (Array Int (Array Int Int))) ($j821202 Int) ($i811201 Int) ($A85 (Array Int (Array Int Int))) ($min861206 Int) ($n841204 Int) ($n84 Int) ($min86 Int) ($m831203 Int))
    (=> (and ($main_sum59 0 0 $m83 $n84 $A85 $min86 $i811201 $j821202 $m831203 $n841204 $A851205 $min861206)
             (= $n84 1500)
             (= $m83 1000))
        ($main_inv61 0 0 $m831203 $n841204 $A851205 (select (select $A851205 0) 0)))))

; loop term $main_sum61
(assert
  (forall (($min861212 Int) ($m831209 Int) ($i811207 Int) ($A851211 (Array Int (Array Int Int))) ($n841210 Int) ($j821208 Int))
    (=> (and (not (< $i811207 $n841210)))
        ($main_sum61 $i811207 $j821208 $m831209 $n841210 $A851211 $min861212 $i811207 $j821208 $m831209 $n841210 $A851211 $min861212))))

; loop entry $main_inv62
(assert
  (forall (($min861212 Int) ($m831209 Int) ($i811207 Int) ($A851211 (Array Int (Array Int Int))) ($n841210 Int) ($j821208 Int))
    (=> (and (< $i811207 $n841210)
             ($main_inv61 $i811207 $j821208 $m831209 $n841210 $A851211 $min861212))
        ($main_inv62 $i811207 0 $m831209 $n841210 $A851211 $min861212))))

; loop term $main_sum62
(assert
  (forall (($A851217 (Array Int (Array Int Int))) ($n841216 Int) ($min861218 Int) ($j821214 Int) ($i811213 Int) ($m831215 Int))
    (=> (and (not (< $j821214 $n841216)))
        ($main_sum62 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218))))

; if then
(assert
  (forall (($A851217 (Array Int (Array Int Int))) ($n841216 Int) ($min861218 Int) ($j821214 Int) ($i811213 Int) ($m831215 Int))
    (=> (and (< (select (select $A851217 $i811213) $j821214) $min861218)
             (< $j821214 $n841216)
             ($main_inv62 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218))
        ($main_if29 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811213 $j821214 $m831215 $n841216 $A851217 (select (select $A851217 $i811213) $j821214)))))

; if else
(assert
  (forall (($A851217 (Array Int (Array Int Int))) ($n841216 Int) ($min861218 Int) ($j821214 Int) ($i811213 Int) ($m831215 Int))
    (=> (and (not (< (select (select $A851217 $i811213) $j821214) $min861218))
             (< $j821214 $n841216)
             ($main_inv62 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218))
        ($main_if29 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218))))

; forwards $main_inv62
(assert
  (forall (($min861224 Int) ($i811219 Int) ($A851217 (Array Int (Array Int Int))) ($n841222 Int) ($min861218 Int) ($m831221 Int) ($j821214 Int) ($A851223 (Array Int (Array Int Int))) ($i811213 Int) ($m831215 Int) ($j821220 Int) ($n841216 Int))
    (=> (and ($main_if29 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811219 $j821220 $m831221 $n841222 $A851223 $min861224))
        ($main_inv62 $i811219 (+ $j821220 1) $m831221 $n841222 $A851223 $min861224))))

; backwards $main_sum62
(assert
  (forall (($min861224 Int) ($i811219 Int) ($A851229 (Array Int (Array Int Int))) ($min861218 Int) ($m831221 Int) ($j821214 Int) ($A851223 (Array Int (Array Int Int))) ($i811213 Int) ($i811225 Int) ($A851217 (Array Int (Array Int Int))) ($n841222 Int) ($n841228 Int) ($j821220 Int) ($n841216 Int) ($min861230 Int) ($m831227 Int) ($m831215 Int) ($j821226 Int))
    (=> (and ($main_sum62 $i811219 (+ $j821220 1) $m831221 $n841222 $A851223 $min861224 $i811225 $j821226 $m831227 $n841228 $A851229 $min861230)
             ($main_if29 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811219 $j821220 $m831221 $n841222 $A851223 $min861224))
        ($main_sum62 $i811213 $j821214 $m831215 $n841216 $A851217 $min861218 $i811225 $j821226 $m831227 $n841228 $A851229 $min861230))))

; forwards $main_inv61
(assert
  (forall (($n841234 Int) ($m831209 Int) ($A851235 (Array Int (Array Int Int))) ($n841210 Int) ($min861236 Int) ($j821208 Int) ($min861212 Int) ($i811231 Int) ($m831233 Int) ($i811207 Int) ($j821232 Int) ($A851211 (Array Int (Array Int Int))))
    (=> (and ($main_sum62 $i811207 0 $m831209 $n841210 $A851211 $min861212 $i811231 $j821232 $m831233 $n841234 $A851235 $min861236)
             (< $i811207 $n841210)
             ($main_inv61 $i811207 $j821208 $m831209 $n841210 $A851211 $min861212))
        ($main_inv61 (+ $i811231 1) $j821232 $m831233 $n841234 $A851235 $min861236))))

; backwards $main_sum61
(assert
  (forall (($min861242 Int) ($n841234 Int) ($m831209 Int) ($n841240 Int) ($n841210 Int) ($min861236 Int) ($j821208 Int) ($j821238 Int) ($min861212 Int) ($i811231 Int) ($m831233 Int) ($i811207 Int) ($i811237 Int) ($A851235 (Array Int (Array Int Int))) ($A851241 (Array Int (Array Int Int))) ($A851211 (Array Int (Array Int Int))) ($m831239 Int) ($j821232 Int))
    (=> (and ($main_sum61 (+ $i811231 1) $j821232 $m831233 $n841234 $A851235 $min861236 $i811237 $j821238 $m831239 $n841240 $A851241 $min861242)
             ($main_sum62 $i811207 0 $m831209 $n841210 $A851211 $min861212 $i811231 $j821232 $m831233 $n841234 $A851235 $min861236)
             (< $i811207 $n841210))
        ($main_sum61 $i811207 $j821208 $m831209 $n841210 $A851211 $min861212 $i811237 $j821238 $m831239 $n841240 $A851241 $min861242))))

; loop entry $main_inv63
(assert
  (forall (($A851205 (Array Int (Array Int Int))) ($j821202 Int) ($A851247 (Array Int (Array Int Int))) ($A85 (Array Int (Array Int Int))) ($min861206 Int) ($min861248 Int) ($n841204 Int) ($j821244 Int) ($m83 Int) ($m831245 Int) ($min86 Int) ($m831203 Int) ($i811201 Int) ($n841246 Int) ($n84 Int) ($i811243 Int))
    (=> (and ($main_sum61 0 0 $m831203 $n841204 $A851205 (select (select $A851205 0) 0) $i811243 $j821244 $m831245 $n841246 $A851247 $min861248)
             ($main_sum59 0 0 $m83 $n84 $A85 $min86 $i811201 $j821202 $m831203 $n841204 $A851205 $min861206)
             (= $n84 1500)
             (= $m83 1000))
        ($main_inv63 0 0 $m831245 $n841246 $A851247 $min861248))))

; loop term $main_sum63
(assert
  (forall (($i811249 Int) ($A851253 (Array Int (Array Int Int))) ($j821250 Int) ($n841252 Int) ($min861254 Int) ($m831251 Int))
    (=> (and (not (< $i811249 $n841252)))
        ($main_sum63 $i811249 $j821250 $m831251 $n841252 $A851253 $min861254 $i811249 $j821250 $m831251 $n841252 $A851253 $min861254))))

; loop entry $main_inv64
(assert
  (forall (($i811249 Int) ($A851253 (Array Int (Array Int Int))) ($j821250 Int) ($n841252 Int) ($min861254 Int) ($m831251 Int))
    (=> (and (< $i811249 $n841252)
             ($main_inv63 $i811249 $j821250 $m831251 $n841252 $A851253 $min861254))
        ($main_inv64 $i811249 0 $m831251 $n841252 $A851253 $min861254))))

; loop term $main_sum64
(assert
  (forall (($m831257 Int) ($i811255 Int) ($n841258 Int) ($min861260 Int) ($A851259 (Array Int (Array Int Int))) ($j821256 Int))
    (=> (and (not (< $j821256 $n841258)))
        ($main_sum64 $i811255 $j821256 $m831257 $n841258 $A851259 $min861260 $i811255 $j821256 $m831257 $n841258 $A851259 $min861260))))

; __VERIFIER_assert precondition
(assert
  (forall (($m831257 Int) ($i811255 Int) ($n841258 Int) ($min861260 Int) ($A851259 (Array Int (Array Int Int))) ($j821256 Int))
    (=> (and (< $j821256 $n841258)
             ($main_inv64 $i811255 $j821256 $m831257 $n841258 $A851259 $min861260))
        ($__VERIFIER_assert_pre (ite (>= (select (select $A851259 $i811255) $j821256) $min861260) 1 0)))))

; forwards $main_inv64
(assert
  (forall (($m831257 Int) ($i811255 Int) ($n841258 Int) ($min861260 Int) ($A851259 (Array Int (Array Int Int))) ($j821256 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select (select $A851259 $i811255) $j821256) $min861260) 1 0))
             (< $j821256 $n841258)
             ($main_inv64 $i811255 $j821256 $m831257 $n841258 $A851259 $min861260))
        ($main_inv64 $i811255 (+ $j821256 1) $m831257 $n841258 $A851259 $min861260))))

; backwards $main_sum64
(assert
  (forall (($m831257 Int) ($i811255 Int) ($i811261 Int) ($n841264 Int) ($min861260 Int) ($A851259 (Array Int (Array Int Int))) ($m831263 Int) ($j821256 Int) ($j821262 Int) ($n841258 Int) ($A851265 (Array Int (Array Int Int))) ($min861266 Int))
    (=> (and ($main_sum64 $i811255 (+ $j821256 1) $m831257 $n841258 $A851259 $min861260 $i811261 $j821262 $m831263 $n841264 $A851265 $min861266)
             (__VERIFIER_assert (ite (>= (select (select $A851259 $i811255) $j821256) $min861260) 1 0))
             (< $j821256 $n841258))
        ($main_sum64 $i811255 $j821256 $m831257 $n841258 $A851259 $min861260 $i811261 $j821262 $m831263 $n841264 $A851265 $min861266))))

; forwards $main_inv63
(assert
  (forall (($min861272 Int) ($A851271 (Array Int (Array Int Int))) ($A851253 (Array Int (Array Int Int))) ($j821268 Int) ($m831269 Int) ($i811267 Int) ($j821250 Int) ($n841252 Int) ($i811249 Int) ($n841270 Int) ($min861254 Int) ($m831251 Int))
    (=> (and ($main_sum64 $i811249 0 $m831251 $n841252 $A851253 $min861254 $i811267 $j821268 $m831269 $n841270 $A851271 $min861272)
             (< $i811249 $n841252)
             ($main_inv63 $i811249 $j821250 $m831251 $n841252 $A851253 $min861254))
        ($main_inv63 (+ $i811267 1) $j821268 $m831269 $n841270 $A851271 $min861272))))

; backwards $main_sum63
(assert
  (forall (($A851271 (Array Int (Array Int Int))) ($A851253 (Array Int (Array Int Int))) ($j821274 Int) ($A851277 (Array Int (Array Int Int))) ($n841276 Int) ($j821268 Int) ($m831269 Int) ($i811267 Int) ($j821250 Int) ($n841252 Int) ($min861278 Int) ($min861272 Int) ($i811273 Int) ($i811249 Int) ($n841270 Int) ($m831275 Int) ($min861254 Int) ($m831251 Int))
    (=> (and ($main_sum63 (+ $i811267 1) $j821268 $m831269 $n841270 $A851271 $min861272 $i811273 $j821274 $m831275 $n841276 $A851277 $min861278)
             ($main_sum64 $i811249 0 $m831251 $n841252 $A851253 $min861254 $i811267 $j821268 $m831269 $n841270 $A851271 $min861272)
             (< $i811249 $n841252))
        ($main_sum63 $i811249 $j821250 $m831251 $n841252 $A851253 $min861254 $i811273 $j821274 $m831275 $n841276 $A851277 $min861278))))

(check-sat)
