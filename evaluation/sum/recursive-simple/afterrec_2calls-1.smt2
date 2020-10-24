(set-logic HORN)

(declare-fun $f_ERROR (Int Int) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_if3153 (Int Int) Bool)
(declare-fun $f2_ERROR (Int Int) Bool)
(declare-fun $f2_if3154 (Int Int) Bool)
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
        ($f_if3153 n n))))

; f2 precondition
(assert
  (forall ((n213564 Int) (n Int))
    (=> (and ($f_if3153 n n213564))
        ($f2_pre (- n213564 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213564 Int))
    (=> (and (f2 (- n213564 1))
             ($f_if3153 n n213564))
        ($f_ERROR n (- n213564 1)))))

; error
(assert
  (forall ((n Int) (n213565 Int))
    (=> (and ($f_ERROR n n213565))
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
        ($f2_if3154 n n))))

; f precondition
(assert
  (forall ((n213566 Int) (n Int))
    (=> (and ($f2_if3154 n n213566))
        ($f_pre (- n213566 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213566 Int))
    (=> (and (f (- n213566 1))
             ($f2_if3154 n n213566))
        ($f2_ERROR n (- n213566 1)))))

; error
(assert
  (forall ((n Int) (n213567 Int))
    (=> (and ($f2_ERROR n n213567))
        false)))

; f precondition
(assert
        ($f_pre 4))

(check-sat)
