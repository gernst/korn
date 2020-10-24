(set-logic HORN)

(declare-fun $main_sum202 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum200 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum203 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv203 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if61 (Int Int) Bool)
(declare-fun $main_inv202 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv201 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum201 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv200 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond4983 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond4983))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if61 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4984 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if61 cond cond4984))
        (__VERIFIER_assert cond4984))))

; loop entry $main_inv200
(assert
  (forall (($a298 (Array Int Int)) ($b299 (Array Int Int)) ($i300 Int) ($x301 Int))
    (=> (and (= $i300 0))
        ($main_inv200 $a298 $b299 $i300 $x301))))

; loop term $main_sum200
(assert
  (forall (($a2984985 (Array Int Int)) ($b2994986 (Array Int Int)) ($i3004987 Int) ($x3014988 Int))
    (=> (and (not (< $i3004987 100000)))
        ($main_sum200 $a2984985 $b2994986 $i3004987 $x3014988 $a2984985 $b2994986 $i3004987 $x3014988))))

; forwards $main_inv200
(assert
  (forall (($a2984985 (Array Int Int)) ($i3004987 Int) ($b2994986 (Array Int Int)) ($x3014988 Int))
    (=> (and (< $i3004987 100000)
             ($main_inv200 $a2984985 $b2994986 $i3004987 $x3014988))
        ($main_inv200 (store $a2984985 $i3004987 42) $b2994986 (+ $i3004987 1) $x3014988))))

; backwards $main_sum200
(assert
  (forall (($x3014992 Int) ($i3004991 Int) ($a2984985 (Array Int Int)) ($b2994990 (Array Int Int)) ($a2984989 (Array Int Int)) ($i3004987 Int) ($x3014988 Int) ($b2994986 (Array Int Int)))
    (=> (and ($main_sum200 (store $a2984985 $i3004987 42) $b2994986 (+ $i3004987 1) $x3014988 $a2984989 $b2994990 $i3004991 $x3014992)
             (< $i3004987 100000))
        ($main_sum200 $a2984985 $b2994986 $i3004987 $x3014988 $a2984989 $b2994990 $i3004991 $x3014992))))

; loop entry $main_inv201
(assert
  (forall (($b2994994 (Array Int Int)) ($i3004995 Int) ($x301 Int) ($a298 (Array Int Int)) ($a2984993 (Array Int Int)) ($i300 Int) ($b299 (Array Int Int)) ($x3014996 Int))
    (=> (and ($main_sum200 $a298 $b299 $i300 $x301 $a2984993 $b2994994 $i3004995 $x3014996)
             (= $i300 0))
        ($main_inv201 $a2984993 $b2994994 0 $x3014996))))

; loop term $main_sum201
(assert
  (forall (($a2984997 (Array Int Int)) ($b2994998 (Array Int Int)) ($i3004999 Int) ($x3015000 Int))
    (=> (and (not (< $i3004999 100000)))
        ($main_sum201 $a2984997 $b2994998 $i3004999 $x3015000 $a2984997 $b2994998 $i3004999 $x3015000))))

; forwards $main_inv201
(assert
  (forall (($a2984997 (Array Int Int)) ($b2994998 (Array Int Int)) ($i3004999 Int) ($x3015000 Int))
    (=> (and (< $i3004999 100000)
             ($main_inv201 $a2984997 $b2994998 $i3004999 $x3015000))
        ($main_inv201 $a2984997 (store $b2994998 $i3004999 (select $a2984997 $i3004999)) (+ $i3004999 1) $x3015000))))

; backwards $main_sum201
(assert
  (forall (($x3015004 Int) ($i3004999 Int) ($x3015000 Int) ($b2994998 (Array Int Int)) ($a2985001 (Array Int Int)) ($a2984997 (Array Int Int)) ($i3005003 Int) ($b2995002 (Array Int Int)))
    (=> (and ($main_sum201 $a2984997 (store $b2994998 $i3004999 (select $a2984997 $i3004999)) (+ $i3004999 1) $x3015000 $a2985001 $b2995002 $i3005003 $x3015004)
             (< $i3004999 100000))
        ($main_sum201 $a2984997 $b2994998 $i3004999 $x3015000 $a2985001 $b2995002 $i3005003 $x3015004))))

; loop entry $main_inv202
(assert
  (forall (($i3005007 Int) ($b2994994 (Array Int Int)) ($a2985005 (Array Int Int)) ($i3004995 Int) ($a298 (Array Int Int)) ($i300 Int) ($x301 Int) ($x3015008 Int) ($b2995006 (Array Int Int)) ($a2984993 (Array Int Int)) ($b299 (Array Int Int)) ($x3014996 Int))
    (=> (and ($main_sum201 $a2984993 $b2994994 0 $x3014996 $a2985005 $b2995006 $i3005007 $x3015008)
             ($main_sum200 $a298 $b299 $i300 $x301 $a2984993 $b2994994 $i3004995 $x3014996)
             (= $i300 0))
        ($main_inv202 $a2985005 $b2995006 0 $x3015008))))

; loop term $main_sum202
(assert
  (forall (($a2985009 (Array Int Int)) ($b2995010 (Array Int Int)) ($i3005011 Int) ($x3015012 Int))
    (=> (and (not (< $i3005011 100000)))
        ($main_sum202 $a2985009 $b2995010 $i3005011 $x3015012 $a2985009 $b2995010 $i3005011 $x3015012))))

; forwards $main_inv202
(assert
  (forall (($a2985009 (Array Int Int)) ($b2995010 (Array Int Int)) ($i3005011 Int) ($x3015012 Int))
    (=> (and (< $i3005011 100000)
             ($main_inv202 $a2985009 $b2995010 $i3005011 $x3015012))
        ($main_inv202 $a2985009 (store $b2995010 $i3005011 (+ (select $b2995010 $i3005011) $i3005011)) (+ $i3005011 1) $x3015012))))

; backwards $main_sum202
(assert
  (forall (($a2985013 (Array Int Int)) ($x3015012 Int) ($x3015016 Int) ($b2995010 (Array Int Int)) ($i3005011 Int) ($a2985009 (Array Int Int)) ($b2995014 (Array Int Int)) ($i3005015 Int))
    (=> (and ($main_sum202 $a2985009 (store $b2995010 $i3005011 (+ (select $b2995010 $i3005011) $i3005011)) (+ $i3005011 1) $x3015012 $a2985013 $b2995014 $i3005015 $x3015016)
             (< $i3005011 100000))
        ($main_sum202 $a2985009 $b2995010 $i3005011 $x3015012 $a2985013 $b2995014 $i3005015 $x3015016))))

; loop entry $main_inv203
(assert
  (forall (($i3005007 Int) ($b2994994 (Array Int Int)) ($a2985005 (Array Int Int)) ($i3004995 Int) ($b2995018 (Array Int Int)) ($x3015020 Int) ($i3005019 Int) ($a298 (Array Int Int)) ($a2985017 (Array Int Int)) ($i300 Int) ($x301 Int) ($x3015008 Int) ($b2995006 (Array Int Int)) ($a2984993 (Array Int Int)) ($b299 (Array Int Int)) ($x3014996 Int))
    (=> (and ($main_sum202 $a2985005 $b2995006 0 $x3015008 $a2985017 $b2995018 $i3005019 $x3015020)
             ($main_sum201 $a2984993 $b2994994 0 $x3014996 $a2985005 $b2995006 $i3005007 $x3015008)
             ($main_sum200 $a298 $b299 $i300 $x301 $a2984993 $b2994994 $i3004995 $x3014996)
             (= $i300 0))
        ($main_inv203 $a2985017 $b2995018 $i3005019 0))))

; loop term $main_sum203
(assert
  (forall (($a2985021 (Array Int Int)) ($b2995022 (Array Int Int)) ($i3005023 Int) ($x3015024 Int))
    (=> (and (not (< $x3015024 100000)))
        ($main_sum203 $a2985021 $b2995022 $i3005023 $x3015024 $a2985021 $b2995022 $i3005023 $x3015024))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2995022 (Array Int Int)) ($x3015024 Int) ($a2985021 (Array Int Int)) ($i3005023 Int))
    (=> (and (< $x3015024 100000)
             ($main_inv203 $a2985021 $b2995022 $i3005023 $x3015024))
        ($__VERIFIER_assert_pre (ite (= (select $b2995022 $x3015024) (+ 42 $x3015024)) 1 0)))))

; forwards $main_inv203
(assert
  (forall (($a2985021 (Array Int Int)) ($b2995022 (Array Int Int)) ($i3005023 Int) ($x3015024 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2995022 $x3015024) (+ 42 $x3015024)) 1 0))
             (< $x3015024 100000)
             ($main_inv203 $a2985021 $b2995022 $i3005023 $x3015024))
        ($main_inv203 $a2985021 $b2995022 $i3005023 (+ $x3015024 1)))))

; backwards $main_sum203
(assert
  (forall (($x3015028 Int) ($i3005027 Int) ($a2985025 (Array Int Int)) ($b2995022 (Array Int Int)) ($b2995026 (Array Int Int)) ($x3015024 Int) ($i3005023 Int) ($a2985021 (Array Int Int)))
    (=> (and ($main_sum203 $a2985021 $b2995022 $i3005023 (+ $x3015024 1) $a2985025 $b2995026 $i3005027 $x3015028)
             (__VERIFIER_assert (ite (= (select $b2995022 $x3015024) (+ 42 $x3015024)) 1 0))
             (< $x3015024 100000))
        ($main_sum203 $a2985021 $b2995022 $i3005023 $x3015024 $a2985025 $b2995026 $i3005027 $x3015028))))

(check-sat)
