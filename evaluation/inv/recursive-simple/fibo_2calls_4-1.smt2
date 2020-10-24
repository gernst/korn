(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3233 (Int) Bool)
(declare-fun $fibo1_if3231 (Int) Bool)
(declare-fun $main_if3235 (Int Int) Bool)
(declare-fun $fibo2_if3234 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3232 (Int) Bool)

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
  (forall ((n Int) ($result210773 Int))
    (=> (and (fibo2 (- n 1) $result210773)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210773 Int) ($result210774 Int))
    (=> (and (fibo2 (- n 2) $result210774)
             (fibo2 (- n 1) $result210773)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210773 $result210774)))))

; if else
(assert
  (forall ((n210775 Int))
    (=> (and ($fibo1_if3231 n210775))
        ($fibo1_if3232 n210775))))

; post fibo1
(assert
  (forall ((n210776 Int))
    (=> (and ($fibo1_if3232 n210776))
        (fibo1 n210776 0))))

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
  (forall ((n Int) ($result210777 Int))
    (=> (and (fibo1 (- n 1) $result210777)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210777 Int) ($result210778 Int))
    (=> (and (fibo1 (- n 2) $result210778)
             (fibo1 (- n 1) $result210777)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210777 $result210778)))))

; if else
(assert
  (forall ((n210779 Int))
    (=> (and ($fibo2_if3233 n210779))
        ($fibo2_if3234 n210779))))

; post fibo2
(assert
  (forall ((n210780 Int))
    (=> (and ($fibo2_if3234 n210780))
        (fibo2 n210780 0))))

; fibo1 precondition
(assert
  (forall (($x2335 Int))
    (=> (and (= $x2335 4))
        ($fibo1_pre $x2335))))

; label ERROR
(assert
  (forall (($x2335 Int) ($result2336 Int) ($result210781 Int))
    (=> (and (not (= $result2336 3))
             (= $result2336 $result210781)
             (fibo1 $x2335 $result210781)
             (= $x2335 4))
        ($main_ERROR $x2335 $result2336))))

; error
(assert
  (forall (($x2335210782 Int) ($result2336210783 Int))
    (=> (and ($main_ERROR $x2335210782 $result2336210783))
        false)))

; if else
(assert
  (forall (($x2335 Int) ($result2336 Int) ($result210781 Int))
    (=> (and (= $result2336 3)
             (= $result2336 $result210781)
             (fibo1 $x2335 $result210781)
             (= $x2335 4))
        ($main_if3235 $x2335 $result2336))))

(check-sat)
