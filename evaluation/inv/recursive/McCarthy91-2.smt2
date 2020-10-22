(set-logic HORN)

(declare-fun $main_if3122 (Int Int) Bool)
(declare-fun $f91_pre (Int) Bool)
(declare-fun f91 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $f91_if3121 (Int) Bool)

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
  (forall (($result210443 Int) (x Int))
    (=> (and (f91 (+ x 11) $result210443)
             (not (> x 100))
             ($f91_pre x))
        ($f91_pre $result210443))))

; post f91
(assert
  (forall ((x Int) ($result210444 Int) ($result210443 Int))
    (=> (and (f91 $result210443 $result210444)
             (f91 (+ x 11) $result210443)
             (not (> x 100))
             ($f91_pre x))
        (f91 x $result210444))))

; post f91
(assert
  (forall ((x210445 Int))
    (=> (and ($f91_if3121 x210445))
        (f91 x210445 0))))

; f91 precondition
(assert
  (forall (($x2285 Int) ($int210446 Int))
    (=> (and (= $x2285 $int210446)
             (<= (- 2147483648) $int210446)
             (<= $int210446 2147483647))
        ($f91_pre $x2285))))

; label ERROR
(assert
  (forall (($x2285 Int) ($result2286 Int) ($result210447 Int) ($int210446 Int))
    (=> (and (not (or (= $result2286 91) (and (> $x2285 101) (= $result2286 (- $x2285 10)))))
             (= $result2286 $result210447)
             (f91 $x2285 $result210447)
             (= $x2285 $int210446)
             (<= (- 2147483648) $int210446)
             (<= $int210446 2147483647))
        ($main_ERROR $x2285 $result2286))))

; error
(assert
  (forall (($x2285210448 Int) ($result2286210449 Int))
    (=> (and ($main_ERROR $x2285210448 $result2286210449))
        false)))

(check-sat)
