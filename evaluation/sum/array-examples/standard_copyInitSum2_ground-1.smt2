(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if60 (Int Int) Bool)
(declare-fun $main_sum199 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv196 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv197 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv198 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv199 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum196 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum197 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum198 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond4933 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond4933))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if60 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4934 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if60 cond cond4934))
        (__VERIFIER_assert cond4934))))

; loop entry $main_inv196
(assert
  (forall (($a294 (Array Int Int)) ($b295 (Array Int Int)) ($i296 Int) ($x297 Int))
    (=> (and (= $i296 0))
        ($main_inv196 $a294 $b295 $i296 $x297))))

; loop term $main_sum196
(assert
  (forall (($a2944935 (Array Int Int)) ($b2954936 (Array Int Int)) ($i2964937 Int) ($x2974938 Int))
    (=> (and (not (< $i2964937 100000)))
        ($main_sum196 $a2944935 $b2954936 $i2964937 $x2974938 $a2944935 $b2954936 $i2964937 $x2974938))))

; forwards $main_inv196
(assert
  (forall (($a2944935 (Array Int Int)) ($i2964937 Int) ($b2954936 (Array Int Int)) ($x2974938 Int))
    (=> (and (< $i2964937 100000)
             ($main_inv196 $a2944935 $b2954936 $i2964937 $x2974938))
        ($main_inv196 (store $a2944935 $i2964937 42) $b2954936 (+ $i2964937 1) $x2974938))))

; backwards $main_sum196
(assert
  (forall (($b2954940 (Array Int Int)) ($x2974942 Int) ($i2964941 Int) ($b2954936 (Array Int Int)) ($a2944939 (Array Int Int)) ($i2964937 Int) ($x2974938 Int) ($a2944935 (Array Int Int)))
    (=> (and ($main_sum196 (store $a2944935 $i2964937 42) $b2954936 (+ $i2964937 1) $x2974938 $a2944939 $b2954940 $i2964941 $x2974942)
             (< $i2964937 100000))
        ($main_sum196 $a2944935 $b2954936 $i2964937 $x2974938 $a2944939 $b2954940 $i2964941 $x2974942))))

; loop entry $main_inv197
(assert
  (forall (($b295 (Array Int Int)) ($b2954944 (Array Int Int)) ($a294 (Array Int Int)) ($a2944943 (Array Int Int)) ($i2964945 Int) ($i296 Int) ($x2974946 Int) ($x297 Int))
    (=> (and ($main_sum196 $a294 $b295 $i296 $x297 $a2944943 $b2954944 $i2964945 $x2974946)
             (= $i296 0))
        ($main_inv197 $a2944943 $b2954944 0 $x2974946))))

; loop term $main_sum197
(assert
  (forall (($a2944947 (Array Int Int)) ($b2954948 (Array Int Int)) ($i2964949 Int) ($x2974950 Int))
    (=> (and (not (< $i2964949 100000)))
        ($main_sum197 $a2944947 $b2954948 $i2964949 $x2974950 $a2944947 $b2954948 $i2964949 $x2974950))))

; forwards $main_inv197
(assert
  (forall (($a2944947 (Array Int Int)) ($b2954948 (Array Int Int)) ($i2964949 Int) ($x2974950 Int))
    (=> (and (< $i2964949 100000)
             ($main_inv197 $a2944947 $b2954948 $i2964949 $x2974950))
        ($main_inv197 $a2944947 (store $b2954948 $i2964949 (select $a2944947 $i2964949)) (+ $i2964949 1) $x2974950))))

; backwards $main_sum197
(assert
  (forall (($x2974954 Int) ($x2974950 Int) ($i2964949 Int) ($a2944947 (Array Int Int)) ($b2954952 (Array Int Int)) ($a2944951 (Array Int Int)) ($i2964953 Int) ($b2954948 (Array Int Int)))
    (=> (and ($main_sum197 $a2944947 (store $b2954948 $i2964949 (select $a2944947 $i2964949)) (+ $i2964949 1) $x2974950 $a2944951 $b2954952 $i2964953 $x2974954)
             (< $i2964949 100000))
        ($main_sum197 $a2944947 $b2954948 $i2964949 $x2974950 $a2944951 $b2954952 $i2964953 $x2974954))))

; loop entry $main_inv198
(assert
  (forall (($b2954956 (Array Int Int)) ($a2944955 (Array Int Int)) ($x2974958 Int) ($b295 (Array Int Int)) ($a294 (Array Int Int)) ($a2944943 (Array Int Int)) ($i2964945 Int) ($i296 Int) ($x2974946 Int) ($x297 Int) ($i2964957 Int) ($b2954944 (Array Int Int)))
    (=> (and ($main_sum197 $a2944943 $b2954944 0 $x2974946 $a2944955 $b2954956 $i2964957 $x2974958)
             ($main_sum196 $a294 $b295 $i296 $x297 $a2944943 $b2954944 $i2964945 $x2974946)
             (= $i296 0))
        ($main_inv198 $a2944955 $b2954956 0 $x2974958))))

; loop term $main_sum198
(assert
  (forall (($a2944959 (Array Int Int)) ($b2954960 (Array Int Int)) ($i2964961 Int) ($x2974962 Int))
    (=> (and (not (< $i2964961 100000)))
        ($main_sum198 $a2944959 $b2954960 $i2964961 $x2974962 $a2944959 $b2954960 $i2964961 $x2974962))))

; forwards $main_inv198
(assert
  (forall (($a2944959 (Array Int Int)) ($i2964961 Int) ($b2954960 (Array Int Int)) ($x2974962 Int))
    (=> (and (< $i2964961 100000)
             ($main_inv198 $a2944959 $b2954960 $i2964961 $x2974962))
        ($main_inv198 (store $a2944959 $i2964961 (+ (select $b2954960 $i2964961) $i2964961)) $b2954960 (+ $i2964961 1) $x2974962))))

; backwards $main_sum198
(assert
  (forall (($i2964965 Int) ($i2964961 Int) ($b2954960 (Array Int Int)) ($x2974966 Int) ($x2974962 Int) ($b2954964 (Array Int Int)) ($a2944963 (Array Int Int)) ($a2944959 (Array Int Int)))
    (=> (and ($main_sum198 (store $a2944959 $i2964961 (+ (select $b2954960 $i2964961) $i2964961)) $b2954960 (+ $i2964961 1) $x2974962 $a2944963 $b2954964 $i2964965 $x2974966)
             (< $i2964961 100000))
        ($main_sum198 $a2944959 $b2954960 $i2964961 $x2974962 $a2944963 $b2954964 $i2964965 $x2974966))))

; loop entry $main_inv199
(assert
  (forall (($a2944967 (Array Int Int)) ($b2954956 (Array Int Int)) ($a2944955 (Array Int Int)) ($x2974958 Int) ($b295 (Array Int Int)) ($x2974970 Int) ($b2954968 (Array Int Int)) ($a294 (Array Int Int)) ($i2964969 Int) ($a2944943 (Array Int Int)) ($i2964945 Int) ($i296 Int) ($x2974946 Int) ($x297 Int) ($i2964957 Int) ($b2954944 (Array Int Int)))
    (=> (and ($main_sum198 $a2944955 $b2954956 0 $x2974958 $a2944967 $b2954968 $i2964969 $x2974970)
             ($main_sum197 $a2944943 $b2954944 0 $x2974946 $a2944955 $b2954956 $i2964957 $x2974958)
             ($main_sum196 $a294 $b295 $i296 $x297 $a2944943 $b2954944 $i2964945 $x2974946)
             (= $i296 0))
        ($main_inv199 $a2944967 $b2954968 $i2964969 0))))

; loop term $main_sum199
(assert
  (forall (($a2944971 (Array Int Int)) ($b2954972 (Array Int Int)) ($i2964973 Int) ($x2974974 Int))
    (=> (and (not (< $x2974974 100000)))
        ($main_sum199 $a2944971 $b2954972 $i2964973 $x2974974 $a2944971 $b2954972 $i2964973 $x2974974))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2954972 (Array Int Int)) ($x2974974 Int) ($a2944971 (Array Int Int)) ($i2964973 Int))
    (=> (and (< $x2974974 100000)
             ($main_inv199 $a2944971 $b2954972 $i2964973 $x2974974))
        ($__VERIFIER_assert_pre (ite (= (select $b2954972 $x2974974) (+ 42 $x2974974)) 1 0)))))

; forwards $main_inv199
(assert
  (forall (($a2944971 (Array Int Int)) ($b2954972 (Array Int Int)) ($i2964973 Int) ($x2974974 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2954972 $x2974974) (+ 42 $x2974974)) 1 0))
             (< $x2974974 100000)
             ($main_inv199 $a2944971 $b2954972 $i2964973 $x2974974))
        ($main_inv199 $a2944971 $b2954972 $i2964973 (+ $x2974974 1)))))

; backwards $main_sum199
(assert
  (forall (($i2964977 Int) ($b2954976 (Array Int Int)) ($x2974974 Int) ($x2974978 Int) ($b2954972 (Array Int Int)) ($a2944971 (Array Int Int)) ($a2944975 (Array Int Int)) ($i2964973 Int))
    (=> (and ($main_sum199 $a2944971 $b2954972 $i2964973 (+ $x2974974 1) $a2944975 $b2954976 $i2964977 $x2974978)
             (__VERIFIER_assert (ite (= (select $b2954972 $x2974974) (+ 42 $x2974974)) 1 0))
             (< $x2974974 100000))
        ($main_sum199 $a2944971 $b2954972 $i2964973 $x2974974 $a2944975 $b2954976 $i2964977 $x2974978))))

(check-sat)
