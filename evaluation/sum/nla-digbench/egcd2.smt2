(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if736 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if737 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv282 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum281 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv281 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if738 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if735 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum282 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if735 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17045 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if735 cond cond17045))
        (assume_abort_if_not cond17045))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17046 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17046))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17046 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17046))
        ($__VERIFIER_assert_if736 cond cond17046))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if736 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17047 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if736 cond cond17047))
        (__VERIFIER_assert cond17047))))

; assume_abort_if_not precondition
(assert
  (forall (($int17048 Int) ($int17049 Int))
    (=> (and (<= (- 2147483648) $int17049)
             (<= $int17049 2147483647)
             (<= (- 2147483648) $int17048)
             (<= $int17048 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17048 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17049 Int) ($int17048 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17048 1) 1 0))
             (<= (- 2147483648) $int17049)
             (<= $int17049 2147483647)
             (<= (- 2147483648) $int17048)
             (<= $int17048 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17049 1) 1 0)))))

; loop entry $main_inv281
(assert
  (forall (($int17048 Int) ($int17049 Int) ($temp803 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17049 1) 1 0))
             (assume_abort_if_not (ite (>= $int17048 1) 1 0))
             (<= (- 2147483648) $int17049)
             (<= $int17049 2147483647)
             (<= (- 2147483648) $int17048)
             (<= $int17048 2147483647))
        ($main_inv281 $int17048 $int17049 $int17048 $int17049 1 0 0 1 0 0 $temp803))))

; loop term $main_sum281
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($s80017057 Int) ($r79917056 Int) ($a79517052 Int) ($b79617053 Int) ($q79817055 Int) ($y79417051 Int) ($p79717054 Int) ($k80217059 Int) ($c80117058 Int))
    (=> (and (= 1 0))
        ($main_sum281 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060))))

; break $main_sum281
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($s80017057 Int) ($r79917056 Int) ($a79517052 Int) ($b79617053 Int) ($q79817055 Int) ($y79417051 Int) ($p79717054 Int) ($k80217059 Int) ($c80117058 Int))
    (=> (and (= $b79617053 0)
             (not (= 1 0))
             ($main_inv281 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060))
        ($main_sum281 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060))))

; if else
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($s80017057 Int) ($r79917056 Int) ($a79517052 Int) ($b79617053 Int) ($q79817055 Int) ($y79417051 Int) ($p79717054 Int) ($k80217059 Int) ($c80117058 Int))
    (=> (and (not (= $b79617053 0))
             (not (= 1 0))
             ($main_inv281 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060))
        ($main_if737 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060))))

; loop entry $main_inv282
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($s80017057 Int) ($r79917056 Int) ($p79717065 Int) ($b79617064 Int) ($y79417062 Int) ($b79617053 Int) ($q79817055 Int) ($x79317061 Int) ($s80017068 Int) ($a79517063 Int) ($c80117069 Int) ($a79517052 Int) ($q79817066 Int) ($k80217070 Int) ($y79417051 Int) ($p79717054 Int) ($k80217059 Int) ($c80117058 Int) ($r79917067 Int) ($temp80317071 Int))
    (=> (and ($main_if737 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $c80117069 $k80217070 $temp80317071))
        ($main_inv282 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $a79517063 0 $temp80317071))))

; loop term $main_sum282
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (= 1 0))
        ($main_sum282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))))

; __VERIFIER_assert precondition
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($__VERIFIER_assert_pre (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (__VERIFIER_assert (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($__VERIFIER_assert_pre (ite (= $a79517074 (+ (* $y79417073 $r79917078) (* $x79317072 $p79717076))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (__VERIFIER_assert (ite (= $a79517074 (+ (* $y79417073 $r79917078) (* $x79317072 $p79717076))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($__VERIFIER_assert_pre (ite (= $b79617075 (+ (* $x79317072 $q79817077) (* $y79417073 $s80017079))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (__VERIFIER_assert (ite (= $b79617075 (+ (* $x79317072 $q79817077) (* $y79417073 $s80017079))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $y79417073 $r79917078) (* $x79317072 $p79717076))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (- (+ (* (* $q79817077 $x79317072) $y79417073) (* (* $s80017079 $y79417073) $y79417073)) (* $q79817077 $x79317072)) (* $b79617075 $y79417073)) (* $s80017079 $y79417073)) $b79617075) 0) 1 0)))))

; break $main_sum282
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (not (>= $c80117080 $b79617075))
             (__VERIFIER_assert (ite (= (+ (- (- (- (+ (* (* $q79817077 $x79317072) $y79417073) (* (* $s80017079 $y79417073) $y79417073)) (* $q79817077 $x79317072)) (* $b79617075 $y79417073)) (* $s80017079 $y79417073)) $b79617075) 0) 1 0))
             (__VERIFIER_assert (ite (= $b79617075 (+ (* $x79317072 $q79817077) (* $y79417073 $s80017079))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $y79417073 $r79917078) (* $x79317072 $p79717076))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($main_sum282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))))

; if else
(assert
  (forall (($s80017079 Int) ($temp80317082 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and (>= $c80117080 $b79617075)
             (__VERIFIER_assert (ite (= (+ (- (- (- (+ (* (* $q79817077 $x79317072) $y79417073) (* (* $s80017079 $y79417073) $y79417073)) (* $q79817077 $x79317072)) (* $b79617075 $y79417073)) (* $s80017079 $y79417073)) $b79617075) 0) 1 0))
             (__VERIFIER_assert (ite (= $b79617075 (+ (* $x79317072 $q79817077) (* $y79417073 $s80017079))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $y79417073 $r79917078) (* $x79317072 $p79717076))) 1 0))
             (__VERIFIER_assert (ite (= $a79517074 (+ (* $k80217081 $b79617075) $c80117080)) 1 0))
             (not (= 1 0))
             ($main_inv282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))
        ($main_if738 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082))))

; forwards $main_inv282
(assert
  (forall (($b79617086 Int) ($r79917089 Int) ($s80017090 Int) ($a79517085 Int) ($s80017079 Int) ($temp80317093 Int) ($x79317083 Int) ($x79317072 Int) ($k80217081 Int) ($b79617075 Int) ($c80117091 Int) ($a79517074 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($y79417084 Int) ($temp80317082 Int) ($k80217092 Int) ($q79817088 Int) ($p79717087 Int) ($q79817077 Int) ($p79717076 Int))
    (=> (and ($main_if738 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317083 $y79417084 $a79517085 $b79617086 $p79717087 $q79817088 $r79917089 $s80017090 $c80117091 $k80217092 $temp80317093))
        ($main_inv282 $x79317083 $y79417084 $a79517085 $b79617086 $p79717087 $q79817088 $r79917089 $s80017090 (- $c80117091 $b79617086) (+ $k80217092 1) $temp80317093))))

; backwards $main_sum282
(assert
  (forall (($r79917089 Int) ($y79417095 Int) ($a79517085 Int) ($c80117102 Int) ($temp80317093 Int) ($x79317083 Int) ($x79317072 Int) ($b79617075 Int) ($c80117091 Int) ($temp80317104 Int) ($a79517074 Int) ($b79617086 Int) ($s80017101 Int) ($c80117080 Int) ($y79417073 Int) ($r79917078 Int) ($a79517096 Int) ($s80017090 Int) ($r79917100 Int) ($s80017079 Int) ($y79417084 Int) ($temp80317082 Int) ($k80217103 Int) ($k80217092 Int) ($q79817088 Int) ($p79717087 Int) ($q79817099 Int) ($b79617097 Int) ($k80217081 Int) ($p79717098 Int) ($q79817077 Int) ($p79717076 Int) ($x79317094 Int))
    (=> (and ($main_sum282 $x79317083 $y79417084 $a79517085 $b79617086 $p79717087 $q79817088 $r79917089 $s80017090 (- $c80117091 $b79617086) (+ $k80217092 1) $temp80317093 $x79317094 $y79417095 $a79517096 $b79617097 $p79717098 $q79817099 $r79917100 $s80017101 $c80117102 $k80217103 $temp80317104)
             ($main_if738 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317083 $y79417084 $a79517085 $b79617086 $p79717087 $q79817088 $r79917089 $s80017090 $c80117091 $k80217092 $temp80317093))
        ($main_sum282 $x79317072 $y79417073 $a79517074 $b79617075 $p79717076 $q79817077 $r79917078 $s80017079 $c80117080 $k80217081 $temp80317082 $x79317094 $y79417095 $a79517096 $b79617097 $p79717098 $q79817099 $r79917100 $s80017101 $c80117102 $k80217103 $temp80317104))))

; forwards $main_inv281
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($a79517107 Int) ($s80017057 Int) ($c80117113 Int) ($p79717065 Int) ($b79617064 Int) ($y79417062 Int) ($k80217114 Int) ($q79817055 Int) ($q79817110 Int) ($x79317061 Int) ($s80017068 Int) ($y79417106 Int) ($a79517063 Int) ($p79717109 Int) ($r79917056 Int) ($c80117069 Int) ($a79517052 Int) ($b79617108 Int) ($q79817066 Int) ($temp80317115 Int) ($k80217070 Int) ($y79417051 Int) ($p79717054 Int) ($s80017112 Int) ($b79617053 Int) ($k80217059 Int) ($c80117058 Int) ($r79917111 Int) ($r79917067 Int) ($x79317105 Int) ($temp80317071 Int))
    (=> (and ($main_sum282 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $a79517063 0 $temp80317071 $x79317105 $y79417106 $a79517107 $b79617108 $p79717109 $q79817110 $r79917111 $s80017112 $c80117113 $k80217114 $temp80317115)
             ($main_if737 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $c80117069 $k80217070 $temp80317071))
        ($main_inv281 $x79317105 $y79417106 $b79617108 $c80117113 $q79817110 (- $p79717109 (* $q79817110 $k80217114)) $s80017112 (- $r79917111 (* $s80017112 $k80217114)) $c80117113 $k80217114 $r79917111))))

; backwards $main_sum281
(assert
  (forall (($x79317050 Int) ($temp80317060 Int) ($s80017057 Int) ($c80117113 Int) ($p79717065 Int) ($b79617064 Int) ($k80217114 Int) ($q79817121 Int) ($k80217125 Int) ($q79817055 Int) ($q79817110 Int) ($s80017068 Int) ($y79417106 Int) ($a79517063 Int) ($a79517107 Int) ($p79717120 Int) ($r79917122 Int) ($p79717109 Int) ($r79917056 Int) ($c80117069 Int) ($s80017123 Int) ($a79517052 Int) ($b79617108 Int) ($a79517118 Int) ($b79617119 Int) ($y79417117 Int) ($y79417062 Int) ($q79817066 Int) ($temp80317115 Int) ($k80217070 Int) ($y79417051 Int) ($x79317116 Int) ($p79717054 Int) ($s80017112 Int) ($b79617053 Int) ($k80217059 Int) ($c80117058 Int) ($temp80317126 Int) ($x79317061 Int) ($r79917111 Int) ($r79917067 Int) ($temp80317071 Int) ($c80117124 Int) ($x79317105 Int))
    (=> (and ($main_sum281 $x79317105 $y79417106 $b79617108 $c80117113 $q79817110 (- $p79717109 (* $q79817110 $k80217114)) $s80017112 (- $r79917111 (* $s80017112 $k80217114)) $c80117113 $k80217114 $r79917111 $x79317116 $y79417117 $a79517118 $b79617119 $p79717120 $q79817121 $r79917122 $s80017123 $c80117124 $k80217125 $temp80317126)
             ($main_sum282 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $a79517063 0 $temp80317071 $x79317105 $y79417106 $a79517107 $b79617108 $p79717109 $q79817110 $r79917111 $s80017112 $c80117113 $k80217114 $temp80317115)
             ($main_if737 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317061 $y79417062 $a79517063 $b79617064 $p79717065 $q79817066 $r79917067 $s80017068 $c80117069 $k80217070 $temp80317071))
        ($main_sum281 $x79317050 $y79417051 $a79517052 $b79617053 $p79717054 $q79817055 $r79917056 $s80017057 $c80117058 $k80217059 $temp80317060 $x79317116 $y79417117 $a79517118 $b79617119 $p79717120 $q79817121 $r79917122 $s80017123 $c80117124 $k80217125 $temp80317126))))

; __VERIFIER_assert precondition
(assert
  (forall (($a79517129 Int) ($temp803 Int) ($int17049 Int) ($r79917133 Int) ($k80217136 Int) ($x79317127 Int) ($temp80317137 Int) ($int17048 Int) ($q79817132 Int) ($b79617130 Int) ($p79717131 Int) ($s80017134 Int) ($c80117135 Int) ($y79417128 Int))
    (=> (and ($main_sum281 $int17048 $int17049 $int17048 $int17049 1 0 0 1 0 0 $temp803 $x79317127 $y79417128 $a79517129 $b79617130 $p79717131 $q79817132 $r79917133 $s80017134 $c80117135 $k80217136 $temp80317137)
             (assume_abort_if_not (ite (>= $int17049 1) 1 0))
             (assume_abort_if_not (ite (>= $int17048 1) 1 0))
             (<= (- 2147483648) $int17049)
             (<= $int17049 2147483647)
             (<= (- 2147483648) $int17048)
             (<= $int17048 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (* $q79817132 $x79317127) (* $s80017134 $y79417128)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($a79517129 Int) ($temp803 Int) ($int17049 Int) ($r79917133 Int) ($k80217136 Int) ($x79317127 Int) ($temp80317137 Int) ($int17048 Int) ($q79817132 Int) ($b79617130 Int) ($p79717131 Int) ($s80017134 Int) ($c80117135 Int) ($y79417128 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (* $q79817132 $x79317127) (* $s80017134 $y79417128)) 0) 1 0))
             ($main_sum281 $int17048 $int17049 $int17048 $int17049 1 0 0 1 0 0 $temp803 $x79317127 $y79417128 $a79517129 $b79617130 $p79717131 $q79817132 $r79917133 $s80017134 $c80117135 $k80217136 $temp80317137)
             (assume_abort_if_not (ite (>= $int17049 1) 1 0))
             (assume_abort_if_not (ite (>= $int17048 1) 1 0))
             (<= (- 2147483648) $int17049)
             (<= $int17049 2147483647)
             (<= (- 2147483648) $int17048)
             (<= $int17048 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (* $p79717131 $x79317127) (* $r79917133 $y79417128)) $a79517129) 1 0)))))

(check-sat)
