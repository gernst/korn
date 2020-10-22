(set-logic HORN)

(declare-fun $id_pre (Int) Bool)
(declare-fun $id_if3313 (Int Int) Bool)
(declare-fun $main_if3314 (Int Int) Bool)
(declare-fun $id_if3312 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun id (Int Int) Bool)

; post id
(assert
  (forall ((x Int))
    (=> (and (= x 0)
             ($id_pre x))
        (id x 0))))

; if else
(assert
  (forall ((x Int) ($ret2382 Int))
    (=> (and (not (= x 0))
             ($id_pre x))
        ($id_if3312 x $ret2382))))

; id precondition
(assert
  (forall ((x211006 Int) ($ret2382211007 Int))
    (=> (and ($id_if3312 x211006 $ret2382211007))
        ($id_pre (- x211006 1)))))

; post id
(assert
  (forall ((x211006 Int) ($ret2382211007 Int) ($result211008 Int))
    (=> (and (> $ret2382211007 3)
             (= $ret2382211007 (+ $result211008 1))
             (id (- x211006 1) $result211008)
             ($id_if3312 x211006 $ret2382211007))
        (id x211006 3))))

; if else
(assert
  (forall ((x211006 Int) ($ret2382211007 Int) ($result211008 Int))
    (=> (and (not (> $ret2382211007 3))
             (= $ret2382211007 (+ $result211008 1))
             (id (- x211006 1) $result211008)
             ($id_if3312 x211006 $ret2382211007))
        ($id_if3313 x211006 $ret2382211007))))

; post id
(assert
  (forall ((x211009 Int) ($ret2382211010 Int))
    (=> (and ($id_if3313 x211009 $ret2382211010))
        (id x211009 $ret2382211010))))

; id precondition
(assert
  (forall (($input2383 Int) ($int211011 Int))
    (=> (and (= $input2383 $int211011)
             (<= (- 2147483648) $int211011)
             (<= $int211011 2147483647))
        ($id_pre $input2383))))

; label ERROR
(assert
  (forall (($input2383 Int) ($result2384 Int) ($result211012 Int) ($int211011 Int))
    (=> (and (= $result2384 2)
             (= $result2384 $result211012)
             (id $input2383 $result211012)
             (= $input2383 $int211011)
             (<= (- 2147483648) $int211011)
             (<= $int211011 2147483647))
        ($main_ERROR $input2383 $result2384))))

; error
(assert
  (forall (($input2383211013 Int) ($result2384211014 Int))
    (=> (and ($main_ERROR $input2383211013 $result2384211014))
        false)))

; if else
(assert
  (forall (($input2383 Int) ($result2384 Int) ($result211012 Int) ($int211011 Int))
    (=> (and (not (= $result2384 2))
             (= $result2384 $result211012)
             (id $input2383 $result211012)
             (= $input2383 $int211011)
             (<= (- 2147483648) $int211011)
             (<= $int211011 2147483647))
        ($main_if3314 $input2383 $result2384))))

(check-sat)
