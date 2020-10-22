(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum89 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv91 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if43 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv90 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv89 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum91 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum90 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1935 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1935))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if43 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1936 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if43 cond cond1936))
        (__VERIFIER_assert cond1936))))

; loop entry $main_inv89
(assert
  (forall (($a1154 (Array Int Int)) ($a2155 (Array Int Int)) ($i157 Int) ($x158 Int))
        ($main_inv89 $a1154 $a2155 0 $i157 $x158)))

; loop term $main_sum89
(assert
  (forall (($a11541937 (Array Int Int)) ($a21551938 (Array Int Int)) ($i1571940 Int) ($a1561939 Int) ($x1581941 Int))
    (=> (and (not (< $a1561939 100000)))
        ($main_sum89 $a11541937 $a21551938 $a1561939 $i1571940 $x1581941 $a11541937 $a21551938 $a1561939 $i1571940 $x1581941))))

; forwards $main_inv89
(assert
  (forall (($a11541937 (Array Int Int)) ($a21551938 (Array Int Int)) ($int1942 Int) ($i1571940 Int) ($a1561939 Int) ($x1581941 Int))
    (=> (and (<= (- 2147483648) $int1942)
             (<= $int1942 2147483647)
             (< $a1561939 100000)
             ($main_inv89 $a11541937 $a21551938 $a1561939 $i1571940 $x1581941))
        ($main_inv89 (store $a11541937 $a1561939 $int1942) $a21551938 (+ $a1561939 1) $i1571940 $x1581941))))

; backwards $main_sum89
(assert
  (forall (($x1581947 Int) ($a21551938 (Array Int Int)) ($int1942 Int) ($a1561939 Int) ($a1561945 Int) ($i1571946 Int) ($x1581941 Int) ($a21551944 (Array Int Int)) ($a11541937 (Array Int Int)) ($i1571940 Int) ($a11541943 (Array Int Int)))
    (=> (and ($main_sum89 (store $a11541937 $a1561939 $int1942) $a21551938 (+ $a1561939 1) $i1571940 $x1581941 $a11541943 $a21551944 $a1561945 $i1571946 $x1581947)
             (<= (- 2147483648) $int1942)
             (<= $int1942 2147483647)
             (< $a1561939 100000))
        ($main_sum89 $a11541937 $a21551938 $a1561939 $i1571940 $x1581941 $a11541943 $a21551944 $a1561945 $i1571946 $x1581947))))

; loop entry $main_inv90
(assert
  (forall (($x1581952 Int) ($a1561950 Int) ($a11541948 (Array Int Int)) ($i157 Int) ($a2155 (Array Int Int)) ($i1571951 Int) ($x158 Int) ($a21551949 (Array Int Int)) ($a1154 (Array Int Int)))
    (=> (and ($main_sum89 $a1154 $a2155 0 $i157 $x158 $a11541948 $a21551949 $a1561950 $i1571951 $x1581952))
        ($main_inv90 $a11541948 $a21551949 $a1561950 0 $x1581952))))

; loop term $main_sum90
(assert
  (forall (($a11541953 (Array Int Int)) ($x1581957 Int) ($a21551954 (Array Int Int)) ($a1561955 Int) ($i1571956 Int))
    (=> (and (not (< $i1571956 100000)))
        ($main_sum90 $a11541953 $a21551954 $a1561955 $i1571956 $x1581957 $a11541953 $a21551954 $a1561955 $i1571956 $x1581957))))

; forwards $main_inv90
(assert
  (forall (($a11541953 (Array Int Int)) ($x1581957 Int) ($a21551954 (Array Int Int)) ($a1561955 Int) ($i1571956 Int))
    (=> (and (< $i1571956 100000)
             ($main_inv90 $a11541953 $a21551954 $a1561955 $i1571956 $x1581957))
        ($main_inv90 $a11541953 (store $a21551954 $i1571956 (select $a11541953 $i1571956)) $a1561955 (+ $i1571956 1) $x1581957))))

; backwards $main_sum90
(assert
  (forall (($a11541953 (Array Int Int)) ($a21551954 (Array Int Int)) ($a21551959 (Array Int Int)) ($i1571961 Int) ($a1561955 Int) ($i1571956 Int) ($x1581962 Int) ($a1561960 Int) ($x1581957 Int) ($a11541958 (Array Int Int)))
    (=> (and ($main_sum90 $a11541953 (store $a21551954 $i1571956 (select $a11541953 $i1571956)) $a1561955 (+ $i1571956 1) $x1581957 $a11541958 $a21551959 $a1561960 $i1571961 $x1581962)
             (< $i1571956 100000))
        ($main_sum90 $a11541953 $a21551954 $a1561955 $i1571956 $x1581957 $a11541958 $a21551959 $a1561960 $i1571961 $x1581962))))

; loop entry $main_inv91
(assert
  (forall (($i1571966 Int) ($x1581952 Int) ($a1561950 Int) ($a11541948 (Array Int Int)) ($a11541963 (Array Int Int)) ($a1561965 Int) ($a2155 (Array Int Int)) ($i1571951 Int) ($x158 Int) ($i157 Int) ($x1581967 Int) ($a21551949 (Array Int Int)) ($a1154 (Array Int Int)) ($a21551964 (Array Int Int)))
    (=> (and ($main_sum90 $a11541948 $a21551949 $a1561950 0 $x1581952 $a11541963 $a21551964 $a1561965 $i1571966 $x1581967)
             ($main_sum89 $a1154 $a2155 0 $i157 $x158 $a11541948 $a21551949 $a1561950 $i1571951 $x1581952))
        ($main_inv91 $a11541963 $a21551964 $a1561965 $i1571966 0))))

; loop term $main_sum91
(assert
  (forall (($a1561970 Int) ($i1571971 Int) ($x1581972 Int) ($a21551969 (Array Int Int)) ($a11541968 (Array Int Int)))
    (=> (and (not (< $x1581972 100000)))
        ($main_sum91 $a11541968 $a21551969 $a1561970 $i1571971 $x1581972 $a11541968 $a21551969 $a1561970 $i1571971 $x1581972))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1561970 Int) ($i1571971 Int) ($x1581972 Int) ($a21551969 (Array Int Int)) ($a11541968 (Array Int Int)))
    (=> (and (< $x1581972 100000)
             ($main_inv91 $a11541968 $a21551969 $a1561970 $i1571971 $x1581972))
        ($__VERIFIER_assert_pre (ite (= (select $a11541968 $x1581972) (select $a21551969 $x1581972)) 1 0)))))

; forwards $main_inv91
(assert
  (forall (($a1561970 Int) ($i1571971 Int) ($x1581972 Int) ($a21551969 (Array Int Int)) ($a11541968 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11541968 $x1581972) (select $a21551969 $x1581972)) 1 0))
             (< $x1581972 100000)
             ($main_inv91 $a11541968 $a21551969 $a1561970 $i1571971 $x1581972))
        ($main_inv91 $a11541968 $a21551969 $a1561970 $i1571971 (+ $x1581972 1)))))

; backwards $main_sum91
(assert
  (forall (($a21551974 (Array Int Int)) ($a1561975 Int) ($i1571976 Int) ($a11541973 (Array Int Int)) ($a1561970 Int) ($i1571971 Int) ($x1581977 Int) ($x1581972 Int) ($a21551969 (Array Int Int)) ($a11541968 (Array Int Int)))
    (=> (and ($main_sum91 $a11541968 $a21551969 $a1561970 $i1571971 (+ $x1581972 1) $a11541973 $a21551974 $a1561975 $i1571976 $x1581977)
             (__VERIFIER_assert (ite (= (select $a11541968 $x1581972) (select $a21551969 $x1581972)) 1 0))
             (< $x1581972 100000))
        ($main_sum91 $a11541968 $a21551969 $a1561970 $i1571971 $x1581972 $a11541973 $a21551974 $a1561975 $i1571976 $x1581977))))

(check-sat)
