(set-logic HORN)

(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_if3064 (Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $addition_if3063 (Int Int) Bool)
(declare-fun $main_if3067 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $addition_if3065 (Int Int) Bool)
(declare-fun $main_if3066 (Int Int Int) Bool)
(declare-fun $main_if3068 (Int Int Int) Bool)

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
        ($addition_if3063 m n))))

; addition precondition
(assert
  (forall ((m210239 Int) (n210240 Int))
    (=> (and (> n210240 0)
             ($addition_if3063 m210239 n210240))
        ($addition_pre (+ m210239 1) (- n210240 1)))))

; post addition
(assert
  (forall ((m210239 Int) (n210240 Int) ($result210241 Int))
    (=> (and (addition (+ m210239 1) (- n210240 1) $result210241)
             (> n210240 0)
             ($addition_if3063 m210239 n210240))
        (addition m210239 n210240 $result210241))))

; if else
(assert
  (forall ((m210239 Int) (n210240 Int))
    (=> (and (not (> n210240 0))
             ($addition_if3063 m210239 n210240))
        ($addition_if3064 m210239 n210240))))

; addition precondition
(assert
  (forall ((m210242 Int) (n210243 Int))
    (=> (and (< n210243 0)
             ($addition_if3064 m210242 n210243))
        ($addition_pre (- m210242 1) (+ n210243 1)))))

; post addition
(assert
  (forall ((m210242 Int) (n210243 Int) ($result210244 Int))
    (=> (and (addition (- m210242 1) (+ n210243 1) $result210244)
             (< n210243 0)
             ($addition_if3064 m210242 n210243))
        (addition m210242 n210243 $result210244))))

; if else
(assert
  (forall ((m210242 Int) (n210243 Int))
    (=> (and (not (< n210243 0))
             ($addition_if3064 m210242 n210243))
        ($addition_if3065 m210242 n210243))))

; post addition
(assert
  (forall ((m210245 Int) (n210246 Int))
    (=> (and ($addition_if3065 m210245 n210246))
        (addition m210245 n210246 0))))

; if else
(assert
  (forall (($m2253 Int) ($n2254 Int) ($result2255 Int) ($int210247 Int))
    (=> (and (not (or (< $m2253 0) (> $m2253 1073741823)))
             (= $m2253 $int210247)
             (<= (- 2147483648) $int210247)
             (<= $int210247 2147483647))
        ($main_if3066 $m2253 $n2254 $result2255))))

; if else
(assert
  (forall (($m2253210248 Int) ($n2254210249 Int) ($result2255210250 Int) ($int210251 Int))
    (=> (and (not (or (< $n2254210249 0) (> $n2254210249 1073741823)))
             (= $n2254210249 $int210251)
             (<= (- 2147483648) $int210251)
             (<= $int210251 2147483647)
             ($main_if3066 $m2253210248 $n2254210249 $result2255210250))
        ($main_if3067 $m2253210248 $n2254210249 $result2255210250))))

; addition precondition
(assert
  (forall (($m2253210252 Int) ($n2254210253 Int) ($result2255210254 Int))
    (=> (and ($main_if3067 $m2253210252 $n2254210253 $result2255210254))
        ($addition_pre $m2253210252 $n2254210253))))

; label ERROR
(assert
  (forall (($m2253210252 Int) ($n2254210253 Int) ($result2255210254 Int) ($result210255 Int))
    (=> (and (not (= $result2255210254 (- $m2253210252 $n2254210253)))
             (= $result2255210254 $result210255)
             (addition $m2253210252 $n2254210253 $result210255)
             ($main_if3067 $m2253210252 $n2254210253 $result2255210254))
        ($main_ERROR $m2253210252 $n2254210253 $result2255210254))))

; error
(assert
  (forall (($m2253210256 Int) ($n2254210257 Int) ($result2255210258 Int))
    (=> (and ($main_ERROR $m2253210256 $n2254210257 $result2255210258))
        false)))

(check-sat)
