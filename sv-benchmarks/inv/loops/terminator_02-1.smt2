(set-logic HORN)

(declare-fun $main_if692 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum267 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if691 (Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $main_inv267 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15174 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15174))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if691 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15175 Int))
    (=> (and ($__VERIFIER_assert_if691 cond15175))
        (__VERIFIER_assert cond15175))))

; loop entry $main_inv267
(assert
  (forall (($y739 Int) ($x738 Int) ($int15176 Int) ($int15178 Int) ($tmp741 Int) ($int15177 Int) ($z740 Int))
    (=> (and (= $z740 $int15178)
             (<= (- 2147483648) $int15178)
             (<= $int15178 2147483647)
             (= $y739 $int15177)
             (<= (- 2147483648) $int15177)
             (<= $int15177 2147483647)
             (= $x738 $int15176)
             (<= (- 2147483648) $int15176)
             (<= $int15176 2147483647))
        ($main_inv267 $x738 $y739 $z740 $tmp741))))

; loop term $main_sum267
(assert
  (forall (($x73815179 Int) ($y73915180 Int) ($z74015181 Int) ($tmp74115182 Int))
    (=> (and (not (and (< $x73815179 100) (< 100 $z74015181)))
             ($main_inv267 $x73815179 $y73915180 $z74015181 $tmp74115182))
        ($main_sum267 $x73815179 $y73915180 $z74015181 $tmp74115182))))

; if then
(assert
  (forall (($z74015181 Int) ($y73915180 Int) ($x73815179 Int) ($tmp74115182 Int) ($bool15183 Int))
    (=> (and (not (= $tmp74115182 0))
             (= $tmp74115182 $bool15183)
             (or (= $bool15183 0) (= $bool15183 1))
             (< $x73815179 100)
             (< 100 $z74015181)
             ($main_inv267 $x73815179 $y73915180 $z74015181 $tmp74115182))
        ($main_if692 (+ $x73815179 1) $y73915180 $z74015181 $tmp74115182))))

; if else
(assert
  (forall (($z74015181 Int) ($y73915180 Int) ($x73815179 Int) ($tmp74115182 Int) ($bool15183 Int))
    (=> (and (= $tmp74115182 0)
             (= $tmp74115182 $bool15183)
             (or (= $bool15183 0) (= $bool15183 1))
             (< $x73815179 100)
             (< 100 $z74015181)
             ($main_inv267 $x73815179 $y73915180 $z74015181 $tmp74115182))
        ($main_if692 (- $x73815179 1) $y73915180 (- $z74015181 1) $tmp74115182))))

; forwards $main_inv267
(assert
  (forall (($x73815184 Int) ($y73915185 Int) ($z74015186 Int) ($tmp74115187 Int))
    (=> (and ($main_if692 $x73815184 $y73915185 $z74015186 $tmp74115187))
        ($main_inv267 $x73815184 $y73915185 $z74015186 $tmp74115187))))

; __VERIFIER_assert precondition
(assert
  (forall (($x73815188 Int) ($y73915189 Int) ($z74015190 Int) ($tmp74115191 Int))
    (=> (and ($main_sum267 $x73815188 $y73915189 $z74015190 $tmp74115191))
        ($__VERIFIER_assert_pre 0))))

(check-sat)
