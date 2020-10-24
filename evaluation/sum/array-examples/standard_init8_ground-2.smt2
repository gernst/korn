(set-logic HORN)

(declare-fun $main_sum301 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv299 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum296 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv295 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum295 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if80 (Int Int) Bool)
(declare-fun $main_inv301 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv302 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv296 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum299 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv300 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum303 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum297 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum300 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv297 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv303 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum298 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum302 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv298 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5948 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5948))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if80 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5949 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if80 cond cond5949))
        (__VERIFIER_assert cond5949))))

; loop entry $main_inv295
(assert
  (forall (($a361 (Array Int Int)) ($i362 Int) ($x363 Int))
    (=> (and (= $i362 0))
        ($main_inv295 $a361 $i362 $x363))))

; loop term $main_sum295
(assert
  (forall (($a3615950 (Array Int Int)) ($i3625951 Int) ($x3635952 Int))
    (=> (and (not (< $i3625951 100000)))
        ($main_sum295 $a3615950 $i3625951 $x3635952 $a3615950 $i3625951 $x3635952))))

; forwards $main_inv295
(assert
  (forall (($a3615950 (Array Int Int)) ($i3625951 Int) ($x3635952 Int))
    (=> (and (< $i3625951 100000)
             ($main_inv295 $a3615950 $i3625951 $x3635952))
        ($main_inv295 (store $a3615950 $i3625951 42) (+ $i3625951 1) $x3635952))))

; backwards $main_sum295
(assert
  (forall (($x3635952 Int) ($i3625951 Int) ($x3635955 Int) ($a3615950 (Array Int Int)) ($a3615953 (Array Int Int)) ($i3625954 Int))
    (=> (and ($main_sum295 (store $a3615950 $i3625951 42) (+ $i3625951 1) $x3635952 $a3615953 $i3625954 $x3635955)
             (< $i3625951 100000))
        ($main_sum295 $a3615950 $i3625951 $x3635952 $a3615953 $i3625954 $x3635955))))

; loop entry $main_inv296
(assert
  (forall (($a361 (Array Int Int)) ($x363 Int) ($a3615956 (Array Int Int)) ($x3635958 Int) ($i3625957 Int) ($i362 Int))
    (=> (and ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv296 $a3615956 0 $x3635958))))

; loop term $main_sum296
(assert
  (forall (($a3615959 (Array Int Int)) ($i3625960 Int) ($x3635961 Int))
    (=> (and (not (< $i3625960 100000)))
        ($main_sum296 $a3615959 $i3625960 $x3635961 $a3615959 $i3625960 $x3635961))))

; forwards $main_inv296
(assert
  (forall (($a3615959 (Array Int Int)) ($i3625960 Int) ($x3635961 Int))
    (=> (and (< $i3625960 100000)
             ($main_inv296 $a3615959 $i3625960 $x3635961))
        ($main_inv296 (store $a3615959 $i3625960 43) (+ $i3625960 1) $x3635961))))

; backwards $main_sum296
(assert
  (forall (($i3625960 Int) ($x3635961 Int) ($x3635964 Int) ($a3615959 (Array Int Int)) ($a3615962 (Array Int Int)) ($i3625963 Int))
    (=> (and ($main_sum296 (store $a3615959 $i3625960 43) (+ $i3625960 1) $x3635961 $a3615962 $i3625963 $x3635964)
             (< $i3625960 100000))
        ($main_sum296 $a3615959 $i3625960 $x3635961 $a3615962 $i3625963 $x3635964))))

; loop entry $main_inv297
(assert
  (forall (($a361 (Array Int Int)) ($x363 Int) ($a3615956 (Array Int Int)) ($a3615965 (Array Int Int)) ($i3625966 Int) ($x3635958 Int) ($x3635967 Int) ($i3625957 Int) ($i362 Int))
    (=> (and ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv297 $a3615965 0 $x3635967))))

; loop term $main_sum297
(assert
  (forall (($a3615968 (Array Int Int)) ($i3625969 Int) ($x3635970 Int))
    (=> (and (not (< $i3625969 100000)))
        ($main_sum297 $a3615968 $i3625969 $x3635970 $a3615968 $i3625969 $x3635970))))

; forwards $main_inv297
(assert
  (forall (($a3615968 (Array Int Int)) ($i3625969 Int) ($x3635970 Int))
    (=> (and (< $i3625969 100000)
             ($main_inv297 $a3615968 $i3625969 $x3635970))
        ($main_inv297 (store $a3615968 $i3625969 44) (+ $i3625969 1) $x3635970))))

; backwards $main_sum297
(assert
  (forall (($a3615968 (Array Int Int)) ($x3635973 Int) ($i3625972 Int) ($i3625969 Int) ($x3635970 Int) ($a3615971 (Array Int Int)))
    (=> (and ($main_sum297 (store $a3615968 $i3625969 44) (+ $i3625969 1) $x3635970 $a3615971 $i3625972 $x3635973)
             (< $i3625969 100000))
        ($main_sum297 $a3615968 $i3625969 $x3635970 $a3615971 $i3625972 $x3635973))))

; loop entry $main_inv298
(assert
  (forall (($x363 Int) ($a3615956 (Array Int Int)) ($a3615965 (Array Int Int)) ($i3625966 Int) ($x3635958 Int) ($x3635967 Int) ($a3615974 (Array Int Int)) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($i3625957 Int) ($i3625975 Int))
    (=> (and ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv298 $a3615974 0 $x3635976))))

; loop term $main_sum298
(assert
  (forall (($a3615977 (Array Int Int)) ($i3625978 Int) ($x3635979 Int))
    (=> (and (not (< $i3625978 100000)))
        ($main_sum298 $a3615977 $i3625978 $x3635979 $a3615977 $i3625978 $x3635979))))

; forwards $main_inv298
(assert
  (forall (($a3615977 (Array Int Int)) ($i3625978 Int) ($x3635979 Int))
    (=> (and (< $i3625978 100000)
             ($main_inv298 $a3615977 $i3625978 $x3635979))
        ($main_inv298 (store $a3615977 $i3625978 45) (+ $i3625978 1) $x3635979))))

; backwards $main_sum298
(assert
  (forall (($x3635982 Int) ($x3635979 Int) ($a3615977 (Array Int Int)) ($i3625981 Int) ($a3615980 (Array Int Int)) ($i3625978 Int))
    (=> (and ($main_sum298 (store $a3615977 $i3625978 45) (+ $i3625978 1) $x3635979 $a3615980 $i3625981 $x3635982)
             (< $i3625978 100000))
        ($main_sum298 $a3615977 $i3625978 $x3635979 $a3615980 $i3625981 $x3635982))))

; loop entry $main_inv299
(assert
  (forall (($a3615983 (Array Int Int)) ($x363 Int) ($a3615956 (Array Int Int)) ($a3615965 (Array Int Int)) ($i3625984 Int) ($i3625966 Int) ($x3635958 Int) ($x3635967 Int) ($a3615974 (Array Int Int)) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($x3635985 Int) ($i3625957 Int) ($i3625975 Int))
    (=> (and ($main_sum298 $a3615974 0 $x3635976 $a3615983 $i3625984 $x3635985)
             ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv299 $a3615983 0 $x3635985))))

; loop term $main_sum299
(assert
  (forall (($a3615986 (Array Int Int)) ($i3625987 Int) ($x3635988 Int))
    (=> (and (not (< $i3625987 100000)))
        ($main_sum299 $a3615986 $i3625987 $x3635988 $a3615986 $i3625987 $x3635988))))

; forwards $main_inv299
(assert
  (forall (($a3615986 (Array Int Int)) ($i3625987 Int) ($x3635988 Int))
    (=> (and (< $i3625987 100000)
             ($main_inv299 $a3615986 $i3625987 $x3635988))
        ($main_inv299 (store $a3615986 $i3625987 46) (+ $i3625987 1) $x3635988))))

; backwards $main_sum299
(assert
  (forall (($i3625987 Int) ($x3635991 Int) ($i3625990 Int) ($a3615989 (Array Int Int)) ($a3615986 (Array Int Int)) ($x3635988 Int))
    (=> (and ($main_sum299 (store $a3615986 $i3625987 46) (+ $i3625987 1) $x3635988 $a3615989 $i3625990 $x3635991)
             (< $i3625987 100000))
        ($main_sum299 $a3615986 $i3625987 $x3635988 $a3615989 $i3625990 $x3635991))))

; loop entry $main_inv300
(assert
  (forall (($a3615983 (Array Int Int)) ($x363 Int) ($a3615965 (Array Int Int)) ($i3625984 Int) ($i3625966 Int) ($x3635958 Int) ($x3635967 Int) ($a3615974 (Array Int Int)) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($a3615956 (Array Int Int)) ($a3615992 (Array Int Int)) ($x3635985 Int) ($i3625957 Int) ($i3625975 Int) ($i3625993 Int) ($x3635994 Int))
    (=> (and ($main_sum299 $a3615983 0 $x3635985 $a3615992 $i3625993 $x3635994)
             ($main_sum298 $a3615974 0 $x3635976 $a3615983 $i3625984 $x3635985)
             ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv300 $a3615992 0 $x3635994))))

; loop term $main_sum300
(assert
  (forall (($a3615995 (Array Int Int)) ($i3625996 Int) ($x3635997 Int))
    (=> (and (not (< $i3625996 100000)))
        ($main_sum300 $a3615995 $i3625996 $x3635997 $a3615995 $i3625996 $x3635997))))

; forwards $main_inv300
(assert
  (forall (($a3615995 (Array Int Int)) ($i3625996 Int) ($x3635997 Int))
    (=> (and (< $i3625996 100000)
             ($main_inv300 $a3615995 $i3625996 $x3635997))
        ($main_inv300 (store $a3615995 $i3625996 47) (+ $i3625996 1) $x3635997))))

; backwards $main_sum300
(assert
  (forall (($i3625999 Int) ($a3615998 (Array Int Int)) ($a3615995 (Array Int Int)) ($x3635997 Int) ($x3636000 Int) ($i3625996 Int))
    (=> (and ($main_sum300 (store $a3615995 $i3625996 47) (+ $i3625996 1) $x3635997 $a3615998 $i3625999 $x3636000)
             (< $i3625996 100000))
        ($main_sum300 $a3615995 $i3625996 $x3635997 $a3615998 $i3625999 $x3636000))))

; loop entry $main_inv301
(assert
  (forall (($a3615983 (Array Int Int)) ($x363 Int) ($a3615965 (Array Int Int)) ($a3616001 (Array Int Int)) ($i3625984 Int) ($x3635958 Int) ($x3635967 Int) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($a3615956 (Array Int Int)) ($a3615992 (Array Int Int)) ($i3625966 Int) ($i3626002 Int) ($x3636003 Int) ($a3615974 (Array Int Int)) ($x3635985 Int) ($i3625957 Int) ($i3625975 Int) ($i3625993 Int) ($x3635994 Int))
    (=> (and ($main_sum300 $a3615992 0 $x3635994 $a3616001 $i3626002 $x3636003)
             ($main_sum299 $a3615983 0 $x3635985 $a3615992 $i3625993 $x3635994)
             ($main_sum298 $a3615974 0 $x3635976 $a3615983 $i3625984 $x3635985)
             ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv301 $a3616001 0 $x3636003))))

; loop term $main_sum301
(assert
  (forall (($a3616004 (Array Int Int)) ($i3626005 Int) ($x3636006 Int))
    (=> (and (not (< $i3626005 100000)))
        ($main_sum301 $a3616004 $i3626005 $x3636006 $a3616004 $i3626005 $x3636006))))

; forwards $main_inv301
(assert
  (forall (($a3616004 (Array Int Int)) ($i3626005 Int) ($x3636006 Int))
    (=> (and (< $i3626005 100000)
             ($main_inv301 $a3616004 $i3626005 $x3636006))
        ($main_inv301 (store $a3616004 $i3626005 48) (+ $i3626005 1) $x3636006))))

; backwards $main_sum301
(assert
  (forall (($a3616004 (Array Int Int)) ($i3626005 Int) ($a3616007 (Array Int Int)) ($x3636006 Int) ($x3636009 Int) ($i3626008 Int))
    (=> (and ($main_sum301 (store $a3616004 $i3626005 48) (+ $i3626005 1) $x3636006 $a3616007 $i3626008 $x3636009)
             (< $i3626005 100000))
        ($main_sum301 $a3616004 $i3626005 $x3636006 $a3616007 $i3626008 $x3636009))))

; loop entry $main_inv302
(assert
  (forall (($a3615983 (Array Int Int)) ($x363 Int) ($a3615965 (Array Int Int)) ($a3616001 (Array Int Int)) ($x3635958 Int) ($x3635967 Int) ($x3636012 Int) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($a3615956 (Array Int Int)) ($a3615992 (Array Int Int)) ($i3626011 Int) ($i3625984 Int) ($i3625966 Int) ($i3626002 Int) ($x3636003 Int) ($a3615974 (Array Int Int)) ($x3635985 Int) ($i3625957 Int) ($i3625975 Int) ($a3616010 (Array Int Int)) ($i3625993 Int) ($x3635994 Int))
    (=> (and ($main_sum301 $a3616001 0 $x3636003 $a3616010 $i3626011 $x3636012)
             ($main_sum300 $a3615992 0 $x3635994 $a3616001 $i3626002 $x3636003)
             ($main_sum299 $a3615983 0 $x3635985 $a3615992 $i3625993 $x3635994)
             ($main_sum298 $a3615974 0 $x3635976 $a3615983 $i3625984 $x3635985)
             ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv302 $a3616010 0 $x3636012))))

; loop term $main_sum302
(assert
  (forall (($a3616013 (Array Int Int)) ($i3626014 Int) ($x3636015 Int))
    (=> (and (not (< $i3626014 100000)))
        ($main_sum302 $a3616013 $i3626014 $x3636015 $a3616013 $i3626014 $x3636015))))

; forwards $main_inv302
(assert
  (forall (($a3616013 (Array Int Int)) ($i3626014 Int) ($x3636015 Int))
    (=> (and (< $i3626014 100000)
             ($main_inv302 $a3616013 $i3626014 $x3636015))
        ($main_inv302 (store $a3616013 $i3626014 49) (+ $i3626014 1) $x3636015))))

; backwards $main_sum302
(assert
  (forall (($x3636018 Int) ($a3616013 (Array Int Int)) ($i3626014 Int) ($x3636015 Int) ($a3616016 (Array Int Int)) ($i3626017 Int))
    (=> (and ($main_sum302 (store $a3616013 $i3626014 49) (+ $i3626014 1) $x3636015 $a3616016 $i3626017 $x3636018)
             (< $i3626014 100000))
        ($main_sum302 $a3616013 $i3626014 $x3636015 $a3616016 $i3626017 $x3636018))))

; loop entry $main_inv303
(assert
  (forall (($a3615983 (Array Int Int)) ($x363 Int) ($x3636021 Int) ($a3615965 (Array Int Int)) ($a3616001 (Array Int Int)) ($x3635958 Int) ($x3635967 Int) ($a3616019 (Array Int Int)) ($i362 Int) ($x3635976 Int) ($a361 (Array Int Int)) ($a3615956 (Array Int Int)) ($a3615992 (Array Int Int)) ($i3626011 Int) ($i3625984 Int) ($i3625966 Int) ($i3626002 Int) ($x3636003 Int) ($a3615974 (Array Int Int)) ($i3626020 Int) ($x3636012 Int) ($x3635985 Int) ($i3625957 Int) ($i3625975 Int) ($a3616010 (Array Int Int)) ($i3625993 Int) ($x3635994 Int))
    (=> (and ($main_sum302 $a3616010 0 $x3636012 $a3616019 $i3626020 $x3636021)
             ($main_sum301 $a3616001 0 $x3636003 $a3616010 $i3626011 $x3636012)
             ($main_sum300 $a3615992 0 $x3635994 $a3616001 $i3626002 $x3636003)
             ($main_sum299 $a3615983 0 $x3635985 $a3615992 $i3625993 $x3635994)
             ($main_sum298 $a3615974 0 $x3635976 $a3615983 $i3625984 $x3635985)
             ($main_sum297 $a3615965 0 $x3635967 $a3615974 $i3625975 $x3635976)
             ($main_sum296 $a3615956 0 $x3635958 $a3615965 $i3625966 $x3635967)
             ($main_sum295 $a361 $i362 $x363 $a3615956 $i3625957 $x3635958)
             (= $i362 0))
        ($main_inv303 $a3616019 $i3626020 0))))

; loop term $main_sum303
(assert
  (forall (($a3616022 (Array Int Int)) ($i3626023 Int) ($x3636024 Int))
    (=> (and (not (< $x3636024 100000)))
        ($main_sum303 $a3616022 $i3626023 $x3636024 $a3616022 $i3626023 $x3636024))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3616022 (Array Int Int)) ($x3636024 Int) ($i3626023 Int))
    (=> (and (< $x3636024 100000)
             ($main_inv303 $a3616022 $i3626023 $x3636024))
        ($__VERIFIER_assert_pre (ite (= (select $a3616022 $x3636024) 49) 1 0)))))

; forwards $main_inv303
(assert
  (forall (($a3616022 (Array Int Int)) ($i3626023 Int) ($x3636024 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3616022 $x3636024) 49) 1 0))
             (< $x3636024 100000)
             ($main_inv303 $a3616022 $i3626023 $x3636024))
        ($main_inv303 $a3616022 $i3626023 (+ $x3636024 1)))))

; backwards $main_sum303
(assert
  (forall (($i3626026 Int) ($x3636024 Int) ($x3636027 Int) ($a3616022 (Array Int Int)) ($a3616025 (Array Int Int)) ($i3626023 Int))
    (=> (and ($main_sum303 $a3616022 $i3626023 (+ $x3636024 1) $a3616025 $i3626026 $x3636027)
             (__VERIFIER_assert (ite (= (select $a3616022 $x3636024) 49) 1 0))
             (< $x3636024 100000))
        ($main_sum303 $a3616022 $i3626023 $x3636024 $a3616025 $i3626026 $x3636027))))

(check-sat)
