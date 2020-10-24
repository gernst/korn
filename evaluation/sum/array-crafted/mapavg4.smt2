(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $main_sum12 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv11 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_inv10 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum11 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv12 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if4 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum10 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; loop entry $mapavg_inv10
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv10 x 0 0))))

; loop term $mapavg_sum10
(assert
  (forall ((x187 (Array Int Int)) ($i28188 Int) ($ret29189 Int))
    (=> (and (not (< $i28188 100000)))
        ($mapavg_sum10 x187 $i28188 $ret29189 x187 $i28188 $ret29189))))

; forwards $mapavg_inv10
(assert
  (forall ((x187 (Array Int Int)) ($i28188 Int) ($ret29189 Int))
    (=> (and (< $i28188 100000)
             ($mapavg_inv10 x187 $i28188 $ret29189))
        ($mapavg_inv10 x187 (+ $i28188 1) (+ (+ $ret29189 $i28188) (select x187 $i28188))))))

; backwards $mapavg_sum10
(assert
  (forall (($i28188 Int) ($i28191 Int) ($ret29192 Int) ($ret29189 Int) (x190 (Array Int Int)) (x187 (Array Int Int)))
    (=> (and ($mapavg_sum10 x187 (+ $i28188 1) (+ (+ $ret29189 $i28188) (select x187 $i28188)) x190 $i28191 $ret29192)
             (< $i28188 100000))
        ($mapavg_sum10 x187 $i28188 $ret29189 x190 $i28191 $ret29192))))

; post mapavg
(assert
  (forall ((x193 (Array Int Int)) ($ret29195 Int) (x (Array Int Int)) ($i28194 Int))
    (=> (and ($mapavg_sum10 x 0 0 x193 $i28194 $ret29195)
             ($mapavg_pre x))
        (mapavg x193 (div $ret29195 100000)))))

; loop entry $main_inv11
(assert
  (forall (($i35 Int) ($x30 (Array Int Int)) ($ret534 Int) ($ret233 Int) ($ret32 Int) ($i36 Int) ($temp31 Int))
    (=> (and (= $i35 0))
        ($main_inv11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36))))

; loop term $main_sum11
(assert
  (forall (($x30196 (Array Int Int)) ($i35201 Int) ($ret233199 Int) ($temp31197 Int) ($ret32198 Int) ($ret534200 Int) ($i36202 Int))
    (=> (and (not (< $i35201 100000)))
        ($main_sum11 $x30196 $temp31197 $ret32198 $ret233199 $ret534200 $i35201 $i36202 $x30196 $temp31197 $ret32198 $ret233199 $ret534200 $i35201 $i36202))))

; forwards $main_inv11
(assert
  (forall (($x30196 (Array Int Int)) ($i35201 Int) ($ret233199 Int) ($temp31197 Int) ($ret32198 Int) ($int203 Int) ($ret534200 Int) ($i36202 Int))
    (=> (and (<= (- 2147483648) $int203)
             (<= $int203 2147483647)
             (< $i35201 100000)
             ($main_inv11 $x30196 $temp31197 $ret32198 $ret233199 $ret534200 $i35201 $i36202))
        ($main_inv11 (store $x30196 $i35201 $int203) $temp31197 $ret32198 $ret233199 $ret534200 (+ $i35201 1) $i36202))))

; backwards $main_sum11
(assert
  (forall (($x30196 (Array Int Int)) ($i35201 Int) ($ret233199 Int) ($i35209 Int) ($x30204 (Array Int Int)) ($temp31197 Int) ($ret32198 Int) ($temp31205 Int) ($int203 Int) ($ret534200 Int) ($i36202 Int) ($i36210 Int) ($ret534208 Int) ($ret32206 Int) ($ret233207 Int))
    (=> (and ($main_sum11 (store $x30196 $i35201 $int203) $temp31197 $ret32198 $ret233199 $ret534200 (+ $i35201 1) $i36202 $x30204 $temp31205 $ret32206 $ret233207 $ret534208 $i35209 $i36210)
             (<= (- 2147483648) $int203)
             (<= $int203 2147483647)
             (< $i35201 100000))
        ($main_sum11 $x30196 $temp31197 $ret32198 $ret233199 $ret534200 $i35201 $i36202 $x30204 $temp31205 $ret32206 $ret233207 $ret534208 $i35209 $i36210))))

; mapavg precondition
(assert
  (forall (($x30 (Array Int Int)) ($i36217 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret32 Int) ($i36 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret534215 Int) ($temp31 Int))
    (=> (and ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($mapavg_pre $x30211))))

; mapavg precondition
(assert
  (forall (($x30 (Array Int Int)) ($i36217 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret32 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret534215 Int) ($temp31 Int))
    (=> (and (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($mapavg_pre (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0))))))

; loop entry $main_inv12
(assert
  (forall (($x30 (Array Int Int)) ($i36217 Int) ($ret32213 Int) ($result219 Int) ($ret534 Int) ($ret233 Int) ($ret32 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret534215 Int) ($temp31 Int))
    (=> (and (= $i36217 0)
             (mapavg (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) $result219)
             (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($main_inv12 (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) (select (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) 0) $result218 $result219 $ret534215 $i35216 $i36217))))

; loop term $main_sum12
(assert
  (forall (($temp31221 Int) ($i35225 Int) ($ret534224 Int) ($ret32222 Int) ($i36226 Int) ($ret233223 Int) ($x30220 (Array Int Int)))
    (=> (and (not (< $i36226 (- 100000 1))))
        ($main_sum12 $x30220 $temp31221 $ret32222 $ret233223 $ret534224 $i35225 $i36226 $x30220 $temp31221 $ret32222 $ret233223 $ret534224 $i35225 $i36226))))

; forwards $main_inv12
(assert
  (forall (($temp31221 Int) ($i35225 Int) ($ret534224 Int) ($ret32222 Int) ($i36226 Int) ($ret233223 Int) ($x30220 (Array Int Int)))
    (=> (and (< $i36226 (- 100000 1))
             ($main_inv12 $x30220 $temp31221 $ret32222 $ret233223 $ret534224 $i35225 $i36226))
        ($main_inv12 (store $x30220 $i36226 (select $x30220 (+ $i36226 1))) $temp31221 $ret32222 $ret233223 $ret534224 $i35225 (+ $i36226 1)))))

; backwards $main_sum12
(assert
  (forall (($ret233230 Int) ($temp31221 Int) ($i35225 Int) ($ret534224 Int) ($x30227 (Array Int Int)) ($ret32229 Int) ($temp31228 Int) ($i36233 Int) ($ret32222 Int) ($i36226 Int) ($i35232 Int) ($ret233223 Int) ($x30220 (Array Int Int)) ($ret534231 Int))
    (=> (and ($main_sum12 (store $x30220 $i36226 (select $x30220 (+ $i36226 1))) $temp31221 $ret32222 $ret233223 $ret534224 $i35225 (+ $i36226 1) $x30227 $temp31228 $ret32229 $ret233230 $ret534231 $i35232 $i36233)
             (< $i36226 (- 100000 1)))
        ($main_sum12 $x30220 $temp31221 $ret32222 $ret233223 $ret534224 $i35225 $i36226 $x30227 $temp31228 $ret32229 $ret233230 $ret534231 $i35232 $i36233))))

; mapavg precondition
(assert
  (forall (($x30 (Array Int Int)) ($i36240 Int) ($i36217 Int) ($temp31235 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret534238 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret233237 Int) ($result219 Int) ($ret32236 Int) ($x30234 (Array Int Int)) ($i35239 Int) ($ret32 Int) ($ret534215 Int) ($temp31 Int))
    (=> (and ($main_sum12 (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) (select (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) 0) $result218 $result219 $ret534215 $i35216 $i36217 $x30234 $temp31235 $ret32236 $ret233237 $ret534238 $i35239 $i36240)
             (= $i36217 0)
             (mapavg (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) $result219)
             (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($mapavg_pre (store $x30234 (- 100000 1) $temp31235)))))

; error
(assert
  (forall (($x30 (Array Int Int)) ($result241 Int) ($i36240 Int) ($i36217 Int) ($temp31235 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret534238 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret233237 Int) ($result219 Int) ($ret32236 Int) ($x30234 (Array Int Int)) ($i35239 Int) ($ret32 Int) ($ret534215 Int) ($temp31 Int))
    (=> (and (or (not (= $ret32236 $ret233237)) (not (= $ret32236 $result241)))
             (mapavg (store $x30234 (- 100000 1) $temp31235) $result241)
             ($main_sum12 (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) (select (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) 0) $result218 $result219 $ret534215 $i35216 $i36217 $x30234 $temp31235 $ret32236 $ret233237 $ret534238 $i35239 $i36240)
             (= $i36217 0)
             (mapavg (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) $result219)
             (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        false)))

; if then
(assert
  (forall (($x30 (Array Int Int)) ($result241 Int) ($i36240 Int) ($i36217 Int) ($temp31235 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret534238 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret233237 Int) ($result219 Int) ($ret32236 Int) ($x30234 (Array Int Int)) ($i35239 Int) ($ret32 Int) ($ret534215 Int) ($temp31 Int))
    (=> (and (or (not (= $ret32236 $ret233237)) (not (= $ret32236 $result241)))
             (mapavg (store $x30234 (- 100000 1) $temp31235) $result241)
             ($main_sum12 (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) (select (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) 0) $result218 $result219 $ret534215 $i35216 $i36217 $x30234 $temp31235 $ret32236 $ret233237 $ret534238 $i35239 $i36240)
             (= $i36217 0)
             (mapavg (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) $result219)
             (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($main_if4 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 (store $x30234 (- 100000 1) $temp31235) $temp31235 $ret32236 $ret233237 $result241 $i35239 $i36240))))

; if else
(assert
  (forall (($x30 (Array Int Int)) ($result241 Int) ($i36240 Int) ($i36217 Int) ($temp31235 Int) ($ret32213 Int) ($ret534 Int) ($ret233 Int) ($ret534238 Int) ($i36 Int) ($result218 Int) ($i35 Int) ($temp31212 Int) ($ret233214 Int) ($i35216 Int) ($x30211 (Array Int Int)) ($ret233237 Int) ($result219 Int) ($ret32236 Int) ($x30234 (Array Int Int)) ($i35239 Int) ($ret32 Int) ($ret534215 Int) ($temp31 Int))
    (=> (and (not (or (not (= $ret32236 $ret233237)) (not (= $ret32236 $result241))))
             (mapavg (store $x30234 (- 100000 1) $temp31235) $result241)
             ($main_sum12 (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) (select (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) 0) $result218 $result219 $ret534215 $i35216 $i36217 $x30234 $temp31235 $ret32236 $ret233237 $ret534238 $i35239 $i36240)
             (= $i36217 0)
             (mapavg (store (store $x30211 0 (select $x30211 1)) 1 (select $x30211 0)) $result219)
             (mapavg $x30211 $result218)
             ($main_sum11 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 $x30211 $temp31212 $ret32213 $ret233214 $ret534215 $i35216 $i36217)
             (= $i35 0))
        ($main_if4 $x30 $temp31 $ret32 $ret233 $ret534 $i35 $i36 (store $x30234 (- 100000 1) $temp31235) $temp31235 $ret32236 $ret233237 $result241 $i35239 $i36240))))

(check-sat)
