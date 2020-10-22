(set-logic HORN)

(declare-fun $main_sum373 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum371 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum372 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if118 (Int) Bool)
(declare-fun $main_inv371 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv373 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv372 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4916 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4916))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if118 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4917 Int))
    (=> (and ($__VERIFIER_assert_if118 cond4917))
        (__VERIFIER_assert cond4917))))

; loop entry $main_inv371
(assert
  (forall (($dst448 (Array Int Int)) ($i449 Int) ($j450 Int) ($x451 Int) ($src447 (Array Int Int)))
    (=> (and (= $j450 0)
             (= $i449 0))
        ($main_inv371 $src447 $dst448 $i449 $j450 $x451))))

; loop term $main_sum371
(assert
  (forall (($x4514922 Int) ($i4494920 Int) ($dst4484919 (Array Int Int)) ($j4504921 Int) ($src4474918 (Array Int Int)))
    (=> (and (not (< $j4504921 100000))
             ($main_inv371 $src4474918 $dst4484919 $i4494920 $j4504921 $x4514922))
        ($main_sum371 $src4474918 $dst4484919 $i4494920 $j4504921 $x4514922))))

; forwards $main_inv371
(assert
  (forall (($x4514922 Int) ($int4923 Int) ($i4494920 Int) ($dst4484919 (Array Int Int)) ($j4504921 Int) ($src4474918 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4923)
             (<= $int4923 2147483647)
             (< $j4504921 100000)
             ($main_inv371 $src4474918 $dst4484919 $i4494920 $j4504921 $x4514922))
        ($main_inv371 (store $src4474918 $j4504921 $int4923) $dst4484919 $i4494920 (+ $j4504921 1) $x4514922))))

; loop entry $main_inv372
(assert
  (forall (($j4504927 Int) ($i4494926 Int) ($src4474924 (Array Int Int)) ($dst4484925 (Array Int Int)) ($x4514928 Int))
    (=> (and ($main_sum371 $src4474924 $dst4484925 $i4494926 $j4504927 $x4514928))
        ($main_inv372 $src4474924 $dst4484925 $i4494926 $j4504927 $x4514928))))

; loop term $main_sum372
(assert
  (forall (($i4494931 Int) ($src4474929 (Array Int Int)) ($dst4484930 (Array Int Int)) ($x4514933 Int) ($j4504932 Int))
    (=> (and (not (and (< $i4494931 100000) (not (= (select $src4474929 $i4494931) 0))))
             ($main_inv372 $src4474929 $dst4484930 $i4494931 $j4504932 $x4514933))
        ($main_sum372 $src4474929 $dst4484930 $i4494931 $j4504932 $x4514933))))

; forwards $main_inv372
(assert
  (forall (($i4494931 Int) ($src4474929 (Array Int Int)) ($dst4484930 (Array Int Int)) ($x4514933 Int) ($j4504932 Int))
    (=> (and (< $i4494931 100000)
             (not (= (select $src4474929 $i4494931) 0))
             ($main_inv372 $src4474929 $dst4484930 $i4494931 $j4504932 $x4514933))
        ($main_inv372 $src4474929 (store $dst4484930 $i4494931 (select $src4474929 $i4494931)) (+ $i4494931 1) $j4504932 $x4514933))))

; loop entry $main_inv373
(assert
  (forall (($src4474934 (Array Int Int)) ($i4494936 Int) ($x4514938 Int) ($dst4484935 (Array Int Int)) ($j4504937 Int))
    (=> (and ($main_sum372 $src4474934 $dst4484935 $i4494936 $j4504937 $x4514938))
        ($main_inv373 $src4474934 $dst4484935 $i4494936 $j4504937 0))))

; loop term $main_sum373
(assert
  (forall (($src4474939 (Array Int Int)) ($i4494941 Int) ($dst4484940 (Array Int Int)) ($j4504942 Int) ($x4514943 Int))
    (=> (and (not (< $x4514943 $i4494941))
             ($main_inv373 $src4474939 $dst4484940 $i4494941 $j4504942 $x4514943))
        ($main_sum373 $src4474939 $dst4484940 $i4494941 $j4504942 $x4514943))))

; __VERIFIER_assert precondition
(assert
  (forall (($src4474939 (Array Int Int)) ($i4494941 Int) ($dst4484940 (Array Int Int)) ($j4504942 Int) ($x4514943 Int))
    (=> (and (< $x4514943 $i4494941)
             ($main_inv373 $src4474939 $dst4484940 $i4494941 $j4504942 $x4514943))
        ($__VERIFIER_assert_pre (ite (= (select $dst4484940 $x4514943) (select $src4474939 $x4514943)) 1 0)))))

; forwards $main_inv373
(assert
  (forall (($src4474939 (Array Int Int)) ($i4494941 Int) ($dst4484940 (Array Int Int)) ($j4504942 Int) ($x4514943 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $dst4484940 $x4514943) (select $src4474939 $x4514943)) 1 0))
             (< $x4514943 $i4494941)
             ($main_inv373 $src4474939 $dst4484940 $i4494941 $j4504942 $x4514943))
        ($main_inv373 $src4474939 $dst4484940 $i4494941 $j4504942 (+ $x4514943 1)))))

(check-sat)
