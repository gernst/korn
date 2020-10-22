(set-logic HORN)

(declare-fun $main_inv477 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if259 (Int Int) Bool)
(declare-fun $main_sum477 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if264 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if262 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if260 (Int Int) Bool)
(declare-fun $main_if261 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if263 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_out (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if259 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9107 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if259 cond cond9107))
        (assume_abort_if_not cond9107))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9108 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9108))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if260 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9109 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if260 cond cond9109))
        (__VERIFIER_assert cond9109))))

; goto END
(assert
  (forall (($in637 Int) ($inlen638 Int) ($bufferlen639 Int) ($buflim641 Int) ($int9111 Int) ($buf640 Int) ($int9110 Int))
    (=> (and (not (> $bufferlen639 1))
             (= $bufferlen639 $int9111)
             (<= (- 2147483648) $int9111)
             (<= $int9111 2147483647)
             (= $inlen638 $int9110)
             (<= (- 2147483648) $int9110)
             (<= $int9110 2147483647))
        ($main_END $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in637 $inlen638 $bufferlen639 $buf640 $buflim641))))

; if then
(assert
  (forall (($in637 Int) ($inlen638 Int) ($bufferlen639 Int) ($buflim641 Int) ($int9111 Int) ($buf640 Int) ($int9110 Int))
    (=> (and (> $bufferlen639 1)
             (= $bufferlen639 $int9111)
             (<= (- 2147483648) $int9111)
             (<= $int9111 2147483647)
             (= $inlen638 $int9110)
             (<= (- 2147483648) $int9110)
             (<= $int9110 2147483647))
        ($main_if261 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in637 $inlen638 $bufferlen639 $buf640 $buflim641))))

; goto END
(assert
  (forall (($inlen6389113 Int) ($buf6409115 Int) ($in637 Int) ($inlen638 Int) ($buf640 Int) ($bufferlen6399114 Int) ($buflim641 Int) ($in6379112 Int) ($buflim6419116 Int) ($bufferlen639 Int))
    (=> (and (not (> $inlen6389113 0))
             ($main_if261 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379112 $inlen6389113 $bufferlen6399114 $buf6409115 $buflim6419116))
        ($main_END $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379112 $inlen6389113 $bufferlen6399114 $buf6409115 $buflim6419116))))

; if then
(assert
  (forall (($inlen6389113 Int) ($buf6409115 Int) ($in637 Int) ($inlen638 Int) ($buf640 Int) ($bufferlen6399114 Int) ($buflim641 Int) ($in6379112 Int) ($buflim6419116 Int) ($bufferlen639 Int))
    (=> (and (> $inlen6389113 0)
             ($main_if261 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379112 $inlen6389113 $bufferlen6399114 $buf6409115 $buflim6419116))
        ($main_if262 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379112 $inlen6389113 $bufferlen6399114 $buf6409115 $buflim6419116))))

; goto END
(assert
  (forall (($inlen6389118 Int) ($buf6409120 Int) ($in637 Int) ($bufferlen6399119 Int) ($inlen638 Int) ($buf640 Int) ($bufferlen639 Int) ($buflim641 Int) ($in6379117 Int) ($buflim6419121 Int))
    (=> (and (not (< $bufferlen6399119 $inlen6389118))
             ($main_if262 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379117 $inlen6389118 $bufferlen6399119 $buf6409120 $buflim6419121))
        ($main_END $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379117 $inlen6389118 $bufferlen6399119 $buf6409120 $buflim6419121))))

; if then
(assert
  (forall (($inlen6389118 Int) ($buf6409120 Int) ($in637 Int) ($bufferlen6399119 Int) ($inlen638 Int) ($buf640 Int) ($bufferlen639 Int) ($buflim641 Int) ($in6379117 Int) ($buflim6419121 Int))
    (=> (and (< $bufferlen6399119 $inlen6389118)
             ($main_if262 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379117 $inlen6389118 $bufferlen6399119 $buf6409120 $buflim6419121))
        ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379117 $inlen6389118 $bufferlen6399119 $buf6409120 $buflim6419121))))

; loop entry $main_inv477
(assert
  (forall (($inlen6389123 Int) ($in637 Int) ($inlen638 Int) ($buf640 Int) ($buflim641 Int) ($bufferlen6399124 Int) ($buf6409125 Int) ($buflim6419126 Int) ($in6379122 Int) ($bufferlen639 Int))
    (=> (and ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($main_inv477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2)))))

; loop term $main_sum477
(assert
  (forall (($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($int9132 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (= $int9132 0)
             (<= (- 2147483648) $int9132)
             (<= $int9132 2147483647))
        ($main_sum477 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131))))

; break $main_sum477
(assert
  (forall (($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($int9132 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (= $buf6409130 $buflim6419131)
             (not (= $int9132 0))
             (<= (- 2147483648) $int9132)
             (<= $int9132 2147483647)
             ($main_inv477 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131))
        ($main_sum477 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131))))

; if else
(assert
  (forall (($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($int9132 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (not (= $buf6409130 $buflim6419131))
             (not (= $int9132 0))
             (<= (- 2147483648) $int9132)
             (<= $int9132 2147483647)
             ($main_inv477 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131))
        ($main_if264 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6399135 Int) ($inlen6389128 Int) ($buflim6419137 Int) ($in6379127 Int) ($buf6409136 Int) ($bufferlen6399129 Int) ($inlen6389134 Int) ($in6379133 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and ($main_if264 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379133 $inlen6389134 $bufferlen6399135 $buf6409136 $buflim6419137))
        ($__VERIFIER_assert_pre (ite (<= 0 $buf6409136) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6399135 Int) ($inlen6389128 Int) ($buflim6419137 Int) ($in6379127 Int) ($buf6409136 Int) ($bufferlen6399129 Int) ($inlen6389134 Int) ($in6379133 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $buf6409136) 1 0))
             ($main_if264 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379133 $inlen6389134 $bufferlen6399135 $buf6409136 $buflim6419137))
        ($__VERIFIER_assert_pre (ite (< $buf6409136 $bufferlen6399135) 1 0)))))

; label out
(assert
  (forall (($bufferlen6399135 Int) ($inlen6389128 Int) ($buflim6419137 Int) ($in6379127 Int) ($buf6409136 Int) ($bufferlen6399129 Int) ($inlen6389134 Int) ($in6379133 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (__VERIFIER_assert (ite (< $buf6409136 $bufferlen6399135) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6409136) 1 0))
             ($main_if264 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379133 $inlen6389134 $bufferlen6399135 $buf6409136 $buflim6419137))
        ($main_out $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379133 $inlen6389134 $bufferlen6399135 (+ $buf6409136 1) $buflim6419137))))

; __VERIFIER_assert precondition
(assert
  (forall (($in6379138 Int) ($buf6409141 Int) ($buflim6419142 Int) ($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($bufferlen6399140 Int) ($inlen6389139 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and ($main_out $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379138 $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $in6379138 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($in6379138 Int) ($buf6409141 Int) ($buflim6419142 Int) ($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($bufferlen6399140 Int) ($inlen6389139 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $in6379138 1)) 1 0))
             ($main_out $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379138 $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142))
        ($__VERIFIER_assert_pre (ite (< (+ $in6379138 1) $inlen6389139) 1 0)))))

; forwards $main_inv477
(assert
  (forall (($in6379138 Int) ($buf6409141 Int) ($buflim6419142 Int) ($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399129 Int) ($bufferlen6399140 Int) ($inlen6389139 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $in6379138 1) $inlen6389139) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $in6379138 1)) 1 0))
             ($main_out $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379138 $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142))
        ($main_inv477 (+ $in6379138 1) $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142))))

; backwards $main_sum477
(assert
  (forall (($buf6409141 Int) ($inlen6389144 Int) ($buflim6419142 Int) ($inlen6389128 Int) ($in6379127 Int) ($bufferlen6399145 Int) ($bufferlen6399129 Int) ($in6379143 Int) ($bufferlen6399140 Int) ($buf6409146 Int) ($in6379138 Int) ($buflim6419147 Int) ($inlen6389139 Int) ($buflim6419131 Int) ($buf6409130 Int))
    (=> (and ($main_sum477 (+ $in6379138 1) $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142 $in6379143 $inlen6389144 $bufferlen6399145 $buf6409146 $buflim6419147)
             (__VERIFIER_assert (ite (< (+ $in6379138 1) $inlen6389139) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $in6379138 1)) 1 0))
             ($main_out $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379138 $inlen6389139 $bufferlen6399140 $buf6409141 $buflim6419142))
        ($main_sum477 $in6379127 $inlen6389128 $bufferlen6399129 $buf6409130 $buflim6419131 $in6379143 $inlen6389144 $bufferlen6399145 $buf6409146 $buflim6419147))))

; __VERIFIER_assert precondition
(assert
  (forall (($inlen6389123 Int) ($inlen6389149 Int) ($in637 Int) ($buflim6419152 Int) ($inlen638 Int) ($buf640 Int) ($buf6409151 Int) ($buflim641 Int) ($buf6409125 Int) ($buflim6419126 Int) ($bufferlen6399150 Int) ($in6379122 Int) ($bufferlen639 Int) ($in6379148 Int) ($bufferlen6399124 Int))
    (=> (and ($main_sum477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2) $in6379148 $inlen6389149 $bufferlen6399150 $buf6409151 $buflim6419152)
             ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($__VERIFIER_assert_pre (ite (<= 0 $buf6409151) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($inlen6389123 Int) ($inlen6389149 Int) ($in637 Int) ($buflim6419152 Int) ($inlen638 Int) ($buf640 Int) ($buf6409151 Int) ($buflim641 Int) ($buf6409125 Int) ($buflim6419126 Int) ($bufferlen6399150 Int) ($in6379122 Int) ($bufferlen639 Int) ($in6379148 Int) ($bufferlen6399124 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $buf6409151) 1 0))
             ($main_sum477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2) $in6379148 $inlen6389149 $bufferlen6399150 $buf6409151 $buflim6419152)
             ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($__VERIFIER_assert_pre (ite (< $buf6409151 $bufferlen6399150) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($inlen6389123 Int) ($inlen6389149 Int) ($in637 Int) ($buflim6419152 Int) ($inlen638 Int) ($buf640 Int) ($buf6409151 Int) ($buflim641 Int) ($buf6409125 Int) ($buflim6419126 Int) ($bufferlen6399150 Int) ($in6379122 Int) ($bufferlen639 Int) ($in6379148 Int) ($bufferlen6399124 Int))
    (=> (and (__VERIFIER_assert (ite (< $buf6409151 $bufferlen6399150) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6409151) 1 0))
             ($main_sum477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2) $in6379148 $inlen6389149 $bufferlen6399150 $buf6409151 $buflim6419152)
             ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $buf6409151 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($inlen6389123 Int) ($inlen6389149 Int) ($in637 Int) ($buflim6419152 Int) ($inlen638 Int) ($buf640 Int) ($buf6409151 Int) ($buflim641 Int) ($buf6409125 Int) ($buflim6419126 Int) ($bufferlen6399150 Int) ($in6379122 Int) ($bufferlen639 Int) ($in6379148 Int) ($bufferlen6399124 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $buf6409151 1)) 1 0))
             (__VERIFIER_assert (ite (< $buf6409151 $bufferlen6399150) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6409151) 1 0))
             ($main_sum477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2) $in6379148 $inlen6389149 $bufferlen6399150 $buf6409151 $buflim6419152)
             ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($__VERIFIER_assert_pre (ite (< (+ $buf6409151 1) $bufferlen6399150) 1 0)))))

; label END
(assert
  (forall (($inlen6389123 Int) ($inlen6389149 Int) ($in637 Int) ($buflim6419152 Int) ($inlen638 Int) ($buf640 Int) ($buf6409151 Int) ($buflim641 Int) ($buf6409125 Int) ($buflim6419126 Int) ($bufferlen6399150 Int) ($in6379122 Int) ($bufferlen639 Int) ($in6379148 Int) ($bufferlen6399124 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $buf6409151 1) $bufferlen6399150) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $buf6409151 1)) 1 0))
             (__VERIFIER_assert (ite (< $buf6409151 $bufferlen6399150) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6409151) 1 0))
             ($main_sum477 0 $inlen6389123 $bufferlen6399124 0 (- $bufferlen6399124 2) $in6379148 $inlen6389149 $bufferlen6399150 $buf6409151 $buflim6419152)
             ($main_if263 $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379122 $inlen6389123 $bufferlen6399124 $buf6409125 $buflim6419126))
        ($main_END $in637 $inlen638 $bufferlen639 $buf640 $buflim641 $in6379148 $inlen6389149 $bufferlen6399150 (+ (+ $buf6409151 1) 1) $buflim6419152))))

(check-sat)
