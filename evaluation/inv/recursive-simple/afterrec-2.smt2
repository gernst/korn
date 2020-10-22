(set-logic HORN)

(declare-fun $f_pre (Int) Bool)
(declare-fun $f_ERROR (Int) Bool)
(declare-fun $f_if3152 (Int) Bool)
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
        ($f_if3152 n))))

; f precondition
(assert
  (forall ((n210561 Int))
    (=> (and ($f_if3152 n210561))
        ($f_pre (- n210561 1)))))

; label ERROR
(assert
  (forall ((n210561 Int))
    (=> (and (f (- n210561 1))
             ($f_if3152 n210561))
        ($f_ERROR (- n210561 1)))))

; error
(assert
  (forall ((n210562 Int))
    (=> (and ($f_ERROR n210562))
        false)))

; f precondition
(assert
        ($f_pre 2))

(check-sat)
