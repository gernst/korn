(set-logic HORN)

(declare-fun $fibo_if3176 (Int) Bool)
(declare-fun $main_if3177 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3175 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)

; post fibo
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo_pre n))
        (fibo n 0))))

; post fibo
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo_pre n))
        (fibo n 1))))

; fibo precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 1)))))

; fibo precondition
(assert
  (forall ((n Int) ($result210625 Int))
    (=> (and (fibo (- n 1) $result210625)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210625 Int) ($result210626 Int))
    (=> (and (fibo (- n 2) $result210626)
             (fibo (- n 1) $result210625)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210625 $result210626)))))

; if else
(assert
  (forall ((n210627 Int))
    (=> (and ($fibo_if3175 n210627))
        ($fibo_if3176 n210627))))

; post fibo
(assert
  (forall ((n210628 Int))
    (=> (and ($fibo_if3176 n210628))
        (fibo n210628 0))))

; fibo precondition
(assert
  (forall (($x2311 Int))
    (=> (and (= $x2311 25))
        ($fibo_pre $x2311))))

; label ERROR
(assert
  (forall (($x2311 Int) ($result2312 Int) ($result210629 Int))
    (=> (and (= $result2312 75025)
             (= $result2312 $result210629)
             (fibo $x2311 $result210629)
             (= $x2311 25))
        ($main_ERROR $x2311 $result2312))))

; error
(assert
  (forall (($x2311210630 Int) ($result2312210631 Int))
    (=> (and ($main_ERROR $x2311210630 $result2312210631))
        false)))

; if else
(assert
  (forall (($x2311 Int) ($result2312 Int) ($result210629 Int))
    (=> (and (not (= $result2312 75025))
             (= $result2312 $result210629)
             (fibo $x2311 $result210629)
             (= $x2311 25))
        ($main_if3177 $x2311 $result2312))))

(check-sat)
