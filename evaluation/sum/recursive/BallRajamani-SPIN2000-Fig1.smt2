(set-logic HORN)

(declare-fun $A_pre (Int Int) Bool)
(declare-fun A (Int Int Int) Bool)
(declare-fun $main_if3074 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $A_if3073 (Int Int Int Int) Bool)

; A precondition
(assert
  (forall ((a2 Int) (a1 Int))
    (=> (and (not (= a1 0))
             ($A_pre a1 a2))
        ($A_pre a2 a1))))

; if then
(assert
  (forall ((a1 Int) (a2 Int) ($result213281 Int))
    (=> (and (A a2 a1 $result213281)
             (not (= a1 0))
             ($A_pre a1 a2))
        ($A_if3073 a1 a2 a1 a2))))

; if else
(assert
  (forall ((a1 Int) (a2 Int))
    (=> (and (= a1 0)
             ($A_pre a1 a2))
        ($A_if3073 a1 a2 a1 a2))))

; post A
(assert
  (forall ((a1213282 Int) (a2213283 Int) (a1 Int) (a2 Int))
    (=> (and ($A_if3073 a1 a2 a1213282 a2213283))
        (A a1213282 a2213283 0))))

; A precondition
(assert
  (forall (($g2259 Int) ($h2260 Int) ($int213284 Int))
    (=> (and (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int213284)
             (<= (- 2147483648) $int213284)
             (<= $int213284 2147483647))
        ($A_pre $g2259 $h2260))))

; A precondition
(assert
  (forall (($g2259 Int) ($h2260 Int) ($result213285 Int) ($int213284 Int))
    (=> (and (A $g2259 $h2260 $result213285)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int213284)
             (<= (- 2147483648) $int213284)
             (<= $int213284 2147483647))
        ($A_pre $g2259 $h2260))))

; label ERROR
(assert
  (forall (($int213284 Int) ($result213285 Int) ($h2260 Int) ($g2259 Int) ($result213286 Int))
    (=> (and (not (= $g2259 0))
             (A $g2259 $h2260 $result213286)
             (A $g2259 $h2260 $result213285)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int213284)
             (<= (- 2147483648) $int213284)
             (<= $int213284 2147483647))
        ($main_ERROR $g2259 $h2260 $g2259 $h2260))))

; error
(assert
  (forall (($g2259 Int) ($h2260 Int) ($g2259213287 Int) ($h2260213288 Int))
    (=> (and ($main_ERROR $g2259 $h2260 $g2259213287 $h2260213288))
        false)))

; if else
(assert
  (forall (($int213284 Int) ($result213285 Int) ($h2260 Int) ($g2259 Int) ($result213286 Int))
    (=> (and (= $g2259 0)
             (A $g2259 $h2260 $result213286)
             (A $g2259 $h2260 $result213285)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int213284)
             (<= (- 2147483648) $int213284)
             (<= $int213284 2147483647))
        ($main_if3074 $g2259 $h2260 $g2259 $h2260))))

(check-sat)
