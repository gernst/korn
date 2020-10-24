(set-logic HORN)

(declare-fun $main_inv361 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if111 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum361 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv362 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum363 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv363 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if108 (Int Int) Bool)
(declare-fun $main_sum362 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if109 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if110 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6948 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6948))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if108 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6949 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if108 cond cond6949))
        (__VERIFIER_assert cond6949))))

; loop entry $main_inv361
(assert
  (forall (($a429 (Array Int Int)) ($b430 (Array Int Int)) ($f432 Int) ($i431 Int))
    (=> (and (= $i431 0))
        ($main_inv361 $a429 $b430 0 $f432))))

; loop term $main_sum361
(assert
  (forall (($a4296950 (Array Int Int)) ($b4306951 (Array Int Int)) ($i4316952 Int) ($f4326953 Int))
    (=> (and (not (< $i4316952 100000)))
        ($main_sum361 $a4296950 $b4306951 $i4316952 $f4326953 $a4296950 $b4306951 $i4316952 $f4326953))))

; forwards $main_inv361
(assert
  (forall (($a4296950 (Array Int Int)) ($f4326953 Int) ($b4306951 (Array Int Int)) ($int6954 Int) ($i4316952 Int))
    (=> (and (<= (- 2147483648) $int6954)
             (<= $int6954 2147483647)
             (< $i4316952 100000)
             ($main_inv361 $a4296950 $b4306951 $i4316952 $f4326953))
        ($main_inv361 (store $a4296950 $i4316952 $int6954) $b4306951 (+ $i4316952 1) $f4326953))))

; backwards $main_sum361
(assert
  (forall (($b4306956 (Array Int Int)) ($i4316957 Int) ($a4296955 (Array Int Int)) ($a4296950 (Array Int Int)) ($b4306951 (Array Int Int)) ($f4326958 Int) ($f4326953 Int) ($int6954 Int) ($i4316952 Int))
    (=> (and ($main_sum361 (store $a4296950 $i4316952 $int6954) $b4306951 (+ $i4316952 1) $f4326953 $a4296955 $b4306956 $i4316957 $f4326958)
             (<= (- 2147483648) $int6954)
             (<= $int6954 2147483647)
             (< $i4316952 100000))
        ($main_sum361 $a4296950 $b4306951 $i4316952 $f4326953 $a4296955 $b4306956 $i4316957 $f4326958))))

; loop entry $main_inv362
(assert
  (forall (($a429 (Array Int Int)) ($f4326962 Int) ($i4316961 Int) ($a4296959 (Array Int Int)) ($f432 Int) ($b4306960 (Array Int Int)) ($b430 (Array Int Int)) ($i431 Int))
    (=> (and ($main_sum361 $a429 $b430 0 $f432 $a4296959 $b4306960 $i4316961 $f4326962)
             (= $i431 0))
        ($main_inv362 $a4296959 $b4306960 0 $f4326962))))

; loop term $main_sum362
(assert
  (forall (($a4296963 (Array Int Int)) ($b4306964 (Array Int Int)) ($i4316965 Int) ($f4326966 Int))
    (=> (and (not (< $i4316965 100000)))
        ($main_sum362 $a4296963 $b4306964 $i4316965 $f4326966 $a4296963 $b4306964 $i4316965 $f4326966))))

; if then
(assert
  (forall (($a4296963 (Array Int Int)) ($b4306964 (Array Int Int)) ($i4316965 Int) ($f4326966 Int))
    (=> (and (>= (select $a4296963 $i4316965) 0)
             (< $i4316965 100000)
             ($main_inv362 $a4296963 $b4306964 $i4316965 $f4326966))
        ($main_if109 $a4296963 $b4306964 $i4316965 $f4326966 $a4296963 (store $b4306964 $i4316965 1) $i4316965 $f4326966))))

; if else
(assert
  (forall (($a4296963 (Array Int Int)) ($b4306964 (Array Int Int)) ($i4316965 Int) ($f4326966 Int))
    (=> (and (not (>= (select $a4296963 $i4316965) 0))
             (< $i4316965 100000)
             ($main_inv362 $a4296963 $b4306964 $i4316965 $f4326966))
        ($main_if109 $a4296963 $b4306964 $i4316965 $f4326966 $a4296963 (store $b4306964 $i4316965 0) $i4316965 $f4326966))))

; forwards $main_inv362
(assert
  (forall (($a4296963 (Array Int Int)) ($b4306968 (Array Int Int)) ($a4296967 (Array Int Int)) ($i4316965 Int) ($f4326970 Int) ($i4316969 Int) ($f4326966 Int) ($b4306964 (Array Int Int)))
    (=> (and ($main_if109 $a4296963 $b4306964 $i4316965 $f4326966 $a4296967 $b4306968 $i4316969 $f4326970))
        ($main_inv362 $a4296967 $b4306968 (+ $i4316969 1) $f4326970))))

; backwards $main_sum362
(assert
  (forall (($a4296963 (Array Int Int)) ($b4306968 (Array Int Int)) ($a4296967 (Array Int Int)) ($i4316965 Int) ($a4296971 (Array Int Int)) ($f4326970 Int) ($i4316969 Int) ($f4326974 Int) ($i4316973 Int) ($b4306972 (Array Int Int)) ($f4326966 Int) ($b4306964 (Array Int Int)))
    (=> (and ($main_sum362 $a4296967 $b4306968 (+ $i4316969 1) $f4326970 $a4296971 $b4306972 $i4316973 $f4326974)
             ($main_if109 $a4296963 $b4306964 $i4316965 $f4326966 $a4296967 $b4306968 $i4316969 $f4326970))
        ($main_sum362 $a4296963 $b4306964 $i4316965 $f4326966 $a4296971 $b4306972 $i4316973 $f4326974))))

; loop entry $main_inv363
(assert
  (forall (($a429 (Array Int Int)) ($f4326962 Int) ($i4316977 Int) ($i4316961 Int) ($f4326978 Int) ($a4296975 (Array Int Int)) ($f432 Int) ($b4306960 (Array Int Int)) ($b4306976 (Array Int Int)) ($a4296959 (Array Int Int)) ($b430 (Array Int Int)) ($i431 Int))
    (=> (and (= $f4326978 1)
             ($main_sum362 $a4296959 $b4306960 0 $f4326962 $a4296975 $b4306976 $i4316977 $f4326978)
             ($main_sum361 $a429 $b430 0 $f432 $a4296959 $b4306960 $i4316961 $f4326962)
             (= $i431 0))
        ($main_inv363 $a4296975 $b4306976 0 $f4326978))))

; loop term $main_sum363
(assert
  (forall (($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)) ($i4316981 Int) ($f4326982 Int))
    (=> (and (not (< $i4316981 100000)))
        ($main_sum363 $a4296979 $b4306980 $i4316981 $f4326982 $a4296979 $b4306980 $i4316981 $f4326982))))

; if then
(assert
  (forall (($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)) ($i4316981 Int) ($f4326982 Int))
    (=> (and (>= (select $a4296979 $i4316981) 0)
             (= (select $b4306980 $i4316981) 0)
             (< $i4316981 100000)
             ($main_inv363 $a4296979 $b4306980 $i4316981 $f4326982))
        ($main_if110 $a4296979 $b4306980 $i4316981 $f4326982 $a4296979 $b4306980 $i4316981 0))))

; if else
(assert
  (forall (($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)) ($i4316981 Int) ($f4326982 Int))
    (=> (and (not (and (>= (select $a4296979 $i4316981) 0) (= (select $b4306980 $i4316981) 0)))
             (< $i4316981 100000)
             ($main_inv363 $a4296979 $b4306980 $i4316981 $f4326982))
        ($main_if110 $a4296979 $b4306980 $i4316981 $f4326982 $a4296979 $b4306980 $i4316981 $f4326982))))

; if then
(assert
  (forall (($i4316981 Int) ($a4296983 (Array Int Int)) ($f4326982 Int) ($b4306984 (Array Int Int)) ($i4316985 Int) ($f4326986 Int) ($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)))
    (=> (and (< (select $a4296983 $i4316985) 0)
             (not (= (select $b4306984 $i4316985) 0))
             ($main_if110 $a4296979 $b4306980 $i4316981 $f4326982 $a4296983 $b4306984 $i4316985 $f4326986))
        ($main_if111 $a4296979 $b4306980 $i4316981 $f4326982 $a4296983 $b4306984 $i4316985 0))))

; if else
(assert
  (forall (($i4316981 Int) ($a4296983 (Array Int Int)) ($f4326982 Int) ($b4306984 (Array Int Int)) ($i4316985 Int) ($f4326986 Int) ($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)))
    (=> (and (not (and (< (select $a4296983 $i4316985) 0) (not (= (select $b4306984 $i4316985) 0))))
             ($main_if110 $a4296979 $b4306980 $i4316981 $f4326982 $a4296983 $b4306984 $i4316985 $f4326986))
        ($main_if111 $a4296979 $b4306980 $i4316981 $f4326982 $a4296983 $b4306984 $i4316985 $f4326986))))

; forwards $main_inv363
(assert
  (forall (($i4316981 Int) ($f4326990 Int) ($i4316989 Int) ($f4326982 Int) ($b4306988 (Array Int Int)) ($a4296987 (Array Int Int)) ($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)))
    (=> (and ($main_if111 $a4296979 $b4306980 $i4316981 $f4326982 $a4296987 $b4306988 $i4316989 $f4326990))
        ($main_inv363 $a4296987 $b4306988 (+ $i4316989 1) $f4326990))))

; backwards $main_sum363
(assert
  (forall (($f4326990 Int) ($i4316989 Int) ($a4296991 (Array Int Int)) ($f4326994 Int) ($i4316981 Int) ($i4316993 Int) ($b4306988 (Array Int Int)) ($a4296987 (Array Int Int)) ($f4326982 Int) ($b4306992 (Array Int Int)) ($a4296979 (Array Int Int)) ($b4306980 (Array Int Int)))
    (=> (and ($main_sum363 $a4296987 $b4306988 (+ $i4316989 1) $f4326990 $a4296991 $b4306992 $i4316993 $f4326994)
             ($main_if111 $a4296979 $b4306980 $i4316981 $f4326982 $a4296987 $b4306988 $i4316989 $f4326990))
        ($main_sum363 $a4296979 $b4306980 $i4316981 $f4326982 $a4296991 $b4306992 $i4316993 $f4326994))))

; __VERIFIER_assert precondition
(assert
  (forall (($a429 (Array Int Int)) ($f4326962 Int) ($i4316977 Int) ($i4316961 Int) ($f4326978 Int) ($a4296975 (Array Int Int)) ($i4316997 Int) ($f432 Int) ($b4306960 (Array Int Int)) ($f4326998 Int) ($b4306976 (Array Int Int)) ($a4296959 (Array Int Int)) ($b430 (Array Int Int)) ($i431 Int) ($b4306996 (Array Int Int)) ($a4296995 (Array Int Int)))
    (=> (and ($main_sum363 $a4296975 $b4306976 0 $f4326978 $a4296995 $b4306996 $i4316997 $f4326998)
             (= $f4326978 1)
             ($main_sum362 $a4296959 $b4306960 0 $f4326962 $a4296975 $b4306976 $i4316977 $f4326978)
             ($main_sum361 $a429 $b430 0 $f432 $a4296959 $b4306960 $i4316961 $f4326962)
             (= $i431 0))
        ($__VERIFIER_assert_pre $f4326998))))

(check-sat)
