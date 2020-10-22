(set-logic HORN)

(declare-fun $main_if154 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv427 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv426 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum427 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if153 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum426 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum424 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum425 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if152 (Int Int) Bool)
(declare-fun $main_inv424 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv425 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7904 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7904))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if152 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7905 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if152 cond cond7905))
        (__VERIFIER_assert cond7905))))

; loop entry $main_inv424
(assert
  (forall (($a1526 (Array Int Int)) ($a2527 (Array Int Int)) ($a3528 (Array Int Int)) ($x531 Int))
        ($main_inv424 $a1526 $a2527 $a3528 0 150000 $x531)))

; loop term $main_sum424
(assert
  (forall (($a35287908 (Array Int Int)) ($x5317911 Int) ($a25277907 (Array Int Int)) ($z5307910 Int) ($i5297909 Int) ($a15267906 (Array Int Int)))
    (=> (and (not (< $i5297909 200000)))
        ($main_sum424 $a15267906 $a25277907 $a35287908 $i5297909 $z5307910 $x5317911 $a15267906 $a25277907 $a35287908 $i5297909 $z5307910 $x5317911))))

; forwards $main_inv424
(assert
  (forall (($int7914 Int) ($a35287908 (Array Int Int)) ($int7913 Int) ($x5317911 Int) ($a25277907 (Array Int Int)) ($int7912 Int) ($z5307910 Int) ($i5297909 Int) ($a15267906 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7914)
             (<= $int7914 2147483647)
             (<= (- 2147483648) $int7913)
             (<= $int7913 2147483647)
             (<= (- 2147483648) $int7912)
             (<= $int7912 2147483647)
             (< $i5297909 200000)
             ($main_inv424 $a15267906 $a25277907 $a35287908 $i5297909 $z5307910 $x5317911))
        ($main_inv424 (store $a15267906 $i5297909 $int7912) (store $a25277907 $i5297909 $int7913) (store $a35287908 $i5297909 $int7914) (+ $i5297909 1) $z5307910 $x5317911))))

; backwards $main_sum424
(assert
  (forall (($int7914 Int) ($a35287908 (Array Int Int)) ($i5297918 Int) ($int7913 Int) ($x5317911 Int) ($x5317920 Int) ($a25277907 (Array Int Int)) ($int7912 Int) ($z5307910 Int) ($z5307919 Int) ($a15267915 (Array Int Int)) ($a25277916 (Array Int Int)) ($a15267906 (Array Int Int)) ($i5297909 Int) ($a35287917 (Array Int Int)))
    (=> (and ($main_sum424 (store $a15267906 $i5297909 $int7912) (store $a25277907 $i5297909 $int7913) (store $a35287908 $i5297909 $int7914) (+ $i5297909 1) $z5307910 $x5317911 $a15267915 $a25277916 $a35287917 $i5297918 $z5307919 $x5317920)
             (<= (- 2147483648) $int7914)
             (<= $int7914 2147483647)
             (<= (- 2147483648) $int7913)
             (<= $int7913 2147483647)
             (<= (- 2147483648) $int7912)
             (<= $int7912 2147483647)
             (< $i5297909 200000))
        ($main_sum424 $a15267906 $a25277907 $a35287908 $i5297909 $z5307910 $x5317911 $a15267915 $a25277916 $a35287917 $i5297918 $z5307919 $x5317920))))

; loop entry $main_inv425
(assert
  (forall (($a2527 (Array Int Int)) ($a35287923 (Array Int Int)) ($a15267921 (Array Int Int)) ($z5307925 Int) ($i5297924 Int) ($x531 Int) ($a1526 (Array Int Int)) ($a3528 (Array Int Int)) ($a25277922 (Array Int Int)) ($x5317926 Int))
    (=> (and ($main_sum424 $a1526 $a2527 $a3528 0 150000 $x531 $a15267921 $a25277922 $a35287923 $i5297924 $z5307925 $x5317926))
        ($main_inv425 $a15267921 $a25277922 $a35287923 0 $z5307925 $x5317926))))

; loop term $main_sum425
(assert
  (forall (($x5317932 Int) ($a15267927 (Array Int Int)) ($z5307931 Int) ($a25277928 (Array Int Int)) ($i5297930 Int) ($a35287929 (Array Int Int)))
    (=> (and (not (< $i5297930 200000)))
        ($main_sum425 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932))))

; if then
(assert
  (forall (($x5317932 Int) ($a15267927 (Array Int Int)) ($z5307931 Int) ($a25277928 (Array Int Int)) ($i5297930 Int) ($a35287929 (Array Int Int)))
    (=> (and (not (= $i5297930 $z5307931))
             (< $i5297930 200000)
             ($main_inv425 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932))
        ($main_if153 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267927 (store $a25277928 $i5297930 (select $a15267927 $i5297930)) $a35287929 $i5297930 $z5307931 $x5317932))))

; if else
(assert
  (forall (($x5317932 Int) ($a15267927 (Array Int Int)) ($z5307931 Int) ($a25277928 (Array Int Int)) ($i5297930 Int) ($a35287929 (Array Int Int)))
    (=> (and (= $i5297930 $z5307931)
             (< $i5297930 200000)
             ($main_inv425 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932))
        ($main_if153 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932))))

; forwards $main_inv425
(assert
  (forall (($x5317938 Int) ($a25277934 (Array Int Int)) ($a35287935 (Array Int Int)) ($x5317932 Int) ($a15267927 (Array Int Int)) ($z5307931 Int) ($z5307937 Int) ($a25277928 (Array Int Int)) ($i5297930 Int) ($a35287929 (Array Int Int)) ($i5297936 Int) ($a15267933 (Array Int Int)))
    (=> (and ($main_if153 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267933 $a25277934 $a35287935 $i5297936 $z5307937 $x5317938))
        ($main_inv425 $a15267933 $a25277934 $a35287935 (+ $i5297936 1) $z5307937 $x5317938))))

; backwards $main_sum425
(assert
  (forall (($x5317938 Int) ($a25277934 (Array Int Int)) ($a35287941 (Array Int Int)) ($a25277940 (Array Int Int)) ($a35287935 (Array Int Int)) ($x5317932 Int) ($a15267927 (Array Int Int)) ($z5307943 Int) ($a15267939 (Array Int Int)) ($z5307931 Int) ($z5307937 Int) ($a25277928 (Array Int Int)) ($i5297930 Int) ($a35287929 (Array Int Int)) ($i5297936 Int) ($a15267933 (Array Int Int)) ($x5317944 Int) ($i5297942 Int))
    (=> (and ($main_sum425 $a15267933 $a25277934 $a35287935 (+ $i5297936 1) $z5307937 $x5317938 $a15267939 $a25277940 $a35287941 $i5297942 $z5307943 $x5317944)
             ($main_if153 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267933 $a25277934 $a35287935 $i5297936 $z5307937 $x5317938))
        ($main_sum425 $a15267927 $a25277928 $a35287929 $i5297930 $z5307931 $x5317932 $a15267939 $a25277940 $a35287941 $i5297942 $z5307943 $x5317944))))

; loop entry $main_inv426
(assert
  (forall (($a35287947 (Array Int Int)) ($a15267921 (Array Int Int)) ($z5307925 Int) ($i5297924 Int) ($x531 Int) ($a25277946 (Array Int Int)) ($x5317950 Int) ($a1526 (Array Int Int)) ($i5297948 Int) ($a3528 (Array Int Int)) ($a15267945 (Array Int Int)) ($a2527 (Array Int Int)) ($a25277922 (Array Int Int)) ($x5317926 Int) ($z5307949 Int) ($a35287923 (Array Int Int)))
    (=> (and ($main_sum425 $a15267921 $a25277922 $a35287923 0 $z5307925 $x5317926 $a15267945 $a25277946 $a35287947 $i5297948 $z5307949 $x5317950)
             ($main_sum424 $a1526 $a2527 $a3528 0 150000 $x531 $a15267921 $a25277922 $a35287923 $i5297924 $z5307925 $x5317926))
        ($main_inv426 $a15267945 $a25277946 $a35287947 0 $z5307949 $x5317950))))

; loop term $main_sum426
(assert
  (forall (($i5297954 Int) ($x5317956 Int) ($a35287953 (Array Int Int)) ($a15267951 (Array Int Int)) ($z5307955 Int) ($a25277952 (Array Int Int)))
    (=> (and (not (< $i5297954 200000)))
        ($main_sum426 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956))))

; if then
(assert
  (forall (($i5297954 Int) ($x5317956 Int) ($a35287953 (Array Int Int)) ($a15267951 (Array Int Int)) ($z5307955 Int) ($a25277952 (Array Int Int)))
    (=> (and (not (= $i5297954 $z5307955))
             (< $i5297954 200000)
             ($main_inv426 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956))
        ($main_if154 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267951 $a25277952 (store $a35287953 $i5297954 (select $a25277952 $i5297954)) $i5297954 $z5307955 $x5317956))))

; if else
(assert
  (forall (($i5297954 Int) ($x5317956 Int) ($a35287953 (Array Int Int)) ($a15267951 (Array Int Int)) ($z5307955 Int) ($a25277952 (Array Int Int)))
    (=> (and (= $i5297954 $z5307955)
             (< $i5297954 200000)
             ($main_inv426 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956))
        ($main_if154 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267951 $a25277952 (store $a35287953 $i5297954 (select $a15267951 $i5297954)) $i5297954 $z5307955 $x5317956))))

; forwards $main_inv426
(assert
  (forall (($z5307961 Int) ($x5317962 Int) ($i5297960 Int) ($i5297954 Int) ($x5317956 Int) ($a25277958 (Array Int Int)) ($a15267951 (Array Int Int)) ($a35287959 (Array Int Int)) ($z5307955 Int) ($a25277952 (Array Int Int)) ($a15267957 (Array Int Int)) ($a35287953 (Array Int Int)))
    (=> (and ($main_if154 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267957 $a25277958 $a35287959 $i5297960 $z5307961 $x5317962))
        ($main_inv426 $a15267957 $a25277958 $a35287959 (+ $i5297960 1) $z5307961 $x5317962))))

; backwards $main_sum426
(assert
  (forall (($z5307961 Int) ($i5297960 Int) ($i5297954 Int) ($x5317956 Int) ($a35287965 (Array Int Int)) ($a25277958 (Array Int Int)) ($a15267951 (Array Int Int)) ($z5307967 Int) ($a25277952 (Array Int Int)) ($a15267963 (Array Int Int)) ($x5317962 Int) ($i5297966 Int) ($a15267957 (Array Int Int)) ($a35287953 (Array Int Int)) ($a25277964 (Array Int Int)) ($a35287959 (Array Int Int)) ($x5317968 Int) ($z5307955 Int))
    (=> (and ($main_sum426 $a15267957 $a25277958 $a35287959 (+ $i5297960 1) $z5307961 $x5317962 $a15267963 $a25277964 $a35287965 $i5297966 $z5307967 $x5317968)
             ($main_if154 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267957 $a25277958 $a35287959 $i5297960 $z5307961 $x5317962))
        ($main_sum426 $a15267951 $a25277952 $a35287953 $i5297954 $z5307955 $x5317956 $a15267963 $a25277964 $a35287965 $i5297966 $z5307967 $x5317968))))

; loop entry $main_inv427
(assert
  (forall (($a35287947 (Array Int Int)) ($a15267921 (Array Int Int)) ($z5307925 Int) ($a25277970 (Array Int Int)) ($a35287971 (Array Int Int)) ($i5297924 Int) ($x531 Int) ($a25277946 (Array Int Int)) ($x5317974 Int) ($a15267969 (Array Int Int)) ($x5317950 Int) ($a1526 (Array Int Int)) ($i5297948 Int) ($z5307973 Int) ($a3528 (Array Int Int)) ($i5297972 Int) ($a15267945 (Array Int Int)) ($a2527 (Array Int Int)) ($a25277922 (Array Int Int)) ($x5317926 Int) ($z5307949 Int) ($a35287923 (Array Int Int)))
    (=> (and ($main_sum426 $a15267945 $a25277946 $a35287947 0 $z5307949 $x5317950 $a15267969 $a25277970 $a35287971 $i5297972 $z5307973 $x5317974)
             ($main_sum425 $a15267921 $a25277922 $a35287923 0 $z5307925 $x5317926 $a15267945 $a25277946 $a35287947 $i5297948 $z5307949 $x5317950)
             ($main_sum424 $a1526 $a2527 $a3528 0 150000 $x531 $a15267921 $a25277922 $a35287923 $i5297924 $z5307925 $x5317926))
        ($main_inv427 $a15267969 $a25277970 $a35287971 $i5297972 $z5307973 0))))

; loop term $main_sum427
(assert
  (forall (($a15267975 (Array Int Int)) ($a25277976 (Array Int Int)) ($i5297978 Int) ($x5317980 Int) ($a35287977 (Array Int Int)) ($z5307979 Int))
    (=> (and (not (< $x5317980 200000)))
        ($main_sum427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 $x5317980 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 $x5317980))))

; __VERIFIER_assert precondition
(assert
  (forall (($a15267975 (Array Int Int)) ($a25277976 (Array Int Int)) ($i5297978 Int) ($x5317980 Int) ($a35287977 (Array Int Int)) ($z5307979 Int))
    (=> (and (< $x5317980 200000)
             ($main_inv427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 $x5317980))
        ($__VERIFIER_assert_pre (ite (= (select $a15267975 $x5317980) (select $a35287977 $x5317980)) 1 0)))))

; forwards $main_inv427
(assert
  (forall (($a15267975 (Array Int Int)) ($a25277976 (Array Int Int)) ($i5297978 Int) ($x5317980 Int) ($a35287977 (Array Int Int)) ($z5307979 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a15267975 $x5317980) (select $a35287977 $x5317980)) 1 0))
             (< $x5317980 200000)
             ($main_inv427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 $x5317980))
        ($main_inv427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 (+ $x5317980 1)))))

; backwards $main_sum427
(assert
  (forall (($i5297984 Int) ($a15267975 (Array Int Int)) ($i5297978 Int) ($x5317980 Int) ($a25277982 (Array Int Int)) ($a15267981 (Array Int Int)) ($a35287977 (Array Int Int)) ($z5307979 Int) ($a35287983 (Array Int Int)) ($a25277976 (Array Int Int)) ($x5317986 Int) ($z5307985 Int))
    (=> (and ($main_sum427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 (+ $x5317980 1) $a15267981 $a25277982 $a35287983 $i5297984 $z5307985 $x5317986)
             (__VERIFIER_assert (ite (= (select $a15267975 $x5317980) (select $a35287977 $x5317980)) 1 0))
             (< $x5317980 200000))
        ($main_sum427 $a15267975 $a25277976 $a35287977 $i5297978 $z5307979 $x5317980 $a15267981 $a25277982 $a35287983 $i5297984 $z5307985 $x5317986))))

(check-sat)
