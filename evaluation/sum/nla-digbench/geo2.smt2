(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if744 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if743 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv284 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if745 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum284 (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if743 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17183 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if743 cond cond17183))
        (assume_abort_if_not cond17183))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17184 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17184))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17184 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17184))
        ($__VERIFIER_assert_if744 cond cond17184))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if744 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17185 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if744 cond cond17185))
        (__VERIFIER_assert cond17185))))

; loop entry $main_inv284
(assert
  (forall (($int17186 Int) ($int17187 Int))
    (=> (and (<= (- 2147483648) $int17187)
             (<= $int17187 2147483647)
             (<= (- 2147483648) $int17186)
             (<= $int17186 2147483647))
        ($main_inv284 $int17186 $int17187 1 1 1))))

; loop term $main_sum284
(assert
  (forall (($x81417190 Int) ($z81217188 Int) ($k81317189 Int) ($y81517191 Int) ($c81617192 Int))
    (=> (and (= 1 0))
        ($main_sum284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))))

; __VERIFIER_assert precondition
(assert
  (forall (($x81417190 Int) ($z81217188 Int) ($k81317189 Int) ($y81517191 Int) ($c81617192 Int))
    (=> (and (not (= 1 0))
             ($main_inv284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ 1 (* $x81417190 $z81217188)) $x81417190) (* $z81217188 $y81517191)) 0) 1 0)))))

; break $main_sum284
(assert
  (forall (($x81417190 Int) ($z81217188 Int) ($k81317189 Int) ($y81517191 Int) ($c81617192 Int))
    (=> (and (not (< $c81617192 $k81317189))
             (__VERIFIER_assert (ite (= (- (- (+ 1 (* $x81417190 $z81217188)) $x81417190) (* $z81217188 $y81517191)) 0) 1 0))
             (not (= 1 0))
             ($main_inv284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))
        ($main_sum284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))))

; if else
(assert
  (forall (($x81417190 Int) ($z81217188 Int) ($k81317189 Int) ($y81517191 Int) ($c81617192 Int))
    (=> (and (< $c81617192 $k81317189)
             (__VERIFIER_assert (ite (= (- (- (+ 1 (* $x81417190 $z81217188)) $x81417190) (* $z81217188 $y81517191)) 0) 1 0))
             (not (= 1 0))
             ($main_inv284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))
        ($main_if745 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192))))

; forwards $main_inv284
(assert
  (forall (($x81417195 Int) ($k81317194 Int) ($y81517196 Int) ($x81417190 Int) ($z81217188 Int) ($k81317189 Int) ($c81617197 Int) ($y81517191 Int) ($c81617192 Int) ($z81217193 Int))
    (=> (and ($main_if745 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217193 $k81317194 $x81417195 $y81517196 $c81617197))
        ($main_inv284 $z81217193 $k81317194 (+ (* $x81417195 $z81217193) 1) (* $y81517196 $z81217193) (+ $c81617197 1)))))

; backwards $main_sum284
(assert
  (forall (($x81417195 Int) ($k81317194 Int) ($y81517196 Int) ($x81417200 Int) ($c81617202 Int) ($x81417190 Int) ($z81217188 Int) ($y81517201 Int) ($k81317199 Int) ($k81317189 Int) ($c81617197 Int) ($z81217198 Int) ($y81517191 Int) ($c81617192 Int) ($z81217193 Int))
    (=> (and ($main_sum284 $z81217193 $k81317194 (+ (* $x81417195 $z81217193) 1) (* $y81517196 $z81217193) (+ $c81617197 1) $z81217198 $k81317199 $x81417200 $y81517201 $c81617202)
             ($main_if745 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217193 $k81317194 $x81417195 $y81517196 $c81617197))
        ($main_sum284 $z81217188 $k81317189 $x81417190 $y81517191 $c81617192 $z81217198 $k81317199 $x81417200 $y81517201 $c81617202))))

; __VERIFIER_assert precondition
(assert
  (forall (($int17186 Int) ($k81317204 Int) ($int17187 Int) ($y81517206 Int) ($z81217203 Int) ($c81617207 Int) ($x81417205 Int))
    (=> (and ($main_sum284 $int17186 $int17187 1 1 1 $z81217203 $k81317204 $x81417205 $y81517206 $c81617207)
             (<= (- 2147483648) $int17187)
             (<= $int17187 2147483647)
             (<= (- 2147483648) $int17186)
             (<= $int17186 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ 1 (* $x81417205 $z81217203)) $x81417205) (* $z81217203 $y81517206)) 0) 1 0)))))

(check-sat)
