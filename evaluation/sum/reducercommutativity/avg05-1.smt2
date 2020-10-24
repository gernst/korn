(set-logic HORN)

(declare-fun $avg_inv535 ((Array Int Int) Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_sum537 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_sum535 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv537 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv536 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if398 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_sum536 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv535
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv535 x 0 0))))

; loop term $avg_sum535
(assert
  (forall ((x10273 (Array Int Int)) ($i77610274 Int) ($ret77710275 Int))
    (=> (and (not (< $i77610274 5)))
        ($avg_sum535 x10273 $i77610274 $ret77710275 x10273 $i77610274 $ret77710275))))

; forwards $avg_inv535
(assert
  (forall ((x10273 (Array Int Int)) ($i77610274 Int) ($ret77710275 Int))
    (=> (and (< $i77610274 5)
             ($avg_inv535 x10273 $i77610274 $ret77710275))
        ($avg_inv535 x10273 (+ $i77610274 1) (+ $ret77710275 (select x10273 $i77610274))))))

; backwards $avg_sum535
(assert
  (forall (($i77610277 Int) (x10276 (Array Int Int)) ($ret77710275 Int) ($ret77710278 Int) ($i77610274 Int) (x10273 (Array Int Int)))
    (=> (and ($avg_sum535 x10273 (+ $i77610274 1) (+ $ret77710275 (select x10273 $i77610274)) x10276 $i77610277 $ret77710278)
             (< $i77610274 5))
        ($avg_sum535 x10273 $i77610274 $ret77710275 x10276 $i77610277 $ret77710278))))

; post avg
(assert
  (forall ((x10279 (Array Int Int)) ($ret77710281 Int) (x (Array Int Int)) ($i77610280 Int))
    (=> (and ($avg_sum535 x 0 0 x10279 $i77610280 $ret77710281)
             ($avg_pre x))
        (avg x10279 (div $ret77710281 5)))))

; loop entry $main_inv536
(assert
  (forall (($temp779 Int) ($ret780 Int) ($i784 Int) ($ret5782 Int) ($i783 Int) ($ret2781 Int) ($x778 (Array Int Int)))
    (=> (and (= $i783 0))
        ($main_inv536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784))))

; loop term $main_sum536
(assert
  (forall (($x77810282 (Array Int Int)) ($ret278110285 Int) ($temp77910283 Int) ($ret78010284 Int) ($i78310287 Int) ($ret578210286 Int) ($i78410288 Int))
    (=> (and (not (< $i78310287 5)))
        ($main_sum536 $x77810282 $temp77910283 $ret78010284 $ret278110285 $ret578210286 $i78310287 $i78410288 $x77810282 $temp77910283 $ret78010284 $ret278110285 $ret578210286 $i78310287 $i78410288))))

; forwards $main_inv536
(assert
  (forall (($x77810282 (Array Int Int)) ($ret278110285 Int) ($temp77910283 Int) ($ret78010284 Int) ($int10289 Int) ($i78310287 Int) ($ret578210286 Int) ($i78410288 Int))
    (=> (and (<= (- 2147483648) $int10289)
             (<= $int10289 2147483647)
             (< $i78310287 5)
             ($main_inv536 $x77810282 $temp77910283 $ret78010284 $ret278110285 $ret578210286 $i78310287 $i78410288))
        ($main_inv536 (store $x77810282 $i78310287 $int10289) $temp77910283 $ret78010284 $ret278110285 $ret578210286 (+ $i78310287 1) $i78410288))))

; backwards $main_sum536
(assert
  (forall (($ret578210294 Int) ($x77810282 (Array Int Int)) ($ret278110285 Int) ($temp77910283 Int) ($int10289 Int) ($i78310287 Int) ($temp77910291 Int) ($i78410288 Int) ($i78410296 Int) ($i78310295 Int) ($x77810290 (Array Int Int)) ($ret78010284 Int) ($ret78010292 Int) ($ret278110293 Int) ($ret578210286 Int))
    (=> (and ($main_sum536 (store $x77810282 $i78310287 $int10289) $temp77910283 $ret78010284 $ret278110285 $ret578210286 (+ $i78310287 1) $i78410288 $x77810290 $temp77910291 $ret78010292 $ret278110293 $ret578210294 $i78310295 $i78410296)
             (<= (- 2147483648) $int10289)
             (<= $int10289 2147483647)
             (< $i78310287 5))
        ($main_sum536 $x77810282 $temp77910283 $ret78010284 $ret278110285 $ret578210286 $i78310287 $i78410288 $x77810290 $temp77910291 $ret78010292 $ret278110293 $ret578210294 $i78310295 $i78410296))))

; avg precondition
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($temp77910298 Int) ($temp779 Int) ($x77810297 (Array Int Int)) ($ret578210301 Int) ($i78310302 Int) ($i784 Int) ($ret5782 Int) ($i783 Int) ($ret2781 Int) ($x778 (Array Int Int)) ($ret780 Int) ($i78410303 Int))
    (=> (and ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($avg_pre $x77810297))))

; avg precondition
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($result10304 Int) ($temp77910298 Int) ($temp779 Int) ($x77810297 (Array Int Int)) ($ret578210301 Int) ($i78310302 Int) ($i784 Int) ($ret5782 Int) ($i783 Int) ($ret2781 Int) ($x778 (Array Int Int)) ($ret780 Int) ($i78410303 Int))
    (=> (and (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($avg_pre (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0))))))

; loop entry $main_inv537
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($result10304 Int) ($temp77910298 Int) ($temp779 Int) ($x77810297 (Array Int Int)) ($ret578210301 Int) ($i78310302 Int) ($result10305 Int) ($i784 Int) ($ret5782 Int) ($i783 Int) ($ret2781 Int) ($x778 (Array Int Int)) ($ret780 Int) ($i78410303 Int))
    (=> (and (= $i78410303 0)
             (avg (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) $result10305)
             (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($main_inv537 (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) (select (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) 0) $result10304 $result10305 $ret578210301 $i78310302 $i78410303))))

; loop term $main_sum537
(assert
  (forall (($ret78010308 Int) ($x77810306 (Array Int Int)) ($ret578210310 Int) ($ret278110309 Int) ($i78410312 Int) ($i78310311 Int) ($temp77910307 Int))
    (=> (and (not (< $i78410312 (- 5 1))))
        ($main_sum537 $x77810306 $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 $i78410312 $x77810306 $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 $i78410312))))

; forwards $main_inv537
(assert
  (forall (($ret78010308 Int) ($x77810306 (Array Int Int)) ($ret578210310 Int) ($ret278110309 Int) ($i78410312 Int) ($i78310311 Int) ($temp77910307 Int))
    (=> (and (< $i78410312 (- 5 1))
             ($main_inv537 $x77810306 $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 $i78410312))
        ($main_inv537 (store $x77810306 $i78410312 (select $x77810306 (+ $i78410312 1))) $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 (+ $i78410312 1)))))

; backwards $main_sum537
(assert
  (forall (($ret78010308 Int) ($x77810306 (Array Int Int)) ($ret578210310 Int) ($i78310318 Int) ($i78410312 Int) ($i78310311 Int) ($ret278110316 Int) ($temp77910307 Int) ($x77810313 (Array Int Int)) ($ret578210317 Int) ($ret278110309 Int) ($temp77910314 Int) ($ret78010315 Int) ($i78410319 Int))
    (=> (and ($main_sum537 (store $x77810306 $i78410312 (select $x77810306 (+ $i78410312 1))) $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 (+ $i78410312 1) $x77810313 $temp77910314 $ret78010315 $ret278110316 $ret578210317 $i78310318 $i78410319)
             (< $i78410312 (- 5 1)))
        ($main_sum537 $x77810306 $temp77910307 $ret78010308 $ret278110309 $ret578210310 $i78310311 $i78410312 $x77810313 $temp77910314 $ret78010315 $ret278110316 $ret578210317 $i78310318 $i78410319))))

; avg precondition
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($x77810320 (Array Int Int)) ($result10304 Int) ($x77810297 (Array Int Int)) ($i78310302 Int) ($temp77910321 Int) ($result10305 Int) ($i784 Int) ($temp77910298 Int) ($ret78010322 Int) ($i78310325 Int) ($ret5782 Int) ($i783 Int) ($ret578210324 Int) ($temp779 Int) ($ret2781 Int) ($i78410326 Int) ($x778 (Array Int Int)) ($ret278110323 Int) ($ret578210301 Int) ($ret780 Int) ($i78410303 Int))
    (=> (and ($main_sum537 (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) (select (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) 0) $result10304 $result10305 $ret578210301 $i78310302 $i78410303 $x77810320 $temp77910321 $ret78010322 $ret278110323 $ret578210324 $i78310325 $i78410326)
             (= $i78410303 0)
             (avg (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) $result10305)
             (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($avg_pre (store $x77810320 (- 5 1) $temp77910321)))))

; error
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($x77810320 (Array Int Int)) ($result10304 Int) ($x77810297 (Array Int Int)) ($i78310302 Int) ($temp77910321 Int) ($result10305 Int) ($result10327 Int) ($i784 Int) ($temp77910298 Int) ($ret78010322 Int) ($i78310325 Int) ($ret5782 Int) ($i783 Int) ($ret578210324 Int) ($temp779 Int) ($ret2781 Int) ($i78410326 Int) ($x778 (Array Int Int)) ($ret278110323 Int) ($ret578210301 Int) ($ret780 Int) ($i78410303 Int))
    (=> (and (or (not (= $ret78010322 $ret278110323)) (not (= $ret78010322 $result10327)))
             (avg (store $x77810320 (- 5 1) $temp77910321) $result10327)
             ($main_sum537 (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) (select (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) 0) $result10304 $result10305 $ret578210301 $i78310302 $i78410303 $x77810320 $temp77910321 $ret78010322 $ret278110323 $ret578210324 $i78310325 $i78410326)
             (= $i78410303 0)
             (avg (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) $result10305)
             (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        false)))

; if then
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($x77810320 (Array Int Int)) ($result10304 Int) ($x77810297 (Array Int Int)) ($i78310302 Int) ($temp77910321 Int) ($result10305 Int) ($result10327 Int) ($i784 Int) ($temp77910298 Int) ($ret78010322 Int) ($i78310325 Int) ($ret5782 Int) ($i783 Int) ($ret578210324 Int) ($temp779 Int) ($ret2781 Int) ($i78410326 Int) ($x778 (Array Int Int)) ($ret278110323 Int) ($ret578210301 Int) ($ret780 Int) ($i78410303 Int))
    (=> (and (or (not (= $ret78010322 $ret278110323)) (not (= $ret78010322 $result10327)))
             (avg (store $x77810320 (- 5 1) $temp77910321) $result10327)
             ($main_sum537 (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) (select (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) 0) $result10304 $result10305 $ret578210301 $i78310302 $i78410303 $x77810320 $temp77910321 $ret78010322 $ret278110323 $ret578210324 $i78310325 $i78410326)
             (= $i78410303 0)
             (avg (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) $result10305)
             (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($main_if398 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 (store $x77810320 (- 5 1) $temp77910321) $temp77910321 $ret78010322 $ret278110323 $result10327 $i78310325 $i78410326))))

; if else
(assert
  (forall (($ret278110300 Int) ($ret78010299 Int) ($x77810320 (Array Int Int)) ($result10304 Int) ($x77810297 (Array Int Int)) ($i78310302 Int) ($temp77910321 Int) ($result10305 Int) ($result10327 Int) ($i784 Int) ($temp77910298 Int) ($ret78010322 Int) ($i78310325 Int) ($ret5782 Int) ($i783 Int) ($ret578210324 Int) ($temp779 Int) ($ret2781 Int) ($i78410326 Int) ($x778 (Array Int Int)) ($ret278110323 Int) ($ret578210301 Int) ($ret780 Int) ($i78410303 Int))
    (=> (and (not (or (not (= $ret78010322 $ret278110323)) (not (= $ret78010322 $result10327))))
             (avg (store $x77810320 (- 5 1) $temp77910321) $result10327)
             ($main_sum537 (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) (select (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) 0) $result10304 $result10305 $ret578210301 $i78310302 $i78410303 $x77810320 $temp77910321 $ret78010322 $ret278110323 $ret578210324 $i78310325 $i78410326)
             (= $i78410303 0)
             (avg (store (store $x77810297 0 (select $x77810297 1)) 1 (select $x77810297 0)) $result10305)
             (avg $x77810297 $result10304)
             ($main_sum536 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 $x77810297 $temp77910298 $ret78010299 $ret278110300 $ret578210301 $i78310302 $i78410303)
             (= $i783 0))
        ($main_if398 $x778 $temp779 $ret780 $ret2781 $ret5782 $i783 $i784 (store $x77810320 (- 5 1) $temp77910321) $temp77910321 $ret78010322 $ret278110323 $result10327 $i78310325 $i78410326))))

(check-sat)
