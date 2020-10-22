(set-logic HORN)

(declare-fun $main_inv361 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if109 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if111 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv362 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum362 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if108 (Int) Bool)
(declare-fun $main_sum363 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if110 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv363 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum361 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4794 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4794))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if108 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4795 Int))
    (=> (and ($__VERIFIER_assert_if108 cond4795))
        (__VERIFIER_assert cond4795))))

; loop entry $main_inv361
(assert
  (forall (($a429 (Array Int Int)) ($b430 (Array Int Int)) ($f432 Int) ($i431 Int))
    (=> (and (= $i431 0))
        ($main_inv361 $a429 $b430 0 $f432))))

; loop term $main_sum361
(assert
  (forall (($a4294796 (Array Int Int)) ($b4304797 (Array Int Int)) ($i4314798 Int) ($f4324799 Int))
    (=> (and (not (< $i4314798 100000))
             ($main_inv361 $a4294796 $b4304797 $i4314798 $f4324799))
        ($main_sum361 $a4294796 $b4304797 $i4314798 $f4324799))))

; forwards $main_inv361
(assert
  (forall (($int4800 Int) ($f4324799 Int) ($a4294796 (Array Int Int)) ($i4314798 Int) ($b4304797 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4800)
             (<= $int4800 2147483647)
             (< $i4314798 100000)
             ($main_inv361 $a4294796 $b4304797 $i4314798 $f4324799))
        ($main_inv361 (store $a4294796 $i4314798 $int4800) $b4304797 (+ $i4314798 1) $f4324799))))

; loop entry $main_inv362
(assert
  (forall (($a4294801 (Array Int Int)) ($b4304802 (Array Int Int)) ($f4324804 Int) ($i4314803 Int))
    (=> (and ($main_sum361 $a4294801 $b4304802 $i4314803 $f4324804))
        ($main_inv362 $a4294801 $b4304802 0 $f4324804))))

; loop term $main_sum362
(assert
  (forall (($a4294805 (Array Int Int)) ($b4304806 (Array Int Int)) ($i4314807 Int) ($f4324808 Int))
    (=> (and (not (< $i4314807 100000))
             ($main_inv362 $a4294805 $b4304806 $i4314807 $f4324808))
        ($main_sum362 $a4294805 $b4304806 $i4314807 $f4324808))))

; if then
(assert
  (forall (($a4294805 (Array Int Int)) ($b4304806 (Array Int Int)) ($i4314807 Int) ($f4324808 Int))
    (=> (and (>= (select $a4294805 $i4314807) 0)
             (< $i4314807 100000)
             ($main_inv362 $a4294805 $b4304806 $i4314807 $f4324808))
        ($main_if109 $a4294805 (store $b4304806 $i4314807 1) $i4314807 $f4324808))))

; if else
(assert
  (forall (($a4294805 (Array Int Int)) ($b4304806 (Array Int Int)) ($i4314807 Int) ($f4324808 Int))
    (=> (and (not (>= (select $a4294805 $i4314807) 0))
             (< $i4314807 100000)
             ($main_inv362 $a4294805 $b4304806 $i4314807 $f4324808))
        ($main_if109 $a4294805 (store $b4304806 $i4314807 0) $i4314807 $f4324808))))

; forwards $main_inv362
(assert
  (forall (($a4294809 (Array Int Int)) ($b4304810 (Array Int Int)) ($i4314811 Int) ($f4324812 Int))
    (=> (and ($main_if109 $a4294809 $b4304810 $i4314811 $f4324812))
        ($main_inv362 $a4294809 $b4304810 (+ $i4314811 1) $f4324812))))

; loop entry $main_inv363
(assert
  (forall (($a4294813 (Array Int Int)) ($b4304814 (Array Int Int)) ($f4324816 Int) ($i4314815 Int))
    (=> (and (= $f4324816 1)
             ($main_sum362 $a4294813 $b4304814 $i4314815 $f4324816))
        ($main_inv363 $a4294813 $b4304814 0 $f4324816))))

; loop term $main_sum363
(assert
  (forall (($a4294817 (Array Int Int)) ($b4304818 (Array Int Int)) ($i4314819 Int) ($f4324820 Int))
    (=> (and (not (< $i4314819 100000))
             ($main_inv363 $a4294817 $b4304818 $i4314819 $f4324820))
        ($main_sum363 $a4294817 $b4304818 $i4314819 $f4324820))))

; if then
(assert
  (forall (($a4294817 (Array Int Int)) ($b4304818 (Array Int Int)) ($i4314819 Int) ($f4324820 Int))
    (=> (and (>= (select $a4294817 $i4314819) 0)
             (= (select $b4304818 $i4314819) 0)
             (< $i4314819 100000)
             ($main_inv363 $a4294817 $b4304818 $i4314819 $f4324820))
        ($main_if110 $a4294817 $b4304818 $i4314819 0))))

; if else
(assert
  (forall (($a4294817 (Array Int Int)) ($b4304818 (Array Int Int)) ($i4314819 Int) ($f4324820 Int))
    (=> (and (not (and (>= (select $a4294817 $i4314819) 0) (= (select $b4304818 $i4314819) 0)))
             (< $i4314819 100000)
             ($main_inv363 $a4294817 $b4304818 $i4314819 $f4324820))
        ($main_if110 $a4294817 $b4304818 $i4314819 $f4324820))))

; if then
(assert
  (forall (($a4294821 (Array Int Int)) ($b4304822 (Array Int Int)) ($i4314823 Int) ($f4324824 Int))
    (=> (and (< (select $a4294821 $i4314823) 0)
             (not (= (select $b4304822 $i4314823) 0))
             ($main_if110 $a4294821 $b4304822 $i4314823 $f4324824))
        ($main_if111 $a4294821 $b4304822 $i4314823 0))))

; if else
(assert
  (forall (($a4294821 (Array Int Int)) ($b4304822 (Array Int Int)) ($i4314823 Int) ($f4324824 Int))
    (=> (and (not (and (< (select $a4294821 $i4314823) 0) (not (= (select $b4304822 $i4314823) 0))))
             ($main_if110 $a4294821 $b4304822 $i4314823 $f4324824))
        ($main_if111 $a4294821 $b4304822 $i4314823 $f4324824))))

; forwards $main_inv363
(assert
  (forall (($a4294825 (Array Int Int)) ($b4304826 (Array Int Int)) ($i4314827 Int) ($f4324828 Int))
    (=> (and ($main_if111 $a4294825 $b4304826 $i4314827 $f4324828))
        ($main_inv363 $a4294825 $b4304826 (+ $i4314827 1) $f4324828))))

; __VERIFIER_assert precondition
(assert
  (forall (($f4324832 Int) ($a4294829 (Array Int Int)) ($b4304830 (Array Int Int)) ($i4314831 Int))
    (=> (and ($main_sum363 $a4294829 $b4304830 $i4314831 $f4324832))
        ($__VERIFIER_assert_pre $f4324832))))

(check-sat)
