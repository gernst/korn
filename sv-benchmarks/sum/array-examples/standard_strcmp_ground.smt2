(set-logic HORN)

(declare-fun $main_if117 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum369 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if115 (Int Int) Bool)
(declare-fun _strcmp ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $_strcmp_if116 ((Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $_strcmp_inv368 ((Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $_strcmp_sum368 ((Array Int Int) (Array Int Int) Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $_strcmp_pre ((Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_sum370 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv370 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv369 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7059 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7059))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if115 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7060 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if115 cond cond7060))
        (__VERIFIER_assert cond7060))))

; loop entry $_strcmp_inv368
(assert
  (forall ((src (Array Int Int)) (dst (Array Int Int)) ($i441 Int))
    (=> (and (= $i441 0)
             ($_strcmp_pre src dst))
        ($_strcmp_inv368 src dst $i441))))

; loop term $_strcmp_sum368
(assert
  (forall ((src7061 (Array Int Int)) (dst7062 (Array Int Int)) ($i4417063 Int))
    (=> (and (not (< $i4417063 100000)))
        ($_strcmp_sum368 src7061 dst7062 $i4417063 src7061 dst7062 $i4417063))))

; post _strcmp
(assert
  (forall ((src7061 (Array Int Int)) (dst7062 (Array Int Int)) ($i4417063 Int))
    (=> (and (not (= (select dst7062 $i4417063) (select src7061 $i4417063)))
             (< $i4417063 100000)
             ($_strcmp_inv368 src7061 dst7062 $i4417063))
        (_strcmp src7061 dst7062 1))))

; if else
(assert
  (forall ((src7061 (Array Int Int)) (dst7062 (Array Int Int)) ($i4417063 Int))
    (=> (and (= (select dst7062 $i4417063) (select src7061 $i4417063))
             (< $i4417063 100000)
             ($_strcmp_inv368 src7061 dst7062 $i4417063))
        ($_strcmp_if116 src7061 dst7062 $i4417063 src7061 dst7062 $i4417063))))

; forwards $_strcmp_inv368
(assert
  (forall ((src7061 (Array Int Int)) ($i4417063 Int) (dst7065 (Array Int Int)) ($i4417066 Int) (dst7062 (Array Int Int)) (src7064 (Array Int Int)))
    (=> (and ($_strcmp_if116 src7061 dst7062 $i4417063 src7064 dst7065 $i4417066))
        ($_strcmp_inv368 src7064 dst7065 (+ $i4417066 1)))))

; backwards $_strcmp_sum368
(assert
  (forall ((src7061 (Array Int Int)) (src7067 (Array Int Int)) ($i4417063 Int) (dst7065 (Array Int Int)) ($i4417066 Int) (dst7068 (Array Int Int)) ($i4417069 Int) (dst7062 (Array Int Int)) (src7064 (Array Int Int)))
    (=> (and ($_strcmp_sum368 src7064 dst7065 (+ $i4417066 1) src7067 dst7068 $i4417069)
             ($_strcmp_if116 src7061 dst7062 $i4417063 src7064 dst7065 $i4417066))
        ($_strcmp_sum368 src7061 dst7062 $i4417063 src7067 dst7068 $i4417069))))

; post _strcmp
(assert
  (forall (($i4417072 Int) (dst7071 (Array Int Int)) (src (Array Int Int)) ($i441 Int) (dst (Array Int Int)) (src7070 (Array Int Int)))
    (=> (and ($_strcmp_sum368 src dst $i441 src7070 dst7071 $i4417072)
             (= $i441 0)
             ($_strcmp_pre src dst))
        (_strcmp src7070 dst7071 0))))

; loop entry $main_inv369
(assert
  (forall (($c445 Int) ($b443 (Array Int Int)) ($a442 (Array Int Int)) ($x446 Int) ($i444 Int))
    (=> (and (= $i444 0))
        ($main_inv369 $a442 $b443 $i444 $c445 $x446))))

; loop term $main_sum369
(assert
  (forall (($b4437074 (Array Int Int)) ($c4457076 Int) ($i4447075 Int) ($a4427073 (Array Int Int)) ($x4467077 Int))
    (=> (and (not (< $i4447075 100000)))
        ($main_sum369 $a4427073 $b4437074 $i4447075 $c4457076 $x4467077 $a4427073 $b4437074 $i4447075 $c4457076 $x4467077))))

; forwards $main_inv369
(assert
  (forall (($b4437074 (Array Int Int)) ($c4457076 Int) ($int7079 Int) ($i4447075 Int) ($a4427073 (Array Int Int)) ($int7078 Int) ($x4467077 Int))
    (=> (and (<= (- 2147483648) $int7079)
             (<= $int7079 2147483647)
             (<= (- 2147483648) $int7078)
             (<= $int7078 2147483647)
             (< $i4447075 100000)
             ($main_inv369 $a4427073 $b4437074 $i4447075 $c4457076 $x4467077))
        ($main_inv369 (store $a4427073 $i4447075 $int7078) (store $b4437074 $i4447075 $int7079) (+ $i4447075 1) $c4457076 $x4467077))))

; backwards $main_sum369
(assert
  (forall (($b4437074 (Array Int Int)) ($a4427080 (Array Int Int)) ($c4457076 Int) ($x4467084 Int) ($b4437081 (Array Int Int)) ($int7079 Int) ($i4447075 Int) ($a4427073 (Array Int Int)) ($i4447082 Int) ($int7078 Int) ($x4467077 Int) ($c4457083 Int))
    (=> (and ($main_sum369 (store $a4427073 $i4447075 $int7078) (store $b4437074 $i4447075 $int7079) (+ $i4447075 1) $c4457076 $x4467077 $a4427080 $b4437081 $i4447082 $c4457083 $x4467084)
             (<= (- 2147483648) $int7079)
             (<= $int7079 2147483647)
             (<= (- 2147483648) $int7078)
             (<= $int7078 2147483647)
             (< $i4447075 100000))
        ($main_sum369 $a4427073 $b4437074 $i4447075 $c4457076 $x4467077 $a4427080 $b4437081 $i4447082 $c4457083 $x4467084))))

; _strcmp precondition
(assert
  (forall (($c445 Int) ($i4447087 Int) ($a4427085 (Array Int Int)) ($c4457088 Int) ($a442 (Array Int Int)) ($b4437086 (Array Int Int)) ($x446 Int) ($i444 Int) ($x4467089 Int) ($b443 (Array Int Int)))
    (=> (and ($main_sum369 $a442 $b443 $i444 $c445 $x446 $a4427085 $b4437086 $i4447087 $c4457088 $x4467089)
             (= $i444 0))
        ($_strcmp_pre $a4427085 $b4437086))))

; loop entry $main_inv370
(assert
  (forall (($c445 Int) ($i4447087 Int) ($c4457088 Int) ($a442 (Array Int Int)) ($b4437086 (Array Int Int)) ($x446 Int) ($i444 Int) ($x4467089 Int) ($b443 (Array Int Int)) ($result7090 Int) ($a4427085 (Array Int Int)))
    (=> (and (= $c4457088 0)
             (= $c4457088 $result7090)
             (_strcmp $a4427085 $b4437086 $result7090)
             ($main_sum369 $a442 $b443 $i444 $c445 $x446 $a4427085 $b4437086 $i4447087 $c4457088 $x4467089)
             (= $i444 0))
        ($main_inv370 $a4427085 $b4437086 $i4447087 $c4457088 0))))

; loop term $main_sum370
(assert
  (forall (($c4457094 Int) ($x4467095 Int) ($i4447093 Int) ($b4437092 (Array Int Int)) ($a4427091 (Array Int Int)))
    (=> (and (not (< $x4467095 100000)))
        ($main_sum370 $a4427091 $b4437092 $i4447093 $c4457094 $x4467095 $a4427091 $b4437092 $i4447093 $c4457094 $x4467095))))

; __VERIFIER_assert precondition
(assert
  (forall (($c4457094 Int) ($x4467095 Int) ($i4447093 Int) ($b4437092 (Array Int Int)) ($a4427091 (Array Int Int)))
    (=> (and (< $x4467095 100000)
             ($main_inv370 $a4427091 $b4437092 $i4447093 $c4457094 $x4467095))
        ($__VERIFIER_assert_pre (ite (= (select $a4427091 $x4467095) (select $b4437092 $x4467095)) 1 0)))))

; forwards $main_inv370
(assert
  (forall (($c4457094 Int) ($x4467095 Int) ($i4447093 Int) ($b4437092 (Array Int Int)) ($a4427091 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a4427091 $x4467095) (select $b4437092 $x4467095)) 1 0))
             (< $x4467095 100000)
             ($main_inv370 $a4427091 $b4437092 $i4447093 $c4457094 $x4467095))
        ($main_inv370 $a4427091 $b4437092 $i4447093 $c4457094 (+ $x4467095 1)))))

; backwards $main_sum370
(assert
  (forall (($b4437097 (Array Int Int)) ($x4467100 Int) ($c4457094 Int) ($a4427096 (Array Int Int)) ($x4467095 Int) ($c4457099 Int) ($i4447093 Int) ($b4437092 (Array Int Int)) ($a4427091 (Array Int Int)) ($i4447098 Int))
    (=> (and ($main_sum370 $a4427091 $b4437092 $i4447093 $c4457094 (+ $x4467095 1) $a4427096 $b4437097 $i4447098 $c4457099 $x4467100)
             (__VERIFIER_assert (ite (= (select $a4427091 $x4467095) (select $b4437092 $x4467095)) 1 0))
             (< $x4467095 100000))
        ($main_sum370 $a4427091 $b4437092 $i4447093 $c4457094 $x4467095 $a4427096 $b4437097 $i4447098 $c4457099 $x4467100))))

; if then
(assert
  (forall (($b4437102 (Array Int Int)) ($i4447087 Int) ($i4447103 Int) ($x4467105 Int) ($c4457088 Int) ($a442 (Array Int Int)) ($c445 Int) ($a4427101 (Array Int Int)) ($x446 Int) ($i444 Int) ($x4467089 Int) ($b443 (Array Int Int)) ($result7090 Int) ($a4427085 (Array Int Int)) ($b4437086 (Array Int Int)) ($c4457104 Int))
    (=> (and ($main_sum370 $a4427085 $b4437086 $i4447087 $c4457088 0 $a4427101 $b4437102 $i4447103 $c4457104 $x4467105)
             (= $c4457088 0)
             (= $c4457088 $result7090)
             (_strcmp $a4427085 $b4437086 $result7090)
             ($main_sum369 $a442 $b443 $i444 $c445 $x446 $a4427085 $b4437086 $i4447087 $c4457088 $x4467089)
             (= $i444 0))
        ($main_if117 $a442 $b443 $i444 $c445 $x446 $a4427101 $b4437102 $i4447103 $c4457104 $x4467105))))

; if else
(assert
  (forall (($c445 Int) ($i4447087 Int) ($c4457088 Int) ($a442 (Array Int Int)) ($b4437086 (Array Int Int)) ($x446 Int) ($i444 Int) ($x4467089 Int) ($b443 (Array Int Int)) ($result7090 Int) ($a4427085 (Array Int Int)))
    (=> (and (not (= $c4457088 0))
             (= $c4457088 $result7090)
             (_strcmp $a4427085 $b4437086 $result7090)
             ($main_sum369 $a442 $b443 $i444 $c445 $x446 $a4427085 $b4437086 $i4447087 $c4457088 $x4467089)
             (= $i444 0))
        ($main_if117 $a442 $b443 $i444 $c445 $x446 $a4427085 $b4437086 $i4447087 $c4457088 $x4467089))))

(check-sat)
