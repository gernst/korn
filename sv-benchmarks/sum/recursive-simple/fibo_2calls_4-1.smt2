(set-logic HORN)

(declare-fun $fibo1_if3231 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3235 (Int Int Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_if3234 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo1_if3232 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3233 (Int Int) Bool)

; post fibo1
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo1_pre n))
        (fibo1 n 0))))

; post fibo1
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n 1))))

; fibo2 precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 1)))))

; fibo2 precondition
(assert
  (forall ((n Int) ($result213774 Int))
    (=> (and (fibo2 (- n 1) $result213774)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213774 Int) ($result213775 Int))
    (=> (and (fibo2 (- n 2) $result213775)
             (fibo2 (- n 1) $result213774)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213774 $result213775)))))

; if else
(assert
  (forall ((n Int) (n213776 Int))
    (=> (and ($fibo1_if3231 n n213776))
        ($fibo1_if3232 n n213776))))

; post fibo1
(assert
  (forall ((n213777 Int) (n Int))
    (=> (and ($fibo1_if3232 n n213777))
        (fibo1 n213777 0))))

; post fibo2
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo2_pre n))
        (fibo2 n 0))))

; post fibo2
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n 1))))

; fibo1 precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 1)))))

; fibo1 precondition
(assert
  (forall ((n Int) ($result213778 Int))
    (=> (and (fibo1 (- n 1) $result213778)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213778 Int) ($result213779 Int))
    (=> (and (fibo1 (- n 2) $result213779)
             (fibo1 (- n 1) $result213778)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213778 $result213779)))))

; if else
(assert
  (forall ((n Int) (n213780 Int))
    (=> (and ($fibo2_if3233 n n213780))
        ($fibo2_if3234 n n213780))))

; post fibo2
(assert
  (forall ((n213781 Int) (n Int))
    (=> (and ($fibo2_if3234 n n213781))
        (fibo2 n213781 0))))

; fibo1 precondition
(assert
  (forall (($x2335 Int))
    (=> (and (= $x2335 4))
        ($fibo1_pre $x2335))))

; label ERROR
(assert
  (forall (($x2335 Int) ($result2336 Int) ($result213782 Int))
    (=> (and (not (= $result2336 3))
             (= $result2336 $result213782)
             (fibo1 $x2335 $result213782)
             (= $x2335 4))
        ($main_ERROR $x2335 $result2336 $x2335 $result2336))))

; error
(assert
  (forall (($x2335 Int) ($result2336 Int) ($x2335213783 Int) ($result2336213784 Int))
    (=> (and ($main_ERROR $x2335 $result2336 $x2335213783 $result2336213784))
        false)))

; if else
(assert
  (forall (($x2335 Int) ($result2336 Int) ($result213782 Int))
    (=> (and (= $result2336 3)
             (= $result2336 $result213782)
             (fibo1 $x2335 $result213782)
             (= $x2335 4))
        ($main_if3235 $x2335 $result2336 $x2335 $result2336))))

(check-sat)
