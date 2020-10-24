(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if611 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if612 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_if609 (Int) Bool)
(declare-fun $main_sum219 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if610 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv219 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if614 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if613 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if609 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14073 Int))
    (=> (and ($assume_abort_if_not_if609 cond14073))
        (assume_abort_if_not cond14073))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14074 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14074))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if610 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14075 Int))
    (=> (and ($__VERIFIER_assert_if610 cond14075))
        (__VERIFIER_assert cond14075))))

; if else
(assert
  (forall (($v4606 Int) ($l605 Int) ($uint14077 Int) ($j604 Int) ($i602 Int) ($k603 Int) ($n601 Int))
    (=> (and (<= $uint14077 20000001)
             (<= 0 $uint14077)
             (<= $uint14077 4294967295)
             (= $v4606 0)
             (= $l605 0)
             (= $j604 0)
             (= $k603 0)
             (= $i602 0)
             (= $n601 0))
        ($main_if611 $uint14077 $i602 $k603 $j604 $l605 $v4606))))

; loop entry $main_inv219
(assert
  (forall (($k60314080 Int) ($l60514082 Int) ($j60414081 Int) ($n60114078 Int) ($v460614083 Int) ($i60214079 Int))
    (=> (and ($main_if611 $n60114078 $i60214079 $k60314080 $j60414081 $l60514082 $v460614083))
        ($main_inv219 $n60114078 $i60214079 $k60314080 $j60414081 $l60514082 $v460614083))))

; loop term $main_sum219
(assert
  (forall (($i60214085 Int) ($n60114084 Int) ($k60314086 Int) ($j60414087 Int) ($v460614089 Int) ($l60514088 Int))
    (=> (and (not (< $l60514088 $n60114084))
             ($main_inv219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))
        ($main_sum219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))))

; if then
(assert
  (forall (($i60214085 Int) ($n60114084 Int) ($k60314086 Int) ($j60414087 Int) ($v460614089 Int) ($l60514088 Int))
    (=> (and (= (mod $l60514088 2) 0)
             (not (= (mod $l60514088 3) 0))
             (not (= (mod $l60514088 4) 0))
             (< $l60514088 $n60114084)
             ($main_inv219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))
        ($main_if612 $n60114084 $i60214085 $k60314086 (+ $j60414087 1) $l60514088 $v460614089))))

; if else
(assert
  (forall (($i60214085 Int) ($n60114084 Int) ($k60314086 Int) ($j60414087 Int) ($v460614089 Int) ($l60514088 Int))
    (=> (and (not (= (mod $l60514088 2) 0))
             (not (= (mod $l60514088 3) 0))
             (not (= (mod $l60514088 4) 0))
             (< $l60514088 $n60114084)
             ($main_inv219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))
        ($main_if612 $n60114084 $i60214085 (+ $k60314086 1) $j60414087 $l60514088 $v460614089))))

; if then
(assert
  (forall (($i60214085 Int) ($n60114084 Int) ($k60314086 Int) ($j60414087 Int) ($v460614089 Int) ($l60514088 Int))
    (=> (and (= (mod $l60514088 3) 0)
             (not (= (mod $l60514088 4) 0))
             (< $l60514088 $n60114084)
             ($main_inv219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))
        ($main_if613 $n60114084 (+ $i60214085 1) $k60314086 $j60414087 $l60514088 $v460614089))))

; if else
(assert
  (forall (($l60514094 Int) ($j60414093 Int) ($n60114090 Int) ($v460614095 Int) ($i60214091 Int) ($k60314092 Int))
    (=> (and ($main_if612 $n60114090 $i60214091 $k60314092 $j60414093 $l60514094 $v460614095))
        ($main_if613 $n60114090 $i60214091 $k60314092 $j60414093 $l60514094 $v460614095))))

; if then
(assert
  (forall (($i60214085 Int) ($n60114084 Int) ($k60314086 Int) ($j60414087 Int) ($v460614089 Int) ($l60514088 Int))
    (=> (and (= (mod $l60514088 4) 0)
             (< $l60514088 $n60114084)
             ($main_inv219 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 $v460614089))
        ($main_if614 $n60114084 $i60214085 $k60314086 $j60414087 $l60514088 (+ $v460614089 1)))))

; if else
(assert
  (forall (($n60114096 Int) ($j60414099 Int) ($k60314098 Int) ($l60514100 Int) ($v460614101 Int) ($i60214097 Int))
    (=> (and ($main_if613 $n60114096 $i60214097 $k60314098 $j60414099 $l60514100 $v460614101))
        ($main_if614 $n60114096 $i60214097 $k60314098 $j60414099 $l60514100 $v460614101))))

; forwards $main_inv219
(assert
  (forall (($l60514106 Int) ($v460614107 Int) ($k60314104 Int) ($n60114102 Int) ($i60214103 Int) ($j60414105 Int))
    (=> (and ($main_if614 $n60114102 $i60214103 $k60314104 $j60414105 $l60514106 $v460614107))
        ($main_inv219 $n60114102 $i60214103 $k60314104 $j60414105 (+ $l60514106 1) $v460614107))))

; __VERIFIER_assert precondition
(assert
  (forall (($j60414111 Int) ($k60314110 Int) ($n60114108 Int) ($v460614113 Int) ($i60214109 Int) ($l60514112 Int))
    (=> (and ($main_sum219 $n60114108 $i60214109 $k60314110 $j60414111 $l60514112 $v460614113))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (+ $i60214109 $j60414111) $k60314110) $v460614113) $l60514112) 1 0)))))

(check-sat)
