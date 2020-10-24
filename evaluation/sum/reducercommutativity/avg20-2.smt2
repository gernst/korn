(set-logic HORN)

(declare-fun $main_if400 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv543 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_sum541 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_sum542 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum543 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_inv541 ((Array Int Int) Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_inv542 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv541
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv541 x 0 0))))

; loop term $avg_sum541
(assert
  (forall ((x10397 (Array Int Int)) ($i79410398 Int) ($ret79510399 Int))
    (=> (and (not (< $i79410398 20)))
        ($avg_sum541 x10397 $i79410398 $ret79510399 x10397 $i79410398 $ret79510399))))

; forwards $avg_inv541
(assert
  (forall ((x10397 (Array Int Int)) ($i79410398 Int) ($ret79510399 Int))
    (=> (and (< $i79410398 20)
             ($avg_inv541 x10397 $i79410398 $ret79510399))
        ($avg_inv541 x10397 (+ $i79410398 1) (+ $ret79510399 (select x10397 $i79410398))))))

; backwards $avg_sum541
(assert
  (forall ((x10400 (Array Int Int)) ($ret79510402 Int) (x10397 (Array Int Int)) ($ret79510399 Int) ($i79410398 Int) ($i79410401 Int))
    (=> (and ($avg_sum541 x10397 (+ $i79410398 1) (+ $ret79510399 (select x10397 $i79410398)) x10400 $i79410401 $ret79510402)
             (< $i79410398 20))
        ($avg_sum541 x10397 $i79410398 $ret79510399 x10400 $i79410401 $ret79510402))))

; post avg
(assert
  (forall ((x10403 (Array Int Int)) ($ret79510405 Int) (x (Array Int Int)) ($i79410404 Int))
    (=> (and ($avg_sum541 x 0 0 x10403 $i79410404 $ret79510405)
             ($avg_pre x))
        (avg x10403 (div $ret79510405 20)))))

; loop entry $main_inv542
(assert
  (forall (($x796 (Array Int Int)) ($ret798 Int) ($i801 Int) ($ret2799 Int) ($temp797 Int) ($ret5800 Int) ($i802 Int))
    (=> (and (= $i801 0))
        ($main_inv542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802))))

; loop term $main_sum542
(assert
  (forall (($i80210412 Int) ($ret279910409 Int) ($x79610406 (Array Int Int)) ($ret79810408 Int) ($ret580010410 Int) ($temp79710407 Int) ($i80110411 Int))
    (=> (and (not (< $i80110411 20)))
        ($main_sum542 $x79610406 $temp79710407 $ret79810408 $ret279910409 $ret580010410 $i80110411 $i80210412 $x79610406 $temp79710407 $ret79810408 $ret279910409 $ret580010410 $i80110411 $i80210412))))

; forwards $main_inv542
(assert
  (forall (($i80210412 Int) ($ret279910409 Int) ($int10413 Int) ($x79610406 (Array Int Int)) ($ret79810408 Int) ($ret580010410 Int) ($temp79710407 Int) ($i80110411 Int))
    (=> (and (<= (- 2147483648) $int10413)
             (<= $int10413 2147483647)
             (< $i80110411 20)
             ($main_inv542 $x79610406 $temp79710407 $ret79810408 $ret279910409 $ret580010410 $i80110411 $i80210412))
        ($main_inv542 (store $x79610406 $i80110411 $int10413) $temp79710407 $ret79810408 $ret279910409 $ret580010410 (+ $i80110411 1) $i80210412))))

; backwards $main_sum542
(assert
  (forall (($i80110419 Int) ($x79610414 (Array Int Int)) ($i80210412 Int) ($ret279910409 Int) ($temp79710415 Int) ($ret79810416 Int) ($x79610406 (Array Int Int)) ($ret79810408 Int) ($ret580010418 Int) ($ret279910417 Int) ($ret580010410 Int) ($temp79710407 Int) ($i80110411 Int) ($int10413 Int) ($i80210420 Int))
    (=> (and ($main_sum542 (store $x79610406 $i80110411 $int10413) $temp79710407 $ret79810408 $ret279910409 $ret580010410 (+ $i80110411 1) $i80210412 $x79610414 $temp79710415 $ret79810416 $ret279910417 $ret580010418 $i80110419 $i80210420)
             (<= (- 2147483648) $int10413)
             (<= $int10413 2147483647)
             (< $i80110411 20))
        ($main_sum542 $x79610406 $temp79710407 $ret79810408 $ret279910409 $ret580010410 $i80110411 $i80210412 $x79610414 $temp79710415 $ret79810416 $ret279910417 $ret580010418 $i80110419 $i80210420))))

; avg precondition
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($ret798 Int) ($temp79710422 Int) ($i801 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($avg_pre $x79610421))))

; avg precondition
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($ret798 Int) ($result10428 Int) ($temp79710422 Int) ($i801 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($avg_pre (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0))))))

; loop entry $main_inv543
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($ret798 Int) ($result10428 Int) ($temp79710422 Int) ($i801 Int) ($result10429 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and (= $i80210427 0)
             (avg (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) $result10429)
             (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($main_inv543 (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) (select (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) 0) $result10428 $result10429 $ret580010425 $i80110426 $i80210427))))

; loop term $main_sum543
(assert
  (forall (($ret79810432 Int) ($temp79710431 Int) ($i80210436 Int) ($ret279910433 Int) ($ret580010434 Int) ($i80110435 Int) ($x79610430 (Array Int Int)))
    (=> (and (not (< $i80210436 (- 20 1))))
        ($main_sum543 $x79610430 $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 $i80210436 $x79610430 $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 $i80210436))))

; forwards $main_inv543
(assert
  (forall (($ret79810432 Int) ($temp79710431 Int) ($i80210436 Int) ($ret279910433 Int) ($ret580010434 Int) ($i80110435 Int) ($x79610430 (Array Int Int)))
    (=> (and (< $i80210436 (- 20 1))
             ($main_inv543 $x79610430 $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 $i80210436))
        ($main_inv543 (store $x79610430 $i80210436 (select $x79610430 (+ $i80210436 1))) $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 (+ $i80210436 1)))))

; backwards $main_sum543
(assert
  (forall (($ret279910440 Int) ($ret79810432 Int) ($x79610437 (Array Int Int)) ($temp79710431 Int) ($i80110442 Int) ($i80210436 Int) ($ret580010441 Int) ($temp79710438 Int) ($ret279910433 Int) ($ret580010434 Int) ($i80110435 Int) ($x79610430 (Array Int Int)) ($ret79810439 Int) ($i80210443 Int))
    (=> (and ($main_sum543 (store $x79610430 $i80210436 (select $x79610430 (+ $i80210436 1))) $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 (+ $i80210436 1) $x79610437 $temp79710438 $ret79810439 $ret279910440 $ret580010441 $i80110442 $i80210443)
             (< $i80210436 (- 20 1)))
        ($main_sum543 $x79610430 $temp79710431 $ret79810432 $ret279910433 $ret580010434 $i80110435 $i80210436 $x79610437 $temp79710438 $ret79810439 $ret279910440 $ret580010441 $i80110442 $i80210443))))

; avg precondition
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($i80110449 Int) ($temp79710422 Int) ($ret79810446 Int) ($ret279910447 Int) ($i801 Int) ($result10429 Int) ($ret580010448 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210450 Int) ($temp79710445 Int) ($ret798 Int) ($x79610444 (Array Int Int)) ($result10428 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and ($main_sum543 (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) (select (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) 0) $result10428 $result10429 $ret580010425 $i80110426 $i80210427 $x79610444 $temp79710445 $ret79810446 $ret279910447 $ret580010448 $i80110449 $i80210450)
             (= $i80210427 0)
             (avg (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) $result10429)
             (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($avg_pre (store $x79610444 (- 20 1) $temp79710445)))))

; error
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($i80110449 Int) ($temp79710422 Int) ($result10451 Int) ($ret79810446 Int) ($ret279910447 Int) ($i801 Int) ($result10429 Int) ($ret580010448 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210450 Int) ($temp79710445 Int) ($ret798 Int) ($x79610444 (Array Int Int)) ($result10428 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and (or (not (= $ret79810446 $ret279910447)) (not (= $ret79810446 $result10451)))
             (avg (store $x79610444 (- 20 1) $temp79710445) $result10451)
             ($main_sum543 (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) (select (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) 0) $result10428 $result10429 $ret580010425 $i80110426 $i80210427 $x79610444 $temp79710445 $ret79810446 $ret279910447 $ret580010448 $i80110449 $i80210450)
             (= $i80210427 0)
             (avg (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) $result10429)
             (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        false)))

; if then
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($i80110449 Int) ($temp79710422 Int) ($result10451 Int) ($ret79810446 Int) ($ret279910447 Int) ($i801 Int) ($result10429 Int) ($ret580010448 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210450 Int) ($temp79710445 Int) ($ret798 Int) ($x79610444 (Array Int Int)) ($result10428 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and (or (not (= $ret79810446 $ret279910447)) (not (= $ret79810446 $result10451)))
             (avg (store $x79610444 (- 20 1) $temp79710445) $result10451)
             ($main_sum543 (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) (select (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) 0) $result10428 $result10429 $ret580010425 $i80110426 $i80210427 $x79610444 $temp79710445 $ret79810446 $ret279910447 $ret580010448 $i80110449 $i80210450)
             (= $i80210427 0)
             (avg (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) $result10429)
             (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($main_if400 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 (store $x79610444 (- 20 1) $temp79710445) $temp79710445 $ret79810446 $ret279910447 $result10451 $i80110449 $i80210450))))

; if else
(assert
  (forall (($x796 (Array Int Int)) ($x79610421 (Array Int Int)) ($i80110449 Int) ($temp79710422 Int) ($result10451 Int) ($ret79810446 Int) ($ret279910447 Int) ($i801 Int) ($result10429 Int) ($ret580010448 Int) ($ret79810423 Int) ($ret5800 Int) ($i80210450 Int) ($temp79710445 Int) ($ret798 Int) ($x79610444 (Array Int Int)) ($result10428 Int) ($i80210427 Int) ($ret2799 Int) ($ret580010425 Int) ($ret279910424 Int) ($temp797 Int) ($i80110426 Int) ($i802 Int))
    (=> (and (not (or (not (= $ret79810446 $ret279910447)) (not (= $ret79810446 $result10451))))
             (avg (store $x79610444 (- 20 1) $temp79710445) $result10451)
             ($main_sum543 (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) (select (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) 0) $result10428 $result10429 $ret580010425 $i80110426 $i80210427 $x79610444 $temp79710445 $ret79810446 $ret279910447 $ret580010448 $i80110449 $i80210450)
             (= $i80210427 0)
             (avg (store (store $x79610421 0 (select $x79610421 1)) 1 (select $x79610421 0)) $result10429)
             (avg $x79610421 $result10428)
             ($main_sum542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 $x79610421 $temp79710422 $ret79810423 $ret279910424 $ret580010425 $i80110426 $i80210427)
             (= $i801 0))
        ($main_if400 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802 (store $x79610444 (- 20 1) $temp79710445) $temp79710445 $ret79810446 $ret279910447 $result10451 $i80110449 $i80210450))))

(check-sat)
