(set-logic HORN)

(declare-fun $main_if415 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $sum_sum571 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv572 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_inv573 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum573 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_inv571 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum572 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv571
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv571 x 0 0))))

; loop term $sum_sum571
(assert
  (forall ((x7942 (Array Int Int)) ($i8847943 Int) ($ret8857944 Int))
    (=> (and (not (< $i8847943 20))
             ($sum_inv571 x7942 $i8847943 $ret8857944))
        ($sum_sum571 x7942 $i8847943 $ret8857944))))

; forwards $sum_inv571
(assert
  (forall ((x7942 (Array Int Int)) ($i8847943 Int) ($ret8857944 Int))
    (=> (and (< $i8847943 20)
             ($sum_inv571 x7942 $i8847943 $ret8857944))
        ($sum_inv571 x7942 (+ $i8847943 1) (+ $ret8857944 (select x7942 $i8847943))))))

; post sum
(assert
  (forall ((x7945 (Array Int Int)) ($ret8857947 Int) ($i8847946 Int))
    (=> (and ($sum_sum571 x7945 $i8847946 $ret8857947))
        (sum x7945 $ret8857947))))

; loop entry $main_inv572
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($i891 Int) ($temp887 Int) ($i892 Int) ($x886 (Array Int Int)) ($ret5890 Int))
    (=> (and (= $i891 0))
        ($main_inv572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892))))

; loop term $main_sum572
(assert
  (forall (($ret8887950 Int) ($ret28897951 Int) ($temp8877949 Int) ($i8927954 Int) ($x8867948 (Array Int Int)) ($i8917953 Int) ($ret58907952 Int))
    (=> (and (not (< $i8917953 20))
             ($main_inv572 $x8867948 $temp8877949 $ret8887950 $ret28897951 $ret58907952 $i8917953 $i8927954))
        ($main_sum572 $x8867948 $temp8877949 $ret8887950 $ret28897951 $ret58907952 $i8917953 $i8927954))))

; forwards $main_inv572
(assert
  (forall (($ret8887950 Int) ($ret28897951 Int) ($temp8877949 Int) ($int7955 Int) ($i8927954 Int) ($x8867948 (Array Int Int)) ($i8917953 Int) ($ret58907952 Int))
    (=> (and (<= (- 2147483648) $int7955)
             (<= $int7955 2147483647)
             (< $i8917953 20)
             ($main_inv572 $x8867948 $temp8877949 $ret8887950 $ret28897951 $ret58907952 $i8917953 $i8927954))
        ($main_inv572 (store $x8867948 $i8917953 $int7955) $temp8877949 $ret8887950 $ret28897951 $ret58907952 (+ $i8917953 1) $i8927954))))

; sum precondition
(assert
  (forall (($ret8887958 Int) ($i8927962 Int) ($temp8877957 Int) ($i8917961 Int) ($x8867956 (Array Int Int)) ($ret58907960 Int) ($ret28897959 Int))
    (=> (and ($main_sum572 $x8867956 $temp8877957 $ret8887958 $ret28897959 $ret58907960 $i8917961 $i8927962))
        ($sum_pre $x8867956))))

; sum precondition
(assert
  (forall (($ret8887958 Int) ($result7963 Int) ($i8927962 Int) ($temp8877957 Int) ($i8917961 Int) ($x8867956 (Array Int Int)) ($ret58907960 Int) ($ret28897959 Int))
    (=> (and (sum $x8867956 $result7963)
             ($main_sum572 $x8867956 $temp8877957 $ret8887958 $ret28897959 $ret58907960 $i8917961 $i8927962))
        ($sum_pre (store (store $x8867956 0 (select $x8867956 1)) 1 (select $x8867956 0))))))

; loop entry $main_inv573
(assert
  (forall (($ret8887958 Int) ($result7964 Int) ($result7963 Int) ($i8927962 Int) ($temp8877957 Int) ($i8917961 Int) ($x8867956 (Array Int Int)) ($ret58907960 Int) ($ret28897959 Int))
    (=> (and (= $i8927962 0)
             (sum (store (store $x8867956 0 (select $x8867956 1)) 1 (select $x8867956 0)) $result7964)
             (sum $x8867956 $result7963)
             ($main_sum572 $x8867956 $temp8877957 $ret8887958 $ret28897959 $ret58907960 $i8917961 $i8927962))
        ($main_inv573 (store (store $x8867956 0 (select $x8867956 1)) 1 (select $x8867956 0)) (select (store (store $x8867956 0 (select $x8867956 1)) 1 (select $x8867956 0)) 0) $result7963 $result7964 $ret58907960 $i8917961 $i8927962))))

; loop term $main_sum573
(assert
  (forall (($ret58907969 Int) ($x8867965 (Array Int Int)) ($i8927971 Int) ($ret8887967 Int) ($temp8877966 Int) ($ret28897968 Int) ($i8917970 Int))
    (=> (and (not (< $i8927971 (- 20 1)))
             ($main_inv573 $x8867965 $temp8877966 $ret8887967 $ret28897968 $ret58907969 $i8917970 $i8927971))
        ($main_sum573 $x8867965 $temp8877966 $ret8887967 $ret28897968 $ret58907969 $i8917970 $i8927971))))

; forwards $main_inv573
(assert
  (forall (($ret58907969 Int) ($x8867965 (Array Int Int)) ($i8927971 Int) ($ret8887967 Int) ($temp8877966 Int) ($ret28897968 Int) ($i8917970 Int))
    (=> (and (< $i8927971 (- 20 1))
             ($main_inv573 $x8867965 $temp8877966 $ret8887967 $ret28897968 $ret58907969 $i8917970 $i8927971))
        ($main_inv573 (store $x8867965 $i8927971 (select $x8867965 (+ $i8927971 1))) $temp8877966 $ret8887967 $ret28897968 $ret58907969 $i8917970 (+ $i8927971 1)))))

; sum precondition
(assert
  (forall (($ret8887974 Int) ($x8867972 (Array Int Int)) ($i8927978 Int) ($i8917977 Int) ($temp8877973 Int) ($ret28897975 Int) ($ret58907976 Int))
    (=> (and ($main_sum573 $x8867972 $temp8877973 $ret8887974 $ret28897975 $ret58907976 $i8917977 $i8927978))
        ($sum_pre (store $x8867972 (- 20 1) $temp8877973)))))

; error
(assert
  (forall (($ret8887974 Int) ($x8867972 (Array Int Int)) ($i8927978 Int) ($i8917977 Int) ($result7979 Int) ($temp8877973 Int) ($ret28897975 Int) ($ret58907976 Int))
    (=> (and (or (not (= $ret8887974 $ret28897975)) (not (= $ret8887974 $result7979)))
             (sum (store $x8867972 (- 20 1) $temp8877973) $result7979)
             ($main_sum573 $x8867972 $temp8877973 $ret8887974 $ret28897975 $ret58907976 $i8917977 $i8927978))
        false)))

; if then
(assert
  (forall (($ret8887974 Int) ($x8867972 (Array Int Int)) ($i8927978 Int) ($i8917977 Int) ($result7979 Int) ($temp8877973 Int) ($ret28897975 Int) ($ret58907976 Int))
    (=> (and (or (not (= $ret8887974 $ret28897975)) (not (= $ret8887974 $result7979)))
             (sum (store $x8867972 (- 20 1) $temp8877973) $result7979)
             ($main_sum573 $x8867972 $temp8877973 $ret8887974 $ret28897975 $ret58907976 $i8917977 $i8927978))
        ($main_if415 (store $x8867972 (- 20 1) $temp8877973) $temp8877973 $ret8887974 $ret28897975 $result7979 $i8917977 $i8927978))))

; if else
(assert
  (forall (($ret8887974 Int) ($x8867972 (Array Int Int)) ($i8927978 Int) ($i8917977 Int) ($result7979 Int) ($temp8877973 Int) ($ret28897975 Int) ($ret58907976 Int))
    (=> (and (not (or (not (= $ret8887974 $ret28897975)) (not (= $ret8887974 $result7979))))
             (sum (store $x8867972 (- 20 1) $temp8877973) $result7979)
             ($main_sum573 $x8867972 $temp8877973 $ret8887974 $ret28897975 $ret58907976 $i8917977 $i8927978))
        ($main_if415 (store $x8867972 (- 20 1) $temp8877973) $temp8877973 $ret8887974 $ret28897975 $result7979 $i8917977 $i8927978))))

(check-sat)
