(set-logic HORN)

(declare-fun $main_inv66 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv70 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum66 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum69 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum65 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv65 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv67 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv68 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv69 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum68 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum67 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum70 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if30 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond890 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond890))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if30 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond891 Int))
    (=> (and ($__VERIFIER_assert_if30 cond891))
        (__VERIFIER_assert cond891))))

; loop entry $main_inv65
(assert
  (forall (($B93 (Array Int (Array Int Int))) ($A92 (Array Int (Array Int Int))) ($n90 Int) ($p91 Int) ($m89 Int))
    (=> (and (= $p91 1800)
             (= $n90 1500)
             (= $m89 1000))
        ($main_inv65 0 0 $m89 $n90 $p91 $A92 $B93))))

; loop term $main_sum65
(assert
  (forall (($n90895 Int) ($p91896 Int) ($A92897 (Array Int (Array Int Int))) ($i87892 Int) ($B93898 (Array Int (Array Int Int))) ($m89894 Int) ($j88893 Int))
    (=> (and (not (< $i87892 $m89894))
             ($main_inv65 $i87892 $j88893 $m89894 $n90895 $p91896 $A92897 $B93898))
        ($main_sum65 $i87892 $j88893 $m89894 $n90895 $p91896 $A92897 $B93898))))

; loop entry $main_inv66
(assert
  (forall (($n90895 Int) ($p91896 Int) ($A92897 (Array Int (Array Int Int))) ($i87892 Int) ($B93898 (Array Int (Array Int Int))) ($m89894 Int) ($j88893 Int))
    (=> (and (< $i87892 $m89894)
             ($main_inv65 $i87892 $j88893 $m89894 $n90895 $p91896 $A92897 $B93898))
        ($main_inv66 $i87892 0 $m89894 $n90895 $p91896 $A92897 $B93898))))

; loop term $main_sum66
(assert
  (forall (($j88900 Int) ($n90902 Int) ($i87899 Int) ($A92904 (Array Int (Array Int Int))) ($p91903 Int) ($m89901 Int) ($B93905 (Array Int (Array Int Int))))
    (=> (and (not (< $j88900 $n90902))
             ($main_inv66 $i87899 $j88900 $m89901 $n90902 $p91903 $A92904 $B93905))
        ($main_sum66 $i87899 $j88900 $m89901 $n90902 $p91903 $A92904 $B93905))))

; forwards $main_inv66
(assert
  (forall (($j88900 Int) ($n90902 Int) ($i87899 Int) ($A92904 (Array Int (Array Int Int))) ($p91903 Int) ($m89901 Int) ($B93905 (Array Int (Array Int Int))) ($int906 Int))
    (=> (and (<= (- 2147483648) $int906)
             (<= $int906 2147483647)
             (< $j88900 $n90902)
             ($main_inv66 $i87899 $j88900 $m89901 $n90902 $p91903 $A92904 $B93905))
        ($main_inv66 $i87899 (+ $j88900 1) $m89901 $n90902 $p91903 $A92904 (store $B93905 $i87899 (store (select $B93905 $i87899) $j88900 $int906))))))

; forwards $main_inv65
(assert
  (forall (($n90910 Int) ($p91911 Int) ($m89909 Int) ($B93913 (Array Int (Array Int Int))) ($A92912 (Array Int (Array Int Int))) ($j88908 Int) ($i87907 Int))
    (=> (and ($main_sum66 $i87907 $j88908 $m89909 $n90910 $p91911 $A92912 $B93913))
        ($main_inv65 (+ $i87907 1) $j88908 $m89909 $n90910 $p91911 $A92912 $B93913))))

; loop entry $main_inv67
(assert
  (forall (($B93920 (Array Int (Array Int Int))) ($p91918 Int) ($j88915 Int) ($n90917 Int) ($i87914 Int) ($A92919 (Array Int (Array Int Int))) ($m89916 Int))
    (=> (and ($main_sum65 $i87914 $j88915 $m89916 $n90917 $p91918 $A92919 $B93920))
        ($main_inv67 0 0 $m89916 $n90917 $p91918 $A92919 $B93920))))

; loop term $main_sum67
(assert
  (forall (($B93927 (Array Int (Array Int Int))) ($m89923 Int) ($p91925 Int) ($i87921 Int) ($A92926 (Array Int (Array Int Int))) ($n90924 Int) ($j88922 Int))
    (=> (and (not (< $i87921 $m89923))
             ($main_inv67 $i87921 $j88922 $m89923 $n90924 $p91925 $A92926 $B93927))
        ($main_sum67 $i87921 $j88922 $m89923 $n90924 $p91925 $A92926 $B93927))))

; loop entry $main_inv68
(assert
  (forall (($B93927 (Array Int (Array Int Int))) ($m89923 Int) ($p91925 Int) ($i87921 Int) ($A92926 (Array Int (Array Int Int))) ($n90924 Int) ($j88922 Int))
    (=> (and (< $i87921 $m89923)
             ($main_inv67 $i87921 $j88922 $m89923 $n90924 $p91925 $A92926 $B93927))
        ($main_inv68 $i87921 0 $m89923 $n90924 $p91925 $A92926 $B93927))))

; loop term $main_sum68
(assert
  (forall (($j88929 Int) ($p91932 Int) ($A92933 (Array Int (Array Int Int))) ($B93934 (Array Int (Array Int Int))) ($n90931 Int) ($m89930 Int) ($i87928 Int))
    (=> (and (not (< $j88929 $n90931))
             ($main_inv68 $i87928 $j88929 $m89930 $n90931 $p91932 $A92933 $B93934))
        ($main_sum68 $i87928 $j88929 $m89930 $n90931 $p91932 $A92933 $B93934))))

; forwards $main_inv68
(assert
  (forall (($j88929 Int) ($p91932 Int) ($A92933 (Array Int (Array Int Int))) ($B93934 (Array Int (Array Int Int))) ($n90931 Int) ($m89930 Int) ($i87928 Int))
    (=> (and (< $j88929 $n90931)
             ($main_inv68 $i87928 $j88929 $m89930 $n90931 $p91932 $A92933 $B93934))
        ($main_inv68 $i87928 (+ $j88929 1) $m89930 $n90931 $p91932 (store $A92933 $i87928 (store (select $A92933 $i87928) $j88929 (select (select $B93934 (- (- $m89930 $i87928) 1)) (- (- $n90931 $j88929) 1)))) $B93934))))

; forwards $main_inv67
(assert
  (forall (($n90938 Int) ($p91939 Int) ($B93941 (Array Int (Array Int Int))) ($A92940 (Array Int (Array Int Int))) ($i87935 Int) ($m89937 Int) ($j88936 Int))
    (=> (and ($main_sum68 $i87935 $j88936 $m89937 $n90938 $p91939 $A92940 $B93941))
        ($main_inv67 (+ $i87935 1) $j88936 $m89937 $n90938 $p91939 $A92940 $B93941))))

; loop entry $main_inv69
(assert
  (forall (($p91946 Int) ($m89944 Int) ($B93948 (Array Int (Array Int Int))) ($i87942 Int) ($n90945 Int) ($j88943 Int) ($A92947 (Array Int (Array Int Int))))
    (=> (and ($main_sum67 $i87942 $j88943 $m89944 $n90945 $p91946 $A92947 $B93948))
        ($main_inv69 0 0 $m89944 $n90945 $p91946 $A92947 $B93948))))

; loop term $main_sum69
(assert
  (forall (($p91953 Int) ($m89951 Int) ($A92954 (Array Int (Array Int Int))) ($B93955 (Array Int (Array Int Int))) ($i87949 Int) ($n90952 Int) ($j88950 Int))
    (=> (and (not (< $i87949 $m89951))
             ($main_inv69 $i87949 $j88950 $m89951 $n90952 $p91953 $A92954 $B93955))
        ($main_sum69 $i87949 $j88950 $m89951 $n90952 $p91953 $A92954 $B93955))))

; loop entry $main_inv70
(assert
  (forall (($p91953 Int) ($m89951 Int) ($A92954 (Array Int (Array Int Int))) ($B93955 (Array Int (Array Int Int))) ($i87949 Int) ($n90952 Int) ($j88950 Int))
    (=> (and (< $i87949 $m89951)
             ($main_inv69 $i87949 $j88950 $m89951 $n90952 $p91953 $A92954 $B93955))
        ($main_inv70 $i87949 0 $m89951 $n90952 $p91953 $A92954 $B93955))))

; loop term $main_sum70
(assert
  (forall (($n90959 Int) ($A92961 (Array Int (Array Int Int))) ($m89958 Int) ($i87956 Int) ($B93962 (Array Int (Array Int Int))) ($j88957 Int) ($p91960 Int))
    (=> (and (not (< $j88957 $n90959))
             ($main_inv70 $i87956 $j88957 $m89958 $n90959 $p91960 $A92961 $B93962))
        ($main_sum70 $i87956 $j88957 $m89958 $n90959 $p91960 $A92961 $B93962))))

; __VERIFIER_assert precondition
(assert
  (forall (($n90959 Int) ($A92961 (Array Int (Array Int Int))) ($m89958 Int) ($i87956 Int) ($B93962 (Array Int (Array Int Int))) ($j88957 Int) ($p91960 Int))
    (=> (and (< $j88957 $n90959)
             ($main_inv70 $i87956 $j88957 $m89958 $n90959 $p91960 $A92961 $B93962))
        ($__VERIFIER_assert_pre (ite (= (select (select $A92961 $i87956) $j88957) (select (select $B93962 (- (- $m89958 $i87956) 1)) (- (- $n90959 $j88957) 1))) 1 0)))))

; forwards $main_inv70
(assert
  (forall (($n90959 Int) ($A92961 (Array Int (Array Int Int))) ($m89958 Int) ($i87956 Int) ($B93962 (Array Int (Array Int Int))) ($j88957 Int) ($p91960 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A92961 $i87956) $j88957) (select (select $B93962 (- (- $m89958 $i87956) 1)) (- (- $n90959 $j88957) 1))) 1 0))
             (< $j88957 $n90959)
             ($main_inv70 $i87956 $j88957 $m89958 $n90959 $p91960 $A92961 $B93962))
        ($main_inv70 $i87956 (+ $j88957 1) $m89958 $n90959 $p91960 $A92961 $B93962))))

; forwards $main_inv69
(assert
  (forall (($p91967 Int) ($i87963 Int) ($j88964 Int) ($A92968 (Array Int (Array Int Int))) ($n90966 Int) ($B93969 (Array Int (Array Int Int))) ($m89965 Int))
    (=> (and ($main_sum70 $i87963 $j88964 $m89965 $n90966 $p91967 $A92968 $B93969))
        ($main_inv69 (+ $i87963 1) $j88964 $m89965 $n90966 $p91967 $A92968 $B93969))))

(check-sat)
