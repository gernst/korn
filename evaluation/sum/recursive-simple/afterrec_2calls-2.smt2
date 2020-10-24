(set-logic HORN)

(declare-fun $f_ERROR (Int Int) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f2_ERROR (Int Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun $f2_pre (Int) Bool)
(declare-fun $f2_if3156 (Int Int) Bool)
(declare-fun $f_if3155 (Int Int) Bool)

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
        ($f_if3155 n n))))

; f2 precondition
(assert
  (forall ((n213568 Int) (n Int))
    (=> (and ($f_if3155 n n213568))
        ($f2_pre (- n213568 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213568 Int))
    (=> (and (f2 (- n213568 1))
             ($f_if3155 n n213568))
        ($f_ERROR n (- n213568 1)))))

; error
(assert
  (forall ((n Int) (n213569 Int))
    (=> (and ($f_ERROR n n213569))
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
        ($f2_if3156 n n))))

; f precondition
(assert
  (forall ((n213570 Int) (n Int))
    (=> (and ($f2_if3156 n n213570))
        ($f_pre (- n213570 1)))))

; label ERROR
(assert
  (forall ((n Int) (n213570 Int))
    (=> (and (f (- n213570 1))
             ($f2_if3156 n n213570))
        ($f2_ERROR n (- n213570 1)))))

; error
(assert
  (forall ((n Int) (n213571 Int))
    (=> (and ($f2_ERROR n n213571))
        false)))

; f precondition
(assert
        ($f_pre 2))

(check-sat)
