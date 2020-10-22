(set-logic HORN)

(declare-fun $fibo2_if3188 (Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3189 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo1_if3187 (Int) Bool)
(declare-fun $fibo1_if3186 (Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3190 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)

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
  (forall ((n Int) ($result210656 Int))
    (=> (and (fibo2 (- n 1) $result210656)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210656 Int) ($result210657 Int))
    (=> (and (fibo2 (- n 2) $result210657)
             (fibo2 (- n 1) $result210656)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210656 $result210657)))))

; if else
(assert
  (forall ((n210658 Int))
    (=> (and ($fibo1_if3186 n210658))
        ($fibo1_if3187 n210658))))

; post fibo1
(assert
  (forall ((n210659 Int))
    (=> (and ($fibo1_if3187 n210659))
        (fibo1 n210659 0))))

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
  (forall ((n Int) ($result210660 Int))
    (=> (and (fibo1 (- n 1) $result210660)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210660 Int) ($result210661 Int))
    (=> (and (fibo1 (- n 2) $result210661)
             (fibo1 (- n 1) $result210660)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210660 $result210661)))))

; if else
(assert
  (forall ((n210662 Int))
    (=> (and ($fibo2_if3188 n210662))
        ($fibo2_if3189 n210662))))

; post fibo2
(assert
  (forall ((n210663 Int))
    (=> (and ($fibo2_if3189 n210663))
        (fibo2 n210663 0))))

; fibo1 precondition
(assert
  (forall (($x2317 Int))
    (=> (and (= $x2317 10))
        ($fibo1_pre $x2317))))

; label ERROR
(assert
  (forall (($x2317 Int) ($result2318 Int) ($result210664 Int))
    (=> (and (= $result2318 55)
             (= $result2318 $result210664)
             (fibo1 $x2317 $result210664)
             (= $x2317 10))
        ($main_ERROR $x2317 $result2318))))

; error
(assert
  (forall (($x2317210665 Int) ($result2318210666 Int))
    (=> (and ($main_ERROR $x2317210665 $result2318210666))
        false)))

; if else
(assert
  (forall (($x2317 Int) ($result2318 Int) ($result210664 Int))
    (=> (and (not (= $result2318 55))
             (= $result2318 $result210664)
             (fibo1 $x2317 $result210664)
             (= $x2317 10))
        ($main_if3190 $x2317 $result2318))))

(check-sat)
