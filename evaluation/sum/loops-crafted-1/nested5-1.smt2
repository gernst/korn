(set-logic HORN)

(declare-fun $__VERIFIER_assert_if598 (Int Int) Bool)
(declare-fun $main_sum209 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv208 (Int Int Int Int Int) Bool)
(declare-fun $main_sum211 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum208 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum207 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv207 (Int Int Int Int Int) Bool)
(declare-fun $main_inv211 (Int Int Int Int Int) Bool)
(declare-fun $main_inv209 (Int Int Int Int Int) Bool)
(declare-fun $main_inv210 (Int Int Int Int Int) Bool)
(declare-fun $main_sum210 (Int Int Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15033 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15033))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if598 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15034 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if598 cond cond15034))
        (__VERIFIER_assert cond15034))))

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
  (forall (($v58615039 Int) ($z58415037 Int) ($w58515038 Int) ($x58215035 Int) ($y58315036 Int))
    (=> (and (not (< $w58515038 268435455)))
        ($main_sum207 $x58215035 $y58315036 $z58415037 $w58515038 $v58615039 $x58215035 $y58315036 $z58415037 $w58515038 $v58615039))))

; loop entry $main_inv208
(assert
  (forall (($v58615039 Int) ($z58415037 Int) ($w58515038 Int) ($x58215035 Int) ($y58315036 Int))
    (=> (and (< $w58515038 268435455)
             ($main_inv207 $x58215035 $y58315036 $z58415037 $w58515038 $v58615039))
        ($main_inv208 0 $y58315036 $z58415037 $w58515038 $v58615039))))

; loop term $main_sum208
(assert
  (forall (($z58415042 Int) ($x58215040 Int) ($w58515043 Int) ($v58615044 Int) ($y58315041 Int))
    (=> (and (not (< $x58215040 10)))
        ($main_sum208 $x58215040 $y58315041 $z58415042 $w58515043 $v58615044 $x58215040 $y58315041 $z58415042 $w58515043 $v58615044))))

; loop entry $main_inv209
(assert
  (forall (($z58415042 Int) ($x58215040 Int) ($w58515043 Int) ($v58615044 Int) ($y58315041 Int))
    (=> (and (< $x58215040 10)
             ($main_inv208 $x58215040 $y58315041 $z58415042 $w58515043 $v58615044))
        ($main_inv209 $x58215040 0 $z58415042 $w58515043 $v58615044))))

; loop term $main_sum209
(assert
  (forall (($x58215045 Int) ($v58615049 Int) ($z58415047 Int) ($y58315046 Int) ($w58515048 Int))
    (=> (and (not (< $y58315046 10)))
        ($main_sum209 $x58215045 $y58315046 $z58415047 $w58515048 $v58615049 $x58215045 $y58315046 $z58415047 $w58515048 $v58615049))))

; loop entry $main_inv210
(assert
  (forall (($x58215045 Int) ($v58615049 Int) ($z58415047 Int) ($y58315046 Int) ($w58515048 Int))
    (=> (and (< $y58315046 10)
             ($main_inv209 $x58215045 $y58315046 $z58415047 $w58515048 $v58615049))
        ($main_inv210 $x58215045 $y58315046 0 $w58515048 $v58615049))))

; loop term $main_sum210
(assert
  (forall (($z58415052 Int) ($v58615054 Int) ($x58215050 Int) ($y58315051 Int) ($w58515053 Int))
    (=> (and (not (< $z58415052 10)))
        ($main_sum210 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054))))

; loop entry $main_inv211
(assert
  (forall (($z58415052 Int) ($v58615054 Int) ($x58215050 Int) ($y58315051 Int) ($w58515053 Int))
    (=> (and (< $z58415052 10)
             ($main_inv210 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054))
        ($main_inv211 $x58215050 $y58315051 $z58415052 $w58515053 0))))

; loop term $main_sum211
(assert
  (forall (($v58615059 Int) ($z58415057 Int) ($y58315056 Int) ($w58515058 Int) ($x58215055 Int))
    (=> (and (not (< $v58615059 10)))
        ($main_sum211 $x58215055 $y58315056 $z58415057 $w58515058 $v58615059 $x58215055 $y58315056 $z58415057 $w58515058 $v58615059))))

; forwards $main_inv211
(assert
  (forall (($v58615059 Int) ($z58415057 Int) ($y58315056 Int) ($w58515058 Int) ($x58215055 Int))
    (=> (and (< $v58615059 10)
             ($main_inv211 $x58215055 $y58315056 $z58415057 $w58515058 $v58615059))
        ($main_inv211 $x58215055 $y58315056 $z58415057 $w58515058 (+ $v58615059 1)))))

; backwards $main_sum211
(assert
  (forall (($z58415062 Int) ($z58415057 Int) ($y58315056 Int) ($v58615064 Int) ($v58615059 Int) ($y58315061 Int) ($x58215060 Int) ($w58515058 Int) ($w58515063 Int) ($x58215055 Int))
    (=> (and ($main_sum211 $x58215055 $y58315056 $z58415057 $w58515058 (+ $v58615059 1) $x58215060 $y58315061 $z58415062 $w58515063 $v58615064)
             (< $v58615059 10))
        ($main_sum211 $x58215055 $y58315056 $z58415057 $w58515058 $v58615059 $x58215060 $y58315061 $z58415062 $w58515063 $v58615064))))

; __VERIFIER_assert precondition
(assert
  (forall (($w58515068 Int) ($y58315066 Int) ($z58415052 Int) ($z58415067 Int) ($v58615054 Int) ($v58615069 Int) ($x58215065 Int) ($x58215050 Int) ($y58315051 Int) ($w58515053 Int))
    (=> (and ($main_sum211 $x58215050 $y58315051 $z58415052 $w58515053 0 $x58215065 $y58315066 $z58415067 $w58515068 $v58615069)
             (< $z58415052 10)
             ($main_inv210 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054))
        ($__VERIFIER_assert_pre (mod $v58615069 4)))))

; forwards $main_inv210
(assert
  (forall (($w58515068 Int) ($y58315066 Int) ($z58415052 Int) ($z58415067 Int) ($v58615054 Int) ($v58615069 Int) ($x58215065 Int) ($x58215050 Int) ($y58315051 Int) ($w58515053 Int))
    (=> (and (__VERIFIER_assert (mod $v58615069 4))
             ($main_sum211 $x58215050 $y58315051 $z58415052 $w58515053 0 $x58215065 $y58315066 $z58415067 $w58515068 $v58615069)
             (< $z58415052 10)
             ($main_inv210 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054))
        ($main_inv210 $x58215065 $y58315066 (+ $z58415067 1) $w58515068 $v58615069))))

; backwards $main_sum210
(assert
  (forall (($v58615074 Int) ($y58315066 Int) ($z58415052 Int) ($z58415067 Int) ($w58515073 Int) ($v58615054 Int) ($v58615069 Int) ($x58215065 Int) ($y58315051 Int) ($y58315071 Int) ($w58515053 Int) ($x58215070 Int) ($w58515068 Int) ($x58215050 Int) ($z58415072 Int))
    (=> (and ($main_sum210 $x58215065 $y58315066 (+ $z58415067 1) $w58515068 $v58615069 $x58215070 $y58315071 $z58415072 $w58515073 $v58615074)
             (__VERIFIER_assert (mod $v58615069 4))
             ($main_sum211 $x58215050 $y58315051 $z58415052 $w58515053 0 $x58215065 $y58315066 $z58415067 $w58515068 $v58615069)
             (< $z58415052 10))
        ($main_sum210 $x58215050 $y58315051 $z58415052 $w58515053 $v58615054 $x58215070 $y58315071 $z58415072 $w58515073 $v58615074))))

; forwards $main_inv209
(assert
  (forall (($x58215045 Int) ($y58315076 Int) ($v58615049 Int) ($v58615079 Int) ($w58515078 Int) ($z58415077 Int) ($z58415047 Int) ($x58215075 Int) ($y58315046 Int) ($w58515048 Int))
    (=> (and ($main_sum210 $x58215045 $y58315046 0 $w58515048 $v58615049 $x58215075 $y58315076 $z58415077 $w58515078 $v58615079)
             (< $y58315046 10)
             ($main_inv209 $x58215045 $y58315046 $z58415047 $w58515048 $v58615049))
        ($main_inv209 $x58215075 (+ $y58315076 1) $z58415077 $w58515078 $v58615079))))

; backwards $main_sum209
(assert
  (forall (($y58315081 Int) ($x58215080 Int) ($x58215045 Int) ($y58315076 Int) ($v58615049 Int) ($v58615079 Int) ($z58415082 Int) ($w58515078 Int) ($z58415077 Int) ($w58515083 Int) ($z58415047 Int) ($y58315046 Int) ($w58515048 Int) ($x58215075 Int) ($v58615084 Int))
    (=> (and ($main_sum209 $x58215075 (+ $y58315076 1) $z58415077 $w58515078 $v58615079 $x58215080 $y58315081 $z58415082 $w58515083 $v58615084)
             ($main_sum210 $x58215045 $y58315046 0 $w58515048 $v58615049 $x58215075 $y58315076 $z58415077 $w58515078 $v58615079)
             (< $y58315046 10))
        ($main_sum209 $x58215045 $y58315046 $z58415047 $w58515048 $v58615049 $x58215080 $y58315081 $z58415082 $w58515083 $v58615084))))

; forwards $main_inv208
(assert
  (forall (($z58415042 Int) ($x58215040 Int) ($v58615089 Int) ($w58515043 Int) ($v58615044 Int) ($z58415087 Int) ($y58315041 Int) ($y58315086 Int) ($x58215085 Int) ($w58515088 Int))
    (=> (and ($main_sum209 $x58215040 0 $z58415042 $w58515043 $v58615044 $x58215085 $y58315086 $z58415087 $w58515088 $v58615089)
             (< $x58215040 10)
             ($main_inv208 $x58215040 $y58315041 $z58415042 $w58515043 $v58615044))
        ($main_inv208 (+ $x58215085 1) $y58315086 $z58415087 $w58515088 $v58615089))))

; backwards $main_sum208
(assert
  (forall (($z58415042 Int) ($x58215040 Int) ($w58515093 Int) ($v58615089 Int) ($z58415092 Int) ($x58215090 Int) ($v58615094 Int) ($v58615044 Int) ($z58415087 Int) ($y58315041 Int) ($y58315086 Int) ($x58215085 Int) ($w58515088 Int) ($w58515043 Int) ($y58315091 Int))
    (=> (and ($main_sum208 (+ $x58215085 1) $y58315086 $z58415087 $w58515088 $v58615089 $x58215090 $y58315091 $z58415092 $w58515093 $v58615094)
             ($main_sum209 $x58215040 0 $z58415042 $w58515043 $v58615044 $x58215085 $y58315086 $z58415087 $w58515088 $v58615089)
             (< $x58215040 10))
        ($main_sum208 $x58215040 $y58315041 $z58415042 $w58515043 $v58615044 $x58215090 $y58315091 $z58415092 $w58515093 $v58615094))))

; forwards $main_inv207
(assert
  (forall (($y58315096 Int) ($v58615039 Int) ($z58415037 Int) ($w58515038 Int) ($x58215035 Int) ($z58415097 Int) ($y58315036 Int) ($w58515098 Int) ($x58215095 Int) ($v58615099 Int))
    (=> (and ($main_sum208 0 $y58315036 $z58415037 $w58515038 $v58615039 $x58215095 $y58315096 $z58415097 $w58515098 $v58615099)
             (< $w58515038 268435455)
             ($main_inv207 $x58215035 $y58315036 $z58415037 $w58515038 $v58615039))
        ($main_inv207 $x58215095 $y58315096 $z58415097 (+ $w58515098 1) $v58615099))))

; backwards $main_sum207
(assert
  (forall (($y58315096 Int) ($v58615039 Int) ($v58615104 Int) ($z58415037 Int) ($w58515038 Int) ($x58215035 Int) ($w58515103 Int) ($z58415102 Int) ($z58415097 Int) ($w58515098 Int) ($x58215100 Int) ($x58215095 Int) ($v58615099 Int) ($y58315101 Int) ($y58315036 Int))
    (=> (and ($main_sum207 $x58215095 $y58315096 $z58415097 (+ $w58515098 1) $v58615099 $x58215100 $y58315101 $z58415102 $w58515103 $v58615104)
             ($main_sum208 0 $y58315036 $z58415037 $w58515038 $v58615039 $x58215095 $y58315096 $z58415097 $w58515098 $v58615099)
             (< $w58515038 268435455))
        ($main_sum207 $x58215035 $y58315036 $z58415037 $w58515038 $v58615039 $x58215100 $y58315101 $z58415102 $w58515103 $v58615104))))

(check-sat)
