(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3260 (Int Int) Bool)
(declare-fun $fibo1_if3257 (Int) Bool)
(declare-fun $fibo2_if3259 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3256 (Int) Bool)
(declare-fun $fibo2_if3258 (Int) Bool)

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
  (forall ((n Int) ($result210838 Int))
    (=> (and (fibo2 (- n 1) $result210838)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210838 Int) ($result210839 Int))
    (=> (and (fibo2 (- n 2) $result210839)
             (fibo2 (- n 1) $result210838)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210838 $result210839)))))

; if else
(assert
  (forall ((n210840 Int))
    (=> (and ($fibo1_if3256 n210840))
        ($fibo1_if3257 n210840))))

; post fibo1
(assert
  (forall ((n210841 Int))
    (=> (and ($fibo1_if3257 n210841))
        (fibo1 n210841 0))))

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
  (forall ((n Int) ($result210842 Int))
    (=> (and (fibo1 (- n 1) $result210842)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210842 Int) ($result210843 Int))
    (=> (and (fibo1 (- n 2) $result210843)
             (fibo1 (- n 1) $result210842)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210842 $result210843)))))

; if else
(assert
  (forall ((n210844 Int))
    (=> (and ($fibo2_if3258 n210844))
        ($fibo2_if3259 n210844))))

; post fibo2
(assert
  (forall ((n210845 Int))
    (=> (and ($fibo2_if3259 n210845))
        (fibo2 n210845 0))))

; fibo1 precondition
(assert
  (forall (($x2345 Int))
    (=> (and (= $x2345 6))
        ($fibo1_pre $x2345))))

; label ERROR
(assert
  (forall (($x2345 Int) ($result2346 Int) ($result210846 Int))
    (=> (and (= $result2346 8)
             (= $result2346 $result210846)
             (fibo1 $x2345 $result210846)
             (= $x2345 6))
        ($main_ERROR $x2345 $result2346))))

; error
(assert
  (forall (($x2345210847 Int) ($result2346210848 Int))
    (=> (and ($main_ERROR $x2345210847 $result2346210848))
        false)))

; if else
(assert
  (forall (($x2345 Int) ($result2346 Int) ($result210846 Int))
    (=> (and (not (= $result2346 8))
             (= $result2346 $result210846)
             (fibo1 $x2345 $result210846)
             (= $x2345 6))
        ($main_if3260 $x2345 $result2346))))

(check-sat)
