(set-logic HORN)

(declare-fun $sum_inv565 ((Array Int Int) Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_if413 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv566 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_sum567 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv567 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum566 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum565 ((Array Int Int) Int Int) Bool)

; loop entry $sum_inv565
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv565 x 0 0))))

; loop term $sum_sum565
(assert
  (forall ((x7852 (Array Int Int)) ($i8667853 Int) ($ret8677854 Int))
    (=> (and (not (< $i8667853 5))
             ($sum_inv565 x7852 $i8667853 $ret8677854))
        ($sum_sum565 x7852 $i8667853 $ret8677854))))

; forwards $sum_inv565
(assert
  (forall ((x7852 (Array Int Int)) ($i8667853 Int) ($ret8677854 Int))
    (=> (and (< $i8667853 5)
             ($sum_inv565 x7852 $i8667853 $ret8677854))
        ($sum_inv565 x7852 (+ $i8667853 1) (+ $ret8677854 (select x7852 $i8667853))))))

; post sum
(assert
  (forall ((x7855 (Array Int Int)) ($ret8677857 Int) ($i8667856 Int))
    (=> (and ($sum_sum565 x7855 $i8667856 $ret8677857))
        (sum x7855 $ret8677857))))

; loop entry $main_inv566
(assert
  (forall (($i874 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($i873 Int) ($ret5872 Int))
    (=> (and (= $i873 0))
        ($main_inv566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874))))

; loop term $main_sum566
(assert
  (forall (($i8737863 Int) ($i8747864 Int) ($temp8697859 Int) ($ret8707860 Int) ($ret58727862 Int) ($ret28717861 Int) ($x8687858 (Array Int Int)))
    (=> (and (not (< $i8737863 5))
             ($main_inv566 $x8687858 $temp8697859 $ret8707860 $ret28717861 $ret58727862 $i8737863 $i8747864))
        ($main_sum566 $x8687858 $temp8697859 $ret8707860 $ret28717861 $ret58727862 $i8737863 $i8747864))))

; forwards $main_inv566
(assert
  (forall (($i8737863 Int) ($i8747864 Int) ($temp8697859 Int) ($ret8707860 Int) ($ret58727862 Int) ($int7865 Int) ($ret28717861 Int) ($x8687858 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7865)
             (<= $int7865 2147483647)
             (< $i8737863 5)
             ($main_inv566 $x8687858 $temp8697859 $ret8707860 $ret28717861 $ret58727862 $i8737863 $i8747864))
        ($main_inv566 (store $x8687858 $i8737863 $int7865) $temp8697859 $ret8707860 $ret28717861 $ret58727862 (+ $i8737863 1) $i8747864))))

; sum precondition
(assert
  (forall (($ret28717869 Int) ($i8737871 Int) ($x8687866 (Array Int Int)) ($ret58727870 Int) ($ret8707868 Int) ($i8747872 Int) ($temp8697867 Int))
    (=> (and ($main_sum566 $x8687866 $temp8697867 $ret8707868 $ret28717869 $ret58727870 $i8737871 $i8747872))
        ($sum_pre $x8687866))))

; sum precondition
(assert
  (forall (($ret28717869 Int) ($i8737871 Int) ($x8687866 (Array Int Int)) ($ret58727870 Int) ($ret8707868 Int) ($i8747872 Int) ($result7873 Int) ($temp8697867 Int))
    (=> (and (sum $x8687866 $result7873)
             ($main_sum566 $x8687866 $temp8697867 $ret8707868 $ret28717869 $ret58727870 $i8737871 $i8747872))
        ($sum_pre (store (store $x8687866 0 (select $x8687866 1)) 1 (select $x8687866 0))))))

; loop entry $main_inv567
(assert
  (forall (($ret28717869 Int) ($i8737871 Int) ($x8687866 (Array Int Int)) ($ret58727870 Int) ($result7874 Int) ($ret8707868 Int) ($i8747872 Int) ($result7873 Int) ($temp8697867 Int))
    (=> (and (= $i8747872 0)
             (sum (store (store $x8687866 0 (select $x8687866 1)) 1 (select $x8687866 0)) $result7874)
             (sum $x8687866 $result7873)
             ($main_sum566 $x8687866 $temp8697867 $ret8707868 $ret28717869 $ret58727870 $i8737871 $i8747872))
        ($main_inv567 (store (store $x8687866 0 (select $x8687866 1)) 1 (select $x8687866 0)) (select (store (store $x8687866 0 (select $x8687866 1)) 1 (select $x8687866 0)) 0) $result7873 $result7874 $ret58727870 $i8737871 $i8747872))))

; loop term $main_sum567
(assert
  (forall (($i8747881 Int) ($x8687875 (Array Int Int)) ($ret8707877 Int) ($ret28717878 Int) ($ret58727879 Int) ($temp8697876 Int) ($i8737880 Int))
    (=> (and (not (< $i8747881 (- 5 1)))
             ($main_inv567 $x8687875 $temp8697876 $ret8707877 $ret28717878 $ret58727879 $i8737880 $i8747881))
        ($main_sum567 $x8687875 $temp8697876 $ret8707877 $ret28717878 $ret58727879 $i8737880 $i8747881))))

; forwards $main_inv567
(assert
  (forall (($i8747881 Int) ($x8687875 (Array Int Int)) ($ret8707877 Int) ($ret28717878 Int) ($ret58727879 Int) ($temp8697876 Int) ($i8737880 Int))
    (=> (and (< $i8747881 (- 5 1))
             ($main_inv567 $x8687875 $temp8697876 $ret8707877 $ret28717878 $ret58727879 $i8737880 $i8747881))
        ($main_inv567 (store $x8687875 $i8747881 (select $x8687875 (+ $i8747881 1))) $temp8697876 $ret8707877 $ret28717878 $ret58727879 $i8737880 (+ $i8747881 1)))))

; sum precondition
(assert
  (forall (($ret58727886 Int) ($ret28717885 Int) ($i8747888 Int) ($x8687882 (Array Int Int)) ($temp8697883 Int) ($ret8707884 Int) ($i8737887 Int))
    (=> (and ($main_sum567 $x8687882 $temp8697883 $ret8707884 $ret28717885 $ret58727886 $i8737887 $i8747888))
        ($sum_pre (store $x8687882 (- 5 1) $temp8697883)))))

; error
(assert
  (forall (($ret58727886 Int) ($result7889 Int) ($ret28717885 Int) ($i8747888 Int) ($x8687882 (Array Int Int)) ($temp8697883 Int) ($ret8707884 Int) ($i8737887 Int))
    (=> (and (or (not (= $ret8707884 $ret28717885)) (not (= $ret8707884 $result7889)))
             (sum (store $x8687882 (- 5 1) $temp8697883) $result7889)
             ($main_sum567 $x8687882 $temp8697883 $ret8707884 $ret28717885 $ret58727886 $i8737887 $i8747888))
        false)))

; if then
(assert
  (forall (($ret58727886 Int) ($result7889 Int) ($ret28717885 Int) ($i8747888 Int) ($x8687882 (Array Int Int)) ($temp8697883 Int) ($ret8707884 Int) ($i8737887 Int))
    (=> (and (or (not (= $ret8707884 $ret28717885)) (not (= $ret8707884 $result7889)))
             (sum (store $x8687882 (- 5 1) $temp8697883) $result7889)
             ($main_sum567 $x8687882 $temp8697883 $ret8707884 $ret28717885 $ret58727886 $i8737887 $i8747888))
        ($main_if413 (store $x8687882 (- 5 1) $temp8697883) $temp8697883 $ret8707884 $ret28717885 $result7889 $i8737887 $i8747888))))

; if else
(assert
  (forall (($ret58727886 Int) ($result7889 Int) ($ret28717885 Int) ($i8747888 Int) ($x8687882 (Array Int Int)) ($temp8697883 Int) ($ret8707884 Int) ($i8737887 Int))
    (=> (and (not (or (not (= $ret8707884 $ret28717885)) (not (= $ret8707884 $result7889))))
             (sum (store $x8687882 (- 5 1) $temp8697883) $result7889)
             ($main_sum567 $x8687882 $temp8697883 $ret8707884 $ret28717885 $ret58727886 $i8737887 $i8747888))
        ($main_if413 (store $x8687882 (- 5 1) $temp8697883) $temp8697883 $ret8707884 $ret28717885 $result7889 $i8737887 $i8747888))))

(check-sat)
