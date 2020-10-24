(set-logic HORN)

(declare-fun $main_ERROR (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_end (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $__VERIFIER_nondet_long_pre () Bool)
(declare-fun $main_if1987 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if2000 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1994 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_switch_1_8466 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_switch_1_break (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1996 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_switch_1_8640 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1989 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum314 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1995 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_switch_1_8656 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_long (Int) Bool)
(declare-fun $main_inv314 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_8512 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1990 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1997 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1998 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1993 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1991 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $main_if1988 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1999 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if1992 (Int Int Int Int Int Int Int Int) Bool)

; loop entry $main_inv314
(assert
  (forall (($s__hit1625 Int) ($tmp___11627 Int) ($int122277 Int))
    (=> (and (= $s__hit1625 $int122277)
             (<= (- 2147483648) $int122277)
             (<= $int122277 2147483647))
        ($main_inv314 8466 $s__hit1625 0 $tmp___11627))))

; loop term $main_sum314
(assert
  (forall (($s__state1624122278 Int) ($s__hit1625122279 Int) ($blastFlag1626122280 Int) ($tmp___11627122281 Int))
    (=> (and (= 1 0))
        ($main_sum314 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281))))

; goto ERROR
(assert
  (forall (($s__state1624122278 Int) ($s__hit1625122279 Int) ($blastFlag1626122280 Int) ($tmp___11627122281 Int))
    (=> (and (<= $s__state1624122278 8512)
             (> $blastFlag1626122280 2)
             (not (= 1 0))
             ($main_inv314 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281))
        ($main_ERROR $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281))))

; if else
(assert
  (forall (($s__state1624122278 Int) ($s__hit1625122279 Int) ($blastFlag1626122280 Int) ($tmp___11627122281 Int))
    (=> (and (not (and (<= $s__state1624122278 8512) (> $blastFlag1626122280 2)))
             (not (= 1 0))
             ($main_inv314 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281))
        ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281))))

; goto switch_1_8466
(assert
  (forall (($tmp___11627122285 Int) ($blastFlag1626122280 Int) ($blastFlag1626122284 Int) ($s__hit1625122283 Int) ($s__state1624122282 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__state1624122282 8466)
             ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))
        ($main_switch_1_8466 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))))

; goto switch_1_8512
(assert
  (forall (($tmp___11627122285 Int) ($blastFlag1626122280 Int) ($blastFlag1626122284 Int) ($s__hit1625122283 Int) ($s__state1624122282 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__state1624122282 8512)
             (not (= $s__state1624122282 8466))
             ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))
        ($main_switch_1_8512 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))))

; goto switch_1_8640
(assert
  (forall (($tmp___11627122285 Int) ($blastFlag1626122280 Int) ($blastFlag1626122284 Int) ($s__hit1625122283 Int) ($s__state1624122282 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__state1624122282 8640)
             (not (= $s__state1624122282 8512))
             (not (= $s__state1624122282 8466))
             ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))
        ($main_switch_1_8640 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))))

; goto switch_1_8656
(assert
  (forall (($tmp___11627122285 Int) ($blastFlag1626122280 Int) ($blastFlag1626122284 Int) ($s__hit1625122283 Int) ($s__state1624122282 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__state1624122282 8656)
             (not (= $s__state1624122282 8640))
             (not (= $s__state1624122282 8512))
             (not (= $s__state1624122282 8466))
             ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))
        ($main_switch_1_8656 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))))

; goto end
(assert
  (forall (($tmp___11627122285 Int) ($blastFlag1626122280 Int) ($blastFlag1626122284 Int) ($s__hit1625122283 Int) ($s__state1624122282 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $s__state1624122282 8656))
             (not (= $s__state1624122282 8640))
             (not (= $s__state1624122282 8512))
             (not (= $s__state1624122282 8466))
             ($main_if1987 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))
        ($main_end $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122282 $s__hit1625122283 $blastFlag1626122284 $tmp___11627122285))))

; if then
(assert
  (forall (($s__state1624122286 Int) ($blastFlag1626122288 Int) ($tmp___11627122281 Int) ($s__hit1625122287 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($tmp___11627122289 Int) ($blastFlag1626122280 Int))
    (=> (and (= $blastFlag1626122288 0)
             ($main_switch_1_8466 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122286 $s__hit1625122287 $blastFlag1626122288 $tmp___11627122289))
        ($main_if1988 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122286 $s__hit1625122287 2 $tmp___11627122289))))

; if else
(assert
  (forall (($s__state1624122286 Int) ($blastFlag1626122288 Int) ($tmp___11627122281 Int) ($s__hit1625122287 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($tmp___11627122289 Int) ($blastFlag1626122280 Int))
    (=> (and (not (= $blastFlag1626122288 0))
             ($main_switch_1_8466 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122286 $s__hit1625122287 $blastFlag1626122288 $tmp___11627122289))
        ($main_if1988 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122286 $s__hit1625122287 $blastFlag1626122288 $tmp___11627122289))))

; if then
(assert
  (forall (($blastFlag1626122292 Int) ($blastFlag1626122280 Int) ($tmp___11627122293 Int) ($s__hit1625122291 Int) ($s__state1624122290 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $s__hit1625122291 0))
             ($main_if1988 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122290 $s__hit1625122291 $blastFlag1626122292 $tmp___11627122293))
        ($main_if1989 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8656 $s__hit1625122291 $blastFlag1626122292 $tmp___11627122293))))

; if else
(assert
  (forall (($blastFlag1626122292 Int) ($blastFlag1626122280 Int) ($tmp___11627122293 Int) ($s__hit1625122291 Int) ($s__state1624122290 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__hit1625122291 0)
             ($main_if1988 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122290 $s__hit1625122291 $blastFlag1626122292 $tmp___11627122293))
        ($main_if1989 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8512 $s__hit1625122291 $blastFlag1626122292 $tmp___11627122293))))

; goto switch_1_break
(assert
  (forall (($blastFlag1626122296 Int) ($blastFlag1626122280 Int) ($s__hit1625122295 Int) ($s__state1624122294 Int) ($tmp___11627122297 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and ($main_if1989 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122294 $s__hit1625122295 $blastFlag1626122296 $tmp___11627122297))
        ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122294 $s__hit1625122295 $blastFlag1626122296 $tmp___11627122297))))

; if then
(assert
  (forall (($tmp___11627122301 Int) ($blastFlag1626122280 Int) ($s__hit1625122299 Int) ($blastFlag1626122300 Int) ($int122302 Int) ($tmp___11627122281 Int) ($s__state1624122298 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $int122302 0))
             (<= (- 2147483648) $int122302)
             (<= $int122302 2147483647)
             ($main_switch_1_8512 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122298 $s__hit1625122299 $blastFlag1626122300 $tmp___11627122301))
        ($main_if1990 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8466 $s__hit1625122299 $blastFlag1626122300 $int122302))))

; if else
(assert
  (forall (($tmp___11627122301 Int) ($blastFlag1626122280 Int) ($s__hit1625122299 Int) ($blastFlag1626122300 Int) ($int122302 Int) ($tmp___11627122281 Int) ($s__state1624122298 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $int122302 0)
             (<= (- 2147483648) $int122302)
             (<= $int122302 2147483647)
             ($main_switch_1_8512 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122298 $s__hit1625122299 $blastFlag1626122300 $tmp___11627122301))
        ($main_if1990 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8640 $s__hit1625122299 $blastFlag1626122300 $int122302))))

; goto switch_1_break
(assert
  (forall (($s__state1624122303 Int) ($blastFlag1626122280 Int) ($s__hit1625122304 Int) ($blastFlag1626122305 Int) ($tmp___11627122306 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and ($main_if1990 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122303 $s__hit1625122304 $blastFlag1626122305 $tmp___11627122306))
        ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122303 $s__hit1625122304 $blastFlag1626122305 $tmp___11627122306))))

; if then
(assert
  (forall (($blastFlag1626122280 Int) ($s__hit1625122308 Int) ($blastFlag1626122309 Int) ($s__state1624122307 Int) ($tmp___11627122310 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $blastFlag1626122309 3)
             ($main_switch_1_8640 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122307 $s__hit1625122308 $blastFlag1626122309 $tmp___11627122310))
        ($main_if1991 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122307 $s__hit1625122308 4 $tmp___11627122310))))

; if else
(assert
  (forall (($blastFlag1626122280 Int) ($s__hit1625122308 Int) ($blastFlag1626122309 Int) ($s__state1624122307 Int) ($tmp___11627122310 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $blastFlag1626122309 3))
             ($main_switch_1_8640 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122307 $s__hit1625122308 $blastFlag1626122309 $tmp___11627122310))
        ($main_if1991 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122307 $s__hit1625122308 $blastFlag1626122309 $tmp___11627122310))))

; goto end
(assert
  (forall (($blastFlag1626122313 Int) ($blastFlag1626122280 Int) ($s__hit1625122312 Int) ($s__state1624122311 Int) ($tmp___11627122314 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $s__hit1625122312 0))
             ($main_if1991 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122311 $s__hit1625122312 $blastFlag1626122313 $tmp___11627122314))
        ($main_end $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122311 $s__hit1625122312 $blastFlag1626122313 $tmp___11627122314))))

; if else
(assert
  (forall (($blastFlag1626122313 Int) ($blastFlag1626122280 Int) ($s__hit1625122312 Int) ($s__state1624122311 Int) ($tmp___11627122314 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__hit1625122312 0)
             ($main_if1991 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122311 $s__hit1625122312 $blastFlag1626122313 $tmp___11627122314))
        ($main_if1992 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8656 $s__hit1625122312 $blastFlag1626122313 $tmp___11627122314))))

; goto switch_1_break
(assert
  (forall (($blastFlag1626122280 Int) ($s__hit1625122316 Int) ($tmp___11627122318 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($s__state1624122315 Int) ($blastFlag1626122317 Int))
    (=> (and ($main_if1992 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122315 $s__hit1625122316 $blastFlag1626122317 $tmp___11627122318))
        ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122315 $s__hit1625122316 $blastFlag1626122317 $tmp___11627122318))))

; if then
(assert
  (forall (($tmp___11627122322 Int) ($blastFlag1626122280 Int) ($s__hit1625122320 Int) ($s__state1624122319 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($blastFlag1626122321 Int) ($s__hit1625122279 Int))
    (=> (and (= $blastFlag1626122321 2)
             ($main_switch_1_8656 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122319 $s__hit1625122320 $blastFlag1626122321 $tmp___11627122322))
        ($main_if1993 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122319 $s__hit1625122320 3 $tmp___11627122322))))

; if else
(assert
  (forall (($tmp___11627122322 Int) ($blastFlag1626122280 Int) ($s__hit1625122320 Int) ($s__state1624122319 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($blastFlag1626122321 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $blastFlag1626122321 2))
             ($main_switch_1_8656 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122319 $s__hit1625122320 $blastFlag1626122321 $tmp___11627122322))
        ($main_if1993 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122319 $s__hit1625122320 $blastFlag1626122321 $tmp___11627122322))))

; goto ERROR
(assert
  (forall (($tmp___11627122326 Int) ($blastFlag1626122325 Int) ($blastFlag1626122280 Int) ($s__state1624122323 Int) ($s__hit1625122324 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $blastFlag1626122325 5)
             (not (= $blastFlag1626122325 4))
             ($main_if1993 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 $blastFlag1626122325 $tmp___11627122326))
        ($main_ERROR $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 $blastFlag1626122325 $tmp___11627122326))))

; if else
(assert
  (forall (($tmp___11627122326 Int) ($blastFlag1626122325 Int) ($blastFlag1626122280 Int) ($s__state1624122323 Int) ($s__hit1625122324 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $blastFlag1626122325 5))
             (not (= $blastFlag1626122325 4))
             ($main_if1993 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 $blastFlag1626122325 $tmp___11627122326))
        ($main_if1994 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 $blastFlag1626122325 $tmp___11627122326))))

; if then
(assert
  (forall (($tmp___11627122326 Int) ($blastFlag1626122325 Int) ($blastFlag1626122280 Int) ($s__state1624122323 Int) ($s__hit1625122324 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $blastFlag1626122325 4)
             ($main_if1993 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 $blastFlag1626122325 $tmp___11627122326))
        ($main_if1995 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122323 $s__hit1625122324 5 $tmp___11627122326))))

; if else
(assert
  (forall (($tmp___11627122330 Int) ($blastFlag1626122280 Int) ($s__hit1625122328 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__state1624122327 Int) ($blastFlag1626122329 Int) ($s__hit1625122279 Int))
    (=> (and ($main_if1994 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122327 $s__hit1625122328 $blastFlag1626122329 $tmp___11627122330))
        ($main_if1995 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122327 $s__hit1625122328 $blastFlag1626122329 $tmp___11627122330))))

; goto end
(assert
  (forall (($blastFlag1626122280 Int) ($s__hit1625122332 Int) ($tmp___11627122334 Int) ($tmp___11627122281 Int) ($blastFlag1626122333 Int) ($s__state1624122331 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (= $s__hit1625122332 0)
             ($main_if1995 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122331 $s__hit1625122332 $blastFlag1626122333 $tmp___11627122334))
        ($main_end $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122331 $s__hit1625122332 $blastFlag1626122333 $tmp___11627122334))))

; if then
(assert
  (forall (($blastFlag1626122280 Int) ($s__hit1625122332 Int) ($tmp___11627122334 Int) ($tmp___11627122281 Int) ($blastFlag1626122333 Int) ($s__state1624122331 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and (not (= $s__hit1625122332 0))
             ($main_if1995 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122331 $s__hit1625122332 $blastFlag1626122333 $tmp___11627122334))
        ($main_if1996 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 8640 $s__hit1625122332 $blastFlag1626122333 $tmp___11627122334))))

; goto switch_1_break
(assert
  (forall (($tmp___11627122338 Int) ($blastFlag1626122280 Int) ($s__hit1625122336 Int) ($blastFlag1626122337 Int) ($s__state1624122335 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and ($main_if1996 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122335 $s__hit1625122336 $blastFlag1626122337 $tmp___11627122338))
        ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122335 $s__hit1625122336 $blastFlag1626122337 $tmp___11627122338))))

; if else
(assert
  (forall (($blastFlag1626122341 Int) ($tmp___11627122281 Int) ($s__hit1625122340 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($s__state1624122339 Int) ($tmp___11627122342 Int) ($blastFlag1626122280 Int))
    (=> (and ($main_if1997 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122339 $s__hit1625122340 $blastFlag1626122341 $tmp___11627122342))
        ($main_if1998 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122339 $s__hit1625122340 $blastFlag1626122341 $tmp___11627122342))))

; if else
(assert
  (forall (($blastFlag1626122280 Int) ($tmp___11627122346 Int) ($s__hit1625122344 Int) ($blastFlag1626122345 Int) ($tmp___11627122281 Int) ($s__state1624122343 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int))
    (=> (and ($main_if1998 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122343 $s__hit1625122344 $blastFlag1626122345 $tmp___11627122346))
        ($main_if1999 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122343 $s__hit1625122344 $blastFlag1626122345 $tmp___11627122346))))

; if else
(assert
  (forall (($s__hit1625122348 Int) ($blastFlag1626122280 Int) ($blastFlag1626122349 Int) ($s__state1624122347 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($tmp___11627122281 Int) ($tmp___11627122350 Int))
    (=> (and ($main_if1999 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122347 $s__hit1625122348 $blastFlag1626122349 $tmp___11627122350))
        ($main_if2000 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122347 $s__hit1625122348 $blastFlag1626122349 $tmp___11627122350))))

; label switch_1_break
(assert
  (forall (($s__state1624122351 Int) ($s__hit1625122352 Int) ($tmp___11627122281 Int) ($blastFlag1626122353 Int) ($s__state1624122278 Int) ($s__hit1625122279 Int) ($tmp___11627122354 Int) ($blastFlag1626122280 Int))
    (=> (and ($main_if2000 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122351 $s__hit1625122352 $blastFlag1626122353 $tmp___11627122354))
        ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122351 $s__hit1625122352 $blastFlag1626122353 $tmp___11627122354))))

; forwards $main_inv314
(assert
  (forall (($s__hit1625122356 Int) ($blastFlag1626122280 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($tmp___11627122358 Int) ($s__hit1625122279 Int) ($blastFlag1626122357 Int) ($s__state1624122355 Int))
    (=> (and ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122355 $s__hit1625122356 $blastFlag1626122357 $tmp___11627122358))
        ($main_inv314 $s__state1624122355 $s__hit1625122356 $blastFlag1626122357 $tmp___11627122358))))

; backwards $main_sum314
(assert
  (forall (($s__state1624122359 Int) ($s__hit1625122356 Int) ($blastFlag1626122280 Int) ($s__hit1625122360 Int) ($tmp___11627122281 Int) ($s__state1624122278 Int) ($tmp___11627122358 Int) ($s__hit1625122279 Int) ($blastFlag1626122361 Int) ($tmp___11627122362 Int) ($blastFlag1626122357 Int) ($s__state1624122355 Int))
    (=> (and ($main_sum314 $s__state1624122355 $s__hit1625122356 $blastFlag1626122357 $tmp___11627122358 $s__state1624122359 $s__hit1625122360 $blastFlag1626122361 $tmp___11627122362)
             ($main_switch_1_break $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122355 $s__hit1625122356 $blastFlag1626122357 $tmp___11627122358))
        ($main_sum314 $s__state1624122278 $s__hit1625122279 $blastFlag1626122280 $tmp___11627122281 $s__state1624122359 $s__hit1625122360 $blastFlag1626122361 $tmp___11627122362))))

; label end
(assert
  (forall (($tmp___11627122366 Int) ($tmp___11627 Int) ($int122277 Int) ($blastFlag1626122365 Int) ($s__state1624 Int) ($s__hit1625 Int) ($blastFlag1626 Int) ($s__state1624122363 Int) ($s__hit1625122364 Int))
    (=> (and ($main_sum314 8466 $s__hit1625 0 $tmp___11627 $s__state1624122363 $s__hit1625122364 $blastFlag1626122365 $tmp___11627122366)
             (= $s__hit1625 $int122277)
             (<= (- 2147483648) $int122277)
             (<= $int122277 2147483647))
        ($main_end $s__state1624 $s__hit1625 $blastFlag1626 $tmp___11627 $s__state1624122363 $s__hit1625122364 $blastFlag1626122365 $tmp___11627122366))))

; error
(assert
  (forall (($tmp___11627 Int) ($tmp___11627122374 Int) ($blastFlag1626122373 Int) ($s__state1624 Int) ($s__hit1625 Int) ($blastFlag1626 Int) ($s__hit1625122372 Int) ($s__state1624122371 Int))
    (=> (and ($main_ERROR $s__state1624 $s__hit1625 $blastFlag1626 $tmp___11627 $s__state1624122371 $s__hit1625122372 $blastFlag1626122373 $tmp___11627122374))
        false)))

(check-sat)
