(set-logic HORN)

(declare-fun $main_if3062 (Int Int Int Int Int Int) Bool)
(declare-fun $addition_if3059 (Int Int Int Int) Bool)
(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_if3058 (Int Int Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $main_if3061 (Int Int Int Int Int Int) Bool)
(declare-fun $addition_if3057 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3060 (Int Int Int Int Int Int) Bool)

; post addition
(assert
  (forall ((m Int) (n Int))
    (=> (and (= n 0)
             ($addition_pre m n))
        (addition m n m))))

; if else
(assert
  (forall ((m Int) (n Int))
    (=> (and (not (= n 0))
             ($addition_pre m n))
        ($addition_if3057 m n m n))))

; addition precondition
(assert
  (forall ((m213217 Int) (n213218 Int) (m Int) (n Int))
    (=> (and (> n213218 0)
             ($addition_if3057 m n m213217 n213218))
        ($addition_pre (+ m213217 1) (- n213218 1)))))

; post addition
(assert
  (forall ((n Int) (m213217 Int) (n213218 Int) ($result213219 Int) (m Int))
    (=> (and (addition (+ m213217 1) (- n213218 1) $result213219)
             (> n213218 0)
             ($addition_if3057 m n m213217 n213218))
        (addition m213217 n213218 $result213219))))

; if else
(assert
  (forall ((m Int) (n Int) (m213217 Int) (n213218 Int))
    (=> (and (not (> n213218 0))
             ($addition_if3057 m n m213217 n213218))
        ($addition_if3058 m n m213217 n213218))))

; addition precondition
(assert
  (forall ((m213220 Int) (n213221 Int) (m Int) (n Int))
    (=> (and (< n213221 0)
             ($addition_if3058 m n m213220 n213221))
        ($addition_pre (- m213220 1) (+ n213221 1)))))

; post addition
(assert
  (forall (($result213222 Int) (n213221 Int) (n Int) (m213220 Int) (m Int))
    (=> (and (addition (- m213220 1) (+ n213221 1) $result213222)
             (< n213221 0)
             ($addition_if3058 m n m213220 n213221))
        (addition m213220 n213221 $result213222))))

; if else
(assert
  (forall ((m Int) (n Int) (m213220 Int) (n213221 Int))
    (=> (and (not (< n213221 0))
             ($addition_if3058 m n m213220 n213221))
        ($addition_if3059 m n m213220 n213221))))

; post addition
(assert
  (forall ((m213223 Int) (n213224 Int) (m Int) (n Int))
    (=> (and ($addition_if3059 m n m213223 n213224))
        (addition m213223 n213224 0))))

; if else
(assert
  (forall (($m2250 Int) ($n2251 Int) ($result2252 Int) ($int213225 Int))
    (=> (and (not (or (< $m2250 0) (> $m2250 1073741823)))
             (= $m2250 $int213225)
             (<= (- 2147483648) $int213225)
             (<= $int213225 2147483647))
        ($main_if3060 $m2250 $n2251 $result2252 $m2250 $n2251 $result2252))))

; if else
(assert
  (forall (($n2251 Int) ($result2252 Int) ($int213229 Int) ($n2251213227 Int) ($m2250 Int) ($m2250213226 Int) ($result2252213228 Int))
    (=> (and (not (or (< $n2251213227 0) (> $n2251213227 1073741823)))
             (= $n2251213227 $int213229)
             (<= (- 2147483648) $int213229)
             (<= $int213229 2147483647)
             ($main_if3060 $m2250 $n2251 $result2252 $m2250213226 $n2251213227 $result2252213228))
        ($main_if3061 $m2250 $n2251 $result2252 $m2250213226 $n2251213227 $result2252213228))))

; addition precondition
(assert
  (forall (($n2251 Int) ($result2252213232 Int) ($result2252 Int) ($m2250213230 Int) ($n2251213231 Int) ($m2250 Int))
    (=> (and ($main_if3061 $m2250 $n2251 $result2252 $m2250213230 $n2251213231 $result2252213232))
        ($addition_pre $m2250213230 $n2251213231))))

; label ERROR
(assert
  (forall (($n2251 Int) ($result2252213232 Int) ($result2252 Int) ($m2250213230 Int) ($result213233 Int) ($n2251213231 Int) ($m2250 Int))
    (=> (and (not (= $result2252213232 (+ $m2250213230 $n2251213231)))
             (= $result2252213232 $result213233)
             (addition $m2250213230 $n2251213231 $result213233)
             ($main_if3061 $m2250 $n2251 $result2252 $m2250213230 $n2251213231 $result2252213232))
        ($main_ERROR $m2250 $n2251 $result2252 $m2250213230 $n2251213231 $result2252213232))))

; error
(assert
  (forall (($m2250213234 Int) ($n2251 Int) ($n2251213235 Int) ($m2250 Int) ($result2252213236 Int) ($result2252 Int))
    (=> (and ($main_ERROR $m2250 $n2251 $result2252 $m2250213234 $n2251213235 $result2252213236))
        false)))

(check-sat)
