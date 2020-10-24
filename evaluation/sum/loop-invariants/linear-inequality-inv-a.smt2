(set-logic HORN)

(declare-fun $main_if526 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum129 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uchar_pre () Bool)
(declare-fun $main_if528 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if527 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv129 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uchar (Int) Bool)

; if else
(assert
  (forall (($uchar14005 Int) ($s461 Int) ($v460 Int) ($i462 Int) ($n459 Int))
    (=> (and (not (= $n459 0))
             (= $n459 $uchar14005)
             (<= 0 $uchar14005)
             (<= $uchar14005 255))
        ($main_if526 $n459 $v460 $s461 $i462 $n459 $v460 $s461 $i462))))

; loop entry $main_inv129
(assert
  (forall (($n45914006 Int) ($v46014007 Int) ($s461 Int) ($s46114008 Int) ($i46214009 Int) ($v460 Int) ($i462 Int) ($n459 Int))
    (=> (and (= $i46214009 0)
             (= $s46114008 0)
             (= $v46014007 0)
             ($main_if526 $n459 $v460 $s461 $i462 $n45914006 $v46014007 $s46114008 $i46214009))
        ($main_inv129 $n45914006 $v46014007 $s46114008 $i46214009))))

; loop term $main_sum129
(assert
  (forall (($n45914010 Int) ($v46014011 Int) ($s46114012 Int) ($i46214013 Int))
    (=> (and (not (< $i46214013 $n45914010)))
        ($main_sum129 $n45914010 $v46014011 $s46114012 $i46214013 $n45914010 $v46014011 $s46114012 $i46214013))))

; forwards $main_inv129
(assert
  (forall (($n45914010 Int) ($s46114012 Int) ($uchar14014 Int) ($i46214013 Int) ($v46014011 Int))
    (=> (and (<= 0 $uchar14014)
             (<= $uchar14014 255)
             (< $i46214013 $n45914010)
             ($main_inv129 $n45914010 $v46014011 $s46114012 $i46214013))
        ($main_inv129 $n45914010 $uchar14014 (+ $s46114012 $uchar14014) (+ $i46214013 1)))))

; backwards $main_sum129
(assert
  (forall (($s46114017 Int) ($n45914010 Int) ($s46114012 Int) ($uchar14014 Int) ($i46214013 Int) ($i46214018 Int) ($v46014011 Int) ($n45914015 Int) ($v46014016 Int))
    (=> (and ($main_sum129 $n45914010 $uchar14014 (+ $s46114012 $uchar14014) (+ $i46214013 1) $n45914015 $v46014016 $s46114017 $i46214018)
             (<= 0 $uchar14014)
             (<= $uchar14014 255)
             (< $i46214013 $n45914010))
        ($main_sum129 $n45914010 $v46014011 $s46114012 $i46214013 $n45914015 $v46014016 $s46114017 $i46214018))))

; error
(assert
  (forall (($n45914006 Int) ($i46214022 Int) ($s46114021 Int) ($v46014007 Int) ($v46014020 Int) ($s461 Int) ($s46114008 Int) ($i46214009 Int) ($v460 Int) ($n45914019 Int) ($i462 Int) ($n459 Int))
    (=> (and (< $s46114021 $v46014020)
             ($main_sum129 $n45914006 $v46014007 $s46114008 $i46214009 $n45914019 $v46014020 $s46114021 $i46214022)
             (= $i46214009 0)
             (= $s46114008 0)
             (= $v46014007 0)
             ($main_if526 $n459 $v460 $s461 $i462 $n45914006 $v46014007 $s46114008 $i46214009))
        false)))

; if else
(assert
  (forall (($n45914006 Int) ($i46214022 Int) ($s46114021 Int) ($v46014007 Int) ($v46014020 Int) ($s461 Int) ($s46114008 Int) ($i46214009 Int) ($v460 Int) ($n45914019 Int) ($i462 Int) ($n459 Int))
    (=> (and (not (< $s46114021 $v46014020))
             ($main_sum129 $n45914006 $v46014007 $s46114008 $i46214009 $n45914019 $v46014020 $s46114021 $i46214022)
             (= $i46214009 0)
             (= $s46114008 0)
             (= $v46014007 0)
             ($main_if526 $n459 $v460 $s461 $i462 $n45914006 $v46014007 $s46114008 $i46214009))
        ($main_if527 $n459 $v460 $s461 $i462 $n45914019 $v46014020 $s46114021 $i46214022))))

; error
(assert
  (forall (($s46114025 Int) ($i46214026 Int) ($s461 Int) ($v46014024 Int) ($n45914023 Int) ($v460 Int) ($i462 Int) ($n459 Int))
    (=> (and (> $s46114025 65025)
             ($main_if527 $n459 $v460 $s461 $i462 $n45914023 $v46014024 $s46114025 $i46214026))
        false)))

; if else
(assert
  (forall (($s46114025 Int) ($i46214026 Int) ($s461 Int) ($v46014024 Int) ($n45914023 Int) ($v460 Int) ($i462 Int) ($n459 Int))
    (=> (and (not (> $s46114025 65025))
             ($main_if527 $n459 $v460 $s461 $i462 $n45914023 $v46014024 $s46114025 $i46214026))
        ($main_if528 $n459 $v460 $s461 $i462 $n45914023 $v46014024 $s46114025 $i46214026))))

(check-sat)
