(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3209 (Int) Bool)
(declare-fun $fibo1_if3207 (Int) Bool)
(declare-fun $fibo1_if3206 (Int) Bool)
(declare-fun $fibo2_if3208 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3210 (Int Int) Bool)

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
  (forall ((n Int) ($result210708 Int))
    (=> (and (fibo2 (- n 1) $result210708)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210708 Int) ($result210709 Int))
    (=> (and (fibo2 (- n 2) $result210709)
             (fibo2 (- n 1) $result210708)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210708 $result210709)))))

; if else
(assert
  (forall ((n210710 Int))
    (=> (and ($fibo1_if3206 n210710))
        ($fibo1_if3207 n210710))))

; post fibo1
(assert
  (forall ((n210711 Int))
    (=> (and ($fibo1_if3207 n210711))
        (fibo1 n210711 0))))

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
  (forall ((n Int) ($result210712 Int))
    (=> (and (fibo1 (- n 1) $result210712)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210712 Int) ($result210713 Int))
    (=> (and (fibo1 (- n 2) $result210713)
             (fibo1 (- n 1) $result210712)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210712 $result210713)))))

; if else
(assert
  (forall ((n210714 Int))
    (=> (and ($fibo2_if3208 n210714))
        ($fibo2_if3209 n210714))))

; post fibo2
(assert
  (forall ((n210715 Int))
    (=> (and ($fibo2_if3209 n210715))
        (fibo2 n210715 0))))

; fibo1 precondition
(assert
  (forall (($x2325 Int))
    (=> (and (= $x2325 20))
        ($fibo1_pre $x2325))))

; label ERROR
(assert
  (forall (($x2325 Int) ($result2326 Int) ($result210716 Int))
    (=> (and (not (= $result2326 6765))
             (= $result2326 $result210716)
             (fibo1 $x2325 $result210716)
             (= $x2325 20))
        ($main_ERROR $x2325 $result2326))))

; error
(assert
  (forall (($x2325210717 Int) ($result2326210718 Int))
    (=> (and ($main_ERROR $x2325210717 $result2326210718))
        false)))

; if else
(assert
  (forall (($x2325 Int) ($result2326 Int) ($result210716 Int))
    (=> (and (= $result2326 6765)
             (= $result2326 $result210716)
             (fibo1 $x2325 $result210716)
             (= $x2325 20))
        ($main_if3210 $x2325 $result2326))))

(check-sat)
