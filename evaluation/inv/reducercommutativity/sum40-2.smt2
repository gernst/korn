(set-logic HORN)

(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv576 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum574 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if416 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $sum_inv574 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum576 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum575 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv575 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv574
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv574 x 0 0))))

; loop term $sum_sum574
(assert
  (forall ((x7987 (Array Int Int)) ($i8937988 Int) ($ret8947989 Int))
    (=> (and (not (< $i8937988 40))
             ($sum_inv574 x7987 $i8937988 $ret8947989))
        ($sum_sum574 x7987 $i8937988 $ret8947989))))

; forwards $sum_inv574
(assert
  (forall ((x7987 (Array Int Int)) ($i8937988 Int) ($ret8947989 Int))
    (=> (and (< $i8937988 40)
             ($sum_inv574 x7987 $i8937988 $ret8947989))
        ($sum_inv574 x7987 (+ $i8937988 1) (+ $ret8947989 (select x7987 $i8937988))))))

; post sum
(assert
  (forall ((x7990 (Array Int Int)) ($ret8947992 Int) ($i8937991 Int))
    (=> (and ($sum_sum574 x7990 $i8937991 $ret8947992))
        (sum x7990 $ret8947992))))

; loop entry $main_inv575
(assert
  (forall (($x895 (Array Int Int)) ($temp896 Int) ($ret897 Int) ($ret5899 Int) ($i901 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (= $i900 0))
        ($main_inv575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901))))

; loop term $main_sum575
(assert
  (forall (($i9017999 Int) ($x8957993 (Array Int Int)) ($i9007998 Int) ($ret28987996 Int) ($ret8977995 Int) ($temp8967994 Int) ($ret58997997 Int))
    (=> (and (not (< $i9007998 40))
             ($main_inv575 $x8957993 $temp8967994 $ret8977995 $ret28987996 $ret58997997 $i9007998 $i9017999))
        ($main_sum575 $x8957993 $temp8967994 $ret8977995 $ret28987996 $ret58997997 $i9007998 $i9017999))))

; forwards $main_inv575
(assert
  (forall (($int8000 Int) ($i9017999 Int) ($x8957993 (Array Int Int)) ($i9007998 Int) ($ret28987996 Int) ($ret8977995 Int) ($temp8967994 Int) ($ret58997997 Int))
    (=> (and (<= (- 2147483648) $int8000)
             (<= $int8000 2147483647)
             (< $i9007998 40)
             ($main_inv575 $x8957993 $temp8967994 $ret8977995 $ret28987996 $ret58997997 $i9007998 $i9017999))
        ($main_inv575 (store $x8957993 $i9007998 $int8000) $temp8967994 $ret8977995 $ret28987996 $ret58997997 (+ $i9007998 1) $i9017999))))

; sum precondition
(assert
  (forall (($ret28988004 Int) ($ret58998005 Int) ($temp8968002 Int) ($ret8978003 Int) ($x8958001 (Array Int Int)) ($i9018007 Int) ($i9008006 Int))
    (=> (and ($main_sum575 $x8958001 $temp8968002 $ret8978003 $ret28988004 $ret58998005 $i9008006 $i9018007))
        ($sum_pre $x8958001))))

; sum precondition
(assert
  (forall (($ret28988004 Int) ($ret58998005 Int) ($result8008 Int) ($temp8968002 Int) ($ret8978003 Int) ($x8958001 (Array Int Int)) ($i9018007 Int) ($i9008006 Int))
    (=> (and (sum $x8958001 $result8008)
             ($main_sum575 $x8958001 $temp8968002 $ret8978003 $ret28988004 $ret58998005 $i9008006 $i9018007))
        ($sum_pre (store (store $x8958001 0 (select $x8958001 1)) 1 (select $x8958001 0))))))

; loop entry $main_inv576
(assert
  (forall (($result8009 Int) ($ret28988004 Int) ($ret58998005 Int) ($result8008 Int) ($temp8968002 Int) ($ret8978003 Int) ($x8958001 (Array Int Int)) ($i9018007 Int) ($i9008006 Int))
    (=> (and (= $i9018007 0)
             (sum (store (store $x8958001 0 (select $x8958001 1)) 1 (select $x8958001 0)) $result8009)
             (sum $x8958001 $result8008)
             ($main_sum575 $x8958001 $temp8968002 $ret8978003 $ret28988004 $ret58998005 $i9008006 $i9018007))
        ($main_inv576 (store (store $x8958001 0 (select $x8958001 1)) 1 (select $x8958001 0)) (select (store (store $x8958001 0 (select $x8958001 1)) 1 (select $x8958001 0)) 0) $result8008 $result8009 $ret58998005 $i9008006 $i9018007))))

; loop term $main_sum576
(assert
  (forall (($ret58998014 Int) ($i9008015 Int) ($i9018016 Int) ($x8958010 (Array Int Int)) ($ret8978012 Int) ($ret28988013 Int) ($temp8968011 Int))
    (=> (and (not (< $i9018016 (- 40 1)))
             ($main_inv576 $x8958010 $temp8968011 $ret8978012 $ret28988013 $ret58998014 $i9008015 $i9018016))
        ($main_sum576 $x8958010 $temp8968011 $ret8978012 $ret28988013 $ret58998014 $i9008015 $i9018016))))

; forwards $main_inv576
(assert
  (forall (($ret58998014 Int) ($i9008015 Int) ($i9018016 Int) ($x8958010 (Array Int Int)) ($ret8978012 Int) ($ret28988013 Int) ($temp8968011 Int))
    (=> (and (< $i9018016 (- 40 1))
             ($main_inv576 $x8958010 $temp8968011 $ret8978012 $ret28988013 $ret58998014 $i9008015 $i9018016))
        ($main_inv576 (store $x8958010 $i9018016 (select $x8958010 (+ $i9018016 1))) $temp8968011 $ret8978012 $ret28988013 $ret58998014 $i9008015 (+ $i9018016 1)))))

; sum precondition
(assert
  (forall (($i9008022 Int) ($x8958017 (Array Int Int)) ($ret28988020 Int) ($temp8968018 Int) ($i9018023 Int) ($ret58998021 Int) ($ret8978019 Int))
    (=> (and ($main_sum576 $x8958017 $temp8968018 $ret8978019 $ret28988020 $ret58998021 $i9008022 $i9018023))
        ($sum_pre (store $x8958017 (- 40 1) $temp8968018)))))

; error
(assert
  (forall (($i9008022 Int) ($x8958017 (Array Int Int)) ($ret28988020 Int) ($result8024 Int) ($temp8968018 Int) ($i9018023 Int) ($ret58998021 Int) ($ret8978019 Int))
    (=> (and (or (not (= $ret8978019 $ret28988020)) (not (= $ret8978019 $result8024)))
             (sum (store $x8958017 (- 40 1) $temp8968018) $result8024)
             ($main_sum576 $x8958017 $temp8968018 $ret8978019 $ret28988020 $ret58998021 $i9008022 $i9018023))
        false)))

; if then
(assert
  (forall (($i9008022 Int) ($x8958017 (Array Int Int)) ($ret28988020 Int) ($result8024 Int) ($temp8968018 Int) ($i9018023 Int) ($ret58998021 Int) ($ret8978019 Int))
    (=> (and (or (not (= $ret8978019 $ret28988020)) (not (= $ret8978019 $result8024)))
             (sum (store $x8958017 (- 40 1) $temp8968018) $result8024)
             ($main_sum576 $x8958017 $temp8968018 $ret8978019 $ret28988020 $ret58998021 $i9008022 $i9018023))
        ($main_if416 (store $x8958017 (- 40 1) $temp8968018) $temp8968018 $ret8978019 $ret28988020 $result8024 $i9008022 $i9018023))))

; if else
(assert
  (forall (($i9008022 Int) ($x8958017 (Array Int Int)) ($ret28988020 Int) ($result8024 Int) ($temp8968018 Int) ($i9018023 Int) ($ret58998021 Int) ($ret8978019 Int))
    (=> (and (not (or (not (= $ret8978019 $ret28988020)) (not (= $ret8978019 $result8024))))
             (sum (store $x8958017 (- 40 1) $temp8968018) $result8024)
             ($main_sum576 $x8958017 $temp8968018 $ret8978019 $ret28988020 $ret58998021 $i9008022 $i9018023))
        ($main_if416 (store $x8958017 (- 40 1) $temp8968018) $temp8968018 $ret8978019 $ret28988020 $result8024 $i9008022 $i9018023))))

(check-sat)
