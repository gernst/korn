(set-logic HORN)

(declare-fun $main_if414 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv569 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum570 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum569 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum568 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv570 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $sum_inv568 ((Array Int Int) Int Int) Bool)

; loop entry $sum_inv568
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv568 x 0 0))))

; loop term $sum_sum568
(assert
  (forall ((x10970 (Array Int Int)) ($i87510971 Int) ($ret87610972 Int))
    (=> (and (not (< $i87510971 10)))
        ($sum_sum568 x10970 $i87510971 $ret87610972 x10970 $i87510971 $ret87610972))))

; forwards $sum_inv568
(assert
  (forall ((x10970 (Array Int Int)) ($i87510971 Int) ($ret87610972 Int))
    (=> (and (< $i87510971 10)
             ($sum_inv568 x10970 $i87510971 $ret87610972))
        ($sum_inv568 x10970 (+ $i87510971 1) (+ $ret87610972 (select x10970 $i87510971))))))

; backwards $sum_sum568
(assert
  (forall ((x10970 (Array Int Int)) ($i87510974 Int) (x10973 (Array Int Int)) ($ret87610972 Int) ($ret87610975 Int) ($i87510971 Int))
    (=> (and ($sum_sum568 x10970 (+ $i87510971 1) (+ $ret87610972 (select x10970 $i87510971)) x10973 $i87510974 $ret87610975)
             (< $i87510971 10))
        ($sum_sum568 x10970 $i87510971 $ret87610972 x10973 $i87510974 $ret87610975))))

; post sum
(assert
  (forall ((x10976 (Array Int Int)) ($ret87610978 Int) (x (Array Int Int)) ($i87510977 Int))
    (=> (and ($sum_sum568 x 0 0 x10976 $i87510977 $ret87610978)
             ($sum_pre x))
        (sum x10976 $ret87610978))))

; loop entry $main_inv569
(assert
  (forall (($i882 Int) ($ret2880 Int) ($temp878 Int) ($i883 Int) ($x877 (Array Int Int)) ($ret5881 Int) ($ret879 Int))
    (=> (and (= $i882 0))
        ($main_inv569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883))))

; loop term $main_sum569
(assert
  (forall (($ret288010982 Int) ($x87710979 (Array Int Int)) ($ret87910981 Int) ($temp87810980 Int) ($i88210984 Int) ($ret588110983 Int) ($i88310985 Int))
    (=> (and (not (< $i88210984 10)))
        ($main_sum569 $x87710979 $temp87810980 $ret87910981 $ret288010982 $ret588110983 $i88210984 $i88310985 $x87710979 $temp87810980 $ret87910981 $ret288010982 $ret588110983 $i88210984 $i88310985))))

; forwards $main_inv569
(assert
  (forall (($ret288010982 Int) ($int10986 Int) ($x87710979 (Array Int Int)) ($ret87910981 Int) ($temp87810980 Int) ($i88210984 Int) ($ret588110983 Int) ($i88310985 Int))
    (=> (and (<= (- 2147483648) $int10986)
             (<= $int10986 2147483647)
             (< $i88210984 10)
             ($main_inv569 $x87710979 $temp87810980 $ret87910981 $ret288010982 $ret588110983 $i88210984 $i88310985))
        ($main_inv569 (store $x87710979 $i88210984 $int10986) $temp87810980 $ret87910981 $ret288010982 $ret588110983 (+ $i88210984 1) $i88310985))))

; backwards $main_sum569
(assert
  (forall (($ret288010990 Int) ($ret87910989 Int) ($ret288010982 Int) ($ret588110991 Int) ($i88310993 Int) ($int10986 Int) ($x87710979 (Array Int Int)) ($i88210992 Int) ($ret87910981 Int) ($temp87810980 Int) ($i88210984 Int) ($ret588110983 Int) ($i88310985 Int) ($temp87810988 Int) ($x87710987 (Array Int Int)))
    (=> (and ($main_sum569 (store $x87710979 $i88210984 $int10986) $temp87810980 $ret87910981 $ret288010982 $ret588110983 (+ $i88210984 1) $i88310985 $x87710987 $temp87810988 $ret87910989 $ret288010990 $ret588110991 $i88210992 $i88310993)
             (<= (- 2147483648) $int10986)
             (<= $int10986 2147483647)
             (< $i88210984 10))
        ($main_sum569 $x87710979 $temp87810980 $ret87910981 $ret288010982 $ret588110983 $i88210984 $i88310985 $x87710987 $temp87810988 $ret87910989 $ret288010990 $ret588110991 $i88210992 $i88310993))))

; sum precondition
(assert
  (forall (($i882 Int) ($ret2880 Int) ($x877 (Array Int Int)) ($temp87810995 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i883 Int) ($i88311000 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($sum_pre $x87710994))))

; sum precondition
(assert
  (forall (($i882 Int) ($result11001 Int) ($ret2880 Int) ($x877 (Array Int Int)) ($temp87810995 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i883 Int) ($i88311000 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($sum_pre (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0))))))

; loop entry $main_inv570
(assert
  (forall (($i882 Int) ($result11001 Int) ($ret2880 Int) ($x877 (Array Int Int)) ($temp87810995 Int) ($result11002 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i883 Int) ($i88311000 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and (= $i88311000 0)
             (sum (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) $result11002)
             (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($main_inv570 (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) (select (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) 0) $result11001 $result11002 $ret588110998 $i88210999 $i88311000))))

; loop term $main_sum570
(assert
  (forall (($ret288011006 Int) ($ret588111007 Int) ($x87711003 (Array Int Int)) ($i88211008 Int) ($i88311009 Int) ($ret87911005 Int) ($temp87811004 Int))
    (=> (and (not (< $i88311009 (- 10 1))))
        ($main_sum570 $x87711003 $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 $i88311009 $x87711003 $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 $i88311009))))

; forwards $main_inv570
(assert
  (forall (($ret288011006 Int) ($ret588111007 Int) ($x87711003 (Array Int Int)) ($i88211008 Int) ($i88311009 Int) ($ret87911005 Int) ($temp87811004 Int))
    (=> (and (< $i88311009 (- 10 1))
             ($main_inv570 $x87711003 $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 $i88311009))
        ($main_inv570 (store $x87711003 $i88311009 (select $x87711003 (+ $i88311009 1))) $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 (+ $i88311009 1)))))

; backwards $main_sum570
(assert
  (forall (($ret288011006 Int) ($ret288011013 Int) ($i88211008 Int) ($ret87911012 Int) ($i88211015 Int) ($x87711010 (Array Int Int)) ($i88311009 Int) ($i88311016 Int) ($ret588111007 Int) ($ret588111014 Int) ($temp87811011 Int) ($x87711003 (Array Int Int)) ($ret87911005 Int) ($temp87811004 Int))
    (=> (and ($main_sum570 (store $x87711003 $i88311009 (select $x87711003 (+ $i88311009 1))) $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 (+ $i88311009 1) $x87711010 $temp87811011 $ret87911012 $ret288011013 $ret588111014 $i88211015 $i88311016)
             (< $i88311009 (- 10 1)))
        ($main_sum570 $x87711003 $temp87811004 $ret87911005 $ret288011006 $ret588111007 $i88211008 $i88311009 $x87711010 $temp87811011 $ret87911012 $ret288011013 $ret588111014 $i88211015 $i88311016))))

; sum precondition
(assert
  (forall (($ret87911019 Int) ($i882 Int) ($ret588111021 Int) ($result11001 Int) ($ret2880 Int) ($x87711017 (Array Int Int)) ($temp87810995 Int) ($result11002 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($ret288011020 Int) ($temp87811018 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i88211022 Int) ($i883 Int) ($i88311000 Int) ($x877 (Array Int Int)) ($i88311023 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and ($main_sum570 (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) (select (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) 0) $result11001 $result11002 $ret588110998 $i88210999 $i88311000 $x87711017 $temp87811018 $ret87911019 $ret288011020 $ret588111021 $i88211022 $i88311023)
             (= $i88311000 0)
             (sum (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) $result11002)
             (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($sum_pre (store $x87711017 (- 10 1) $temp87811018)))))

; error
(assert
  (forall (($ret87911019 Int) ($i882 Int) ($ret588111021 Int) ($result11001 Int) ($ret2880 Int) ($x87711017 (Array Int Int)) ($result11002 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($ret288011020 Int) ($temp87811018 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i88211022 Int) ($i883 Int) ($i88311000 Int) ($x877 (Array Int Int)) ($i88311023 Int) ($temp87810995 Int) ($result11024 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and (or (not (= $ret87911019 $ret288011020)) (not (= $ret87911019 $result11024)))
             (sum (store $x87711017 (- 10 1) $temp87811018) $result11024)
             ($main_sum570 (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) (select (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) 0) $result11001 $result11002 $ret588110998 $i88210999 $i88311000 $x87711017 $temp87811018 $ret87911019 $ret288011020 $ret588111021 $i88211022 $i88311023)
             (= $i88311000 0)
             (sum (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) $result11002)
             (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        false)))

; if then
(assert
  (forall (($ret87911019 Int) ($i882 Int) ($ret588111021 Int) ($result11001 Int) ($ret2880 Int) ($x87711017 (Array Int Int)) ($result11002 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($ret288011020 Int) ($temp87811018 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i88211022 Int) ($i883 Int) ($i88311000 Int) ($x877 (Array Int Int)) ($i88311023 Int) ($temp87810995 Int) ($result11024 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and (or (not (= $ret87911019 $ret288011020)) (not (= $ret87911019 $result11024)))
             (sum (store $x87711017 (- 10 1) $temp87811018) $result11024)
             ($main_sum570 (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) (select (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) 0) $result11001 $result11002 $ret588110998 $i88210999 $i88311000 $x87711017 $temp87811018 $ret87911019 $ret288011020 $ret588111021 $i88211022 $i88311023)
             (= $i88311000 0)
             (sum (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) $result11002)
             (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($main_if414 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 (store $x87711017 (- 10 1) $temp87811018) $temp87811018 $ret87911019 $ret288011020 $result11024 $i88211022 $i88311023))))

; if else
(assert
  (forall (($ret87911019 Int) ($i882 Int) ($ret588111021 Int) ($result11001 Int) ($ret2880 Int) ($x87711017 (Array Int Int)) ($result11002 Int) ($ret87910996 Int) ($i88210999 Int) ($ret288010997 Int) ($ret288011020 Int) ($temp87811018 Int) ($x87710994 (Array Int Int)) ($temp878 Int) ($i88211022 Int) ($i883 Int) ($i88311000 Int) ($x877 (Array Int Int)) ($i88311023 Int) ($temp87810995 Int) ($result11024 Int) ($ret588110998 Int) ($ret5881 Int) ($ret879 Int))
    (=> (and (not (or (not (= $ret87911019 $ret288011020)) (not (= $ret87911019 $result11024))))
             (sum (store $x87711017 (- 10 1) $temp87811018) $result11024)
             ($main_sum570 (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) (select (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) 0) $result11001 $result11002 $ret588110998 $i88210999 $i88311000 $x87711017 $temp87811018 $ret87911019 $ret288011020 $ret588111021 $i88211022 $i88311023)
             (= $i88311000 0)
             (sum (store (store $x87710994 0 (select $x87710994 1)) 1 (select $x87710994 0)) $result11002)
             (sum $x87710994 $result11001)
             ($main_sum569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 $x87710994 $temp87810995 $ret87910996 $ret288010997 $ret588110998 $i88210999 $i88311000)
             (= $i882 0))
        ($main_if414 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883 (store $x87711017 (- 10 1) $temp87811018) $temp87811018 $ret87911019 $ret288011020 $result11024 $i88211022 $i88311023))))

(check-sat)
