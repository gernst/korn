(set-logic HORN)

(declare-fun $__VERIFIER_assert_if688 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv262 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_if689 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum262 ((Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15114 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15114))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if688 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15115 Int))
    (=> (and ($__VERIFIER_assert_if688 cond15115))
        (__VERIFIER_assert cond15115))))

; loop entry $main_inv262
(assert
  (forall (($c731 Int) ($i732 Int) ($len730 Int) ($a729 (Array Int Int)) ($bool15116 Int))
    (=> (and (= $c731 $bool15116)
             (or (= $bool15116 0) (= $bool15116 1))
             (= $len730 0))
        ($main_inv262 $a729 $len730 $c731 $i732))))

; loop term $main_sum262
(assert
  (forall (($a72915117 (Array Int Int)) ($len73015118 Int) ($c73115119 Int) ($i73215120 Int))
    (=> (and (= $c73115119 0)
             ($main_inv262 $a72915117 $len73015118 $c73115119 $i73215120))
        ($main_sum262 $a72915117 $len73015118 $c73115119 $i73215120))))

; if then
(assert
  (forall (($a72915117 (Array Int Int)) ($c73115119 Int) ($i73215120 Int) ($len73015118 Int))
    (=> (and (= $len73015118 4)
             (not (= $c73115119 0))
             ($main_inv262 $a72915117 $len73015118 $c73115119 $i73215120))
        ($main_if689 $a72915117 0 $c73115119 $i73215120))))

; if else
(assert
  (forall (($a72915117 (Array Int Int)) ($len73015118 Int) ($c73115119 Int) ($i73215120 Int))
    (=> (and (not (= $len73015118 4))
             (not (= $c73115119 0))
             ($main_inv262 $a72915117 $len73015118 $c73115119 $i73215120))
        ($main_if689 $a72915117 $len73015118 $c73115119 $i73215120))))

; forwards $main_inv262
(assert
  (forall (($a72915121 (Array Int Int)) ($len73015122 Int) ($c73115123 Int) ($i73215124 Int))
    (=> (and ($main_if689 $a72915121 $len73015122 $c73115123 $i73215124))
        ($main_inv262 (store $a72915121 $len73015122 0) (+ $len73015122 1) $c73115123 $i73215124))))

; __VERIFIER_assert precondition
(assert
  (forall (($len73015126 Int) ($a72915125 (Array Int Int)) ($c73115127 Int) ($i73215128 Int))
    (=> (and ($main_sum262 $a72915125 $len73015126 $c73115127 $i73215128))
        ($__VERIFIER_assert_pre (ite (= $len73015126 5) 1 0)))))

(check-sat)
