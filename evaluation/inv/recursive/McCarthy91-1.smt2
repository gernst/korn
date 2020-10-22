(set-logic HORN)

(declare-fun $main_if3120 (Int Int) Bool)
(declare-fun $f91_pre (Int) Bool)
(declare-fun f91 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $f91_if3119 (Int) Bool)

; post f91
(assert
  (forall ((x Int))
    (=> (and (> x 100)
             ($f91_pre x))
        (f91 x (- x 10)))))

; f91 precondition
(assert
  (forall ((x Int))
    (=> (and (not (> x 100))
             ($f91_pre x))
        ($f91_pre (+ x 11)))))

; f91 precondition
(assert
  (forall (($result210434 Int) (x Int))
    (=> (and (f91 (+ x 11) $result210434)
             (not (> x 100))
             ($f91_pre x))
        ($f91_pre $result210434))))

; post f91
(assert
  (forall ((x Int) ($result210435 Int) ($result210434 Int))
    (=> (and (f91 $result210434 $result210435)
             (f91 (+ x 11) $result210434)
             (not (> x 100))
             ($f91_pre x))
        (f91 x $result210435))))

; post f91
(assert
  (forall ((x210436 Int))
    (=> (and ($f91_if3119 x210436))
        (f91 x210436 0))))

; f91 precondition
(assert
  (forall (($x2283 Int) ($int210437 Int))
    (=> (and (= $x2283 $int210437)
             (<= (- 2147483648) $int210437)
             (<= $int210437 2147483647))
        ($f91_pre $x2283))))

; label ERROR
(assert
  (forall (($x2283 Int) ($result2284 Int) ($result210438 Int) ($int210437 Int))
    (=> (and (not (or (= $result2284 91) (and (> $x2283 102) (= $result2284 (- $x2283 10)))))
             (= $result2284 $result210438)
             (f91 $x2283 $result210438)
             (= $x2283 $int210437)
             (<= (- 2147483648) $int210437)
             (<= $int210437 2147483647))
        ($main_ERROR $x2283 $result2284))))

; error
(assert
  (forall (($x2283210439 Int) ($result2284210440 Int))
    (=> (and ($main_ERROR $x2283210439 $result2284210440))
        false)))

(check-sat)
