(set-logic HORN)

(declare-fun $__VERIFIER_assert_if740 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum283 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if742 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if741 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv283 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if739 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if739 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17138 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if739 cond cond17138))
        (assume_abort_if_not cond17138))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17139 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17139))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17139 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17139))
        ($__VERIFIER_assert_if740 cond cond17139))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if740 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17140 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if740 cond cond17140))
        (__VERIFIER_assert cond17140))))

; assume_abort_if_not precondition
(assert
  (forall (($int17141 Int) ($int17142 Int))
    (=> (and (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17141 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17142 Int) ($int17141 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17142 1) 1 0)))))

; loop entry $main_inv283
(assert
  (forall (($int17141 Int) ($int17142 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17142 1) 1 0))
             (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($main_inv283 $int17141 $int17142 1 0 0 1 $int17141 $int17142))))

; loop term $main_sum283
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (= 1 0))
        ($main_sum283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))))

; __VERIFIER_assert precondition
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (not (= 1 0))
             ($main_inv283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))
        ($__VERIFIER_assert_pre (ite (= 1 (- (* $p80617145 $s80917148) (* $r80817147 $q80717146))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (__VERIFIER_assert (ite (= 1 (- (* $p80617145 $s80917148) (* $r80817147 $q80717146))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))
        ($__VERIFIER_assert_pre (ite (= $a80417143 (+ (* $y81117150 $r80817147) (* $x81017149 $p80617145))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (__VERIFIER_assert (ite (= $a80417143 (+ (* $y81117150 $r80817147) (* $x81017149 $p80617145))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80617145 $s80917148) (* $r80817147 $q80717146))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))
        ($__VERIFIER_assert_pre (ite (= $b80517144 (+ (* $x81017149 $q80717146) (* $y81117150 $s80917148))) 1 0)))))

; break $main_sum283
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (= $a80417143 $b80517144)
             (__VERIFIER_assert (ite (= $b80517144 (+ (* $x81017149 $q80717146) (* $y81117150 $s80917148))) 1 0))
             (__VERIFIER_assert (ite (= $a80417143 (+ (* $y81117150 $r80817147) (* $x81017149 $p80617145))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80617145 $s80917148) (* $r80817147 $q80717146))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))
        ($main_sum283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))))

; if else
(assert
  (forall (($p80617145 Int) ($x81017149 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (not (= $a80417143 $b80517144))
             (__VERIFIER_assert (ite (= $b80517144 (+ (* $x81017149 $q80717146) (* $y81117150 $s80917148))) 1 0))
             (__VERIFIER_assert (ite (= $a80417143 (+ (* $y81117150 $r80817147) (* $x81017149 $p80617145))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80617145 $s80917148) (* $r80817147 $q80717146))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))
        ($main_if741 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150))))

; if then
(assert
  (forall (($p80617153 Int) ($y81117158 Int) ($q80717154 Int) ($p80617145 Int) ($x81017149 Int) ($r80817155 Int) ($a80417151 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($x81017157 Int) ($b80517152 Int) ($s80917156 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (> $a80417151 $b80517152)
             ($main_if741 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417151 $b80517152 $p80617153 $q80717154 $r80817155 $s80917156 $x81017157 $y81117158))
        ($main_if742 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 (- $a80417151 $b80517152) $b80517152 (- $p80617153 $q80717154) $q80717154 (- $r80817155 $s80917156) $s80917156 $x81017157 $y81117158))))

; if else
(assert
  (forall (($p80617153 Int) ($y81117158 Int) ($q80717154 Int) ($p80617145 Int) ($x81017149 Int) ($r80817155 Int) ($a80417151 Int) ($a80417143 Int) ($y81117150 Int) ($b80517144 Int) ($s80917148 Int) ($x81017157 Int) ($b80517152 Int) ($s80917156 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and (not (> $a80417151 $b80517152))
             ($main_if741 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417151 $b80517152 $p80617153 $q80717154 $r80817155 $s80917156 $x81017157 $y81117158))
        ($main_if742 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417151 (- $b80517152 $a80417151) $p80617153 (- $q80717154 $p80617153) $r80817155 (- $s80917156 $r80817155) $x81017157 $y81117158))))

; forwards $main_inv283
(assert
  (forall (($b80517160 Int) ($x81017165 Int) ($p80617145 Int) ($r80817163 Int) ($x81017149 Int) ($p80617161 Int) ($q80717162 Int) ($a80417159 Int) ($a80417143 Int) ($y81117166 Int) ($y81117150 Int) ($s80917164 Int) ($b80517144 Int) ($s80917148 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and ($main_if742 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417159 $b80517160 $p80617161 $q80717162 $r80817163 $s80917164 $x81017165 $y81117166))
        ($main_inv283 $a80417159 $b80517160 $p80617161 $q80717162 $r80817163 $s80917164 $x81017165 $y81117166))))

; backwards $main_sum283
(assert
  (forall (($b80517160 Int) ($y81117174 Int) ($x81017165 Int) ($p80617145 Int) ($b80517168 Int) ($a80417167 Int) ($x81017149 Int) ($p80617161 Int) ($q80717162 Int) ($a80417159 Int) ($a80417143 Int) ($b80517144 Int) ($s80917148 Int) ($q80717170 Int) ($r80817163 Int) ($x81017173 Int) ($y81117166 Int) ($y81117150 Int) ($s80917172 Int) ($s80917164 Int) ($r80817171 Int) ($p80617169 Int) ($q80717146 Int) ($r80817147 Int))
    (=> (and ($main_sum283 $a80417159 $b80517160 $p80617161 $q80717162 $r80817163 $s80917164 $x81017165 $y81117166 $a80417167 $b80517168 $p80617169 $q80717170 $r80817171 $s80917172 $x81017173 $y81117174)
             ($main_if742 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417159 $b80517160 $p80617161 $q80717162 $r80817163 $s80917164 $x81017165 $y81117166))
        ($main_sum283 $a80417143 $b80517144 $p80617145 $q80717146 $r80817147 $s80917148 $x81017149 $y81117150 $a80417167 $b80517168 $p80617169 $q80717170 $r80817171 $s80917172 $x81017173 $y81117174))))

; __VERIFIER_assert precondition
(assert
  (forall (($x81017181 Int) ($a80417175 Int) ($q80717178 Int) ($b80517176 Int) ($r80817179 Int) ($int17142 Int) ($p80617177 Int) ($int17141 Int) ($s80917180 Int) ($y81117182 Int))
    (=> (and ($main_sum283 $int17141 $int17142 1 0 0 1 $int17141 $int17142 $a80417175 $b80517176 $p80617177 $q80717178 $r80817179 $s80917180 $x81017181 $y81117182)
             (assume_abort_if_not (ite (>= $int17142 1) 1 0))
             (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- $a80417175 $b80517176) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x81017181 Int) ($a80417175 Int) ($q80717178 Int) ($b80517176 Int) ($r80817179 Int) ($int17142 Int) ($p80617177 Int) ($int17141 Int) ($s80917180 Int) ($y81117182 Int))
    (=> (and (__VERIFIER_assert (ite (= (- $a80417175 $b80517176) 0) 1 0))
             ($main_sum283 $int17141 $int17142 1 0 0 1 $int17141 $int17142 $a80417175 $b80517176 $p80617177 $q80717178 $r80817179 $s80917180 $x81017181 $y81117182)
             (assume_abort_if_not (ite (>= $int17142 1) 1 0))
             (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (* $p80617177 $x81017181) (* $r80817179 $y81117182)) $b80517176) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x81017181 Int) ($a80417175 Int) ($q80717178 Int) ($b80517176 Int) ($r80817179 Int) ($int17142 Int) ($p80617177 Int) ($int17141 Int) ($s80917180 Int) ($y81117182 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (* $p80617177 $x81017181) (* $r80817179 $y81117182)) $b80517176) 0) 1 0))
             (__VERIFIER_assert (ite (= (- $a80417175 $b80517176) 0) 1 0))
             ($main_sum283 $int17141 $int17142 1 0 0 1 $int17141 $int17142 $a80417175 $b80517176 $p80617177 $q80717178 $r80817179 $s80917180 $x81017181 $y81117182)
             (assume_abort_if_not (ite (>= $int17142 1) 1 0))
             (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $q80717178 $r80817179) (* $p80617177 $s80917180)) 1) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x81017181 Int) ($a80417175 Int) ($q80717178 Int) ($b80517176 Int) ($r80817179 Int) ($int17142 Int) ($p80617177 Int) ($int17141 Int) ($s80917180 Int) ($y81117182 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (* $q80717178 $r80817179) (* $p80617177 $s80917180)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (* $p80617177 $x81017181) (* $r80817179 $y81117182)) $b80517176) 0) 1 0))
             (__VERIFIER_assert (ite (= (- $a80417175 $b80517176) 0) 1 0))
             ($main_sum283 $int17141 $int17142 1 0 0 1 $int17141 $int17142 $a80417175 $b80517176 $p80617177 $q80717178 $r80817179 $s80917180 $x81017181 $y81117182)
             (assume_abort_if_not (ite (>= $int17142 1) 1 0))
             (assume_abort_if_not (ite (>= $int17141 1) 1 0))
             (<= (- 2147483648) $int17142)
             (<= $int17142 2147483647)
             (<= (- 2147483648) $int17141)
             (<= $int17141 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (* $q80717178 $x81017181) (* $s80917180 $y81117182)) $b80517176) 0) 1 0)))))

(check-sat)
