(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3189 (Int Int) Bool)
(declare-fun $fibo2_if3188 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3190 (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3187 (Int Int) Bool)
(declare-fun $fibo1_if3186 (Int Int) Bool)

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
  (forall ((n Int) ($result213657 Int))
    (=> (and (fibo2 (- n 1) $result213657)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213657 Int) ($result213658 Int))
    (=> (and (fibo2 (- n 2) $result213658)
             (fibo2 (- n 1) $result213657)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213657 $result213658)))))

; if else
(assert
  (forall ((n Int) (n213659 Int))
    (=> (and ($fibo1_if3186 n n213659))
        ($fibo1_if3187 n n213659))))

; post fibo1
(assert
  (forall ((n213660 Int) (n Int))
    (=> (and ($fibo1_if3187 n n213660))
        (fibo1 n213660 0))))

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
  (forall ((n Int) ($result213661 Int))
    (=> (and (fibo1 (- n 1) $result213661)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213661 Int) ($result213662 Int))
    (=> (and (fibo1 (- n 2) $result213662)
             (fibo1 (- n 1) $result213661)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213661 $result213662)))))

; if else
(assert
  (forall ((n Int) (n213663 Int))
    (=> (and ($fibo2_if3188 n n213663))
        ($fibo2_if3189 n n213663))))

; post fibo2
(assert
  (forall ((n213664 Int) (n Int))
    (=> (and ($fibo2_if3189 n n213664))
        (fibo2 n213664 0))))

; fibo1 precondition
(assert
  (forall (($x2317 Int))
    (=> (and (= $x2317 10))
        ($fibo1_pre $x2317))))

; label ERROR
(assert
  (forall (($x2317 Int) ($result2318 Int) ($result213665 Int))
    (=> (and (= $result2318 55)
             (= $result2318 $result213665)
             (fibo1 $x2317 $result213665)
             (= $x2317 10))
        ($main_ERROR $x2317 $result2318 $x2317 $result2318))))

; error
(assert
  (forall (($x2317 Int) ($result2318 Int) ($x2317213666 Int) ($result2318213667 Int))
    (=> (and ($main_ERROR $x2317 $result2318 $x2317213666 $result2318213667))
        false)))

; if else
(assert
  (forall (($x2317 Int) ($result2318 Int) ($result213665 Int))
    (=> (and (not (= $result2318 55))
             (= $result2318 $result213665)
             (fibo1 $x2317 $result213665)
             (= $x2317 10))
        ($main_if3190 $x2317 $result2318 $x2317 $result2318))))

(check-sat)
