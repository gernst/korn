(set-logic HORN)

(declare-fun $f2_ERROR (Int) Bool)
(declare-fun $f_if3155 (Int) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_ERROR (Int) Bool)
(declare-fun $f2_if3156 (Int) Bool)
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
        ($f_if3155 n))))

; f2 precondition
(assert
  (forall ((n210567 Int))
    (=> (and ($f_if3155 n210567))
        ($f2_pre (- n210567 1)))))

; label ERROR
(assert
  (forall ((n210567 Int))
    (=> (and (f2 (- n210567 1))
             ($f_if3155 n210567))
        ($f_ERROR (- n210567 1)))))

; error
(assert
  (forall ((n210568 Int))
    (=> (and ($f_ERROR n210568))
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
        ($f2_if3156 n))))

; f precondition
(assert
  (forall ((n210569 Int))
    (=> (and ($f2_if3156 n210569))
        ($f_pre (- n210569 1)))))

; label ERROR
(assert
  (forall ((n210569 Int))
    (=> (and (f (- n210569 1))
             ($f2_if3156 n210569))
        ($f2_ERROR (- n210569 1)))))

; error
(assert
  (forall ((n210570 Int))
    (=> (and ($f2_ERROR n210570))
        false)))

; f precondition
(assert
        ($f_pre 2))

(check-sat)
