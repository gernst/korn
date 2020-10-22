(set-logic HORN)

(declare-fun $f_pre (Int) Bool)
(declare-fun $f_if3151 (Int) Bool)
(declare-fun $f_ERROR (Int) Bool)
(declare-fun f (Int) Bool)

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
        ($f_if3151 n))))

; f precondition
(assert
  (forall ((n210559 Int))
    (=> (and ($f_if3151 n210559))
        ($f_pre (- n210559 1)))))

; label ERROR
(assert
  (forall ((n210559 Int))
    (=> (and (f (- n210559 1))
             ($f_if3151 n210559))
        ($f_ERROR (- n210559 1)))))

; error
(assert
  (forall ((n210560 Int))
    (=> (and ($f_ERROR n210560))
        false)))

; f precondition
(assert
        ($f_pre 4))

(check-sat)
