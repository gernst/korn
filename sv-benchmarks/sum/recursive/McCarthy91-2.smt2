(set-logic HORN)

(declare-fun $main_if3122 (Int Int Int Int) Bool)
(declare-fun $f91_pre (Int) Bool)
(declare-fun $f91_if3121 (Int Int) Bool)
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
  (forall (($result213444 Int) (x Int))
    (=> (and (f91 (+ x 11) $result213444)
             (not (> x 100))
             ($f91_pre x))
        ($f91_pre $result213444))))

; post f91
(assert
  (forall ((x Int) ($result213445 Int) ($result213444 Int))
    (=> (and (f91 $result213444 $result213445)
             (f91 (+ x 11) $result213444)
             (not (> x 100))
             ($f91_pre x))
        (f91 x $result213445))))

; post f91
(assert
  (forall ((x213446 Int) (x Int))
    (=> (and ($f91_if3121 x x213446))
        (f91 x213446 0))))

; f91 precondition
(assert
  (forall (($x2285 Int) ($int213447 Int))
    (=> (and (= $x2285 $int213447)
             (<= (- 2147483648) $int213447)
             (<= $int213447 2147483647))
        ($f91_pre $x2285))))

; label ERROR
(assert
  (forall (($x2285 Int) ($result2286 Int) ($result213448 Int) ($int213447 Int))
    (=> (and (not (or (= $result2286 91) (and (> $x2285 101) (= $result2286 (- $x2285 10)))))
             (= $result2286 $result213448)
             (f91 $x2285 $result213448)
             (= $x2285 $int213447)
             (<= (- 2147483648) $int213447)
             (<= $int213447 2147483647))
        ($main_ERROR $x2285 $result2286 $x2285 $result2286))))

; error
(assert
  (forall (($x2285 Int) ($result2286 Int) ($x2285213449 Int) ($result2286213450 Int))
    (=> (and ($main_ERROR $x2285 $result2286 $x2285213449 $result2286213450))
        false)))

(check-sat)
