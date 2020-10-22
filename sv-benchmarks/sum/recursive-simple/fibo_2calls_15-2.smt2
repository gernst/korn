(set-logic HORN)

(declare-fun $fibo2_if3199 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3196 (Int Int) Bool)
(declare-fun $fibo1_if3197 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo2_if3198 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3200 (Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213683 Int))
    (=> (and (fibo2 (- n 1) $result213683)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213683 Int) ($result213684 Int))
    (=> (and (fibo2 (- n 2) $result213684)
             (fibo2 (- n 1) $result213683)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213683 $result213684)))))

; if else
(assert
  (forall ((n Int) (n213685 Int))
    (=> (and ($fibo1_if3196 n n213685))
        ($fibo1_if3197 n n213685))))

; post fibo1
(assert
  (forall ((n213686 Int) (n Int))
    (=> (and ($fibo1_if3197 n n213686))
        (fibo1 n213686 0))))

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
  (forall ((n Int) ($result213687 Int))
    (=> (and (fibo1 (- n 1) $result213687)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213687 Int) ($result213688 Int))
    (=> (and (fibo1 (- n 2) $result213688)
             (fibo1 (- n 1) $result213687)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213687 $result213688)))))

; if else
(assert
  (forall ((n Int) (n213689 Int))
    (=> (and ($fibo2_if3198 n n213689))
        ($fibo2_if3199 n n213689))))

; post fibo2
(assert
  (forall ((n213690 Int) (n Int))
    (=> (and ($fibo2_if3199 n n213690))
        (fibo2 n213690 0))))

; fibo1 precondition
(assert
  (forall (($x2321 Int))
    (=> (and (= $x2321 15))
        ($fibo1_pre $x2321))))

; label ERROR
(assert
  (forall (($x2321 Int) ($result2322 Int) ($result213691 Int))
    (=> (and (not (= $result2322 610))
             (= $result2322 $result213691)
             (fibo1 $x2321 $result213691)
             (= $x2321 15))
        ($main_ERROR $x2321 $result2322 $x2321 $result2322))))

; error
(assert
  (forall (($x2321 Int) ($result2322 Int) ($x2321213692 Int) ($result2322213693 Int))
    (=> (and ($main_ERROR $x2321 $result2322 $x2321213692 $result2322213693))
        false)))

; if else
(assert
  (forall (($x2321 Int) ($result2322 Int) ($result213691 Int))
    (=> (and (= $result2322 610)
             (= $result2322 $result213691)
             (fibo1 $x2321 $result213691)
             (= $x2321 15))
        ($main_if3200 $x2321 $result2322 $x2321 $result2322))))

(check-sat)
