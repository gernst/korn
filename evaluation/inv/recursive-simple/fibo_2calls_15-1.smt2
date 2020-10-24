(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3194 (Int) Bool)
(declare-fun $fibo1_if3192 (Int) Bool)
(declare-fun $fibo2_if3193 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $main_if3195 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3191 (Int) Bool)

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
  (forall ((n Int) ($result210669 Int))
    (=> (and (fibo2 (- n 1) $result210669)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210669 Int) ($result210670 Int))
    (=> (and (fibo2 (- n 2) $result210670)
             (fibo2 (- n 1) $result210669)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210669 $result210670)))))

; if else
(assert
  (forall ((n210671 Int))
    (=> (and ($fibo1_if3191 n210671))
        ($fibo1_if3192 n210671))))

; post fibo1
(assert
  (forall ((n210672 Int))
    (=> (and ($fibo1_if3192 n210672))
        (fibo1 n210672 0))))

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
  (forall ((n Int) ($result210673 Int))
    (=> (and (fibo1 (- n 1) $result210673)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210673 Int) ($result210674 Int))
    (=> (and (fibo1 (- n 2) $result210674)
             (fibo1 (- n 1) $result210673)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210673 $result210674)))))

; if else
(assert
  (forall ((n210675 Int))
    (=> (and ($fibo2_if3193 n210675))
        ($fibo2_if3194 n210675))))

; post fibo2
(assert
  (forall ((n210676 Int))
    (=> (and ($fibo2_if3194 n210676))
        (fibo2 n210676 0))))

; fibo1 precondition
(assert
  (forall (($x2319 Int))
    (=> (and (= $x2319 15))
        ($fibo1_pre $x2319))))

; label ERROR
(assert
  (forall (($x2319 Int) ($result2320 Int) ($result210677 Int))
    (=> (and (= $result2320 610)
             (= $result2320 $result210677)
             (fibo1 $x2319 $result210677)
             (= $x2319 15))
        ($main_ERROR $x2319 $result2320))))

; error
(assert
  (forall (($x2319210678 Int) ($result2320210679 Int))
    (=> (and ($main_ERROR $x2319210678 $result2320210679))
        false)))

; if else
(assert
  (forall (($x2319 Int) ($result2320 Int) ($result210677 Int))
    (=> (and (not (= $result2320 610))
             (= $result2320 $result210677)
             (fibo1 $x2319 $result210677)
             (= $x2319 15))
        ($main_if3195 $x2319 $result2320))))

(check-sat)
