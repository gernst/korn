(set-logic HORN)

(declare-fun $main_if3245 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3244 (Int) Bool)
(declare-fun $fibo1_if3241 (Int) Bool)
(declare-fun $fibo2_if3243 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3242 (Int) Bool)

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
  (forall ((n Int) ($result210799 Int))
    (=> (and (fibo2 (- n 1) $result210799)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210799 Int) ($result210800 Int))
    (=> (and (fibo2 (- n 2) $result210800)
             (fibo2 (- n 1) $result210799)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210799 $result210800)))))

; if else
(assert
  (forall ((n210801 Int))
    (=> (and ($fibo1_if3241 n210801))
        ($fibo1_if3242 n210801))))

; post fibo1
(assert
  (forall ((n210802 Int))
    (=> (and ($fibo1_if3242 n210802))
        (fibo1 n210802 0))))

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
  (forall ((n Int) ($result210803 Int))
    (=> (and (fibo1 (- n 1) $result210803)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210803 Int) ($result210804 Int))
    (=> (and (fibo1 (- n 2) $result210804)
             (fibo1 (- n 1) $result210803)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210803 $result210804)))))

; if else
(assert
  (forall ((n210805 Int))
    (=> (and ($fibo2_if3243 n210805))
        ($fibo2_if3244 n210805))))

; post fibo2
(assert
  (forall ((n210806 Int))
    (=> (and ($fibo2_if3244 n210806))
        (fibo2 n210806 0))))

; fibo1 precondition
(assert
  (forall (($x2339 Int))
    (=> (and (= $x2339 5))
        ($fibo1_pre $x2339))))

; label ERROR
(assert
  (forall (($x2339 Int) ($result2340 Int) ($result210807 Int))
    (=> (and (not (= $result2340 5))
             (= $result2340 $result210807)
             (fibo1 $x2339 $result210807)
             (= $x2339 5))
        ($main_ERROR $x2339 $result2340))))

; error
(assert
  (forall (($x2339210808 Int) ($result2340210809 Int))
    (=> (and ($main_ERROR $x2339210808 $result2340210809))
        false)))

; if else
(assert
  (forall (($x2339 Int) ($result2340 Int) ($result210807 Int))
    (=> (and (= $result2340 5)
             (= $result2340 $result210807)
             (fibo1 $x2339 $result210807)
             (= $x2339 5))
        ($main_if3245 $x2339 $result2340))))

(check-sat)
