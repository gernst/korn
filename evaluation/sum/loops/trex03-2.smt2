(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_if710 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if711 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if709 (Int Int) Bool)
(declare-fun $main_inv273 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum273 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16835 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16835))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if709 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16836 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if709 cond cond16836))
        (__VERIFIER_assert cond16836))))

; loop entry $main_inv273
(assert
  (forall (($d3766 Int) ($x3763 Int) ($c1767 Int) ($uint16837 Int) ($uint16839 Int) ($bool16841 Int) ($x2762 Int) ($uint16838 Int) ($x1761 Int) ($c2768 Int) ($bool16840 Int) ($d2765 Int) ($d1764 Int))
    (=> (and (= $c2768 $bool16841)
             (or (= $bool16841 0) (= $bool16841 1))
             (= $c1767 $bool16840)
             (or (= $bool16840 0) (= $bool16840 1))
             (= $d3766 1)
             (= $d2765 1)
             (= $d1764 1)
             (= $x3763 $uint16839)
             (<= 0 $uint16839)
             (<= $uint16839 4294967295)
             (= $x2762 $uint16838)
             (<= 0 $uint16838)
             (<= $uint16838 4294967295)
             (= $x1761 $uint16837)
             (<= 0 $uint16837)
             (<= $uint16837 4294967295))
        ($main_inv273 $x1761 $x2762 $x3763 $d1764 $d2765 $d3766 $c1767 $c2768))))

; loop term $main_sum273
(assert
  (forall (($d376616847 Int) ($x276216843 Int) ($x176116842 Int) ($d276516846 Int) ($d176416845 Int) ($c176716848 Int) ($c276816849 Int) ($x376316844 Int))
    (=> (and (not (and (and (> $x176116842 0) (> $x276216843 0)) (> $x376316844 0))))
        ($main_sum273 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))))

; if then
(assert
  (forall (($d376616847 Int) ($x276216843 Int) ($x176116842 Int) ($d276516846 Int) ($d176416845 Int) ($c176716848 Int) ($c276816849 Int) ($x376316844 Int))
    (=> (and (not (= $c276816849 0))
             (= $c176716848 0)
             (> $x176116842 0)
             (> $x276216843 0)
             (> $x376316844 0)
             ($main_inv273 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))
        ($main_if710 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116842 (- $x276216843 $d276516846) $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))))

; if else
(assert
  (forall (($d376616847 Int) ($x276216843 Int) ($x176116842 Int) ($d276516846 Int) ($d176416845 Int) ($c176716848 Int) ($c276816849 Int) ($x376316844 Int))
    (=> (and (= $c276816849 0)
             (= $c176716848 0)
             (> $x176116842 0)
             (> $x276216843 0)
             (> $x376316844 0)
             ($main_inv273 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))
        ($main_if710 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116842 $x276216843 (- $x376316844 $d376616847) $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))))

; if then
(assert
  (forall (($d376616847 Int) ($x276216843 Int) ($x176116842 Int) ($d276516846 Int) ($d176416845 Int) ($c176716848 Int) ($c276816849 Int) ($x376316844 Int))
    (=> (and (not (= $c176716848 0))
             (> $x176116842 0)
             (> $x276216843 0)
             (> $x376316844 0)
             ($main_inv273 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))
        ($main_if711 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 (- $x176116842 $d176416845) $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849))))

; if else
(assert
  (forall (($x376316852 Int) ($d376616847 Int) ($x276216843 Int) ($x176116842 Int) ($d276516854 Int) ($d276516846 Int) ($d176416845 Int) ($c176716856 Int) ($c176716848 Int) ($d376616855 Int) ($c276816849 Int) ($d176416853 Int) ($x276216851 Int) ($c276816857 Int) ($x176116850 Int) ($x376316844 Int))
    (=> (and ($main_if710 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116850 $x276216851 $x376316852 $d176416853 $d276516854 $d376616855 $c176716856 $c276816857))
        ($main_if711 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116850 $x276216851 $x376316852 $d176416853 $d276516854 $d376616855 $c176716856 $c276816857))))

; forwards $main_inv273
(assert
  (forall (($d376616863 Int) ($d376616847 Int) ($c276816865 Int) ($bool16867 Int) ($x376316860 Int) ($x176116842 Int) ($x276216859 Int) ($d276516846 Int) ($x176116858 Int) ($d176416845 Int) ($d176416861 Int) ($c276816849 Int) ($x376316844 Int) ($bool16866 Int) ($c176716864 Int) ($x276216843 Int) ($c176716848 Int) ($d276516862 Int))
    (=> (and (or (= $bool16867 0) (= $bool16867 1))
             (or (= $bool16866 0) (= $bool16866 1))
             ($main_if711 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116858 $x276216859 $x376316860 $d176416861 $d276516862 $d376616863 $c176716864 $c276816865))
        ($main_inv273 $x176116858 $x276216859 $x376316860 $d176416861 $d276516862 $d376616863 $bool16866 $bool16867))))

; backwards $main_sum273
(assert
  (forall (($x276216869 Int) ($d376616863 Int) ($d376616847 Int) ($c276816865 Int) ($bool16867 Int) ($d176416871 Int) ($x376316860 Int) ($x176116842 Int) ($x276216859 Int) ($x176116868 Int) ($d276516846 Int) ($d376616873 Int) ($x376316870 Int) ($x176116858 Int) ($d176416845 Int) ($d176416861 Int) ($c176716874 Int) ($d276516872 Int) ($x376316844 Int) ($bool16866 Int) ($c176716864 Int) ($x276216843 Int) ($c176716848 Int) ($d276516862 Int) ($c276816849 Int) ($c276816875 Int))
    (=> (and ($main_sum273 $x176116858 $x276216859 $x376316860 $d176416861 $d276516862 $d376616863 $bool16866 $bool16867 $x176116868 $x276216869 $x376316870 $d176416871 $d276516872 $d376616873 $c176716874 $c276816875)
             (or (= $bool16867 0) (= $bool16867 1))
             (or (= $bool16866 0) (= $bool16866 1))
             ($main_if711 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116858 $x276216859 $x376316860 $d176416861 $d276516862 $d376616863 $c176716864 $c276816865))
        ($main_sum273 $x176116842 $x276216843 $x376316844 $d176416845 $d276516846 $d376616847 $c176716848 $c276816849 $x176116868 $x276216869 $x376316870 $d176416871 $d276516872 $d376616873 $c176716874 $c276816875))))

; __VERIFIER_assert precondition
(assert
  (forall (($d3766 Int) ($uint16837 Int) ($uint16839 Int) ($x2762 Int) ($x1761 Int) ($c276816883 Int) ($c2768 Int) ($bool16840 Int) ($x176116876 Int) ($x3763 Int) ($d2765 Int) ($d1764 Int) ($d176416879 Int) ($d276516880 Int) ($x376316878 Int) ($d376616881 Int) ($c1767 Int) ($bool16841 Int) ($x276216877 Int) ($uint16838 Int) ($c176716882 Int))
    (=> (and ($main_sum273 $x1761 $x2762 $x3763 $d1764 $d2765 $d3766 $c1767 $c2768 $x176116876 $x276216877 $x376316878 $d176416879 $d276516880 $d376616881 $c176716882 $c276816883)
             (= $c2768 $bool16841)
             (or (= $bool16841 0) (= $bool16841 1))
             (= $c1767 $bool16840)
             (or (= $bool16840 0) (= $bool16840 1))
             (= $d3766 1)
             (= $d2765 1)
             (= $d1764 1)
             (= $x3763 $uint16839)
             (<= 0 $uint16839)
             (<= $uint16839 4294967295)
             (= $x2762 $uint16838)
             (<= 0 $uint16838)
             (<= $uint16838 4294967295)
             (= $x1761 $uint16837)
             (<= 0 $uint16837)
             (<= $uint16837 4294967295))
        ($__VERIFIER_assert_pre (ite (or (or (= $x176116876 0) (= $x276216877 0)) (= $x376316878 0)) 1 0)))))

(check-sat)
