(set-logic HORN)

(declare-fun $main_inv222 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum221 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum222 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv220 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv221 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if67 (Int) Bool)
(declare-fun $main_sum220 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3611 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3611))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if67 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3612 Int))
    (=> (and ($__VERIFIER_assert_if67 cond3612))
        (__VERIFIER_assert cond3612))))

; loop entry $main_inv220
(assert
  (forall (($a322 (Array Int Int)) ($i323 Int) ($x324 Int))
    (=> (and (= $i323 0))
        ($main_inv220 $a322 $i323 $x324))))

; loop term $main_sum220
(assert
  (forall (($a3223613 (Array Int Int)) ($i3233614 Int) ($x3243615 Int))
    (=> (and (not (< $i3233614 100000))
             ($main_inv220 $a3223613 $i3233614 $x3243615))
        ($main_sum220 $a3223613 $i3233614 $x3243615))))

; forwards $main_inv220
(assert
  (forall (($a3223613 (Array Int Int)) ($i3233614 Int) ($x3243615 Int))
    (=> (and (< $i3233614 100000)
             ($main_inv220 $a3223613 $i3233614 $x3243615))
        ($main_inv220 (store $a3223613 $i3233614 42) (+ $i3233614 1) $x3243615))))

; loop entry $main_inv221
(assert
  (forall (($a3223616 (Array Int Int)) ($x3243618 Int) ($i3233617 Int))
    (=> (and ($main_sum220 $a3223616 $i3233617 $x3243618))
        ($main_inv221 $a3223616 0 $x3243618))))

; loop term $main_sum221
(assert
  (forall (($a3223619 (Array Int Int)) ($i3233620 Int) ($x3243621 Int))
    (=> (and (not (< $i3233620 100000))
             ($main_inv221 $a3223619 $i3233620 $x3243621))
        ($main_sum221 $a3223619 $i3233620 $x3243621))))

; forwards $main_inv221
(assert
  (forall (($a3223619 (Array Int Int)) ($i3233620 Int) ($x3243621 Int))
    (=> (and (< $i3233620 100000)
             ($main_inv221 $a3223619 $i3233620 $x3243621))
        ($main_inv221 (store $a3223619 $i3233620 43) (+ $i3233620 1) $x3243621))))

; loop entry $main_inv222
(assert
  (forall (($a3223622 (Array Int Int)) ($i3233623 Int) ($x3243624 Int))
    (=> (and ($main_sum221 $a3223622 $i3233623 $x3243624))
        ($main_inv222 $a3223622 $i3233623 0))))

; loop term $main_sum222
(assert
  (forall (($a3223625 (Array Int Int)) ($i3233626 Int) ($x3243627 Int))
    (=> (and (not (< $x3243627 100000))
             ($main_inv222 $a3223625 $i3233626 $x3243627))
        ($main_sum222 $a3223625 $i3233626 $x3243627))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3223625 (Array Int Int)) ($x3243627 Int) ($i3233626 Int))
    (=> (and (< $x3243627 100000)
             ($main_inv222 $a3223625 $i3233626 $x3243627))
        ($__VERIFIER_assert_pre (ite (= (select $a3223625 $x3243627) 42) 1 0)))))

; forwards $main_inv222
(assert
  (forall (($a3223625 (Array Int Int)) ($i3233626 Int) ($x3243627 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3223625 $x3243627) 42) 1 0))
             (< $x3243627 100000)
             ($main_inv222 $a3223625 $i3233626 $x3243627))
        ($main_inv222 $a3223625 $i3233626 (+ $x3243627 1)))))

(check-sat)
