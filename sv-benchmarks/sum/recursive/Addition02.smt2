(set-logic HORN)

(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_if3064 (Int Int Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $addition_if3063 (Int Int Int Int) Bool)
(declare-fun $main_if3067 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $addition_if3065 (Int Int Int Int) Bool)
(declare-fun $main_if3066 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3068 (Int Int Int Int Int Int) Bool)

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
        ($addition_if3063 m n m n))))

; addition precondition
(assert
  (forall ((m213240 Int) (n213241 Int) (m Int) (n Int))
    (=> (and (> n213241 0)
             ($addition_if3063 m n m213240 n213241))
        ($addition_pre (+ m213240 1) (- n213241 1)))))

; post addition
(assert
  (forall ((n Int) (n213241 Int) ($result213242 Int) (m213240 Int) (m Int))
    (=> (and (addition (+ m213240 1) (- n213241 1) $result213242)
             (> n213241 0)
             ($addition_if3063 m n m213240 n213241))
        (addition m213240 n213241 $result213242))))

; if else
(assert
  (forall ((m Int) (n Int) (m213240 Int) (n213241 Int))
    (=> (and (not (> n213241 0))
             ($addition_if3063 m n m213240 n213241))
        ($addition_if3064 m n m213240 n213241))))

; addition precondition
(assert
  (forall ((m213243 Int) (n213244 Int) (m Int) (n Int))
    (=> (and (< n213244 0)
             ($addition_if3064 m n m213243 n213244))
        ($addition_pre (- m213243 1) (+ n213244 1)))))

; post addition
(assert
  (forall (($result213245 Int) (n Int) (m213243 Int) (n213244 Int) (m Int))
    (=> (and (addition (- m213243 1) (+ n213244 1) $result213245)
             (< n213244 0)
             ($addition_if3064 m n m213243 n213244))
        (addition m213243 n213244 $result213245))))

; if else
(assert
  (forall ((m Int) (n Int) (m213243 Int) (n213244 Int))
    (=> (and (not (< n213244 0))
             ($addition_if3064 m n m213243 n213244))
        ($addition_if3065 m n m213243 n213244))))

; post addition
(assert
  (forall ((m213246 Int) (n213247 Int) (m Int) (n Int))
    (=> (and ($addition_if3065 m n m213246 n213247))
        (addition m213246 n213247 0))))

; if else
(assert
  (forall (($m2253 Int) ($n2254 Int) ($result2255 Int) ($int213248 Int))
    (=> (and (not (or (< $m2253 0) (> $m2253 1073741823)))
             (= $m2253 $int213248)
             (<= (- 2147483648) $int213248)
             (<= $int213248 2147483647))
        ($main_if3066 $m2253 $n2254 $result2255 $m2253 $n2254 $result2255))))

; if else
(assert
  (forall (($n2254 Int) ($result2255213251 Int) ($m2253 Int) ($n2254213250 Int) ($result2255 Int) ($m2253213249 Int) ($int213252 Int))
    (=> (and (not (or (< $n2254213250 0) (> $n2254213250 1073741823)))
             (= $n2254213250 $int213252)
             (<= (- 2147483648) $int213252)
             (<= $int213252 2147483647)
             ($main_if3066 $m2253 $n2254 $result2255 $m2253213249 $n2254213250 $result2255213251))
        ($main_if3067 $m2253 $n2254 $result2255 $m2253213249 $n2254213250 $result2255213251))))

; addition precondition
(assert
  (forall (($n2254 Int) ($m2253 Int) ($result2255 Int) ($m2253213253 Int) ($result2255213255 Int) ($n2254213254 Int))
    (=> (and ($main_if3067 $m2253 $n2254 $result2255 $m2253213253 $n2254213254 $result2255213255))
        ($addition_pre $m2253213253 $n2254213254))))

; label ERROR
(assert
  (forall (($n2254 Int) ($result2255 Int) ($m2253213253 Int) ($result2255213255 Int) ($n2254213254 Int) ($m2253 Int) ($result213256 Int))
    (=> (and (not (= $result2255213255 (- $m2253213253 $n2254213254)))
             (= $result2255213255 $result213256)
             (addition $m2253213253 $n2254213254 $result213256)
             ($main_if3067 $m2253 $n2254 $result2255 $m2253213253 $n2254213254 $result2255213255))
        ($main_ERROR $m2253 $n2254 $result2255 $m2253213253 $n2254213254 $result2255213255))))

; error
(assert
  (forall (($n2254213258 Int) ($n2254 Int) ($m2253213257 Int) ($m2253 Int) ($result2255 Int) ($result2255213259 Int))
    (=> (and ($main_ERROR $m2253 $n2254 $result2255 $m2253213257 $n2254213258 $result2255213259))
        false)))

(check-sat)
