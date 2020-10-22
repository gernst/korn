(set-logic HORN)

(declare-fun $A_pre (Int Int) Bool)
(declare-fun A (Int Int Int) Bool)
(declare-fun $main_if3074 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $A_if3073 (Int Int) Bool)

; A precondition
(assert
  (forall ((a2 Int) (a1 Int))
    (=> (and (not (= a1 0))
             ($A_pre a1 a2))
        ($A_pre a2 a1))))

; if then
(assert
  (forall ((a1 Int) (a2 Int) ($result210280 Int))
    (=> (and (A a2 a1 $result210280)
             (not (= a1 0))
             ($A_pre a1 a2))
        ($A_if3073 a1 a2))))

; if else
(assert
  (forall ((a1 Int) (a2 Int))
    (=> (and (= a1 0)
             ($A_pre a1 a2))
        ($A_if3073 a1 a2))))

; post A
(assert
  (forall ((a1210281 Int) (a2210282 Int))
    (=> (and ($A_if3073 a1210281 a2210282))
        (A a1210281 a2210282 0))))

; A precondition
(assert
  (forall (($g2259 Int) ($h2260 Int) ($int210283 Int))
    (=> (and (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int210283)
             (<= (- 2147483648) $int210283)
             (<= $int210283 2147483647))
        ($A_pre $g2259 $h2260))))

; A precondition
(assert
  (forall (($g2259 Int) ($h2260 Int) ($result210284 Int) ($int210283 Int))
    (=> (and (A $g2259 $h2260 $result210284)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int210283)
             (<= (- 2147483648) $int210283)
             (<= $int210283 2147483647))
        ($A_pre $g2259 $h2260))))

; label ERROR
(assert
  (forall (($result210285 Int) ($h2260 Int) ($int210283 Int) ($result210284 Int) ($g2259 Int))
    (=> (and (not (= $g2259 0))
             (A $g2259 $h2260 $result210285)
             (A $g2259 $h2260 $result210284)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int210283)
             (<= (- 2147483648) $int210283)
             (<= $int210283 2147483647))
        ($main_ERROR $g2259 $h2260))))

; error
(assert
  (forall (($g2259210286 Int) ($h2260210287 Int))
    (=> (and ($main_ERROR $g2259210286 $h2260210287))
        false)))

; if else
(assert
  (forall (($result210285 Int) ($h2260 Int) ($int210283 Int) ($result210284 Int) ($g2259 Int))
    (=> (and (= $g2259 0)
             (A $g2259 $h2260 $result210285)
             (A $g2259 $h2260 $result210284)
             (= $h2260 (ite (= $g2259 0) 1 0))
             (= $g2259 $int210283)
             (<= (- 2147483648) $int210283)
             (<= $int210283 2147483647))
        ($main_if3074 $g2259 $h2260))))

(check-sat)
