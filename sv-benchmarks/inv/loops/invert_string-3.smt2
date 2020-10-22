(set-logic HORN)

(declare-fun $main_sum252 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv254 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum254 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum253 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if681 (Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $main_inv252 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv253 (Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14975 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14975))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if681 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14976 Int))
    (=> (and ($__VERIFIER_assert_if681 cond14976))
        (__VERIFIER_assert cond14976))))

; loop entry $main_inv252
(assert
  (forall (($max709 Int) ($str1710 (Array Int Int)) ($str2711 (Array Int Int)) ($j713 Int))
    (=> (and (= $max709 5))
        ($main_inv252 $max709 $str1710 $str2711 0 $j713))))

; loop term $main_sum252
(assert
  (forall (($str171014978 (Array Int Int)) ($j71314981 Int) ($str271114979 (Array Int Int)) ($max70914977 Int) ($i71214980 Int))
    (=> (and (not (< $i71214980 $max70914977))
             ($main_inv252 $max70914977 $str171014978 $str271114979 $i71214980 $j71314981))
        ($main_sum252 $max70914977 $str171014978 $str271114979 $i71214980 $j71314981))))

; forwards $main_inv252
(assert
  (forall (($char14982 Int) ($str171014978 (Array Int Int)) ($j71314981 Int) ($str271114979 (Array Int Int)) ($max70914977 Int) ($i71214980 Int))
    (=> (and (<= (- 128) $char14982)
             (<= $char14982 127)
             (< $i71214980 $max70914977)
             ($main_inv252 $max70914977 $str171014978 $str271114979 $i71214980 $j71314981))
        ($main_inv252 $max70914977 (store $str171014978 $i71214980 $char14982) $str271114979 (+ $i71214980 1) $j71314981))))

; loop entry $main_inv253
(assert
  (forall (($j71314987 Int) ($max70914983 Int) ($i71214986 Int) ($str171014984 (Array Int Int)) ($str271114985 (Array Int Int)))
    (=> (and ($main_sum252 $max70914983 $str171014984 $str271114985 $i71214986 $j71314987))
        ($main_inv253 $max70914983 (store $str171014984 (- $max70914983 1) 48) $str271114985 (- $max70914983 1) 0))))

; loop term $main_sum253
(assert
  (forall (($i71214991 Int) ($str171014989 (Array Int Int)) ($str271114990 (Array Int Int)) ($max70914988 Int) ($j71314992 Int))
    (=> (and (not (>= $i71214991 0))
             ($main_inv253 $max70914988 $str171014989 $str271114990 $i71214991 $j71314992))
        ($main_sum253 $max70914988 $str171014989 $str271114990 $i71214991 $j71314992))))

; forwards $main_inv253
(assert
  (forall (($i71214991 Int) ($str171014989 (Array Int Int)) ($str271114990 (Array Int Int)) ($max70914988 Int) ($j71314992 Int))
    (=> (and (>= $i71214991 0)
             ($main_inv253 $max70914988 $str171014989 $str271114990 $i71214991 $j71314992))
        ($main_inv253 $max70914988 $str171014989 (store $str271114990 $j71314992 (select $str171014989 $i71214991)) (- $i71214991 1) (+ $j71314992 1)))))

; loop entry $main_inv254
(assert
  (forall (($str271114995 (Array Int Int)) ($i71214996 Int) ($str171014994 (Array Int Int)) ($j71314997 Int) ($max70914993 Int))
    (=> (and ($main_sum253 $max70914993 $str171014994 $str271114995 $i71214996 $j71314997))
        ($main_inv254 $max70914993 $str171014994 $str271114995 0 (- $max70914993 1)))))

; loop term $main_sum254
(assert
  (forall (($j71315002 Int) ($str171014999 (Array Int Int)) ($str271115000 (Array Int Int)) ($max70914998 Int) ($i71215001 Int))
    (=> (and (not (< $i71215001 $max70914998))
             ($main_inv254 $max70914998 $str171014999 $str271115000 $i71215001 $j71315002))
        ($main_sum254 $max70914998 $str171014999 $str271115000 $i71215001 $j71315002))))

; __VERIFIER_assert precondition
(assert
  (forall (($j71315002 Int) ($str171014999 (Array Int Int)) ($str271115000 (Array Int Int)) ($max70914998 Int) ($i71215001 Int))
    (=> (and (< $i71215001 $max70914998)
             ($main_inv254 $max70914998 $str171014999 $str271115000 $i71215001 $j71315002))
        ($__VERIFIER_assert_pre (ite (= (select $str171014999 $i71215001) (select $str271115000 $j71315002)) 1 0)))))

; forwards $main_inv254
(assert
  (forall (($j71315002 Int) ($str171014999 (Array Int Int)) ($str271115000 (Array Int Int)) ($max70914998 Int) ($i71215001 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $str171014999 $i71215001) (select $str271115000 $j71315002)) 1 0))
             (< $i71215001 $max70914998)
             ($main_inv254 $max70914998 $str171014999 $str271115000 $i71215001 $j71315002))
        ($main_inv254 $max70914998 $str171014999 $str271115000 (+ $i71215001 1) (- $j71315002 1)))))

(check-sat)
