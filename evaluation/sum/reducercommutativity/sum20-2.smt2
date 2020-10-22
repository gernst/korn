(set-logic HORN)

(declare-fun $sum_sum571 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum573 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if415 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv572 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_inv573 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_inv571 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum572 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv571
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv571 x 0 0))))

; loop term $sum_sum571
(assert
  (forall ((x11032 (Array Int Int)) ($i88411033 Int) ($ret88511034 Int))
    (=> (and (not (< $i88411033 20)))
        ($sum_sum571 x11032 $i88411033 $ret88511034 x11032 $i88411033 $ret88511034))))

; forwards $sum_inv571
(assert
  (forall ((x11032 (Array Int Int)) ($i88411033 Int) ($ret88511034 Int))
    (=> (and (< $i88411033 20)
             ($sum_inv571 x11032 $i88411033 $ret88511034))
        ($sum_inv571 x11032 (+ $i88411033 1) (+ $ret88511034 (select x11032 $i88411033))))))

; backwards $sum_sum571
(assert
  (forall (($ret88511034 Int) (x11032 (Array Int Int)) ($i88411036 Int) ($ret88511037 Int) (x11035 (Array Int Int)) ($i88411033 Int))
    (=> (and ($sum_sum571 x11032 (+ $i88411033 1) (+ $ret88511034 (select x11032 $i88411033)) x11035 $i88411036 $ret88511037)
             (< $i88411033 20))
        ($sum_sum571 x11032 $i88411033 $ret88511034 x11035 $i88411036 $ret88511037))))

; post sum
(assert
  (forall ((x11038 (Array Int Int)) ($ret88511040 Int) (x (Array Int Int)) ($i88411039 Int))
    (=> (and ($sum_sum571 x 0 0 x11038 $i88411039 $ret88511040)
             ($sum_pre x))
        (sum x11038 $ret88511040))))

; loop entry $main_inv572
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($i891 Int) ($temp887 Int) ($i892 Int) ($x886 (Array Int Int)) ($ret5890 Int))
    (=> (and (= $i891 0))
        ($main_inv572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892))))

; loop term $main_sum572
(assert
  (forall (($i89211047 Int) ($ret88811043 Int) ($i89111046 Int) ($temp88711042 Int) ($x88611041 (Array Int Int)) ($ret589011045 Int) ($ret288911044 Int))
    (=> (and (not (< $i89111046 20)))
        ($main_sum572 $x88611041 $temp88711042 $ret88811043 $ret288911044 $ret589011045 $i89111046 $i89211047 $x88611041 $temp88711042 $ret88811043 $ret288911044 $ret589011045 $i89111046 $i89211047))))

; forwards $main_inv572
(assert
  (forall (($i89211047 Int) ($ret88811043 Int) ($i89111046 Int) ($temp88711042 Int) ($x88611041 (Array Int Int)) ($int11048 Int) ($ret589011045 Int) ($ret288911044 Int))
    (=> (and (<= (- 2147483648) $int11048)
             (<= $int11048 2147483647)
             (< $i89111046 20)
             ($main_inv572 $x88611041 $temp88711042 $ret88811043 $ret288911044 $ret589011045 $i89111046 $i89211047))
        ($main_inv572 (store $x88611041 $i89111046 $int11048) $temp88711042 $ret88811043 $ret288911044 $ret589011045 (+ $i89111046 1) $i89211047))))

; backwards $main_sum572
(assert
  (forall (($ret88811051 Int) ($ret288911052 Int) ($ret88811043 Int) ($ret589011053 Int) ($i89111046 Int) ($temp88711042 Int) ($x88611049 (Array Int Int)) ($i89111054 Int) ($x88611041 (Array Int Int)) ($temp88711050 Int) ($int11048 Int) ($ret589011045 Int) ($ret288911044 Int) ($i89211055 Int) ($i89211047 Int))
    (=> (and ($main_sum572 (store $x88611041 $i89111046 $int11048) $temp88711042 $ret88811043 $ret288911044 $ret589011045 (+ $i89111046 1) $i89211047 $x88611049 $temp88711050 $ret88811051 $ret288911052 $ret589011053 $i89111054 $i89211055)
             (<= (- 2147483648) $int11048)
             (<= $int11048 2147483647)
             (< $i89111046 20))
        ($main_sum572 $x88611041 $temp88711042 $ret88811043 $ret288911044 $ret589011045 $i89111046 $i89211047 $x88611049 $temp88711050 $ret88811051 $ret288911052 $ret589011053 $i89111054 $i89211055))))

; sum precondition
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret589011060 Int) ($ret288911059 Int) ($i891 Int) ($temp887 Int) ($i892 Int) ($x886 (Array Int Int)) ($i89211062 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)))
    (=> (and ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($sum_pre $x88611056))))

; sum precondition
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret589011060 Int) ($i891 Int) ($temp887 Int) ($i892 Int) ($x886 (Array Int Int)) ($i89211062 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($result11063 Int) ($ret288911059 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)))
    (=> (and (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($sum_pre (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0))))))

; loop entry $main_inv573
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret589011060 Int) ($temp887 Int) ($i892 Int) ($x886 (Array Int Int)) ($i89211062 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($result11063 Int) ($ret288911059 Int) ($result11064 Int) ($i891 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)))
    (=> (and (= $i89211062 0)
             (sum (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) $result11064)
             (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($main_inv573 (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) (select (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) 0) $result11063 $result11064 $ret589011060 $i89111061 $i89211062))))

; loop term $main_sum573
(assert
  (forall (($i89111070 Int) ($ret88811067 Int) ($i89211071 Int) ($ret589011069 Int) ($ret288911068 Int) ($x88611065 (Array Int Int)) ($temp88711066 Int))
    (=> (and (not (< $i89211071 (- 20 1))))
        ($main_sum573 $x88611065 $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 $i89211071 $x88611065 $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 $i89211071))))

; forwards $main_inv573
(assert
  (forall (($i89111070 Int) ($ret88811067 Int) ($i89211071 Int) ($ret589011069 Int) ($ret288911068 Int) ($x88611065 (Array Int Int)) ($temp88711066 Int))
    (=> (and (< $i89211071 (- 20 1))
             ($main_inv573 $x88611065 $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 $i89211071))
        ($main_inv573 (store $x88611065 $i89211071 (select $x88611065 (+ $i89211071 1))) $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 (+ $i89211071 1)))))

; backwards $main_sum573
(assert
  (forall (($i89111070 Int) ($x88611072 (Array Int Int)) ($ret88811067 Int) ($i89211071 Int) ($ret589011069 Int) ($i89211078 Int) ($ret288911068 Int) ($ret589011076 Int) ($x88611065 (Array Int Int)) ($ret88811074 Int) ($temp88711073 Int) ($ret288911075 Int) ($temp88711066 Int) ($i89111077 Int))
    (=> (and ($main_sum573 (store $x88611065 $i89211071 (select $x88611065 (+ $i89211071 1))) $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 (+ $i89211071 1) $x88611072 $temp88711073 $ret88811074 $ret288911075 $ret589011076 $i89111077 $i89211078)
             (< $i89211071 (- 20 1)))
        ($main_sum573 $x88611065 $temp88711066 $ret88811067 $ret288911068 $ret589011069 $i89111070 $i89211071 $x88611072 $temp88711073 $ret88811074 $ret288911075 $ret589011076 $i89111077 $i89211078))))

; sum precondition
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret288911082 Int) ($ret589011083 Int) ($i892 Int) ($i89211085 Int) ($i89211062 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($ret589011060 Int) ($i89111084 Int) ($ret88811081 Int) ($result11063 Int) ($ret288911059 Int) ($result11064 Int) ($i891 Int) ($temp887 Int) ($x88611079 (Array Int Int)) ($x886 (Array Int Int)) ($temp88711080 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)))
    (=> (and ($main_sum573 (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) (select (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) 0) $result11063 $result11064 $ret589011060 $i89111061 $i89211062 $x88611079 $temp88711080 $ret88811081 $ret288911082 $ret589011083 $i89111084 $i89211085)
             (= $i89211062 0)
             (sum (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) $result11064)
             (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($sum_pre (store $x88611079 (- 20 1) $temp88711080)))))

; error
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret288911082 Int) ($ret589011083 Int) ($i892 Int) ($i89211085 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($ret589011060 Int) ($i89111084 Int) ($ret88811081 Int) ($result11063 Int) ($ret288911059 Int) ($result11064 Int) ($i891 Int) ($temp887 Int) ($x88611079 (Array Int Int)) ($x886 (Array Int Int)) ($temp88711080 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)) ($result11086 Int) ($i89211062 Int))
    (=> (and (or (not (= $ret88811081 $ret288911082)) (not (= $ret88811081 $result11086)))
             (sum (store $x88611079 (- 20 1) $temp88711080) $result11086)
             ($main_sum573 (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) (select (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) 0) $result11063 $result11064 $ret589011060 $i89111061 $i89211062 $x88611079 $temp88711080 $ret88811081 $ret288911082 $ret589011083 $i89111084 $i89211085)
             (= $i89211062 0)
             (sum (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) $result11064)
             (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        false)))

; if then
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret288911082 Int) ($ret589011083 Int) ($i892 Int) ($i89211085 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($ret589011060 Int) ($i89111084 Int) ($ret88811081 Int) ($result11063 Int) ($ret288911059 Int) ($result11064 Int) ($i891 Int) ($temp887 Int) ($x88611079 (Array Int Int)) ($x886 (Array Int Int)) ($temp88711080 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)) ($result11086 Int) ($i89211062 Int))
    (=> (and (or (not (= $ret88811081 $ret288911082)) (not (= $ret88811081 $result11086)))
             (sum (store $x88611079 (- 20 1) $temp88711080) $result11086)
             ($main_sum573 (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) (select (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) 0) $result11063 $result11064 $ret589011060 $i89111061 $i89211062 $x88611079 $temp88711080 $ret88811081 $ret288911082 $ret589011083 $i89111084 $i89211085)
             (= $i89211062 0)
             (sum (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) $result11064)
             (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($main_if415 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 (store $x88611079 (- 20 1) $temp88711080) $temp88711080 $ret88811081 $ret288911082 $result11086 $i89111084 $i89211085))))

; if else
(assert
  (forall (($ret888 Int) ($ret2889 Int) ($ret288911082 Int) ($ret589011083 Int) ($i892 Int) ($i89211085 Int) ($i89111061 Int) ($temp88711057 Int) ($ret5890 Int) ($ret589011060 Int) ($i89111084 Int) ($ret88811081 Int) ($result11063 Int) ($ret288911059 Int) ($result11064 Int) ($i891 Int) ($temp887 Int) ($x88611079 (Array Int Int)) ($x886 (Array Int Int)) ($temp88711080 Int) ($ret88811058 Int) ($x88611056 (Array Int Int)) ($result11086 Int) ($i89211062 Int))
    (=> (and (not (or (not (= $ret88811081 $ret288911082)) (not (= $ret88811081 $result11086))))
             (sum (store $x88611079 (- 20 1) $temp88711080) $result11086)
             ($main_sum573 (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) (select (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) 0) $result11063 $result11064 $ret589011060 $i89111061 $i89211062 $x88611079 $temp88711080 $ret88811081 $ret288911082 $ret589011083 $i89111084 $i89211085)
             (= $i89211062 0)
             (sum (store (store $x88611056 0 (select $x88611056 1)) 1 (select $x88611056 0)) $result11064)
             (sum $x88611056 $result11063)
             ($main_sum572 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 $x88611056 $temp88711057 $ret88811058 $ret288911059 $ret589011060 $i89111061 $i89211062)
             (= $i891 0))
        ($main_if415 $x886 $temp887 $ret888 $ret2889 $ret5890 $i891 $i892 (store $x88611079 (- 20 1) $temp88711080) $temp88711080 $ret88811081 $ret288911082 $result11086 $i89111084 $i89211085))))

(check-sat)
