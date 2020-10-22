(set-logic HORN)

(declare-fun $assume_abort_if_not_if385 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $f_if388 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_sum531 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_inv531 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if392 (Int Int) Bool)
(declare-fun $f_L2 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $f_L1 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if386 (Int Int) Bool)
(declare-fun $f_P1 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_if389 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_inv532 (Int Int Int Int Int Int) Bool)
(declare-fun $f_if387 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_sum532 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_if390 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_if391 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if385 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond10130 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if385 cond cond10130))
        (assume_abort_if_not cond10130))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10131 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10131))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if386 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10132 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if386 cond cond10132))
        (__VERIFIER_assert cond10132))))

; label L1
(assert
  (forall (($y766 Int) ($x765 Int) ($int10134 Int) ($c769 Int) ($int10133 Int) ($z768 Int) (d Int) ($k767 Int) ($int10135 Int))
    (=> (and (= $z768 1)
             (= $k767 $int10135)
             (<= (- 2147483648) $int10135)
             (<= $int10135 2147483647)
             (= $y766 $int10134)
             (<= (- 2147483648) $int10134)
             (<= $int10134 2147483647)
             (= $x765 $int10133)
             (<= (- 2147483648) $int10133)
             (<= $int10133 2147483647)
             ($f_pre d))
        ($f_L1 d $x765 $y766 $k767 $z768 $c769 d $x765 $y766 $k767 $z768 $c769))))

; post f
(assert
  (forall (($x765 Int) ($c76910141 Int) ($x76510137 Int) ($c769 Int) ($z768 Int) ($z76810140 Int) ($k767 Int) (d10136 Int) ($y766 Int) ($k76710139 Int) (d Int) ($y76610138 Int))
    (=> (and (not (<= $k76710139 1073741823))
             ($f_L1 d $x765 $y766 $k767 $z768 $c769 d10136 $x76510137 $y76610138 $k76710139 $z76810140 $c76910141))
        (f d10136))))

; if else
(assert
  (forall (($x765 Int) ($c76910141 Int) ($x76510137 Int) ($c769 Int) ($z768 Int) ($z76810140 Int) ($k767 Int) (d10136 Int) ($y766 Int) ($k76710139 Int) (d Int) ($y76610138 Int))
    (=> (and (<= $k76710139 1073741823)
             ($f_L1 d $x765 $y766 $k767 $z768 $c769 d10136 $x76510137 $y76610138 $k76710139 $z76810140 $c76910141))
        ($f_if387 d $x765 $y766 $k767 $z768 $c769 d10136 $x76510137 $y76610138 $k76710139 $z76810140 $c76910141))))

; loop entry $f_inv531
(assert
  (forall (($y766 Int) ($y76610144 Int) ($x765 Int) ($c76910147 Int) ($c769 Int) ($x76510143 Int) ($z768 Int) (d10142 Int) ($z76810146 Int) (d Int) ($k767 Int) ($k76710145 Int))
    (=> (and ($f_if387 d $x765 $y766 $k767 $z768 $c769 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147))
        ($f_inv531 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147))))

; loop term $f_sum531
(assert
  (forall (($y76610150 Int) ($z76810152 Int) ($c76910153 Int) (d10148 Int) ($k76710151 Int) ($x76510149 Int))
    (=> (and (not (< $z76810152 $k76710151)))
        ($f_sum531 d10148 $x76510149 $y76610150 $k76710151 $z76810152 $c76910153 d10148 $x76510149 $y76610150 $k76710151 $z76810152 $c76910153))))

; forwards $f_inv531
(assert
  (forall (($y76610150 Int) ($z76810152 Int) ($c76910153 Int) (d10148 Int) ($k76710151 Int) ($x76510149 Int))
    (=> (and (< $z76810152 $k76710151)
             ($f_inv531 d10148 $x76510149 $y76610150 $k76710151 $z76810152 $c76910153))
        ($f_inv531 d10148 $x76510149 $y76610150 $k76710151 (* 2 $z76810152) $c76910153))))

; backwards $f_sum531
(assert
  (forall ((d10154 Int) ($z76810152 Int) ($z76810158 Int) ($c76910153 Int) ($y76610156 Int) (d10148 Int) ($k76710151 Int) ($c76910159 Int) ($x76510155 Int) ($x76510149 Int) ($k76710157 Int) ($y76610150 Int))
    (=> (and ($f_sum531 d10148 $x76510149 $y76610150 $k76710151 (* 2 $z76810152) $c76910153 d10154 $x76510155 $y76610156 $k76710157 $z76810158 $c76910159)
             (< $z76810152 $k76710151))
        ($f_sum531 d10148 $x76510149 $y76610150 $k76710151 $z76810152 $c76910153 d10154 $x76510155 $y76610156 $k76710157 $z76810158 $c76910159))))

; __VERIFIER_assert precondition
(assert
  (forall (($y766 Int) ($c76910165 Int) ($x765 Int) ($c76910147 Int) ($c769 Int) ($x76510143 Int) ($z768 Int) (d Int) (d10160 Int) ($x76510161 Int) ($y76610144 Int) (d10142 Int) ($z76810164 Int) ($z76810146 Int) ($k76710163 Int) ($y76610162 Int) ($k767 Int) ($k76710145 Int))
    (=> (and ($f_sum531 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147 d10160 $x76510161 $y76610162 $k76710163 $z76810164 $c76910165)
             ($f_if387 d $x765 $y766 $k767 $z768 $c769 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147))
        ($__VERIFIER_assert_pre (ite (>= $z76810164 1) 1 0)))))

; label L2
(assert
  (forall (($y766 Int) ($c76910165 Int) ($x765 Int) ($c76910147 Int) ($c769 Int) ($x76510143 Int) ($z768 Int) (d Int) (d10160 Int) ($x76510161 Int) ($y76610144 Int) (d10142 Int) ($z76810164 Int) ($z76810146 Int) ($k76710163 Int) ($y76610162 Int) ($k767 Int) ($k76710145 Int))
    (=> (and (__VERIFIER_assert (ite (>= $z76810164 1) 1 0))
             ($f_sum531 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147 d10160 $x76510161 $y76610162 $k76710163 $z76810164 $c76910165)
             ($f_if387 d $x765 $y766 $k767 $z768 $c769 d10142 $x76510143 $y76610144 $k76710145 $z76810146 $c76910147))
        ($f_L2 d $x765 $y766 $k767 $z768 $c769 d10160 $x76510161 $y76610162 $k76710163 $z76810164 $c76910165))))

; post f
(assert
  (forall (($k76710169 Int) ($y766 Int) (d10166 Int) ($z76810170 Int) ($y76610168 Int) ($x765 Int) ($x76510167 Int) ($c769 Int) ($z768 Int) (d Int) ($c76910171 Int) ($k767 Int))
    (=> (and (not (and (<= $x76510167 1000000) (>= $x76510167 (- 1000000))))
             ($f_L2 d $x765 $y766 $k767 $z768 $c769 d10166 $x76510167 $y76610168 $k76710169 $z76810170 $c76910171))
        (f d10166))))

; if else
(assert
  (forall (($k76710169 Int) ($y766 Int) (d10166 Int) ($z76810170 Int) ($y76610168 Int) ($x765 Int) ($x76510167 Int) ($c769 Int) ($z768 Int) (d Int) ($c76910171 Int) ($k767 Int))
    (=> (and (<= $x76510167 1000000)
             (>= $x76510167 (- 1000000))
             ($f_L2 d $x765 $y766 $k767 $z768 $c769 d10166 $x76510167 $y76610168 $k76710169 $z76810170 $c76910171))
        ($f_if388 d $x765 $y766 $k767 $z768 $c769 d10166 $x76510167 $y76610168 $k76710169 $z76810170 $c76910171))))

; post f
(assert
  (forall (($y766 Int) ($k76710175 Int) ($c769 Int) ($z76810176 Int) ($y76610174 Int) ($x76510173 Int) ($z768 Int) ($c76910177 Int) ($k767 Int) (d Int) ($x765 Int) (d10172 Int))
    (=> (and (not (and (<= $y76610174 1000000) (>= $y76610174 (- 1000000))))
             ($f_if388 d $x765 $y766 $k767 $z768 $c769 d10172 $x76510173 $y76610174 $k76710175 $z76810176 $c76910177))
        (f d10172))))

; if else
(assert
  (forall (($y766 Int) ($k76710175 Int) ($c769 Int) ($z76810176 Int) ($y76610174 Int) ($x76510173 Int) ($z768 Int) ($c76910177 Int) ($k767 Int) (d Int) ($x765 Int) (d10172 Int))
    (=> (and (<= $y76610174 1000000)
             (>= $y76610174 (- 1000000))
             ($f_if388 d $x765 $y766 $k767 $z768 $c769 d10172 $x76510173 $y76610174 $k76710175 $z76810176 $c76910177))
        ($f_if389 d $x765 $y766 $k767 $z768 $c769 d10172 $x76510173 $y76610174 $k76710175 $z76810176 $c76910177))))

; post f
(assert
  (forall (($y766 Int) (d10178 Int) ($x76510179 Int) ($z76810182 Int) ($x765 Int) ($c769 Int) ($k76710181 Int) ($y76610180 Int) ($z768 Int) ($k767 Int) ($c76910183 Int) (d Int))
    (=> (and (not (and (<= $k76710181 1000000) (>= $k76710181 (- 1000000))))
             ($f_if389 d $x765 $y766 $k767 $z768 $c769 d10178 $x76510179 $y76610180 $k76710181 $z76810182 $c76910183))
        (f d10178))))

; if else
(assert
  (forall (($y766 Int) (d10178 Int) ($x76510179 Int) ($z76810182 Int) ($x765 Int) ($c769 Int) ($k76710181 Int) ($y76610180 Int) ($z768 Int) ($k767 Int) ($c76910183 Int) (d Int))
    (=> (and (<= $k76710181 1000000)
             (>= $k76710181 (- 1000000))
             ($f_if389 d $x765 $y766 $k767 $z768 $c769 d10178 $x76510179 $y76610180 $k76710181 $z76810182 $c76910183))
        ($f_if390 d $x765 $y766 $k767 $z768 $c769 d10178 $x76510179 $y76610180 $k76710181 $z76810182 $c76910183))))

; loop entry $f_inv532
(assert
  (forall (($x765 Int) (d10184 Int) ($z76810188 Int) ($c769 Int) ($k76710187 Int) ($z768 Int) ($y76610186 Int) ($k767 Int) ($x76510185 Int) ($y766 Int) ($c76910189 Int) (d Int))
    (=> (and ($f_if390 d $x765 $y766 $k767 $z768 $c769 d10184 $x76510185 $y76610186 $k76710187 $z76810188 $c76910189))
        ($f_inv532 d10184 $x76510185 $y76610186 $k76710187 $z76810188 $c76910189))))

; loop term $f_sum532
(assert
  (forall (($c76910195 Int) ($y76610192 Int) ($x76510191 Int) ($k76710193 Int) (d10190 Int) ($z76810194 Int))
    (=> (and (not (and (> $x76510191 0) (> $y76610192 0))))
        ($f_sum532 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195))))

; label P1
(assert
  (forall (($y76610192 Int) ($x76510191 Int) ($k76710193 Int) (d10190 Int) ($z76810194 Int) ($bool10196 Int) ($c76910195 Int))
    (=> (and (not (= $c76910195 0))
             (= $c76910195 $bool10196)
             (or (= $bool10196 0) (= $bool10196 1))
             (> $x76510191 0)
             (> $y76610192 0)
             ($f_inv532 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195))
        ($f_P1 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195))))

; if then
(assert
  (forall (($c76910195 Int) ($y76610192 Int) ($z76810201 Int) ($bool10203 Int) ($x76510191 Int) ($x76510198 Int) (d10190 Int) ($z76810194 Int) ($y76610199 Int) ($k76710193 Int) (d10197 Int) ($k76710200 Int) ($c76910202 Int))
    (=> (and (or (= $bool10203 0) (= $bool10203 1))
             ($f_P1 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10197 $x76510198 $y76610199 $k76710200 $z76810201 $c76910202))
        ($f_if391 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10197 (- $x76510198 d10197) $bool10203 $k76710200 (- $z76810201 1) $c76910202))))

; if else
(assert
  (forall (($y76610192 Int) ($x76510191 Int) ($k76710193 Int) (d10190 Int) ($z76810194 Int) ($bool10196 Int) ($c76910195 Int))
    (=> (and (= $c76910195 0)
             (= $c76910195 $bool10196)
             (or (= $bool10196 0) (= $bool10196 1))
             (> $x76510191 0)
             (> $y76610192 0)
             ($f_inv532 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195))
        ($f_if391 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10190 $x76510191 (- $y76610192 d10190) $k76710193 $z76810194 $c76910195))))

; forwards $f_inv532
(assert
  (forall (($y76610192 Int) ($x76510191 Int) ($c76910209 Int) (d10190 Int) ($z76810194 Int) ($x76510205 Int) (d10204 Int) ($z76810208 Int) ($c76910195 Int) ($y76610206 Int) ($k76710193 Int) ($k76710207 Int))
    (=> (and ($f_if391 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10204 $x76510205 $y76610206 $k76710207 $z76810208 $c76910209))
        ($f_inv532 d10204 $x76510205 $y76610206 $k76710207 $z76810208 $c76910209))))

; backwards $f_sum532
(assert
  (forall (($y76610192 Int) ($x76510211 Int) ($x76510191 Int) ($y76610212 Int) ($c76910209 Int) (d10190 Int) ($x76510205 Int) (d10204 Int) ($z76810208 Int) ($z76810214 Int) ($c76910195 Int) ($y76610206 Int) ($c76910215 Int) ($k76710213 Int) ($k76710193 Int) ($k76710207 Int) (d10210 Int) ($z76810194 Int))
    (=> (and ($f_sum532 d10204 $x76510205 $y76610206 $k76710207 $z76810208 $c76910209 d10210 $x76510211 $y76610212 $k76710213 $z76810214 $c76910215)
             ($f_if391 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10204 $x76510205 $y76610206 $k76710207 $z76810208 $c76910209))
        ($f_sum532 d10190 $x76510191 $y76610192 $k76710193 $z76810194 $c76910195 d10210 $x76510211 $y76610212 $k76710213 $z76810214 $c76910215))))

; post f
(assert
  (forall (($x76510217 Int) (d10184 Int) ($z76810188 Int) ($c769 Int) ($k76710219 Int) ($y76610186 Int) ($k767 Int) ($x76510185 Int) ($y766 Int) ($x765 Int) ($c76910221 Int) ($k76710187 Int) ($z76810220 Int) ($y76610218 Int) ($z768 Int) (d10216 Int) ($c76910189 Int) (d Int))
    (=> (and ($f_sum532 d10184 $x76510185 $y76610186 $k76710187 $z76810188 $c76910189 d10216 $x76510217 $y76610218 $k76710219 $z76810220 $c76910221)
             ($f_if390 d $x765 $y766 $k767 $z768 $c769 d10184 $x76510185 $y76610186 $k76710187 $z76810188 $c76910189))
        (f d10216))))

; f precondition
(assert
  (forall (($c770 Int) ($bool10222 Int))
    (=> (and (not (= $c770 0))
             (= $c770 $bool10222)
             (or (= $bool10222 0) (= $bool10222 1)))
        ($f_pre 1))))

; f precondition
(assert
  (forall (($c770 Int) ($bool10222 Int))
    (=> (and (= $c770 0)
             (= $c770 $bool10222)
             (or (= $bool10222 0) (= $bool10222 1)))
        ($f_pre 2))))

; if then
(assert
  (forall (($c770 Int) ($bool10222 Int))
    (=> (and (f 1)
             (not (= $c770 0))
             (= $c770 $bool10222)
             (or (= $bool10222 0) (= $bool10222 1)))
        ($main_if392 $c770 $c770))))

; if else
(assert
  (forall (($c770 Int) ($bool10222 Int))
    (=> (and (f 2)
             (= $c770 0)
             (= $c770 $bool10222)
             (or (= $bool10222 0) (= $bool10222 1)))
        ($main_if392 $c770 $c770))))

(check-sat)
