(set-logic HORN)

(declare-fun $main_sum300 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv299 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum302 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum299 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum298 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv295 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum297 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv301 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv302 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv296 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum301 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum295 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv300 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if80 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv297 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv303 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum303 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv298 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum296 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4087 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4087))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if80 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4088 Int))
    (=> (and ($__VERIFIER_assert_if80 cond4088))
        (__VERIFIER_assert cond4088))))

; loop entry $main_inv295
(assert
  (forall (($a361 (Array Int Int)) ($i362 Int) ($x363 Int))
    (=> (and (= $i362 0))
        ($main_inv295 $a361 $i362 $x363))))

; loop term $main_sum295
(assert
  (forall (($a3614089 (Array Int Int)) ($i3624090 Int) ($x3634091 Int))
    (=> (and (not (< $i3624090 100000))
             ($main_inv295 $a3614089 $i3624090 $x3634091))
        ($main_sum295 $a3614089 $i3624090 $x3634091))))

; forwards $main_inv295
(assert
  (forall (($a3614089 (Array Int Int)) ($i3624090 Int) ($x3634091 Int))
    (=> (and (< $i3624090 100000)
             ($main_inv295 $a3614089 $i3624090 $x3634091))
        ($main_inv295 (store $a3614089 $i3624090 42) (+ $i3624090 1) $x3634091))))

; loop entry $main_inv296
(assert
  (forall (($a3614092 (Array Int Int)) ($x3634094 Int) ($i3624093 Int))
    (=> (and ($main_sum295 $a3614092 $i3624093 $x3634094))
        ($main_inv296 $a3614092 0 $x3634094))))

; loop term $main_sum296
(assert
  (forall (($a3614095 (Array Int Int)) ($i3624096 Int) ($x3634097 Int))
    (=> (and (not (< $i3624096 100000))
             ($main_inv296 $a3614095 $i3624096 $x3634097))
        ($main_sum296 $a3614095 $i3624096 $x3634097))))

; forwards $main_inv296
(assert
  (forall (($a3614095 (Array Int Int)) ($i3624096 Int) ($x3634097 Int))
    (=> (and (< $i3624096 100000)
             ($main_inv296 $a3614095 $i3624096 $x3634097))
        ($main_inv296 (store $a3614095 $i3624096 43) (+ $i3624096 1) $x3634097))))

; loop entry $main_inv297
(assert
  (forall (($a3614098 (Array Int Int)) ($x3634100 Int) ($i3624099 Int))
    (=> (and ($main_sum296 $a3614098 $i3624099 $x3634100))
        ($main_inv297 $a3614098 0 $x3634100))))

; loop term $main_sum297
(assert
  (forall (($a3614101 (Array Int Int)) ($i3624102 Int) ($x3634103 Int))
    (=> (and (not (< $i3624102 100000))
             ($main_inv297 $a3614101 $i3624102 $x3634103))
        ($main_sum297 $a3614101 $i3624102 $x3634103))))

; forwards $main_inv297
(assert
  (forall (($a3614101 (Array Int Int)) ($i3624102 Int) ($x3634103 Int))
    (=> (and (< $i3624102 100000)
             ($main_inv297 $a3614101 $i3624102 $x3634103))
        ($main_inv297 (store $a3614101 $i3624102 44) (+ $i3624102 1) $x3634103))))

; loop entry $main_inv298
(assert
  (forall (($a3614104 (Array Int Int)) ($x3634106 Int) ($i3624105 Int))
    (=> (and ($main_sum297 $a3614104 $i3624105 $x3634106))
        ($main_inv298 $a3614104 0 $x3634106))))

; loop term $main_sum298
(assert
  (forall (($a3614107 (Array Int Int)) ($i3624108 Int) ($x3634109 Int))
    (=> (and (not (< $i3624108 100000))
             ($main_inv298 $a3614107 $i3624108 $x3634109))
        ($main_sum298 $a3614107 $i3624108 $x3634109))))

; forwards $main_inv298
(assert
  (forall (($a3614107 (Array Int Int)) ($i3624108 Int) ($x3634109 Int))
    (=> (and (< $i3624108 100000)
             ($main_inv298 $a3614107 $i3624108 $x3634109))
        ($main_inv298 (store $a3614107 $i3624108 45) (+ $i3624108 1) $x3634109))))

; loop entry $main_inv299
(assert
  (forall (($a3614110 (Array Int Int)) ($x3634112 Int) ($i3624111 Int))
    (=> (and ($main_sum298 $a3614110 $i3624111 $x3634112))
        ($main_inv299 $a3614110 0 $x3634112))))

; loop term $main_sum299
(assert
  (forall (($a3614113 (Array Int Int)) ($i3624114 Int) ($x3634115 Int))
    (=> (and (not (< $i3624114 100000))
             ($main_inv299 $a3614113 $i3624114 $x3634115))
        ($main_sum299 $a3614113 $i3624114 $x3634115))))

; forwards $main_inv299
(assert
  (forall (($a3614113 (Array Int Int)) ($i3624114 Int) ($x3634115 Int))
    (=> (and (< $i3624114 100000)
             ($main_inv299 $a3614113 $i3624114 $x3634115))
        ($main_inv299 (store $a3614113 $i3624114 46) (+ $i3624114 1) $x3634115))))

; loop entry $main_inv300
(assert
  (forall (($a3614116 (Array Int Int)) ($x3634118 Int) ($i3624117 Int))
    (=> (and ($main_sum299 $a3614116 $i3624117 $x3634118))
        ($main_inv300 $a3614116 0 $x3634118))))

; loop term $main_sum300
(assert
  (forall (($a3614119 (Array Int Int)) ($i3624120 Int) ($x3634121 Int))
    (=> (and (not (< $i3624120 100000))
             ($main_inv300 $a3614119 $i3624120 $x3634121))
        ($main_sum300 $a3614119 $i3624120 $x3634121))))

; forwards $main_inv300
(assert
  (forall (($a3614119 (Array Int Int)) ($i3624120 Int) ($x3634121 Int))
    (=> (and (< $i3624120 100000)
             ($main_inv300 $a3614119 $i3624120 $x3634121))
        ($main_inv300 (store $a3614119 $i3624120 47) (+ $i3624120 1) $x3634121))))

; loop entry $main_inv301
(assert
  (forall (($a3614122 (Array Int Int)) ($x3634124 Int) ($i3624123 Int))
    (=> (and ($main_sum300 $a3614122 $i3624123 $x3634124))
        ($main_inv301 $a3614122 0 $x3634124))))

; loop term $main_sum301
(assert
  (forall (($a3614125 (Array Int Int)) ($i3624126 Int) ($x3634127 Int))
    (=> (and (not (< $i3624126 100000))
             ($main_inv301 $a3614125 $i3624126 $x3634127))
        ($main_sum301 $a3614125 $i3624126 $x3634127))))

; forwards $main_inv301
(assert
  (forall (($a3614125 (Array Int Int)) ($i3624126 Int) ($x3634127 Int))
    (=> (and (< $i3624126 100000)
             ($main_inv301 $a3614125 $i3624126 $x3634127))
        ($main_inv301 (store $a3614125 $i3624126 48) (+ $i3624126 1) $x3634127))))

; loop entry $main_inv302
(assert
  (forall (($a3614128 (Array Int Int)) ($x3634130 Int) ($i3624129 Int))
    (=> (and ($main_sum301 $a3614128 $i3624129 $x3634130))
        ($main_inv302 $a3614128 0 $x3634130))))

; loop term $main_sum302
(assert
  (forall (($a3614131 (Array Int Int)) ($i3624132 Int) ($x3634133 Int))
    (=> (and (not (< $i3624132 100000))
             ($main_inv302 $a3614131 $i3624132 $x3634133))
        ($main_sum302 $a3614131 $i3624132 $x3634133))))

; forwards $main_inv302
(assert
  (forall (($a3614131 (Array Int Int)) ($i3624132 Int) ($x3634133 Int))
    (=> (and (< $i3624132 100000)
             ($main_inv302 $a3614131 $i3624132 $x3634133))
        ($main_inv302 (store $a3614131 $i3624132 49) (+ $i3624132 1) $x3634133))))

; loop entry $main_inv303
(assert
  (forall (($a3614134 (Array Int Int)) ($i3624135 Int) ($x3634136 Int))
    (=> (and ($main_sum302 $a3614134 $i3624135 $x3634136))
        ($main_inv303 $a3614134 $i3624135 0))))

; loop term $main_sum303
(assert
  (forall (($a3614137 (Array Int Int)) ($i3624138 Int) ($x3634139 Int))
    (=> (and (not (< $x3634139 100000))
             ($main_inv303 $a3614137 $i3624138 $x3634139))
        ($main_sum303 $a3614137 $i3624138 $x3634139))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3614137 (Array Int Int)) ($x3634139 Int) ($i3624138 Int))
    (=> (and (< $x3634139 100000)
             ($main_inv303 $a3614137 $i3624138 $x3634139))
        ($__VERIFIER_assert_pre (ite (= (select $a3614137 $x3634139) 49) 1 0)))))

; forwards $main_inv303
(assert
  (forall (($a3614137 (Array Int Int)) ($i3624138 Int) ($x3634139 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3614137 $x3634139) 49) 1 0))
             (< $x3634139 100000)
             ($main_inv303 $a3614137 $i3624138 $x3634139))
        ($main_inv303 $a3614137 $i3624138 (+ $x3634139 1)))))

(check-sat)
