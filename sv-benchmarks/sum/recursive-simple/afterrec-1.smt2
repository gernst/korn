(set-logic HORN)

(declare-fun $f_ERROR (Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun $f_if3151 (Int Int) Bool)

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
        ($f_if3151 n n))))

; f precondition
(assert
  (forall ((n213560 Int) (n Int))
    (=> (and ($f_if3151 n n213560))
        ($f_pre (- n213560 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213560 Int))
    (=> (and (f (- n213560 1))
             ($f_if3151 n n213560))
        ($f_ERROR n (- n213560 1)))))

; error
(assert
  (forall ((n Int) (n213561 Int))
    (=> (and ($f_ERROR n n213561))
        false)))

; f precondition
(assert
        ($f_pre 4))

(check-sat)
