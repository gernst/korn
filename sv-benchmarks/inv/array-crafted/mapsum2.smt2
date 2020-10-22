(set-logic HORN)

(declare-fun $main_inv17 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv18 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $main_sum18 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum17 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if6 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_sum16 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_inv16 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv16
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv16 x 0 0))))

; loop term $mapsum_sum16
(assert
  (forall ((x226 (Array Int Int)) ($i46227 Int) ($ret47228 Int))
    (=> (and (not (< $i46227 1000))
             ($mapsum_inv16 x226 $i46227 $ret47228))
        ($mapsum_sum16 x226 $i46227 $ret47228))))

; forwards $mapsum_inv16
(assert
  (forall ((x226 (Array Int Int)) ($i46227 Int) ($ret47228 Int))
    (=> (and (< $i46227 1000)
             ($mapsum_inv16 x226 $i46227 $ret47228))
        ($mapsum_inv16 x226 (+ $i46227 1) (+ (+ $ret47228 $i46227) (select x226 $i46227))))))

; post mapsum
(assert
  (forall ((x229 (Array Int Int)) ($ret47231 Int) ($i46230 Int))
    (=> (and ($mapsum_sum16 x229 $i46230 $ret47231))
        (mapsum x229 $ret47231))))

; loop entry $main_inv17
(assert
  (forall (($temp49 Int) ($ret552 Int) ($i54 Int) ($x48 (Array Int Int)) ($ret50 Int) ($i53 Int) ($ret251 Int))
    (=> (and (= $i53 0))
        ($main_inv17 $x48 $temp49 $ret50 $ret251 $ret552 $i53 $i54))))

; loop term $main_sum17
(assert
  (forall (($i53237 Int) ($ret251235 Int) ($i54238 Int) ($ret552236 Int) ($x48232 (Array Int Int)) ($temp49233 Int) ($ret50234 Int))
    (=> (and (not (< $i53237 1000))
             ($main_inv17 $x48232 $temp49233 $ret50234 $ret251235 $ret552236 $i53237 $i54238))
        ($main_sum17 $x48232 $temp49233 $ret50234 $ret251235 $ret552236 $i53237 $i54238))))

; forwards $main_inv17
(assert
  (forall (($i53237 Int) ($int239 Int) ($ret251235 Int) ($i54238 Int) ($ret552236 Int) ($x48232 (Array Int Int)) ($temp49233 Int) ($ret50234 Int))
    (=> (and (<= (- 2147483648) $int239)
             (<= $int239 2147483647)
             (< $i53237 1000)
             ($main_inv17 $x48232 $temp49233 $ret50234 $ret251235 $ret552236 $i53237 $i54238))
        ($main_inv17 (store $x48232 $i53237 $int239) $temp49233 $ret50234 $ret251235 $ret552236 (+ $i53237 1) $i54238))))

; mapsum precondition
(assert
  (forall (($temp49241 Int) ($ret552244 Int) ($i54246 Int) ($x48240 (Array Int Int)) ($ret251243 Int) ($i53245 Int) ($ret50242 Int))
    (=> (and ($main_sum17 $x48240 $temp49241 $ret50242 $ret251243 $ret552244 $i53245 $i54246))
        ($mapsum_pre $x48240))))

; mapsum precondition
(assert
  (forall (($temp49241 Int) ($ret552244 Int) ($i54246 Int) ($result247 Int) ($x48240 (Array Int Int)) ($ret251243 Int) ($i53245 Int) ($ret50242 Int))
    (=> (and (mapsum $x48240 $result247)
             ($main_sum17 $x48240 $temp49241 $ret50242 $ret251243 $ret552244 $i53245 $i54246))
        ($mapsum_pre (store (store $x48240 0 (select $x48240 1)) 1 (select $x48240 0))))))

; loop entry $main_inv18
(assert
  (forall (($temp49241 Int) ($ret552244 Int) ($i54246 Int) ($result247 Int) ($x48240 (Array Int Int)) ($ret251243 Int) ($i53245 Int) ($ret50242 Int) ($result248 Int))
    (=> (and (= $i54246 0)
             (mapsum (store (store $x48240 0 (select $x48240 1)) 1 (select $x48240 0)) $result248)
             (mapsum $x48240 $result247)
             ($main_sum17 $x48240 $temp49241 $ret50242 $ret251243 $ret552244 $i53245 $i54246))
        ($main_inv18 (store (store $x48240 0 (select $x48240 1)) 1 (select $x48240 0)) (select (store (store $x48240 0 (select $x48240 1)) 1 (select $x48240 0)) 0) $result247 $result248 $ret552244 $i53245 $i54246))))

; loop term $main_sum18
(assert
  (forall (($ret552253 Int) ($ret251252 Int) ($temp49250 Int) ($i54255 Int) ($x48249 (Array Int Int)) ($i53254 Int) ($ret50251 Int))
    (=> (and (not (< $i54255 (- 1000 1)))
             ($main_inv18 $x48249 $temp49250 $ret50251 $ret251252 $ret552253 $i53254 $i54255))
        ($main_sum18 $x48249 $temp49250 $ret50251 $ret251252 $ret552253 $i53254 $i54255))))

; forwards $main_inv18
(assert
  (forall (($ret552253 Int) ($ret251252 Int) ($temp49250 Int) ($i54255 Int) ($x48249 (Array Int Int)) ($i53254 Int) ($ret50251 Int))
    (=> (and (< $i54255 (- 1000 1))
             ($main_inv18 $x48249 $temp49250 $ret50251 $ret251252 $ret552253 $i53254 $i54255))
        ($main_inv18 (store $x48249 $i54255 (select $x48249 (+ $i54255 1))) $temp49250 $ret50251 $ret251252 $ret552253 $i53254 (+ $i54255 1)))))

; mapsum precondition
(assert
  (forall (($temp49257 Int) ($ret552260 Int) ($ret50258 Int) ($x48256 (Array Int Int)) ($i53261 Int) ($i54262 Int) ($ret251259 Int))
    (=> (and ($main_sum18 $x48256 $temp49257 $ret50258 $ret251259 $ret552260 $i53261 $i54262))
        ($mapsum_pre (store $x48256 (- 1000 1) $temp49257)))))

; error
(assert
  (forall (($ret552260 Int) ($ret50258 Int) ($x48256 (Array Int Int)) ($i53261 Int) ($i54262 Int) ($ret251259 Int) ($result263 Int) ($temp49257 Int))
    (=> (and (or (not (= $ret50258 $ret251259)) (not (= $ret50258 $result263)))
             (mapsum (store $x48256 (- 1000 1) $temp49257) $result263)
             ($main_sum18 $x48256 $temp49257 $ret50258 $ret251259 $ret552260 $i53261 $i54262))
        false)))

; if then
(assert
  (forall (($ret552260 Int) ($ret50258 Int) ($x48256 (Array Int Int)) ($i53261 Int) ($i54262 Int) ($ret251259 Int) ($result263 Int) ($temp49257 Int))
    (=> (and (or (not (= $ret50258 $ret251259)) (not (= $ret50258 $result263)))
             (mapsum (store $x48256 (- 1000 1) $temp49257) $result263)
             ($main_sum18 $x48256 $temp49257 $ret50258 $ret251259 $ret552260 $i53261 $i54262))
        ($main_if6 (store $x48256 (- 1000 1) $temp49257) $temp49257 $ret50258 $ret251259 $result263 $i53261 $i54262))))

; if else
(assert
  (forall (($ret552260 Int) ($ret50258 Int) ($x48256 (Array Int Int)) ($i53261 Int) ($i54262 Int) ($ret251259 Int) ($result263 Int) ($temp49257 Int))
    (=> (and (not (or (not (= $ret50258 $ret251259)) (not (= $ret50258 $result263))))
             (mapsum (store $x48256 (- 1000 1) $temp49257) $result263)
             ($main_sum18 $x48256 $temp49257 $ret50258 $ret251259 $ret552260 $i53261 $i54262))
        ($main_if6 (store $x48256 (- 1000 1) $temp49257) $temp49257 $ret50258 $ret251259 $result263 $i53261 $i54262))))

(check-sat)
