(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3247 (Int) Bool)
(declare-fun $fibo1_if3246 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo2_if3248 (Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3250 (Int Int) Bool)
(declare-fun $fibo2_if3249 (Int) Bool)

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
  (forall ((n Int) ($result210812 Int))
    (=> (and (fibo2 (- n 1) $result210812)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210812 Int) ($result210813 Int))
    (=> (and (fibo2 (- n 2) $result210813)
             (fibo2 (- n 1) $result210812)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210812 $result210813)))))

; if else
(assert
  (forall ((n210814 Int))
    (=> (and ($fibo1_if3246 n210814))
        ($fibo1_if3247 n210814))))

; post fibo1
(assert
  (forall ((n210815 Int))
    (=> (and ($fibo1_if3247 n210815))
        (fibo1 n210815 0))))

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
  (forall ((n Int) ($result210816 Int))
    (=> (and (fibo1 (- n 1) $result210816)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210816 Int) ($result210817 Int))
    (=> (and (fibo1 (- n 2) $result210817)
             (fibo1 (- n 1) $result210816)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210816 $result210817)))))

; if else
(assert
  (forall ((n210818 Int))
    (=> (and ($fibo2_if3248 n210818))
        ($fibo2_if3249 n210818))))

; post fibo2
(assert
  (forall ((n210819 Int))
    (=> (and ($fibo2_if3249 n210819))
        (fibo2 n210819 0))))

; fibo1 precondition
(assert
  (forall (($x2341 Int))
    (=> (and (= $x2341 5))
        ($fibo1_pre $x2341))))

; label ERROR
(assert
  (forall (($x2341 Int) ($result2342 Int) ($result210820 Int))
    (=> (and (= $result2342 5)
             (= $result2342 $result210820)
             (fibo1 $x2341 $result210820)
             (= $x2341 5))
        ($main_ERROR $x2341 $result2342))))

; error
(assert
  (forall (($x2341210821 Int) ($result2342210822 Int))
    (=> (and ($main_ERROR $x2341210821 $result2342210822))
        false)))

; if else
(assert
  (forall (($x2341 Int) ($result2342 Int) ($result210820 Int))
    (=> (and (not (= $result2342 5))
             (= $result2342 $result210820)
             (fibo1 $x2341 $result210820)
             (= $x2341 5))
        ($main_if3250 $x2341 $result2342))))

(check-sat)
