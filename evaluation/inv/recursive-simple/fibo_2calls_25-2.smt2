(set-logic HORN)

(declare-fun $fibo2_if3228 (Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3230 (Int Int) Bool)
(declare-fun $fibo1_if3227 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3229 (Int) Bool)
(declare-fun $fibo1_if3226 (Int) Bool)

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
  (forall ((n Int) ($result210760 Int))
    (=> (and (fibo2 (- n 1) $result210760)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210760 Int) ($result210761 Int))
    (=> (and (fibo2 (- n 2) $result210761)
             (fibo2 (- n 1) $result210760)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210760 $result210761)))))

; if else
(assert
  (forall ((n210762 Int))
    (=> (and ($fibo1_if3226 n210762))
        ($fibo1_if3227 n210762))))

; post fibo1
(assert
  (forall ((n210763 Int))
    (=> (and ($fibo1_if3227 n210763))
        (fibo1 n210763 0))))

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
  (forall ((n Int) ($result210764 Int))
    (=> (and (fibo1 (- n 1) $result210764)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210764 Int) ($result210765 Int))
    (=> (and (fibo1 (- n 2) $result210765)
             (fibo1 (- n 1) $result210764)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210764 $result210765)))))

; if else
(assert
  (forall ((n210766 Int))
    (=> (and ($fibo2_if3228 n210766))
        ($fibo2_if3229 n210766))))

; post fibo2
(assert
  (forall ((n210767 Int))
    (=> (and ($fibo2_if3229 n210767))
        (fibo2 n210767 0))))

; fibo1 precondition
(assert
  (forall (($x2333 Int))
    (=> (and (= $x2333 25))
        ($fibo1_pre $x2333))))

; label ERROR
(assert
  (forall (($x2333 Int) ($result2334 Int) ($result210768 Int))
    (=> (and (not (= $result2334 75025))
             (= $result2334 $result210768)
             (fibo1 $x2333 $result210768)
             (= $x2333 25))
        ($main_ERROR $x2333 $result2334))))

; error
(assert
  (forall (($x2333210769 Int) ($result2334210770 Int))
    (=> (and ($main_ERROR $x2333210769 $result2334210770))
        false)))

; if else
(assert
  (forall (($x2333 Int) ($result2334 Int) ($result210768 Int))
    (=> (and (= $result2334 75025)
             (= $result2334 $result210768)
             (fibo1 $x2333 $result210768)
             (= $x2333 25))
        ($main_if3230 $x2333 $result2334))))

(check-sat)
