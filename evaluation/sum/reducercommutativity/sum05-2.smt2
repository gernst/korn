(set-logic HORN)

(declare-fun $sum_inv565 ((Array Int Int) Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_sum567 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum565 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum566 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv566 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_inv567 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if413 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv565
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv565 x 0 0))))

; loop term $sum_sum565
(assert
  (forall ((x10908 (Array Int Int)) ($i86610909 Int) ($ret86710910 Int))
    (=> (and (not (< $i86610909 5)))
        ($sum_sum565 x10908 $i86610909 $ret86710910 x10908 $i86610909 $ret86710910))))

; forwards $sum_inv565
(assert
  (forall ((x10908 (Array Int Int)) ($i86610909 Int) ($ret86710910 Int))
    (=> (and (< $i86610909 5)
             ($sum_inv565 x10908 $i86610909 $ret86710910))
        ($sum_inv565 x10908 (+ $i86610909 1) (+ $ret86710910 (select x10908 $i86610909))))))

; backwards $sum_sum565
(assert
  (forall (($i86610909 Int) ($ret86710913 Int) ($ret86710910 Int) (x10911 (Array Int Int)) (x10908 (Array Int Int)) ($i86610912 Int))
    (=> (and ($sum_sum565 x10908 (+ $i86610909 1) (+ $ret86710910 (select x10908 $i86610909)) x10911 $i86610912 $ret86710913)
             (< $i86610909 5))
        ($sum_sum565 x10908 $i86610909 $ret86710910 x10911 $i86610912 $ret86710913))))

; post sum
(assert
  (forall ((x10914 (Array Int Int)) ($ret86710916 Int) (x (Array Int Int)) ($i86610915 Int))
    (=> (and ($sum_sum565 x 0 0 x10914 $i86610915 $ret86710916)
             ($sum_pre x))
        (sum x10914 $ret86710916))))

; loop entry $main_inv566
(assert
  (forall (($i874 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($i873 Int) ($ret5872 Int))
    (=> (and (= $i873 0))
        ($main_inv566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874))))

; loop term $main_sum566
(assert
  (forall (($temp86910918 Int) ($ret587210921 Int) ($ret87010919 Int) ($i87310922 Int) ($x86810917 (Array Int Int)) ($ret287110920 Int) ($i87410923 Int))
    (=> (and (not (< $i87310922 5)))
        ($main_sum566 $x86810917 $temp86910918 $ret87010919 $ret287110920 $ret587210921 $i87310922 $i87410923 $x86810917 $temp86910918 $ret87010919 $ret287110920 $ret587210921 $i87310922 $i87410923))))

; forwards $main_inv566
(assert
  (forall (($temp86910918 Int) ($ret587210921 Int) ($ret87010919 Int) ($i87310922 Int) ($x86810917 (Array Int Int)) ($int10924 Int) ($ret287110920 Int) ($i87410923 Int))
    (=> (and (<= (- 2147483648) $int10924)
             (<= $int10924 2147483647)
             (< $i87310922 5)
             ($main_inv566 $x86810917 $temp86910918 $ret87010919 $ret287110920 $ret587210921 $i87310922 $i87410923))
        ($main_inv566 (store $x86810917 $i87310922 $int10924) $temp86910918 $ret87010919 $ret287110920 $ret587210921 (+ $i87310922 1) $i87410923))))

; backwards $main_sum566
(assert
  (forall (($ret287110928 Int) ($ret87010919 Int) ($x86810925 (Array Int Int)) ($i87310922 Int) ($int10924 Int) ($ret287110920 Int) ($i87410923 Int) ($ret87010927 Int) ($temp86910918 Int) ($ret587210921 Int) ($temp86910926 Int) ($i87310930 Int) ($ret587210929 Int) ($x86810917 (Array Int Int)) ($i87410931 Int))
    (=> (and ($main_sum566 (store $x86810917 $i87310922 $int10924) $temp86910918 $ret87010919 $ret287110920 $ret587210921 (+ $i87310922 1) $i87410923 $x86810925 $temp86910926 $ret87010927 $ret287110928 $ret587210929 $i87310930 $i87410931)
             (<= (- 2147483648) $int10924)
             (<= $int10924 2147483647)
             (< $i87310922 5))
        ($main_sum566 $x86810917 $temp86910918 $ret87010919 $ret287110920 $ret587210921 $i87310922 $i87410923 $x86810925 $temp86910926 $ret87010927 $ret287110928 $ret587210929 $i87310930 $i87410931))))

; sum precondition
(assert
  (forall (($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($ret2871 Int) ($ret870 Int) ($ret587210936 Int) ($x868 (Array Int Int)) ($temp869 Int) ($ret287110935 Int) ($ret5872 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int))
    (=> (and ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($sum_pre $x86810932))))

; sum precondition
(assert
  (forall (($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($ret587210936 Int) ($x868 (Array Int Int)) ($temp869 Int) ($ret287110935 Int) ($ret5872 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int))
    (=> (and (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($sum_pre (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0))))))

; loop entry $main_inv567
(assert
  (forall (($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($ret287110935 Int) ($ret5872 Int) ($result10940 Int) ($ret587210936 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int))
    (=> (and (= $i87410938 0)
             (sum (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) $result10940)
             (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($main_inv567 (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) (select (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) 0) $result10939 $result10940 $ret587210936 $i87310937 $i87410938))))

; loop term $main_sum567
(assert
  (forall (($i87410947 Int) ($i87310946 Int) ($ret587210945 Int) ($ret287110944 Int) ($temp86910942 Int) ($ret87010943 Int) ($x86810941 (Array Int Int)))
    (=> (and (not (< $i87410947 (- 5 1))))
        ($main_sum567 $x86810941 $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 $i87410947 $x86810941 $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 $i87410947))))

; forwards $main_inv567
(assert
  (forall (($i87410947 Int) ($i87310946 Int) ($ret587210945 Int) ($ret287110944 Int) ($temp86910942 Int) ($ret87010943 Int) ($x86810941 (Array Int Int)))
    (=> (and (< $i87410947 (- 5 1))
             ($main_inv567 $x86810941 $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 $i87410947))
        ($main_inv567 (store $x86810941 $i87410947 (select $x86810941 (+ $i87410947 1))) $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 (+ $i87410947 1)))))

; backwards $main_sum567
(assert
  (forall (($i87410947 Int) ($i87310946 Int) ($ret587210945 Int) ($ret287110951 Int) ($x86810948 (Array Int Int)) ($ret287110944 Int) ($temp86910942 Int) ($ret87010943 Int) ($x86810941 (Array Int Int)) ($ret87010950 Int) ($i87410954 Int) ($i87310953 Int) ($ret587210952 Int) ($temp86910949 Int))
    (=> (and ($main_sum567 (store $x86810941 $i87410947 (select $x86810941 (+ $i87410947 1))) $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 (+ $i87410947 1) $x86810948 $temp86910949 $ret87010950 $ret287110951 $ret587210952 $i87310953 $i87410954)
             (< $i87410947 (- 5 1)))
        ($main_sum567 $x86810941 $temp86910942 $ret87010943 $ret287110944 $ret587210945 $i87310946 $i87410947 $x86810948 $temp86910949 $ret87010950 $ret287110951 $ret587210952 $i87310953 $i87410954))))

; sum precondition
(assert
  (forall (($ret87010957 Int) ($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($temp86910956 Int) ($i87410961 Int) ($ret287110958 Int) ($result10940 Int) ($ret587210936 Int) ($ret287110935 Int) ($i87310960 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int) ($x86810955 (Array Int Int)) ($ret5872 Int) ($ret587210959 Int))
    (=> (and ($main_sum567 (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) (select (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) 0) $result10939 $result10940 $ret587210936 $i87310937 $i87410938 $x86810955 $temp86910956 $ret87010957 $ret287110958 $ret587210959 $i87310960 $i87410961)
             (= $i87410938 0)
             (sum (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) $result10940)
             (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($sum_pre (store $x86810955 (- 5 1) $temp86910956)))))

; error
(assert
  (forall (($ret87010957 Int) ($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($temp86910956 Int) ($i87410961 Int) ($ret287110958 Int) ($result10940 Int) ($result10962 Int) ($ret587210936 Int) ($ret287110935 Int) ($i87310960 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int) ($x86810955 (Array Int Int)) ($ret5872 Int) ($ret587210959 Int))
    (=> (and (or (not (= $ret87010957 $ret287110958)) (not (= $ret87010957 $result10962)))
             (sum (store $x86810955 (- 5 1) $temp86910956) $result10962)
             ($main_sum567 (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) (select (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) 0) $result10939 $result10940 $ret587210936 $i87310937 $i87410938 $x86810955 $temp86910956 $ret87010957 $ret287110958 $ret587210959 $i87310960 $i87410961)
             (= $i87410938 0)
             (sum (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) $result10940)
             (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        false)))

; if then
(assert
  (forall (($ret87010957 Int) ($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($temp86910956 Int) ($i87410961 Int) ($ret287110958 Int) ($result10940 Int) ($result10962 Int) ($ret587210936 Int) ($ret287110935 Int) ($i87310960 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int) ($x86810955 (Array Int Int)) ($ret5872 Int) ($ret587210959 Int))
    (=> (and (or (not (= $ret87010957 $ret287110958)) (not (= $ret87010957 $result10962)))
             (sum (store $x86810955 (- 5 1) $temp86910956) $result10962)
             ($main_sum567 (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) (select (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) 0) $result10939 $result10940 $ret587210936 $i87310937 $i87410938 $x86810955 $temp86910956 $ret87010957 $ret287110958 $ret587210959 $i87310960 $i87410961)
             (= $i87410938 0)
             (sum (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) $result10940)
             (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($main_if413 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 (store $x86810955 (- 5 1) $temp86910956) $temp86910956 $ret87010957 $ret287110958 $result10962 $i87310960 $i87410961))))

; if else
(assert
  (forall (($ret87010957 Int) ($i874 Int) ($i87410938 Int) ($x86810932 (Array Int Int)) ($i87310937 Int) ($result10939 Int) ($ret2871 Int) ($ret870 Int) ($x868 (Array Int Int)) ($temp869 Int) ($temp86910956 Int) ($i87410961 Int) ($ret287110958 Int) ($result10940 Int) ($result10962 Int) ($ret587210936 Int) ($ret287110935 Int) ($i87310960 Int) ($i873 Int) ($ret87010934 Int) ($temp86910933 Int) ($x86810955 (Array Int Int)) ($ret5872 Int) ($ret587210959 Int))
    (=> (and (not (or (not (= $ret87010957 $ret287110958)) (not (= $ret87010957 $result10962))))
             (sum (store $x86810955 (- 5 1) $temp86910956) $result10962)
             ($main_sum567 (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) (select (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) 0) $result10939 $result10940 $ret587210936 $i87310937 $i87410938 $x86810955 $temp86910956 $ret87010957 $ret287110958 $ret587210959 $i87310960 $i87410961)
             (= $i87410938 0)
             (sum (store (store $x86810932 0 (select $x86810932 1)) 1 (select $x86810932 0)) $result10940)
             (sum $x86810932 $result10939)
             ($main_sum566 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 $x86810932 $temp86910933 $ret87010934 $ret287110935 $ret587210936 $i87310937 $i87410938)
             (= $i873 0))
        ($main_if413 $x868 $temp869 $ret870 $ret2871 $ret5872 $i873 $i874 (store $x86810955 (- 5 1) $temp86910956) $temp86910956 $ret87010957 $ret287110958 $result10962 $i87310960 $i87410961))))

(check-sat)
