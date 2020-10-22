(set-logic HORN)

(declare-fun $main_sum357 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum355 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if103 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv357 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv356 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv355 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum356 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6858 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6858))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if103 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6859 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if103 cond cond6859))
        (__VERIFIER_assert cond6859))))

; loop entry $main_inv355
(assert
  (forall (($a421 (Array Int Int)) ($b422 (Array Int Int)) ($x424 Int))
        ($main_inv355 $a421 $b422 0 $x424)))

; loop term $main_sum355
(assert
  (forall (($a4216860 (Array Int Int)) ($b4226861 (Array Int Int)) ($i4236862 Int) ($x4246863 Int))
    (=> (and (not (< $i4236862 100000)))
        ($main_sum355 $a4216860 $b4226861 $i4236862 $x4246863 $a4216860 $b4226861 $i4236862 $x4246863))))

; forwards $main_inv355
(assert
  (forall (($x4246863 Int) ($i4236862 Int) ($int6864 Int) ($b4226861 (Array Int Int)) ($a4216860 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int6864)
             (<= $int6864 2147483647)
             (< $i4236862 100000)
             ($main_inv355 $a4216860 $b4226861 $i4236862 $x4246863))
        ($main_inv355 (store $a4216860 $i4236862 $int6864) $b4226861 (+ $i4236862 1) $x4246863))))

; backwards $main_sum355
(assert
  (forall (($x4246863 Int) ($i4236862 Int) ($x4246868 Int) ($int6864 Int) ($i4236867 Int) ($b4226866 (Array Int Int)) ($a4216865 (Array Int Int)) ($b4226861 (Array Int Int)) ($a4216860 (Array Int Int)))
    (=> (and ($main_sum355 (store $a4216860 $i4236862 $int6864) $b4226861 (+ $i4236862 1) $x4246863 $a4216865 $b4226866 $i4236867 $x4246868)
             (<= (- 2147483648) $int6864)
             (<= $int6864 2147483647)
             (< $i4236862 100000))
        ($main_sum355 $a4216860 $b4226861 $i4236862 $x4246863 $a4216865 $b4226866 $i4236867 $x4246868))))

; loop entry $main_inv356
(assert
  (forall (($b422 (Array Int Int)) ($x424 Int) ($i4236871 Int) ($a421 (Array Int Int)) ($x4246872 Int) ($b4226870 (Array Int Int)) ($a4216869 (Array Int Int)))
    (=> (and ($main_sum355 $a421 $b422 0 $x424 $a4216869 $b4226870 $i4236871 $x4246872))
        ($main_inv356 $a4216869 $b4226870 0 $x4246872))))

; loop term $main_sum356
(assert
  (forall (($a4216873 (Array Int Int)) ($b4226874 (Array Int Int)) ($i4236875 Int) ($x4246876 Int))
    (=> (and (not (< $i4236875 100000)))
        ($main_sum356 $a4216873 $b4226874 $i4236875 $x4246876 $a4216873 $b4226874 $i4236875 $x4246876))))

; forwards $main_inv356
(assert
  (forall (($a4216873 (Array Int Int)) ($b4226874 (Array Int Int)) ($i4236875 Int) ($x4246876 Int))
    (=> (and (< $i4236875 100000)
             ($main_inv356 $a4216873 $b4226874 $i4236875 $x4246876))
        ($main_inv356 $a4216873 (store $b4226874 $i4236875 (select $a4216873 (- (- 100000 $i4236875) 1))) (+ $i4236875 1) $x4246876))))

; backwards $main_sum356
(assert
  (forall (($b4226874 (Array Int Int)) ($i4236879 Int) ($x4246880 Int) ($b4226878 (Array Int Int)) ($a4216877 (Array Int Int)) ($a4216873 (Array Int Int)) ($x4246876 Int) ($i4236875 Int))
    (=> (and ($main_sum356 $a4216873 (store $b4226874 $i4236875 (select $a4216873 (- (- 100000 $i4236875) 1))) (+ $i4236875 1) $x4246876 $a4216877 $b4226878 $i4236879 $x4246880)
             (< $i4236875 100000))
        ($main_sum356 $a4216873 $b4226874 $i4236875 $x4246876 $a4216877 $b4226878 $i4236879 $x4246880))))

; loop entry $main_inv357
(assert
  (forall (($b422 (Array Int Int)) ($x424 Int) ($a4216881 (Array Int Int)) ($i4236871 Int) ($x4246872 Int) ($b4226882 (Array Int Int)) ($i4236883 Int) ($b4226870 (Array Int Int)) ($a4216869 (Array Int Int)) ($a421 (Array Int Int)) ($x4246884 Int))
    (=> (and ($main_sum356 $a4216869 $b4226870 0 $x4246872 $a4216881 $b4226882 $i4236883 $x4246884)
             ($main_sum355 $a421 $b422 0 $x424 $a4216869 $b4226870 $i4236871 $x4246872))
        ($main_inv357 $a4216881 $b4226882 $i4236883 0))))

; loop term $main_sum357
(assert
  (forall (($a4216885 (Array Int Int)) ($b4226886 (Array Int Int)) ($i4236887 Int) ($x4246888 Int))
    (=> (and (not (< $x4246888 100000)))
        ($main_sum357 $a4216885 $b4226886 $i4236887 $x4246888 $a4216885 $b4226886 $i4236887 $x4246888))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4216885 (Array Int Int)) ($x4246888 Int) ($b4226886 (Array Int Int)) ($i4236887 Int))
    (=> (and (< $x4246888 100000)
             ($main_inv357 $a4216885 $b4226886 $i4236887 $x4246888))
        ($__VERIFIER_assert_pre (ite (= (select $a4216885 $x4246888) (select $b4226886 (- (- 100000 $x4246888) 1))) 1 0)))))

; forwards $main_inv357
(assert
  (forall (($a4216885 (Array Int Int)) ($b4226886 (Array Int Int)) ($i4236887 Int) ($x4246888 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4216885 $x4246888) (select $b4226886 (- (- 100000 $x4246888) 1))) 1 0))
             (< $x4246888 100000)
             ($main_inv357 $a4216885 $b4226886 $i4236887 $x4246888))
        ($main_inv357 $a4216885 $b4226886 $i4236887 (+ $x4246888 1)))))

; backwards $main_sum357
(assert
  (forall (($b4226886 (Array Int Int)) ($b4226890 (Array Int Int)) ($x4246892 Int) ($i4236891 Int) ($x4246888 Int) ($a4216889 (Array Int Int)) ($a4216885 (Array Int Int)) ($i4236887 Int))
    (=> (and ($main_sum357 $a4216885 $b4226886 $i4236887 (+ $x4246888 1) $a4216889 $b4226890 $i4236891 $x4246892)
             (__VERIFIER_assert (ite (= (select $a4216885 $x4246888) (select $b4226886 (- (- 100000 $x4246888) 1))) 1 0))
             (< $x4246888 100000))
        ($main_sum357 $a4216885 $b4226886 $i4236887 $x4246888 $a4216889 $b4226890 $i4236891 $x4246892))))

(check-sat)
