(set-logic HORN)

(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv569 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum568 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum570 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv570 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_sum569 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_inv568 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if414 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv568
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv568 x 0 0))))

; loop term $sum_sum568
(assert
  (forall ((x7897 (Array Int Int)) ($i8757898 Int) ($ret8767899 Int))
    (=> (and (not (< $i8757898 10))
             ($sum_inv568 x7897 $i8757898 $ret8767899))
        ($sum_sum568 x7897 $i8757898 $ret8767899))))

; forwards $sum_inv568
(assert
  (forall ((x7897 (Array Int Int)) ($i8757898 Int) ($ret8767899 Int))
    (=> (and (< $i8757898 10)
             ($sum_inv568 x7897 $i8757898 $ret8767899))
        ($sum_inv568 x7897 (+ $i8757898 1) (+ $ret8767899 (select x7897 $i8757898))))))

; post sum
(assert
  (forall ((x7900 (Array Int Int)) ($ret8767902 Int) ($i8757901 Int))
    (=> (and ($sum_sum568 x7900 $i8757901 $ret8767902))
        (sum x7900 $ret8767902))))

; loop entry $main_inv569
(assert
  (forall (($i882 Int) ($ret2880 Int) ($temp878 Int) ($i883 Int) ($x877 (Array Int Int)) ($ret5881 Int) ($ret879 Int))
    (=> (and (= $i882 0))
        ($main_inv569 $x877 $temp878 $ret879 $ret2880 $ret5881 $i882 $i883))))

; loop term $main_sum569
(assert
  (forall (($ret58817907 Int) ($temp8787904 Int) ($i8827908 Int) ($ret28807906 Int) ($x8777903 (Array Int Int)) ($i8837909 Int) ($ret8797905 Int))
    (=> (and (not (< $i8827908 10))
             ($main_inv569 $x8777903 $temp8787904 $ret8797905 $ret28807906 $ret58817907 $i8827908 $i8837909))
        ($main_sum569 $x8777903 $temp8787904 $ret8797905 $ret28807906 $ret58817907 $i8827908 $i8837909))))

; forwards $main_inv569
(assert
  (forall (($ret58817907 Int) ($int7910 Int) ($temp8787904 Int) ($i8827908 Int) ($ret28807906 Int) ($x8777903 (Array Int Int)) ($i8837909 Int) ($ret8797905 Int))
    (=> (and (<= (- 2147483648) $int7910)
             (<= $int7910 2147483647)
             (< $i8827908 10)
             ($main_inv569 $x8777903 $temp8787904 $ret8797905 $ret28807906 $ret58817907 $i8827908 $i8837909))
        ($main_inv569 (store $x8777903 $i8827908 $int7910) $temp8787904 $ret8797905 $ret28807906 $ret58817907 (+ $i8827908 1) $i8837909))))

; sum precondition
(assert
  (forall (($i8827916 Int) ($ret8797913 Int) ($ret58817915 Int) ($ret28807914 Int) ($i8837917 Int) ($temp8787912 Int) ($x8777911 (Array Int Int)))
    (=> (and ($main_sum569 $x8777911 $temp8787912 $ret8797913 $ret28807914 $ret58817915 $i8827916 $i8837917))
        ($sum_pre $x8777911))))

; sum precondition
(assert
  (forall (($i8827916 Int) ($ret8797913 Int) ($ret58817915 Int) ($ret28807914 Int) ($result7918 Int) ($i8837917 Int) ($temp8787912 Int) ($x8777911 (Array Int Int)))
    (=> (and (sum $x8777911 $result7918)
             ($main_sum569 $x8777911 $temp8787912 $ret8797913 $ret28807914 $ret58817915 $i8827916 $i8837917))
        ($sum_pre (store (store $x8777911 0 (select $x8777911 1)) 1 (select $x8777911 0))))))

; loop entry $main_inv570
(assert
  (forall (($result7919 Int) ($i8827916 Int) ($ret8797913 Int) ($ret58817915 Int) ($ret28807914 Int) ($result7918 Int) ($i8837917 Int) ($temp8787912 Int) ($x8777911 (Array Int Int)))
    (=> (and (= $i8837917 0)
             (sum (store (store $x8777911 0 (select $x8777911 1)) 1 (select $x8777911 0)) $result7919)
             (sum $x8777911 $result7918)
             ($main_sum569 $x8777911 $temp8787912 $ret8797913 $ret28807914 $ret58817915 $i8827916 $i8837917))
        ($main_inv570 (store (store $x8777911 0 (select $x8777911 1)) 1 (select $x8777911 0)) (select (store (store $x8777911 0 (select $x8777911 1)) 1 (select $x8777911 0)) 0) $result7918 $result7919 $ret58817915 $i8827916 $i8837917))))

; loop term $main_sum570
(assert
  (forall (($x8777920 (Array Int Int)) ($i8837926 Int) ($temp8787921 Int) ($ret28807923 Int) ($ret58817924 Int) ($ret8797922 Int) ($i8827925 Int))
    (=> (and (not (< $i8837926 (- 10 1)))
             ($main_inv570 $x8777920 $temp8787921 $ret8797922 $ret28807923 $ret58817924 $i8827925 $i8837926))
        ($main_sum570 $x8777920 $temp8787921 $ret8797922 $ret28807923 $ret58817924 $i8827925 $i8837926))))

; forwards $main_inv570
(assert
  (forall (($x8777920 (Array Int Int)) ($i8837926 Int) ($temp8787921 Int) ($ret28807923 Int) ($ret58817924 Int) ($ret8797922 Int) ($i8827925 Int))
    (=> (and (< $i8837926 (- 10 1))
             ($main_inv570 $x8777920 $temp8787921 $ret8797922 $ret28807923 $ret58817924 $i8827925 $i8837926))
        ($main_inv570 (store $x8777920 $i8837926 (select $x8777920 (+ $i8837926 1))) $temp8787921 $ret8797922 $ret28807923 $ret58817924 $i8827925 (+ $i8837926 1)))))

; sum precondition
(assert
  (forall (($ret58817931 Int) ($ret8797929 Int) ($i8827932 Int) ($x8777927 (Array Int Int)) ($i8837933 Int) ($ret28807930 Int) ($temp8787928 Int))
    (=> (and ($main_sum570 $x8777927 $temp8787928 $ret8797929 $ret28807930 $ret58817931 $i8827932 $i8837933))
        ($sum_pre (store $x8777927 (- 10 1) $temp8787928)))))

; error
(assert
  (forall (($ret58817931 Int) ($ret8797929 Int) ($i8827932 Int) ($x8777927 (Array Int Int)) ($ret28807930 Int) ($temp8787928 Int) ($result7934 Int) ($i8837933 Int))
    (=> (and (or (not (= $ret8797929 $ret28807930)) (not (= $ret8797929 $result7934)))
             (sum (store $x8777927 (- 10 1) $temp8787928) $result7934)
             ($main_sum570 $x8777927 $temp8787928 $ret8797929 $ret28807930 $ret58817931 $i8827932 $i8837933))
        false)))

; if then
(assert
  (forall (($ret58817931 Int) ($ret8797929 Int) ($i8827932 Int) ($x8777927 (Array Int Int)) ($ret28807930 Int) ($temp8787928 Int) ($result7934 Int) ($i8837933 Int))
    (=> (and (or (not (= $ret8797929 $ret28807930)) (not (= $ret8797929 $result7934)))
             (sum (store $x8777927 (- 10 1) $temp8787928) $result7934)
             ($main_sum570 $x8777927 $temp8787928 $ret8797929 $ret28807930 $ret58817931 $i8827932 $i8837933))
        ($main_if414 (store $x8777927 (- 10 1) $temp8787928) $temp8787928 $ret8797929 $ret28807930 $result7934 $i8827932 $i8837933))))

; if else
(assert
  (forall (($ret58817931 Int) ($ret8797929 Int) ($i8827932 Int) ($x8777927 (Array Int Int)) ($ret28807930 Int) ($temp8787928 Int) ($result7934 Int) ($i8837933 Int))
    (=> (and (not (or (not (= $ret8797929 $ret28807930)) (not (= $ret8797929 $result7934))))
             (sum (store $x8777927 (- 10 1) $temp8787928) $result7934)
             ($main_sum570 $x8777927 $temp8787928 $ret8797929 $ret28807930 $ret58817931 $i8827932 $i8837933))
        ($main_if414 (store $x8777927 (- 10 1) $temp8787928) $temp8787928 $ret8797929 $ret28807930 $result7934 $i8827932 $i8837933))))

(check-sat)
