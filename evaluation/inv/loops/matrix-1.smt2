(set-logic HORN)

(declare-fun $main_inv255 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum256 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_if683 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv256 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if682 (Int) Bool)
(declare-fun $main_sum255 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15008 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15008))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if682 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15009 Int))
    (=> (and ($__VERIFIER_assert_if682 cond15009))
        (__VERIFIER_assert cond15009))))

; loop entry $main_inv255
(assert
  (forall (($int15010 Int) ($N_COL715 Int) ($k717 Int) ($N_LIN714 Int) ($matriz718 (Array Int (Array Int Int))))
    (=> (and (<= (- 2147483648) $int15010)
             (<= $int15010 2147483647)
             (= $N_COL715 1)
             (= $N_LIN714 1))
        ($main_inv255 $N_LIN714 $N_COL715 0 $k717 $matriz718 $int15010))))

; loop term $main_sum255
(assert
  (forall (($N_COL71515012 Int) ($maior71915016 Int) ($matriz71815015 (Array Int (Array Int Int))) ($N_LIN71415011 Int) ($j71615013 Int) ($k71715014 Int))
    (=> (and (not (< $j71615013 $N_COL71515012))
             ($main_inv255 $N_LIN71415011 $N_COL71515012 $j71615013 $k71715014 $matriz71815015 $maior71915016))
        ($main_sum255 $N_LIN71415011 $N_COL71515012 $j71615013 $k71715014 $matriz71815015 $maior71915016))))

; loop entry $main_inv256
(assert
  (forall (($N_COL71515012 Int) ($maior71915016 Int) ($matriz71815015 (Array Int (Array Int Int))) ($N_LIN71415011 Int) ($j71615013 Int) ($k71715014 Int))
    (=> (and (< $j71615013 $N_COL71515012)
             ($main_inv255 $N_LIN71415011 $N_COL71515012 $j71615013 $k71715014 $matriz71815015 $maior71915016))
        ($main_inv256 $N_LIN71415011 $N_COL71515012 $j71615013 0 $matriz71815015 $maior71915016))))

; loop term $main_sum256
(assert
  (forall (($j71615019 Int) ($k71715020 Int) ($N_COL71515018 Int) ($N_LIN71415017 Int) ($matriz71815021 (Array Int (Array Int Int))) ($maior71915022 Int))
    (=> (and (not (< $k71715020 $N_LIN71415017))
             ($main_inv256 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 $matriz71815021 $maior71915022))
        ($main_sum256 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 $matriz71815021 $maior71915022))))

; if then
(assert
  (forall (($j71615019 Int) ($k71715020 Int) ($N_COL71515018 Int) ($int15023 Int) ($N_LIN71415017 Int) ($matriz71815021 (Array Int (Array Int Int))) ($maior71915022 Int))
    (=> (and (>= (select (select (store $matriz71815021 $j71615019 (store (select $matriz71815021 $j71615019) $k71715020 $int15023)) $j71615019) $k71715020) $maior71915022)
             (<= (- 2147483648) $int15023)
             (<= $int15023 2147483647)
             (< $k71715020 $N_LIN71415017)
             ($main_inv256 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 $matriz71815021 $maior71915022))
        ($main_if683 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 (store $matriz71815021 $j71615019 (store (select $matriz71815021 $j71615019) $k71715020 $int15023)) (select (select (store $matriz71815021 $j71615019 (store (select $matriz71815021 $j71615019) $k71715020 $int15023)) $j71615019) $k71715020)))))

; if else
(assert
  (forall (($j71615019 Int) ($k71715020 Int) ($N_COL71515018 Int) ($int15023 Int) ($N_LIN71415017 Int) ($matriz71815021 (Array Int (Array Int Int))) ($maior71915022 Int))
    (=> (and (not (>= (select (select (store $matriz71815021 $j71615019 (store (select $matriz71815021 $j71615019) $k71715020 $int15023)) $j71615019) $k71715020) $maior71915022))
             (<= (- 2147483648) $int15023)
             (<= $int15023 2147483647)
             (< $k71715020 $N_LIN71415017)
             ($main_inv256 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 $matriz71815021 $maior71915022))
        ($main_if683 $N_LIN71415017 $N_COL71515018 $j71615019 $k71715020 (store $matriz71815021 $j71615019 (store (select $matriz71815021 $j71615019) $k71715020 $int15023)) $maior71915022))))

; forwards $main_inv256
(assert
  (forall (($maior71915029 Int) ($k71715027 Int) ($j71615026 Int) ($N_COL71515025 Int) ($matriz71815028 (Array Int (Array Int Int))) ($N_LIN71415024 Int))
    (=> (and ($main_if683 $N_LIN71415024 $N_COL71515025 $j71615026 $k71715027 $matriz71815028 $maior71915029))
        ($main_inv256 $N_LIN71415024 $N_COL71515025 $j71615026 (+ $k71715027 1) $matriz71815028 $maior71915029))))

; forwards $main_inv255
(assert
  (forall (($N_COL71515031 Int) ($j71615032 Int) ($k71715033 Int) ($matriz71815034 (Array Int (Array Int Int))) ($maior71915035 Int) ($N_LIN71415030 Int))
    (=> (and ($main_sum256 $N_LIN71415030 $N_COL71515031 $j71615032 $k71715033 $matriz71815034 $maior71915035))
        ($main_inv255 $N_LIN71415030 $N_COL71515031 (+ $j71615032 1) $k71715033 $matriz71815034 $maior71915035))))

; __VERIFIER_assert precondition
(assert
  (forall (($matriz71815040 (Array Int (Array Int Int))) ($maior71915041 Int) ($k71715039 Int) ($N_LIN71415036 Int) ($N_COL71515037 Int) ($j71615038 Int))
    (=> (and ($main_sum255 $N_LIN71415036 $N_COL71515037 $j71615038 $k71715039 $matriz71815040 $maior71915041))
        ($__VERIFIER_assert_pre (ite (<= (select (select $matriz71815040 0) 0) $maior71915041) 1 0)))))

(check-sat)
