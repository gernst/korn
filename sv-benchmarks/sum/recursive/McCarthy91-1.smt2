(set-logic HORN)

(declare-fun $main_if3120 (Int Int Int Int) Bool)
(declare-fun $f91_if3119 (Int Int) Bool)
(declare-fun $f91_pre (Int) Bool)
(declare-fun f91 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)

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
  (forall (($result213435 Int) (x Int))
    (=> (and (f91 (+ x 11) $result213435)
             (not (> x 100))
             ($f91_pre x))
        ($f91_pre $result213435))))

; post f91
(assert
  (forall ((x Int) ($result213436 Int) ($result213435 Int))
    (=> (and (f91 $result213435 $result213436)
             (f91 (+ x 11) $result213435)
             (not (> x 100))
             ($f91_pre x))
        (f91 x $result213436))))

; post f91
(assert
  (forall ((x213437 Int) (x Int))
    (=> (and ($f91_if3119 x x213437))
        (f91 x213437 0))))

; f91 precondition
(assert
  (forall (($x2283 Int) ($int213438 Int))
    (=> (and (= $x2283 $int213438)
             (<= (- 2147483648) $int213438)
             (<= $int213438 2147483647))
        ($f91_pre $x2283))))

; label ERROR
(assert
  (forall (($x2283 Int) ($result2284 Int) ($result213439 Int) ($int213438 Int))
    (=> (and (not (or (= $result2284 91) (and (> $x2283 102) (= $result2284 (- $x2283 10)))))
             (= $result2284 $result213439)
             (f91 $x2283 $result213439)
             (= $x2283 $int213438)
             (<= (- 2147483648) $int213438)
             (<= $int213438 2147483647))
        ($main_ERROR $x2283 $result2284 $x2283 $result2284))))

; error
(assert
  (forall (($x2283 Int) ($result2284 Int) ($x2283213440 Int) ($result2284213441 Int))
    (=> (and ($main_ERROR $x2283 $result2284 $x2283213440 $result2284213441))
        false)))

(check-sat)
