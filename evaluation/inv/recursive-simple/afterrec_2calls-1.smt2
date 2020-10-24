(set-logic HORN)

(declare-fun $f2_ERROR (Int) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_ERROR (Int) Bool)
(declare-fun $f_if3153 (Int) Bool)
(declare-fun $f2_if3154 (Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun $f2_pre (Int) Bool)

; post f
(assert
  (forall ((n Int))
    (=> (and (< n 3)
             ($f_pre n))
        (f n))))

; if else
(assert
  (forall ((n Int))
    (=> (and (not (< n 3))
             ($f_pre n))
        ($f_if3153 n))))

; f2 precondition
(assert
  (forall ((n210563 Int))
    (=> (and ($f_if3153 n210563))
        ($f2_pre (- n210563 1)))))

; label ERROR
(assert
  (forall ((n210563 Int))
    (=> (and (f2 (- n210563 1))
             ($f_if3153 n210563))
        ($f_ERROR (- n210563 1)))))

; error
(assert
  (forall ((n210564 Int))
    (=> (and ($f_ERROR n210564))
        false)))

; post f2
(assert
  (forall ((n Int))
    (=> (and (< n 3)
             ($f2_pre n))
        (f2 n))))

; if else
(assert
  (forall ((n Int))
    (=> (and (not (< n 3))
             ($f2_pre n))
        ($f2_if3154 n))))

; f precondition
(assert
  (forall ((n210565 Int))
    (=> (and ($f2_if3154 n210565))
        ($f_pre (- n210565 1)))))

; label ERROR
(assert
  (forall ((n210565 Int))
    (=> (and (f (- n210565 1))
             ($f2_if3154 n210565))
        ($f2_ERROR (- n210565 1)))))

; error
(assert
  (forall ((n210566 Int))
    (=> (and ($f2_ERROR n210566))
        false)))

; f precondition
(assert
        ($f_pre 4))

(check-sat)
