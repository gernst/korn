(set-logic HORN)

(declare-fun $__VERIFIER_assert_if728 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if727 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if729 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv278 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum278 (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if727 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16972 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if727 cond cond16972))
        (assume_abort_if_not cond16972))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16973 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16973))
        false)))

; if then
(assert
  (forall ((cond Int) (cond16973 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16973))
        ($__VERIFIER_assert_if728 cond cond16973))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if728 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16974 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if728 cond cond16974))
        (__VERIFIER_assert cond16974))))

; loop entry $main_inv278
(assert
  (forall (($int16975 Int))
    (=> (and (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($main_inv278 $int16975 0 0 1 6))))

; loop term $main_sum278
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (= 1 0))
        ($main_sum278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($__VERIFIER_assert_pre (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($__VERIFIER_assert_pre (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (__VERIFIER_assert (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($__VERIFIER_assert_pre (ite (= $x78516978 (* (* $n78416977 $n78416977) $n78416977)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (__VERIFIER_assert (ite (= $x78516978 (* (* $n78416977 $n78416977) $n78416977)) 1 0))
             (__VERIFIER_assert (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $y78616979 $z78716980) (* 18 $x78516978)) (* 12 $y78616979)) (* 2 $z78716980)) 6) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78616979 $z78716980) (* 18 $x78516978)) (* 12 $y78616979)) (* 2 $z78716980)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78516978 (* (* $n78416977 $n78416977) $n78416977)) 1 0))
             (__VERIFIER_assert (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (* $z78716980 $z78716980) (* 12 $y78616979)) (* 6 $z78716980)) 12) 0) 1 0)))))

; break $main_sum278
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (not (<= $n78416977 $a78316976))
             (__VERIFIER_assert (ite (= (+ (- (- (* $z78716980 $z78716980) (* 12 $y78616979)) (* 6 $z78716980)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78616979 $z78716980) (* 18 $x78516978)) (* 12 $y78616979)) (* 2 $z78716980)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78516978 (* (* $n78416977 $n78416977) $n78416977)) 1 0))
             (__VERIFIER_assert (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($main_sum278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))))

; if else
(assert
  (forall (($x78516978 Int) ($a78316976 Int) ($y78616979 Int) ($n78416977 Int) ($z78716980 Int))
    (=> (and (<= $n78416977 $a78316976)
             (__VERIFIER_assert (ite (= (+ (- (- (* $z78716980 $z78716980) (* 12 $y78616979)) (* 6 $z78716980)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78616979 $z78716980) (* 18 $x78516978)) (* 12 $y78616979)) (* 2 $z78716980)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78516978 (* (* $n78416977 $n78416977) $n78416977)) 1 0))
             (__VERIFIER_assert (ite (= $y78616979 (+ (+ (* (* 3 $n78416977) $n78416977) (* 3 $n78416977)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78716980 (+ (* 6 $n78416977) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))
        ($main_if729 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980))))

; forwards $main_inv278
(assert
  (forall (($a78316981 Int) ($x78516978 Int) ($a78316976 Int) ($n78416982 Int) ($y78616979 Int) ($y78616984 Int) ($n78416977 Int) ($z78716980 Int) ($z78716985 Int) ($x78516983 Int))
    (=> (and ($main_if729 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316981 $n78416982 $x78516983 $y78616984 $z78716985))
        ($main_inv278 $a78316981 (+ $n78416982 1) (+ $x78516983 $y78616984) (+ $y78616984 $z78716985) (+ $z78716985 6)))))

; backwards $main_sum278
(assert
  (forall (($n78416987 Int) ($a78316986 Int) ($a78316981 Int) ($x78516978 Int) ($a78316976 Int) ($n78416982 Int) ($z78716990 Int) ($y78616984 Int) ($n78416977 Int) ($y78616979 Int) ($x78516988 Int) ($y78616989 Int) ($z78716980 Int) ($z78716985 Int) ($x78516983 Int))
    (=> (and ($main_sum278 $a78316981 (+ $n78416982 1) (+ $x78516983 $y78616984) (+ $y78616984 $z78716985) (+ $z78716985 6) $a78316986 $n78416987 $x78516988 $y78616989 $z78716990)
             ($main_if729 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316981 $n78416982 $x78516983 $y78616984 $z78716985))
        ($main_sum278 $a78316976 $n78416977 $x78516978 $y78616979 $z78716980 $a78316986 $n78416987 $x78516988 $y78616989 $z78716990))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and (__VERIFIER_assert (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0))
             ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* (* 6 $a78316991) $x78516993) (* $x78516993 $z78716995)) (* 12 $x78516993)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78316991) $x78516993) (* $x78516993 $z78716995)) (* 12 $x78516993)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0))
             ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $a78316991 $z78716995) (* 6 $a78316991)) (* 2 $y78616994)) (* 2 $z78716995)) 10) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78316991 $z78716995) (* 6 $a78316991)) (* 2 $y78616994)) (* 2 $z78716995)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78316991) $x78516993) (* $x78516993 $z78716995)) (* 12 $x78516993)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0))
             ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (- (* (* 2 $y78616994) $y78616994) (* (* 3 $x78516993) $z78716995)) (* 18 $x78516993)) (* 10 $y78616994)) (* 3 $z78716995)) 10) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (- (* (* 2 $y78616994) $y78616994) (* (* 3 $x78516993) $z78716995)) (* 18 $x78516993)) (* 10 $y78616994)) (* 3 $z78716995)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78316991 $z78716995) (* 6 $a78316991)) (* 2 $y78616994)) (* 2 $z78716995)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78316991) $x78516993) (* $x78516993 $z78716995)) (* 12 $x78516993)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0))
             ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (* $z78716995 $z78716995) (* 12 $y78616994)) (* 6 $z78716995)) 12) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78516993 Int) ($y78616994 Int) ($n78416992 Int) ($z78716995 Int) ($a78316991 Int) ($int16975 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (- (* $z78716995 $z78716995) (* 12 $y78616994)) (* 6 $z78716995)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (- (* (* 2 $y78616994) $y78616994) (* (* 3 $x78516993) $z78716995)) (* 18 $x78516993)) (* 10 $y78616994)) (* 3 $z78716995)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78316991 $z78716995) (* 6 $a78316991)) (* 2 $y78616994)) (* 2 $z78716995)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78316991) $x78516993) (* $x78516993 $z78716995)) (* 12 $x78516993)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78716995 (+ (* 6 $n78416992) 6)) 1 0))
             ($main_sum278 $int16975 0 0 1 6 $a78316991 $n78416992 $x78516993 $y78616994 $z78716995)
             (<= (- 2147483648) $int16975)
             (<= $int16975 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $y78616994 $z78716995) (* 18 $x78516993)) (* 12 $y78616994)) (* 2 $z78716995)) 6) 0) 1 0)))))

(check-sat)
