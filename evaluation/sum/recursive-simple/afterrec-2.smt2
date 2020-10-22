(set-logic HORN)

(declare-fun $f_ERROR (Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_if3152 (Int Int) Bool)
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
        ($f_if3152 n n))))

; f precondition
(assert
  (forall ((n213562 Int) (n Int))
    (=> (and ($f_if3152 n n213562))
        ($f_pre (- n213562 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213562 Int))
    (=> (and (f (- n213562 1))
             ($f_if3152 n n213562))
        ($f_ERROR n (- n213562 1)))))

; error
(assert
  (forall ((n Int) (n213563 Int))
    (=> (and ($f_ERROR n n213563))
        false)))

; f precondition
(assert
        ($f_pre 2))

(check-sat)
