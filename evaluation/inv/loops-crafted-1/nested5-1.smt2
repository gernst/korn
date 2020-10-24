(set-logic HORN)

(declare-fun $main_sum209 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv208 (Int Int Int Int Int) Bool)
(declare-fun $main_sum211 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if598 (Int) Bool)
(declare-fun $main_sum208 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum207 (Int Int Int Int Int) Bool)
(declare-fun $main_inv207 (Int Int Int Int Int) Bool)
(declare-fun $main_inv211 (Int Int Int Int Int) Bool)
(declare-fun $main_inv209 (Int Int Int Int Int) Bool)
(declare-fun $main_inv210 (Int Int Int Int Int) Bool)
(declare-fun $main_sum210 (Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13918 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13918))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if598 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13919 Int))
    (=> (and ($__VERIFIER_assert_if598 cond13919))
        (__VERIFIER_assert cond13919))))

; loop entry $main_inv207
(assert
  (forall (($z584 Int) ($x582 Int) ($v586 Int) ($w585 Int) ($y583 Int))
    (=> (and (= $v586 0)
             (= $w585 0)
             (= $z584 0)
             (= $y583 0)
             (= $x582 0))
        ($main_inv207 $x582 $y583 $z584 0 $v586))))

; loop term $main_sum207
(assert
  (forall (($x58213920 Int) ($w58513923 Int) ($v58613924 Int) ($z58413922 Int) ($y58313921 Int))
    (=> (and (not (< $w58513923 268435455))
             ($main_inv207 $x58213920 $y58313921 $z58413922 $w58513923 $v58613924))
        ($main_sum207 $x58213920 $y58313921 $z58413922 $w58513923 $v58613924))))

; loop entry $main_inv208
(assert
  (forall (($x58213920 Int) ($w58513923 Int) ($v58613924 Int) ($z58413922 Int) ($y58313921 Int))
    (=> (and (< $w58513923 268435455)
             ($main_inv207 $x58213920 $y58313921 $z58413922 $w58513923 $v58613924))
        ($main_inv208 0 $y58313921 $z58413922 $w58513923 $v58613924))))

; loop term $main_sum208
(assert
  (forall (($y58313926 Int) ($v58613929 Int) ($z58413927 Int) ($w58513928 Int) ($x58213925 Int))
    (=> (and (not (< $x58213925 10))
             ($main_inv208 $x58213925 $y58313926 $z58413927 $w58513928 $v58613929))
        ($main_sum208 $x58213925 $y58313926 $z58413927 $w58513928 $v58613929))))

; loop entry $main_inv209
(assert
  (forall (($y58313926 Int) ($v58613929 Int) ($z58413927 Int) ($w58513928 Int) ($x58213925 Int))
    (=> (and (< $x58213925 10)
             ($main_inv208 $x58213925 $y58313926 $z58413927 $w58513928 $v58613929))
        ($main_inv209 $x58213925 0 $z58413927 $w58513928 $v58613929))))

; loop term $main_sum209
(assert
  (forall (($z58413932 Int) ($w58513933 Int) ($v58613934 Int) ($y58313931 Int) ($x58213930 Int))
    (=> (and (not (< $y58313931 10))
             ($main_inv209 $x58213930 $y58313931 $z58413932 $w58513933 $v58613934))
        ($main_sum209 $x58213930 $y58313931 $z58413932 $w58513933 $v58613934))))

; loop entry $main_inv210
(assert
  (forall (($z58413932 Int) ($w58513933 Int) ($v58613934 Int) ($y58313931 Int) ($x58213930 Int))
    (=> (and (< $y58313931 10)
             ($main_inv209 $x58213930 $y58313931 $z58413932 $w58513933 $v58613934))
        ($main_inv210 $x58213930 $y58313931 0 $w58513933 $v58613934))))

; loop term $main_sum210
(assert
  (forall (($y58313936 Int) ($x58213935 Int) ($z58413937 Int) ($v58613939 Int) ($w58513938 Int))
    (=> (and (not (< $z58413937 10))
             ($main_inv210 $x58213935 $y58313936 $z58413937 $w58513938 $v58613939))
        ($main_sum210 $x58213935 $y58313936 $z58413937 $w58513938 $v58613939))))

; loop entry $main_inv211
(assert
  (forall (($y58313936 Int) ($x58213935 Int) ($z58413937 Int) ($v58613939 Int) ($w58513938 Int))
    (=> (and (< $z58413937 10)
             ($main_inv210 $x58213935 $y58313936 $z58413937 $w58513938 $v58613939))
        ($main_inv211 $x58213935 $y58313936 $z58413937 $w58513938 0))))

; loop term $main_sum211
(assert
  (forall (($v58613944 Int) ($w58513943 Int) ($x58213940 Int) ($y58313941 Int) ($z58413942 Int))
    (=> (and (not (< $v58613944 10))
             ($main_inv211 $x58213940 $y58313941 $z58413942 $w58513943 $v58613944))
        ($main_sum211 $x58213940 $y58313941 $z58413942 $w58513943 $v58613944))))

; forwards $main_inv211
(assert
  (forall (($v58613944 Int) ($w58513943 Int) ($x58213940 Int) ($y58313941 Int) ($z58413942 Int))
    (=> (and (< $v58613944 10)
             ($main_inv211 $x58213940 $y58313941 $z58413942 $w58513943 $v58613944))
        ($main_inv211 $x58213940 $y58313941 $z58413942 $w58513943 (+ $v58613944 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($v58613949 Int) ($x58213945 Int) ($w58513948 Int) ($z58413947 Int) ($y58313946 Int))
    (=> (and ($main_sum211 $x58213945 $y58313946 $z58413947 $w58513948 $v58613949))
        ($__VERIFIER_assert_pre (mod $v58613949 4)))))

; forwards $main_inv210
(assert
  (forall (($v58613949 Int) ($x58213945 Int) ($w58513948 Int) ($z58413947 Int) ($y58313946 Int))
    (=> (and (__VERIFIER_assert (mod $v58613949 4))
             ($main_sum211 $x58213945 $y58313946 $z58413947 $w58513948 $v58613949))
        ($main_inv210 $x58213945 $y58313946 (+ $z58413947 1) $w58513948 $v58613949))))

; forwards $main_inv209
(assert
  (forall (($w58513953 Int) ($y58313951 Int) ($x58213950 Int) ($z58413952 Int) ($v58613954 Int))
    (=> (and ($main_sum210 $x58213950 $y58313951 $z58413952 $w58513953 $v58613954))
        ($main_inv209 $x58213950 (+ $y58313951 1) $z58413952 $w58513953 $v58613954))))

; forwards $main_inv208
(assert
  (forall (($y58313956 Int) ($w58513958 Int) ($x58213955 Int) ($v58613959 Int) ($z58413957 Int))
    (=> (and ($main_sum209 $x58213955 $y58313956 $z58413957 $w58513958 $v58613959))
        ($main_inv208 (+ $x58213955 1) $y58313956 $z58413957 $w58513958 $v58613959))))

; forwards $main_inv207
(assert
  (forall (($v58613964 Int) ($w58513963 Int) ($x58213960 Int) ($y58313961 Int) ($z58413962 Int))
    (=> (and ($main_sum208 $x58213960 $y58313961 $z58413962 $w58513963 $v58613964))
        ($main_inv207 $x58213960 $y58313961 $z58413962 (+ $w58513963 1) $v58613964))))

(check-sat)
