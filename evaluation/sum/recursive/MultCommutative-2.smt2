(set-logic HORN)

(declare-fun mult (Int Int Int) Bool)
(declare-fun $main_if3125 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $mult_if3123 (Int Int Int Int) Bool)
(declare-fun $mult_if3124 (Int Int Int Int) Bool)
(declare-fun $main_if3127 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $mult_pre (Int Int) Bool)
(declare-fun $main_if3126 (Int Int Int Int Int Int Int Int) Bool)

; mult precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($mult_pre n m))
        ($mult_pre n (- m)))))

; post mult
(assert
  (forall ((n Int) (m Int) ($result213453 Int))
    (=> (and (mult n (- m) $result213453)
             (< m 0)
             ($mult_pre n m))
        (mult n m $result213453))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($mult_pre n m))
        ($mult_if3123 n m n m))))

; post mult
(assert
  (forall ((n213454 Int) (m213455 Int) (n Int) (m Int))
    (=> (and (= m213455 0)
             ($mult_if3123 n m n213454 m213455))
        (mult n213454 m213455 0))))

; if else
(assert
  (forall ((n Int) (m Int) (n213454 Int) (m213455 Int))
    (=> (and (not (= m213455 0))
             ($mult_if3123 n m n213454 m213455))
        ($mult_if3124 n m n213454 m213455))))

; mult precondition
(assert
  (forall ((n213456 Int) (m213457 Int) (n Int) (m Int))
    (=> (and ($mult_if3124 n m n213456 m213457))
        ($mult_pre n213456 (- m213457 1)))))

; post mult
(assert
  (forall ((n Int) (m213457 Int) (n213456 Int) ($result213458 Int) (m Int))
    (=> (and (mult n213456 (- m213457 1) $result213458)
             ($mult_if3124 n m n213456 m213457))
        (mult n213456 m213457 (+ n213456 $result213458)))))

; if else
(assert
  (forall (($res22290 Int) ($n2288 Int) ($m2287 Int) ($res12289 Int) ($int213459 Int))
    (=> (and (not (or (< $m2287 0) (> $m2287 46340)))
             (= $m2287 $int213459)
             (<= (- 2147483648) $int213459)
             (<= $int213459 2147483647))
        ($main_if3125 $m2287 $n2288 $res12289 $res22290 $m2287 $n2288 $res12289 $res22290))))

; if else
(assert
  (forall (($res22290213463 Int) ($n2288 Int) ($m2287 Int) ($res12289 Int) ($n2288213461 Int) ($int213464 Int) ($res12289213462 Int) ($res22290 Int) ($m2287213460 Int))
    (=> (and (not (or (< $n2288213461 0) (> $n2288213461 46340)))
             (= $n2288213461 $int213464)
             (<= (- 2147483648) $int213464)
             (<= $int213464 2147483647)
             ($main_if3125 $m2287 $n2288 $res12289 $res22290 $m2287213460 $n2288213461 $res12289213462 $res22290213463))
        ($main_if3126 $m2287 $n2288 $res12289 $res22290 $m2287213460 $n2288213461 $res12289213462 $res22290213463))))

; mult precondition
(assert
  (forall (($res22290 Int) ($res22290213468 Int) ($n2288 Int) ($m2287 Int) ($res12289213467 Int) ($m2287213465 Int) ($res12289 Int) ($n2288213466 Int))
    (=> (and ($main_if3126 $m2287 $n2288 $res12289 $res22290 $m2287213465 $n2288213466 $res12289213467 $res22290213468))
        ($mult_pre $m2287213465 $n2288213466))))

; mult precondition
(assert
  (forall (($res22290 Int) ($res22290213468 Int) ($n2288 Int) ($res12289213467 Int) ($m2287213465 Int) ($result213469 Int) ($m2287 Int) ($res12289 Int) ($n2288213466 Int))
    (=> (and (= $res12289213467 $result213469)
             (mult $m2287213465 $n2288213466 $result213469)
             ($main_if3126 $m2287 $n2288 $res12289 $res22290 $m2287213465 $n2288213466 $res12289213467 $res22290213468))
        ($mult_pre $n2288213466 $m2287213465))))

; label ERROR
(assert
  (forall (($res22290 Int) ($res22290213468 Int) ($n2288 Int) ($res12289213467 Int) ($m2287213465 Int) ($result213469 Int) ($m2287 Int) ($result213470 Int) ($res12289 Int) ($n2288213466 Int))
    (=> (and (not (= $res12289213467 $res22290213468))
             (> $m2287213465 0)
             (> $n2288213466 0)
             (= $res22290213468 $result213470)
             (mult $n2288213466 $m2287213465 $result213470)
             (= $res12289213467 $result213469)
             (mult $m2287213465 $n2288213466 $result213469)
             ($main_if3126 $m2287 $n2288 $res12289 $res22290 $m2287213465 $n2288213466 $res12289213467 $res22290213468))
        ($main_ERROR $m2287 $n2288 $res12289 $res22290 $m2287213465 $n2288213466 $res12289213467 $res22290213468))))

; error
(assert
  (forall (($res22290 Int) ($n2288 Int) ($res12289213473 Int) ($m2287213471 Int) ($m2287 Int) ($n2288213472 Int) ($res12289 Int) ($res22290213474 Int))
    (=> (and ($main_ERROR $m2287 $n2288 $res12289 $res22290 $m2287213471 $n2288213472 $res12289213473 $res22290213474))
        false)))

(check-sat)
