(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if695 (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_inv268 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if694 (Int) Bool)
(declare-fun $main_if698 (Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum268 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if699 (Int Int Int) Bool)
(declare-fun $main_if696 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if693 (Int) Bool)
(declare-fun $main_if697 (Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if693 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15192 Int))
    (=> (and ($assume_abort_if_not_if693 cond15192))
        (assume_abort_if_not cond15192))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15193 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15193))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if694 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15194 Int))
    (=> (and ($__VERIFIER_assert_if694 cond15194))
        (__VERIFIER_assert cond15194))))

; if else
(assert
  (forall (($tmp744 Int) ($int15195 Int) ($int15196 Int) ($x742 Int) ($z743 Int))
    (=> (and (> $x742 (- 100))
             (= $z743 $int15196)
             (<= (- 2147483648) $int15196)
             (<= $int15196 2147483647)
             (= $x742 $int15195)
             (<= (- 2147483648) $int15195)
             (<= $int15195 2147483647))
        ($main_if695 $x742 $z743 $tmp744))))

; if else
(assert
  (forall (($x74215197 Int) ($z74315198 Int) ($tmp74415199 Int))
    (=> (and (< $x74215197 200)
             ($main_if695 $x74215197 $z74315198 $tmp74415199))
        ($main_if696 $x74215197 $z74315198 $tmp74415199))))

; if else
(assert
  (forall (($x74215200 Int) ($z74315201 Int) ($tmp74415202 Int))
    (=> (and (> $z74315201 100)
             ($main_if696 $x74215200 $z74315201 $tmp74415202))
        ($main_if697 $x74215200 $z74315201 $tmp74415202))))

; if else
(assert
  (forall (($x74215203 Int) ($z74315204 Int) ($tmp74415205 Int))
    (=> (and (< $z74315204 200)
             ($main_if697 $x74215203 $z74315204 $tmp74415205))
        ($main_if698 $x74215203 $z74315204 $tmp74415205))))

; loop entry $main_inv268
(assert
  (forall (($x74215206 Int) ($z74315207 Int) ($tmp74415208 Int))
    (=> (and ($main_if698 $x74215206 $z74315207 $tmp74415208))
        ($main_inv268 $x74215206 $z74315207 $tmp74415208))))

; loop term $main_sum268
(assert
  (forall (($x74215209 Int) ($z74315210 Int) ($tmp74415211 Int))
    (=> (and (not (and (< $x74215209 100) (> $z74315210 100)))
             ($main_inv268 $x74215209 $z74315210 $tmp74415211))
        ($main_sum268 $x74215209 $z74315210 $tmp74415211))))

; if then
(assert
  (forall (($x74215209 Int) ($z74315210 Int) ($tmp74415211 Int) ($bool15212 Int))
    (=> (and (not (= $tmp74415211 0))
             (= $tmp74415211 $bool15212)
             (or (= $bool15212 0) (= $bool15212 1))
             (< $x74215209 100)
             (> $z74315210 100)
             ($main_inv268 $x74215209 $z74315210 $tmp74415211))
        ($main_if699 (+ $x74215209 1) $z74315210 $tmp74415211))))

; if else
(assert
  (forall (($x74215209 Int) ($z74315210 Int) ($tmp74415211 Int) ($bool15212 Int))
    (=> (and (= $tmp74415211 0)
             (= $tmp74415211 $bool15212)
             (or (= $bool15212 0) (= $bool15212 1))
             (< $x74215209 100)
             (> $z74315210 100)
             ($main_inv268 $x74215209 $z74315210 $tmp74415211))
        ($main_if699 (- $x74215209 1) (- $z74315210 1) $tmp74415211))))

; forwards $main_inv268
(assert
  (forall (($x74215213 Int) ($z74315214 Int) ($tmp74415215 Int))
    (=> (and ($main_if699 $x74215213 $z74315214 $tmp74415215))
        ($main_inv268 $x74215213 $z74315214 $tmp74415215))))

; __VERIFIER_assert precondition
(assert
  (forall (($x74215216 Int) ($z74315217 Int) ($tmp74415218 Int))
    (=> (and ($main_sum268 $x74215216 $z74315217 $tmp74415218))
        ($__VERIFIER_assert_pre (ite (or (>= $x74215216 100) (<= $z74315217 100)) 1 0)))))

(check-sat)
