(set-logic HORN)

(declare-fun $main_inv272 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv276 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum273 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv273 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv275 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum270 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum276 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv274 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum274 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv270 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum277 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if77 (Int Int) Bool)
(declare-fun $main_sum271 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv271 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv277 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum275 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum272 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5717 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5717))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if77 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5718 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if77 cond cond5718))
        (__VERIFIER_assert cond5718))))

; loop entry $main_inv270
(assert
  (forall (($a352 (Array Int Int)) ($i353 Int) ($x354 Int))
    (=> (and (= $i353 0))
        ($main_inv270 $a352 $i353 $x354))))

; loop term $main_sum270
(assert
  (forall (($a3525719 (Array Int Int)) ($i3535720 Int) ($x3545721 Int))
    (=> (and (not (< $i3535720 100000)))
        ($main_sum270 $a3525719 $i3535720 $x3545721 $a3525719 $i3535720 $x3545721))))

; forwards $main_inv270
(assert
  (forall (($a3525719 (Array Int Int)) ($i3535720 Int) ($x3545721 Int))
    (=> (and (< $i3535720 100000)
             ($main_inv270 $a3525719 $i3535720 $x3545721))
        ($main_inv270 (store $a3525719 $i3535720 42) (+ $i3535720 1) $x3545721))))

; backwards $main_sum270
(assert
  (forall (($x3545721 Int) ($i3535723 Int) ($i3535720 Int) ($a3525719 (Array Int Int)) ($x3545724 Int) ($a3525722 (Array Int Int)))
    (=> (and ($main_sum270 (store $a3525719 $i3535720 42) (+ $i3535720 1) $x3545721 $a3525722 $i3535723 $x3545724)
             (< $i3535720 100000))
        ($main_sum270 $a3525719 $i3535720 $x3545721 $a3525722 $i3535723 $x3545724))))

; loop entry $main_inv271
(assert
  (forall (($a3525725 (Array Int Int)) ($x3545727 Int) ($i353 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv271 $a3525725 0 $x3545727))))

; loop term $main_sum271
(assert
  (forall (($a3525728 (Array Int Int)) ($i3535729 Int) ($x3545730 Int))
    (=> (and (not (< $i3535729 100000)))
        ($main_sum271 $a3525728 $i3535729 $x3545730 $a3525728 $i3535729 $x3545730))))

; forwards $main_inv271
(assert
  (forall (($a3525728 (Array Int Int)) ($i3535729 Int) ($x3545730 Int))
    (=> (and (< $i3535729 100000)
             ($main_inv271 $a3525728 $i3535729 $x3545730))
        ($main_inv271 (store $a3525728 $i3535729 43) (+ $i3535729 1) $x3545730))))

; backwards $main_sum271
(assert
  (forall (($a3525731 (Array Int Int)) ($x3545730 Int) ($i3535732 Int) ($a3525728 (Array Int Int)) ($i3535729 Int) ($x3545733 Int))
    (=> (and ($main_sum271 (store $a3525728 $i3535729 43) (+ $i3535729 1) $x3545730 $a3525731 $i3535732 $x3545733)
             (< $i3535729 100000))
        ($main_sum271 $a3525728 $i3535729 $x3545730 $a3525731 $i3535732 $x3545733))))

; loop entry $main_inv272
(assert
  (forall (($a3525725 (Array Int Int)) ($x3545736 Int) ($x3545727 Int) ($i353 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv272 $a3525734 0 $x3545736))))

; loop term $main_sum272
(assert
  (forall (($a3525737 (Array Int Int)) ($i3535738 Int) ($x3545739 Int))
    (=> (and (not (< $i3535738 100000)))
        ($main_sum272 $a3525737 $i3535738 $x3545739 $a3525737 $i3535738 $x3545739))))

; forwards $main_inv272
(assert
  (forall (($a3525737 (Array Int Int)) ($i3535738 Int) ($x3545739 Int))
    (=> (and (< $i3535738 100000)
             ($main_inv272 $a3525737 $i3535738 $x3545739))
        ($main_inv272 (store $a3525737 $i3535738 44) (+ $i3535738 1) $x3545739))))

; backwards $main_sum272
(assert
  (forall (($a3525740 (Array Int Int)) ($i3535738 Int) ($x3545742 Int) ($i3535741 Int) ($x3545739 Int) ($a3525737 (Array Int Int)))
    (=> (and ($main_sum272 (store $a3525737 $i3535738 44) (+ $i3535738 1) $x3545739 $a3525740 $i3535741 $x3545742)
             (< $i3535738 100000))
        ($main_sum272 $a3525737 $i3535738 $x3545739 $a3525740 $i3535741 $x3545742))))

; loop entry $main_inv273
(assert
  (forall (($x3545745 Int) ($a3525725 (Array Int Int)) ($x3545736 Int) ($x3545727 Int) ($i353 Int) ($a3525743 (Array Int Int)) ($i3535744 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum272 $a3525734 0 $x3545736 $a3525743 $i3535744 $x3545745)
             ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv273 $a3525743 0 $x3545745))))

; loop term $main_sum273
(assert
  (forall (($a3525746 (Array Int Int)) ($i3535747 Int) ($x3545748 Int))
    (=> (and (not (< $i3535747 100000)))
        ($main_sum273 $a3525746 $i3535747 $x3545748 $a3525746 $i3535747 $x3545748))))

; forwards $main_inv273
(assert
  (forall (($a3525746 (Array Int Int)) ($i3535747 Int) ($x3545748 Int))
    (=> (and (< $i3535747 100000)
             ($main_inv273 $a3525746 $i3535747 $x3545748))
        ($main_inv273 (store $a3525746 $i3535747 45) (+ $i3535747 1) $x3545748))))

; backwards $main_sum273
(assert
  (forall (($x3545748 Int) ($i3535747 Int) ($a3525749 (Array Int Int)) ($i3535750 Int) ($a3525746 (Array Int Int)) ($x3545751 Int))
    (=> (and ($main_sum273 (store $a3525746 $i3535747 45) (+ $i3535747 1) $x3545748 $a3525749 $i3535750 $x3545751)
             (< $i3535747 100000))
        ($main_sum273 $a3525746 $i3535747 $x3545748 $a3525749 $i3535750 $x3545751))))

; loop entry $main_inv274
(assert
  (forall (($i3535753 Int) ($x3545754 Int) ($x3545745 Int) ($a3525725 (Array Int Int)) ($x3545736 Int) ($x3545727 Int) ($i353 Int) ($a3525752 (Array Int Int)) ($a3525743 (Array Int Int)) ($i3535744 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum273 $a3525743 0 $x3545745 $a3525752 $i3535753 $x3545754)
             ($main_sum272 $a3525734 0 $x3545736 $a3525743 $i3535744 $x3545745)
             ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv274 $a3525752 0 $x3545754))))

; loop term $main_sum274
(assert
  (forall (($a3525755 (Array Int Int)) ($i3535756 Int) ($x3545757 Int))
    (=> (and (not (< $i3535756 100000)))
        ($main_sum274 $a3525755 $i3535756 $x3545757 $a3525755 $i3535756 $x3545757))))

; forwards $main_inv274
(assert
  (forall (($a3525755 (Array Int Int)) ($i3535756 Int) ($x3545757 Int))
    (=> (and (< $i3535756 100000)
             ($main_inv274 $a3525755 $i3535756 $x3545757))
        ($main_inv274 (store $a3525755 $i3535756 46) (+ $i3535756 1) $x3545757))))

; backwards $main_sum274
(assert
  (forall (($x3545757 Int) ($a3525755 (Array Int Int)) ($x3545760 Int) ($i3535759 Int) ($a3525758 (Array Int Int)) ($i3535756 Int))
    (=> (and ($main_sum274 (store $a3525755 $i3535756 46) (+ $i3535756 1) $x3545757 $a3525758 $i3535759 $x3545760)
             (< $i3535756 100000))
        ($main_sum274 $a3525755 $i3535756 $x3545757 $a3525758 $i3535759 $x3545760))))

; loop entry $main_inv275
(assert
  (forall (($i3535753 Int) ($x3545754 Int) ($x3545745 Int) ($a3525725 (Array Int Int)) ($x3545736 Int) ($x3545727 Int) ($i353 Int) ($a3525752 (Array Int Int)) ($a3525743 (Array Int Int)) ($i3535744 Int) ($x3545763 Int) ($a3525761 (Array Int Int)) ($i3535762 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum274 $a3525752 0 $x3545754 $a3525761 $i3535762 $x3545763)
             ($main_sum273 $a3525743 0 $x3545745 $a3525752 $i3535753 $x3545754)
             ($main_sum272 $a3525734 0 $x3545736 $a3525743 $i3535744 $x3545745)
             ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv275 $a3525761 0 $x3545763))))

; loop term $main_sum275
(assert
  (forall (($a3525764 (Array Int Int)) ($i3535765 Int) ($x3545766 Int))
    (=> (and (not (< $i3535765 100000)))
        ($main_sum275 $a3525764 $i3535765 $x3545766 $a3525764 $i3535765 $x3545766))))

; forwards $main_inv275
(assert
  (forall (($a3525764 (Array Int Int)) ($i3535765 Int) ($x3545766 Int))
    (=> (and (< $i3535765 100000)
             ($main_inv275 $a3525764 $i3535765 $x3545766))
        ($main_inv275 (store $a3525764 $i3535765 47) (+ $i3535765 1) $x3545766))))

; backwards $main_sum275
(assert
  (forall (($i3535768 Int) ($a3525764 (Array Int Int)) ($a3525767 (Array Int Int)) ($i3535765 Int) ($x3545769 Int) ($x3545766 Int))
    (=> (and ($main_sum275 (store $a3525764 $i3535765 47) (+ $i3535765 1) $x3545766 $a3525767 $i3535768 $x3545769)
             (< $i3535765 100000))
        ($main_sum275 $a3525764 $i3535765 $x3545766 $a3525767 $i3535768 $x3545769))))

; loop entry $main_inv276
(assert
  (forall (($i3535753 Int) ($x3545772 Int) ($x3545754 Int) ($x3545745 Int) ($i3535771 Int) ($a3525725 (Array Int Int)) ($x3545736 Int) ($x3545727 Int) ($i353 Int) ($a3525752 (Array Int Int)) ($a3525743 (Array Int Int)) ($a3525770 (Array Int Int)) ($i3535744 Int) ($x3545763 Int) ($a3525761 (Array Int Int)) ($i3535762 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum275 $a3525761 0 $x3545763 $a3525770 $i3535771 $x3545772)
             ($main_sum274 $a3525752 0 $x3545754 $a3525761 $i3535762 $x3545763)
             ($main_sum273 $a3525743 0 $x3545745 $a3525752 $i3535753 $x3545754)
             ($main_sum272 $a3525734 0 $x3545736 $a3525743 $i3535744 $x3545745)
             ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv276 $a3525770 0 $x3545772))))

; loop term $main_sum276
(assert
  (forall (($a3525773 (Array Int Int)) ($i3535774 Int) ($x3545775 Int))
    (=> (and (not (< $i3535774 100000)))
        ($main_sum276 $a3525773 $i3535774 $x3545775 $a3525773 $i3535774 $x3545775))))

; forwards $main_inv276
(assert
  (forall (($a3525773 (Array Int Int)) ($i3535774 Int) ($x3545775 Int))
    (=> (and (< $i3535774 100000)
             ($main_inv276 $a3525773 $i3535774 $x3545775))
        ($main_inv276 (store $a3525773 $i3535774 48) (+ $i3535774 1) $x3545775))))

; backwards $main_sum276
(assert
  (forall (($x3545778 Int) ($i3535774 Int) ($i3535777 Int) ($x3545775 Int) ($a3525773 (Array Int Int)) ($a3525776 (Array Int Int)))
    (=> (and ($main_sum276 (store $a3525773 $i3535774 48) (+ $i3535774 1) $x3545775 $a3525776 $i3535777 $x3545778)
             (< $i3535774 100000))
        ($main_sum276 $a3525773 $i3535774 $x3545775 $a3525776 $i3535777 $x3545778))))

; loop entry $main_inv277
(assert
  (forall (($i3535753 Int) ($x3545772 Int) ($x3545745 Int) ($i3535771 Int) ($a3525725 (Array Int Int)) ($x3545736 Int) ($i3535780 Int) ($x3545727 Int) ($i353 Int) ($a3525752 (Array Int Int)) ($a3525743 (Array Int Int)) ($a3525770 (Array Int Int)) ($i3535744 Int) ($x3545763 Int) ($a3525779 (Array Int Int)) ($a3525761 (Array Int Int)) ($x3545754 Int) ($x3545781 Int) ($i3535762 Int) ($a3525734 (Array Int Int)) ($i3535735 Int) ($i3535726 Int) ($x354 Int) ($a352 (Array Int Int)))
    (=> (and ($main_sum276 $a3525770 0 $x3545772 $a3525779 $i3535780 $x3545781)
             ($main_sum275 $a3525761 0 $x3545763 $a3525770 $i3535771 $x3545772)
             ($main_sum274 $a3525752 0 $x3545754 $a3525761 $i3535762 $x3545763)
             ($main_sum273 $a3525743 0 $x3545745 $a3525752 $i3535753 $x3545754)
             ($main_sum272 $a3525734 0 $x3545736 $a3525743 $i3535744 $x3545745)
             ($main_sum271 $a3525725 0 $x3545727 $a3525734 $i3535735 $x3545736)
             ($main_sum270 $a352 $i353 $x354 $a3525725 $i3535726 $x3545727)
             (= $i353 0))
        ($main_inv277 $a3525779 $i3535780 0))))

; loop term $main_sum277
(assert
  (forall (($a3525782 (Array Int Int)) ($i3535783 Int) ($x3545784 Int))
    (=> (and (not (< $x3545784 100000)))
        ($main_sum277 $a3525782 $i3535783 $x3545784 $a3525782 $i3535783 $x3545784))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3525782 (Array Int Int)) ($x3545784 Int) ($i3535783 Int))
    (=> (and (< $x3545784 100000)
             ($main_inv277 $a3525782 $i3535783 $x3545784))
        ($__VERIFIER_assert_pre (ite (= (select $a3525782 $x3545784) 47) 1 0)))))

; forwards $main_inv277
(assert
  (forall (($a3525782 (Array Int Int)) ($i3535783 Int) ($x3545784 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3525782 $x3545784) 47) 1 0))
             (< $x3545784 100000)
             ($main_inv277 $a3525782 $i3535783 $x3545784))
        ($main_inv277 $a3525782 $i3535783 (+ $x3545784 1)))))

; backwards $main_sum277
(assert
  (forall (($x3545784 Int) ($a3525782 (Array Int Int)) ($i3535786 Int) ($x3545787 Int) ($i3535783 Int) ($a3525785 (Array Int Int)))
    (=> (and ($main_sum277 $a3525782 $i3535783 (+ $x3545784 1) $a3525785 $i3535786 $x3545787)
             (__VERIFIER_assert (ite (= (select $a3525782 $x3545784) 47) 1 0))
             (< $x3545784 100000))
        ($main_sum277 $a3525782 $i3535783 $x3545784 $a3525785 $i3535786 $x3545787))))

(check-sat)
