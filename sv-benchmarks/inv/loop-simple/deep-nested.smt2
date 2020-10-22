(set-logic HORN)

(declare-fun $main_inv239 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv236 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv237 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum240 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum237 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum238 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum236 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum239 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if675 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv240 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv238 (Int Int Int Int Int Int) Bool)

; loop entry $main_inv236
(assert
  (forall (($b686 Int) ($c687 Int) ($d688 Int) ($e689 Int))
        ($main_inv236 0 $b686 $c687 $d688 $e689 4294967295)))

; loop term $main_sum236
(assert
  (forall (($b68614754 Int) ($uint32_max69014758 Int) ($d68814756 Int) ($a68514753 Int) ($c68714755 Int) ($e68914757 Int))
    (=> (and (not (< $a68514753 (- $uint32_max69014758 1)))
             ($main_inv236 $a68514753 $b68614754 $c68714755 $d68814756 $e68914757 $uint32_max69014758))
        ($main_sum236 $a68514753 $b68614754 $c68714755 $d68814756 $e68914757 $uint32_max69014758))))

; loop entry $main_inv237
(assert
  (forall (($b68614754 Int) ($uint32_max69014758 Int) ($d68814756 Int) ($a68514753 Int) ($c68714755 Int) ($e68914757 Int))
    (=> (and (< $a68514753 (- $uint32_max69014758 1))
             ($main_inv236 $a68514753 $b68614754 $c68714755 $d68814756 $e68914757 $uint32_max69014758))
        ($main_inv237 $a68514753 0 $c68714755 $d68814756 $e68914757 $uint32_max69014758))))

; loop term $main_sum237
(assert
  (forall (($a68514759 Int) ($b68614760 Int) ($d68814762 Int) ($e68914763 Int) ($c68714761 Int) ($uint32_max69014764 Int))
    (=> (and (not (< $b68614760 (- $uint32_max69014764 1)))
             ($main_inv237 $a68514759 $b68614760 $c68714761 $d68814762 $e68914763 $uint32_max69014764))
        ($main_sum237 $a68514759 $b68614760 $c68714761 $d68814762 $e68914763 $uint32_max69014764))))

; loop entry $main_inv238
(assert
  (forall (($a68514759 Int) ($b68614760 Int) ($d68814762 Int) ($e68914763 Int) ($c68714761 Int) ($uint32_max69014764 Int))
    (=> (and (< $b68614760 (- $uint32_max69014764 1))
             ($main_inv237 $a68514759 $b68614760 $c68714761 $d68814762 $e68914763 $uint32_max69014764))
        ($main_inv238 $a68514759 $b68614760 0 $d68814762 $e68914763 $uint32_max69014764))))

; loop term $main_sum238
(assert
  (forall (($a68514765 Int) ($uint32_max69014770 Int) ($c68714767 Int) ($d68814768 Int) ($e68914769 Int) ($b68614766 Int))
    (=> (and (not (< $c68714767 (- $uint32_max69014770 1)))
             ($main_inv238 $a68514765 $b68614766 $c68714767 $d68814768 $e68914769 $uint32_max69014770))
        ($main_sum238 $a68514765 $b68614766 $c68714767 $d68814768 $e68914769 $uint32_max69014770))))

; loop entry $main_inv239
(assert
  (forall (($a68514765 Int) ($uint32_max69014770 Int) ($c68714767 Int) ($d68814768 Int) ($e68914769 Int) ($b68614766 Int))
    (=> (and (< $c68714767 (- $uint32_max69014770 1))
             ($main_inv238 $a68514765 $b68614766 $c68714767 $d68814768 $e68914769 $uint32_max69014770))
        ($main_inv239 $a68514765 $b68614766 $c68714767 0 $e68914769 $uint32_max69014770))))

; loop term $main_sum239
(assert
  (forall (($a68514771 Int) ($uint32_max69014776 Int) ($c68714773 Int) ($e68914775 Int) ($b68614772 Int) ($d68814774 Int))
    (=> (and (not (< $d68814774 (- $uint32_max69014776 1)))
             ($main_inv239 $a68514771 $b68614772 $c68714773 $d68814774 $e68914775 $uint32_max69014776))
        ($main_sum239 $a68514771 $b68614772 $c68714773 $d68814774 $e68914775 $uint32_max69014776))))

; loop entry $main_inv240
(assert
  (forall (($a68514771 Int) ($uint32_max69014776 Int) ($c68714773 Int) ($e68914775 Int) ($b68614772 Int) ($d68814774 Int))
    (=> (and (< $d68814774 (- $uint32_max69014776 1))
             ($main_inv239 $a68514771 $b68614772 $c68714773 $d68814774 $e68914775 $uint32_max69014776))
        ($main_inv240 $a68514771 $b68614772 $c68714773 $d68814774 0 $uint32_max69014776))))

; loop term $main_sum240
(assert
  (forall (($uint32_max69014782 Int) ($b68614778 Int) ($c68714779 Int) ($e68914781 Int) ($a68514777 Int) ($d68814780 Int))
    (=> (and (not (< $e68914781 (- $uint32_max69014782 1)))
             ($main_inv240 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))
        ($main_sum240 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))))

; error
(assert
  (forall (($uint32_max69014782 Int) ($b68614778 Int) ($c68714779 Int) ($e68914781 Int) ($a68514777 Int) ($d68814780 Int))
    (=> (and (= $a68514777 $b68614778)
             (= $b68614778 $c68714779)
             (= $c68714779 $d68814780)
             (= $d68814780 $e68914781)
             (= $e68914781 (- $uint32_max69014782 2))
             (< $e68914781 (- $uint32_max69014782 1))
             ($main_inv240 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))
        false)))

; if then
(assert
  (forall (($uint32_max69014782 Int) ($b68614778 Int) ($c68714779 Int) ($e68914781 Int) ($a68514777 Int) ($d68814780 Int))
    (=> (and (= $a68514777 $b68614778)
             (= $b68614778 $c68714779)
             (= $c68714779 $d68814780)
             (= $d68814780 $e68914781)
             (= $e68914781 (- $uint32_max69014782 2))
             (< $e68914781 (- $uint32_max69014782 1))
             ($main_inv240 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))
        ($main_if675 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))))

; if else
(assert
  (forall (($uint32_max69014782 Int) ($b68614778 Int) ($c68714779 Int) ($e68914781 Int) ($a68514777 Int) ($d68814780 Int))
    (=> (and (not (and (and (and (and (= $a68514777 $b68614778) (= $b68614778 $c68714779)) (= $c68714779 $d68814780)) (= $d68814780 $e68914781)) (= $e68914781 (- $uint32_max69014782 2))))
             (< $e68914781 (- $uint32_max69014782 1))
             ($main_inv240 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))
        ($main_if675 $a68514777 $b68614778 $c68714779 $d68814780 $e68914781 $uint32_max69014782))))

; forwards $main_inv240
(assert
  (forall (($uint32_max69014788 Int) ($e68914787 Int) ($b68614784 Int) ($c68714785 Int) ($d68814786 Int) ($a68514783 Int))
    (=> (and ($main_if675 $a68514783 $b68614784 $c68714785 $d68814786 $e68914787 $uint32_max69014788))
        ($main_inv240 $a68514783 $b68614784 $c68714785 $d68814786 (+ $e68914787 1) $uint32_max69014788))))

; forwards $main_inv239
(assert
  (forall (($d68814792 Int) ($e68914793 Int) ($uint32_max69014794 Int) ($a68514789 Int) ($c68714791 Int) ($b68614790 Int))
    (=> (and ($main_sum240 $a68514789 $b68614790 $c68714791 $d68814792 $e68914793 $uint32_max69014794))
        ($main_inv239 $a68514789 $b68614790 $c68714791 (+ $d68814792 1) $e68914793 $uint32_max69014794))))

; forwards $main_inv238
(assert
  (forall (($e68914799 Int) ($a68514795 Int) ($b68614796 Int) ($d68814798 Int) ($uint32_max69014800 Int) ($c68714797 Int))
    (=> (and ($main_sum239 $a68514795 $b68614796 $c68714797 $d68814798 $e68914799 $uint32_max69014800))
        ($main_inv238 $a68514795 $b68614796 (+ $c68714797 1) $d68814798 $e68914799 $uint32_max69014800))))

; forwards $main_inv237
(assert
  (forall (($d68814804 Int) ($e68914805 Int) ($a68514801 Int) ($c68714803 Int) ($b68614802 Int) ($uint32_max69014806 Int))
    (=> (and ($main_sum238 $a68514801 $b68614802 $c68714803 $d68814804 $e68914805 $uint32_max69014806))
        ($main_inv237 $a68514801 (+ $b68614802 1) $c68714803 $d68814804 $e68914805 $uint32_max69014806))))

; forwards $main_inv236
(assert
  (forall (($c68714809 Int) ($uint32_max69014812 Int) ($e68914811 Int) ($d68814810 Int) ($a68514807 Int) ($b68614808 Int))
    (=> (and ($main_sum237 $a68514807 $b68614808 $c68714809 $d68814810 $e68914811 $uint32_max69014812))
        ($main_inv236 (+ $a68514807 1) $b68614808 $c68714809 $d68814810 $e68914811 $uint32_max69014812))))

(check-sat)
