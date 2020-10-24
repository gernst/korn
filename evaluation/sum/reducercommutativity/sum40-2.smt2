(set-logic HORN)

(declare-fun $main_sum575 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $sum_sum574 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum576 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv576 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if416 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $sum_inv574 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv575 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sum_inv574
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv574 x 0 0))))

; loop term $sum_sum574
(assert
  (forall ((x11094 (Array Int Int)) ($i89311095 Int) ($ret89411096 Int))
    (=> (and (not (< $i89311095 40)))
        ($sum_sum574 x11094 $i89311095 $ret89411096 x11094 $i89311095 $ret89411096))))

; forwards $sum_inv574
(assert
  (forall ((x11094 (Array Int Int)) ($i89311095 Int) ($ret89411096 Int))
    (=> (and (< $i89311095 40)
             ($sum_inv574 x11094 $i89311095 $ret89411096))
        ($sum_inv574 x11094 (+ $i89311095 1) (+ $ret89411096 (select x11094 $i89311095))))))

; backwards $sum_sum574
(assert
  (forall ((x11097 (Array Int Int)) (x11094 (Array Int Int)) ($ret89411099 Int) ($i89311095 Int) ($i89311098 Int) ($ret89411096 Int))
    (=> (and ($sum_sum574 x11094 (+ $i89311095 1) (+ $ret89411096 (select x11094 $i89311095)) x11097 $i89311098 $ret89411099)
             (< $i89311095 40))
        ($sum_sum574 x11094 $i89311095 $ret89411096 x11097 $i89311098 $ret89411099))))

; post sum
(assert
  (forall ((x11100 (Array Int Int)) ($ret89411102 Int) (x (Array Int Int)) ($i89311101 Int))
    (=> (and ($sum_sum574 x 0 0 x11100 $i89311101 $ret89411102)
             ($sum_pre x))
        (sum x11100 $ret89411102))))

; loop entry $main_inv575
(assert
  (forall (($x895 (Array Int Int)) ($temp896 Int) ($ret897 Int) ($ret5899 Int) ($i901 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (= $i900 0))
        ($main_inv575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901))))

; loop term $main_sum575
(assert
  (forall (($ret89711105 Int) ($ret289811106 Int) ($x89511103 (Array Int Int)) ($i90111109 Int) ($temp89611104 Int) ($ret589911107 Int) ($i90011108 Int))
    (=> (and (not (< $i90011108 40)))
        ($main_sum575 $x89511103 $temp89611104 $ret89711105 $ret289811106 $ret589911107 $i90011108 $i90111109 $x89511103 $temp89611104 $ret89711105 $ret289811106 $ret589911107 $i90011108 $i90111109))))

; forwards $main_inv575
(assert
  (forall (($ret89711105 Int) ($int11110 Int) ($ret289811106 Int) ($x89511103 (Array Int Int)) ($i90111109 Int) ($temp89611104 Int) ($ret589911107 Int) ($i90011108 Int))
    (=> (and (<= (- 2147483648) $int11110)
             (<= $int11110 2147483647)
             (< $i90011108 40)
             ($main_inv575 $x89511103 $temp89611104 $ret89711105 $ret289811106 $ret589911107 $i90011108 $i90111109))
        ($main_inv575 (store $x89511103 $i90011108 $int11110) $temp89611104 $ret89711105 $ret289811106 $ret589911107 (+ $i90011108 1) $i90111109))))

; backwards $main_sum575
(assert
  (forall (($i90011116 Int) ($int11110 Int) ($ret289811106 Int) ($ret589911115 Int) ($ret89711113 Int) ($x89511103 (Array Int Int)) ($temp89611112 Int) ($i90111117 Int) ($x89511111 (Array Int Int)) ($ret89711105 Int) ($i90111109 Int) ($ret289811114 Int) ($temp89611104 Int) ($ret589911107 Int) ($i90011108 Int))
    (=> (and ($main_sum575 (store $x89511103 $i90011108 $int11110) $temp89611104 $ret89711105 $ret289811106 $ret589911107 (+ $i90011108 1) $i90111109 $x89511111 $temp89611112 $ret89711113 $ret289811114 $ret589911115 $i90011116 $i90111117)
             (<= (- 2147483648) $int11110)
             (<= $int11110 2147483647)
             (< $i90011108 40))
        ($main_sum575 $x89511103 $temp89611104 $ret89711105 $ret289811106 $ret589911107 $i90011108 $i90111109 $x89511111 $temp89611112 $ret89711113 $ret289811114 $ret589911115 $i90011116 $i90111117))))

; sum precondition
(assert
  (forall (($x895 (Array Int Int)) ($temp89611119 Int) ($ret5899 Int) ($i90111124 Int) ($i901 Int) ($x89511118 (Array Int Int)) ($ret89711120 Int) ($i90011123 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($ret2898 Int) ($i900 Int))
    (=> (and ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($sum_pre $x89511118))))

; sum precondition
(assert
  (forall (($x895 (Array Int Int)) ($temp89611119 Int) ($ret5899 Int) ($i90111124 Int) ($result11125 Int) ($i901 Int) ($x89511118 (Array Int Int)) ($ret89711120 Int) ($i90011123 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($sum_pre (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0))))))

; loop entry $main_inv576
(assert
  (forall (($x895 (Array Int Int)) ($temp89611119 Int) ($ret5899 Int) ($i90111124 Int) ($result11125 Int) ($i901 Int) ($x89511118 (Array Int Int)) ($ret89711120 Int) ($result11126 Int) ($i90011123 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (= $i90111124 0)
             (sum (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) $result11126)
             (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($main_inv576 (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) (select (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) 0) $result11125 $result11126 $ret589911122 $i90011123 $i90111124))))

; loop term $main_sum576
(assert
  (forall (($x89511127 (Array Int Int)) ($temp89611128 Int) ($ret589911131 Int) ($ret89711129 Int) ($ret289811130 Int) ($i90011132 Int) ($i90111133 Int))
    (=> (and (not (< $i90111133 (- 40 1))))
        ($main_sum576 $x89511127 $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 $i90111133 $x89511127 $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 $i90111133))))

; forwards $main_inv576
(assert
  (forall (($x89511127 (Array Int Int)) ($temp89611128 Int) ($ret589911131 Int) ($ret89711129 Int) ($ret289811130 Int) ($i90011132 Int) ($i90111133 Int))
    (=> (and (< $i90111133 (- 40 1))
             ($main_inv576 $x89511127 $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 $i90111133))
        ($main_inv576 (store $x89511127 $i90111133 (select $x89511127 (+ $i90111133 1))) $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 (+ $i90111133 1)))))

; backwards $main_sum576
(assert
  (forall (($temp89611135 Int) ($x89511134 (Array Int Int)) ($i90111140 Int) ($ret89711136 Int) ($x89511127 (Array Int Int)) ($temp89611128 Int) ($ret289811137 Int) ($ret589911131 Int) ($ret89711129 Int) ($ret589911138 Int) ($i90011139 Int) ($ret289811130 Int) ($i90011132 Int) ($i90111133 Int))
    (=> (and ($main_sum576 (store $x89511127 $i90111133 (select $x89511127 (+ $i90111133 1))) $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 (+ $i90111133 1) $x89511134 $temp89611135 $ret89711136 $ret289811137 $ret589911138 $i90011139 $i90111140)
             (< $i90111133 (- 40 1)))
        ($main_sum576 $x89511127 $temp89611128 $ret89711129 $ret289811130 $ret589911131 $i90011132 $i90111133 $x89511134 $temp89611135 $ret89711136 $ret289811137 $ret589911138 $i90011139 $i90111140))))

; sum precondition
(assert
  (forall (($x895 (Array Int Int)) ($x89511141 (Array Int Int)) ($temp89611119 Int) ($ret589911145 Int) ($ret5899 Int) ($result11125 Int) ($i901 Int) ($i90011146 Int) ($x89511118 (Array Int Int)) ($result11126 Int) ($i90011123 Int) ($ret289811144 Int) ($i90111147 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($i90111124 Int) ($ret89711143 Int) ($temp89611142 Int) ($ret89711120 Int) ($ret2898 Int) ($i900 Int))
    (=> (and ($main_sum576 (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) (select (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) 0) $result11125 $result11126 $ret589911122 $i90011123 $i90111124 $x89511141 $temp89611142 $ret89711143 $ret289811144 $ret589911145 $i90011146 $i90111147)
             (= $i90111124 0)
             (sum (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) $result11126)
             (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($sum_pre (store $x89511141 (- 40 1) $temp89611142)))))

; error
(assert
  (forall (($result11148 Int) ($x895 (Array Int Int)) ($x89511141 (Array Int Int)) ($temp89611119 Int) ($ret589911145 Int) ($ret5899 Int) ($result11125 Int) ($i901 Int) ($i90011146 Int) ($x89511118 (Array Int Int)) ($result11126 Int) ($i90011123 Int) ($ret289811144 Int) ($i90111147 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($i90111124 Int) ($ret89711143 Int) ($temp89611142 Int) ($ret89711120 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (or (not (= $ret89711143 $ret289811144)) (not (= $ret89711143 $result11148)))
             (sum (store $x89511141 (- 40 1) $temp89611142) $result11148)
             ($main_sum576 (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) (select (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) 0) $result11125 $result11126 $ret589911122 $i90011123 $i90111124 $x89511141 $temp89611142 $ret89711143 $ret289811144 $ret589911145 $i90011146 $i90111147)
             (= $i90111124 0)
             (sum (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) $result11126)
             (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        false)))

; if then
(assert
  (forall (($result11148 Int) ($x895 (Array Int Int)) ($x89511141 (Array Int Int)) ($temp89611119 Int) ($ret589911145 Int) ($ret5899 Int) ($result11125 Int) ($i901 Int) ($i90011146 Int) ($x89511118 (Array Int Int)) ($result11126 Int) ($i90011123 Int) ($ret289811144 Int) ($i90111147 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($i90111124 Int) ($ret89711143 Int) ($temp89611142 Int) ($ret89711120 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (or (not (= $ret89711143 $ret289811144)) (not (= $ret89711143 $result11148)))
             (sum (store $x89511141 (- 40 1) $temp89611142) $result11148)
             ($main_sum576 (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) (select (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) 0) $result11125 $result11126 $ret589911122 $i90011123 $i90111124 $x89511141 $temp89611142 $ret89711143 $ret289811144 $ret589911145 $i90011146 $i90111147)
             (= $i90111124 0)
             (sum (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) $result11126)
             (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($main_if416 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 (store $x89511141 (- 40 1) $temp89611142) $temp89611142 $ret89711143 $ret289811144 $result11148 $i90011146 $i90111147))))

; if else
(assert
  (forall (($result11148 Int) ($x895 (Array Int Int)) ($x89511141 (Array Int Int)) ($temp89611119 Int) ($ret589911145 Int) ($ret5899 Int) ($result11125 Int) ($i901 Int) ($i90011146 Int) ($x89511118 (Array Int Int)) ($result11126 Int) ($i90011123 Int) ($ret289811144 Int) ($i90111147 Int) ($ret589911122 Int) ($temp896 Int) ($ret897 Int) ($ret289811121 Int) ($i90111124 Int) ($ret89711143 Int) ($temp89611142 Int) ($ret89711120 Int) ($ret2898 Int) ($i900 Int))
    (=> (and (not (or (not (= $ret89711143 $ret289811144)) (not (= $ret89711143 $result11148))))
             (sum (store $x89511141 (- 40 1) $temp89611142) $result11148)
             ($main_sum576 (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) (select (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) 0) $result11125 $result11126 $ret589911122 $i90011123 $i90111124 $x89511141 $temp89611142 $ret89711143 $ret289811144 $ret589911145 $i90011146 $i90111147)
             (= $i90111124 0)
             (sum (store (store $x89511118 0 (select $x89511118 1)) 1 (select $x89511118 0)) $result11126)
             (sum $x89511118 $result11125)
             ($main_sum575 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 $x89511118 $temp89611119 $ret89711120 $ret289811121 $ret589911122 $i90011123 $i90111124)
             (= $i900 0))
        ($main_if416 $x895 $temp896 $ret897 $ret2898 $ret5899 $i900 $i901 (store $x89511141 (- 40 1) $temp89611142) $temp89611142 $ret89711143 $ret289811144 $result11148 $i90011146 $i90111147))))

(check-sat)
