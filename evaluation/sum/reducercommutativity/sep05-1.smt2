(set-logic HORN)

(declare-fun $main_if404 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if403 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum551 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum552 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum550 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv552 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv550 ((Array Int Int) Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)
(declare-fun $main_inv551 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sep_inv550
(assert
  (forall ((x (Array Int Int)) ($ret821 Int) ($i822 Int))
    (=> (and (= $i822 0)
             (= $ret821 0)
             ($sep_pre x))
        ($sep_inv550 x $ret821 $i822))))

; loop term $sep_sum550
(assert
  (forall ((x10583 (Array Int Int)) ($ret82110584 Int) ($i82210585 Int))
    (=> (and (not (< $i82210585 5)))
        ($sep_sum550 x10583 $ret82110584 $i82210585 x10583 $ret82110584 $i82210585))))

; if then
(assert
  (forall ((x10583 (Array Int Int)) ($ret82110584 Int) ($i82210585 Int))
    (=> (and (= (mod (select x10583 $i82210585) 2) 0)
             (< $i82210585 5)
             ($sep_inv550 x10583 $ret82110584 $i82210585))
        ($sep_if403 x10583 $ret82110584 $i82210585 x10583 (+ $ret82110584 1) $i82210585))))

; if else
(assert
  (forall ((x10583 (Array Int Int)) ($ret82110584 Int) ($i82210585 Int))
    (=> (and (not (= (mod (select x10583 $i82210585) 2) 0))
             (< $i82210585 5)
             ($sep_inv550 x10583 $ret82110584 $i82210585))
        ($sep_if403 x10583 $ret82110584 $i82210585 x10583 (- $ret82110584 1) $i82210585))))

; forwards $sep_inv550
(assert
  (forall ((x10583 (Array Int Int)) (x10586 (Array Int Int)) ($ret82110587 Int) ($i82210588 Int) ($ret82110584 Int) ($i82210585 Int))
    (=> (and ($sep_if403 x10583 $ret82110584 $i82210585 x10586 $ret82110587 $i82210588))
        ($sep_inv550 x10586 $ret82110587 (+ $i82210588 1)))))

; backwards $sep_sum550
(assert
  (forall ((x10583 (Array Int Int)) (x10586 (Array Int Int)) ($ret82110587 Int) (x10589 (Array Int Int)) ($ret82110584 Int) ($i82210591 Int) ($i82210585 Int) ($ret82110590 Int) ($i82210588 Int))
    (=> (and ($sep_sum550 x10586 $ret82110587 (+ $i82210588 1) x10589 $ret82110590 $i82210591)
             ($sep_if403 x10583 $ret82110584 $i82210585 x10586 $ret82110587 $i82210588))
        ($sep_sum550 x10583 $ret82110584 $i82210585 x10589 $ret82110590 $i82210591))))

; post sep
(assert
  (forall (($ret82110593 Int) (x (Array Int Int)) ($i822 Int) ($i82210594 Int) ($ret821 Int) (x10592 (Array Int Int)))
    (=> (and ($sep_sum550 x $ret821 $i822 x10592 $ret82110593 $i82210594)
             (= $i822 0)
             (= $ret821 0)
             ($sep_pre x))
        (sep x10592 $ret82110593))))

; loop entry $main_inv551
(assert
  (forall (($x823 (Array Int Int)) ($i828 Int) ($ret825 Int) ($temp824 Int) ($i829 Int) ($ret2826 Int) ($ret5827 Int))
    (=> (and (= $i828 0))
        ($main_inv551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829))))

; loop term $main_sum551
(assert
  (forall (($ret282610598 Int) ($temp82410596 Int) ($i82810600 Int) ($x82310595 (Array Int Int)) ($ret82510597 Int) ($i82910601 Int) ($ret582710599 Int))
    (=> (and (not (< $i82810600 5)))
        ($main_sum551 $x82310595 $temp82410596 $ret82510597 $ret282610598 $ret582710599 $i82810600 $i82910601 $x82310595 $temp82410596 $ret82510597 $ret282610598 $ret582710599 $i82810600 $i82910601))))

; forwards $main_inv551
(assert
  (forall (($ret282610598 Int) ($int10602 Int) ($temp82410596 Int) ($i82810600 Int) ($x82310595 (Array Int Int)) ($ret82510597 Int) ($i82910601 Int) ($ret582710599 Int))
    (=> (and (<= (- 2147483648) $int10602)
             (<= $int10602 2147483647)
             (< $i82810600 5)
             ($main_inv551 $x82310595 $temp82410596 $ret82510597 $ret282610598 $ret582710599 $i82810600 $i82910601))
        ($main_inv551 (store $x82310595 $i82810600 $int10602) $temp82410596 $ret82510597 $ret282610598 $ret582710599 (+ $i82810600 1) $i82910601))))

; backwards $main_sum551
(assert
  (forall (($ret282610598 Int) ($ret82510605 Int) ($i82810608 Int) ($temp82410596 Int) ($i82810600 Int) ($x82310595 (Array Int Int)) ($ret82510597 Int) ($int10602 Int) ($i82910609 Int) ($ret582710607 Int) ($x82310603 (Array Int Int)) ($ret282610606 Int) ($temp82410604 Int) ($i82910601 Int) ($ret582710599 Int))
    (=> (and ($main_sum551 (store $x82310595 $i82810600 $int10602) $temp82410596 $ret82510597 $ret282610598 $ret582710599 (+ $i82810600 1) $i82910601 $x82310603 $temp82410604 $ret82510605 $ret282610606 $ret582710607 $i82810608 $i82910609)
             (<= (- 2147483648) $int10602)
             (<= $int10602 2147483647)
             (< $i82810600 5))
        ($main_sum551 $x82310595 $temp82410596 $ret82510597 $ret282610598 $ret582710599 $i82810600 $i82910601 $x82310603 $temp82410604 $ret82510605 $ret282610606 $ret582710607 $i82810608 $i82910609))))

; sep precondition
(assert
  (forall (($i828 Int) ($i82910616 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($x82310610 (Array Int Int)) ($ret2826 Int) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int))
    (=> (and ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($sep_pre $x82310610))))

; sep precondition
(assert
  (forall (($i828 Int) ($result10617 Int) ($i82910616 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($x82310610 (Array Int Int)) ($ret2826 Int) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int))
    (=> (and (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($sep_pre (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0))))))

; loop entry $main_inv552
(assert
  (forall (($result10618 Int) ($i828 Int) ($result10617 Int) ($i82910616 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($x82310610 (Array Int Int)) ($ret2826 Int) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int))
    (=> (and (= $i82910616 0)
             (sep (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) $result10618)
             (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($main_inv552 (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) (select (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) 0) $result10617 $result10618 $ret582710614 $i82810615 $i82910616))))

; loop term $main_sum552
(assert
  (forall (($ret82510621 Int) ($x82310619 (Array Int Int)) ($i82910625 Int) ($ret582710623 Int) ($ret282610622 Int) ($temp82410620 Int) ($i82810624 Int))
    (=> (and (not (< $i82910625 (- 5 1))))
        ($main_sum552 $x82310619 $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 $i82910625 $x82310619 $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 $i82910625))))

; forwards $main_inv552
(assert
  (forall (($ret82510621 Int) ($x82310619 (Array Int Int)) ($i82910625 Int) ($ret582710623 Int) ($ret282610622 Int) ($temp82410620 Int) ($i82810624 Int))
    (=> (and (< $i82910625 (- 5 1))
             ($main_inv552 $x82310619 $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 $i82910625))
        ($main_inv552 (store $x82310619 $i82910625 (select $x82310619 (+ $i82910625 1))) $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 (+ $i82910625 1)))))

; backwards $main_sum552
(assert
  (forall (($ret282610629 Int) ($i82810631 Int) ($i82910632 Int) ($ret82510621 Int) ($x82310619 (Array Int Int)) ($i82910625 Int) ($ret582710630 Int) ($x82310626 (Array Int Int)) ($ret582710623 Int) ($ret82510628 Int) ($temp82410627 Int) ($ret282610622 Int) ($temp82410620 Int) ($i82810624 Int))
    (=> (and ($main_sum552 (store $x82310619 $i82910625 (select $x82310619 (+ $i82910625 1))) $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 (+ $i82910625 1) $x82310626 $temp82410627 $ret82510628 $ret282610629 $ret582710630 $i82810631 $i82910632)
             (< $i82910625 (- 5 1)))
        ($main_sum552 $x82310619 $temp82410620 $ret82510621 $ret282610622 $ret582710623 $i82810624 $i82910625 $x82310626 $temp82410627 $ret82510628 $ret282610629 $ret582710630 $i82810631 $i82910632))))

; sep precondition
(assert
  (forall (($result10618 Int) ($i828 Int) ($x82310633 (Array Int Int)) ($ret82510635 Int) ($result10617 Int) ($i82910616 Int) ($i82910639 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($i82810638 Int) ($ret282610636 Int) ($ret582710637 Int) ($x82310610 (Array Int Int)) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int) ($ret2826 Int) ($temp82410634 Int))
    (=> (and ($main_sum552 (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) (select (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) 0) $result10617 $result10618 $ret582710614 $i82810615 $i82910616 $x82310633 $temp82410634 $ret82510635 $ret282610636 $ret582710637 $i82810638 $i82910639)
             (= $i82910616 0)
             (sep (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) $result10618)
             (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($sep_pre (store $x82310633 (- 5 1) $temp82410634)))))

; error
(assert
  (forall (($result10618 Int) ($i828 Int) ($x82310633 (Array Int Int)) ($ret82510635 Int) ($result10617 Int) ($i82910616 Int) ($i82910639 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($result10640 Int) ($i82810638 Int) ($ret282610636 Int) ($ret582710637 Int) ($x82310610 (Array Int Int)) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int) ($ret2826 Int) ($temp82410634 Int))
    (=> (and (or (not (= $ret82510635 $ret282610636)) (not (= $ret82510635 $result10640)))
             (sep (store $x82310633 (- 5 1) $temp82410634) $result10640)
             ($main_sum552 (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) (select (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) 0) $result10617 $result10618 $ret582710614 $i82810615 $i82910616 $x82310633 $temp82410634 $ret82510635 $ret282610636 $ret582710637 $i82810638 $i82910639)
             (= $i82910616 0)
             (sep (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) $result10618)
             (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        false)))

; if then
(assert
  (forall (($result10618 Int) ($i828 Int) ($x82310633 (Array Int Int)) ($ret82510635 Int) ($result10617 Int) ($i82910616 Int) ($i82910639 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($result10640 Int) ($i82810638 Int) ($ret282610636 Int) ($ret582710637 Int) ($x82310610 (Array Int Int)) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int) ($ret2826 Int) ($temp82410634 Int))
    (=> (and (or (not (= $ret82510635 $ret282610636)) (not (= $ret82510635 $result10640)))
             (sep (store $x82310633 (- 5 1) $temp82410634) $result10640)
             ($main_sum552 (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) (select (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) 0) $result10617 $result10618 $ret582710614 $i82810615 $i82910616 $x82310633 $temp82410634 $ret82510635 $ret282610636 $ret582710637 $i82810638 $i82910639)
             (= $i82910616 0)
             (sep (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) $result10618)
             (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($main_if404 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 (store $x82310633 (- 5 1) $temp82410634) $temp82410634 $ret82510635 $ret282610636 $result10640 $i82810638 $i82910639))))

; if else
(assert
  (forall (($result10618 Int) ($i828 Int) ($x82310633 (Array Int Int)) ($ret82510635 Int) ($result10617 Int) ($i82910616 Int) ($i82910639 Int) ($ret282610613 Int) ($ret825 Int) ($ret82510612 Int) ($temp824 Int) ($i829 Int) ($result10640 Int) ($i82810638 Int) ($ret282610636 Int) ($ret582710637 Int) ($x82310610 (Array Int Int)) ($ret5827 Int) ($x823 (Array Int Int)) ($temp82410611 Int) ($i82810615 Int) ($ret582710614 Int) ($ret2826 Int) ($temp82410634 Int))
    (=> (and (not (or (not (= $ret82510635 $ret282610636)) (not (= $ret82510635 $result10640))))
             (sep (store $x82310633 (- 5 1) $temp82410634) $result10640)
             ($main_sum552 (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) (select (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) 0) $result10617 $result10618 $ret582710614 $i82810615 $i82910616 $x82310633 $temp82410634 $ret82510635 $ret282610636 $ret582710637 $i82810638 $i82910639)
             (= $i82910616 0)
             (sep (store (store $x82310610 0 (select $x82310610 1)) 1 (select $x82310610 0)) $result10618)
             (sep $x82310610 $result10617)
             ($main_sum551 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 $x82310610 $temp82410611 $ret82510612 $ret282610613 $ret582710614 $i82810615 $i82910616)
             (= $i828 0))
        ($main_if404 $x823 $temp824 $ret825 $ret2826 $ret5827 $i828 $i829 (store $x82310633 (- 5 1) $temp82410634) $temp82410634 $ret82510635 $ret282610636 $result10640 $i82810638 $i82910639))))

(check-sat)
