(set-logic HORN)

(declare-fun $main_sum15 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $mapsum_inv13 ((Array Int Int) Int Int) Bool)
(declare-fun $mapsum_sum13 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if5 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum14 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv15 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv14 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $mapsum_inv13
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv13 x 0 0))))

; loop term $mapsum_sum13
(assert
  (forall ((x181 (Array Int Int)) ($i37182 Int) ($ret38183 Int))
    (=> (and (not (< $i37182 100))
             ($mapsum_inv13 x181 $i37182 $ret38183))
        ($mapsum_sum13 x181 $i37182 $ret38183))))

; forwards $mapsum_inv13
(assert
  (forall ((x181 (Array Int Int)) ($i37182 Int) ($ret38183 Int))
    (=> (and (< $i37182 100)
             ($mapsum_inv13 x181 $i37182 $ret38183))
        ($mapsum_inv13 x181 (+ $i37182 1) (+ (+ $ret38183 $i37182) (select x181 $i37182))))))

; post mapsum
(assert
  (forall ((x184 (Array Int Int)) ($ret38186 Int) ($i37185 Int))
    (=> (and ($mapsum_sum13 x184 $i37185 $ret38186))
        (mapsum x184 $ret38186))))

; loop entry $main_inv14
(assert
  (forall (($x39 (Array Int Int)) ($ret242 Int) ($i45 Int) ($ret41 Int) ($i44 Int) ($ret543 Int) ($temp40 Int))
    (=> (and (= $i44 0))
        ($main_inv14 $x39 $temp40 $ret41 $ret242 $ret543 $i44 $i45))))

; loop term $main_sum14
(assert
  (forall (($ret41189 Int) ($x39187 (Array Int Int)) ($ret242190 Int) ($temp40188 Int) ($i45193 Int) ($ret543191 Int) ($i44192 Int))
    (=> (and (not (< $i44192 100))
             ($main_inv14 $x39187 $temp40188 $ret41189 $ret242190 $ret543191 $i44192 $i45193))
        ($main_sum14 $x39187 $temp40188 $ret41189 $ret242190 $ret543191 $i44192 $i45193))))

; forwards $main_inv14
(assert
  (forall (($int194 Int) ($ret41189 Int) ($x39187 (Array Int Int)) ($ret242190 Int) ($temp40188 Int) ($i45193 Int) ($ret543191 Int) ($i44192 Int))
    (=> (and (<= (- 2147483648) $int194)
             (<= $int194 2147483647)
             (< $i44192 100)
             ($main_inv14 $x39187 $temp40188 $ret41189 $ret242190 $ret543191 $i44192 $i45193))
        ($main_inv14 (store $x39187 $i44192 $int194) $temp40188 $ret41189 $ret242190 $ret543191 (+ $i44192 1) $i45193))))

; mapsum precondition
(assert
  (forall (($temp40196 Int) ($x39195 (Array Int Int)) ($ret41197 Int) ($ret242198 Int) ($ret543199 Int) ($i45201 Int) ($i44200 Int))
    (=> (and ($main_sum14 $x39195 $temp40196 $ret41197 $ret242198 $ret543199 $i44200 $i45201))
        ($mapsum_pre $x39195))))

; mapsum precondition
(assert
  (forall (($temp40196 Int) ($x39195 (Array Int Int)) ($ret41197 Int) ($ret242198 Int) ($result202 Int) ($ret543199 Int) ($i45201 Int) ($i44200 Int))
    (=> (and (mapsum $x39195 $result202)
             ($main_sum14 $x39195 $temp40196 $ret41197 $ret242198 $ret543199 $i44200 $i45201))
        ($mapsum_pre (store (store $x39195 0 (select $x39195 1)) 1 (select $x39195 0))))))

; loop entry $main_inv15
(assert
  (forall (($temp40196 Int) ($x39195 (Array Int Int)) ($ret41197 Int) ($result203 Int) ($ret242198 Int) ($result202 Int) ($ret543199 Int) ($i45201 Int) ($i44200 Int))
    (=> (and (= $i45201 0)
             (mapsum (store (store $x39195 0 (select $x39195 1)) 1 (select $x39195 0)) $result203)
             (mapsum $x39195 $result202)
             ($main_sum14 $x39195 $temp40196 $ret41197 $ret242198 $ret543199 $i44200 $i45201))
        ($main_inv15 (store (store $x39195 0 (select $x39195 1)) 1 (select $x39195 0)) (select (store (store $x39195 0 (select $x39195 1)) 1 (select $x39195 0)) 0) $result202 $result203 $ret543199 $i44200 $i45201))))

; loop term $main_sum15
(assert
  (forall (($ret41206 Int) ($x39204 (Array Int Int)) ($temp40205 Int) ($ret242207 Int) ($i44209 Int) ($i45210 Int) ($ret543208 Int))
    (=> (and (not (< $i45210 (- 100 1)))
             ($main_inv15 $x39204 $temp40205 $ret41206 $ret242207 $ret543208 $i44209 $i45210))
        ($main_sum15 $x39204 $temp40205 $ret41206 $ret242207 $ret543208 $i44209 $i45210))))

; forwards $main_inv15
(assert
  (forall (($ret41206 Int) ($x39204 (Array Int Int)) ($temp40205 Int) ($ret242207 Int) ($i44209 Int) ($i45210 Int) ($ret543208 Int))
    (=> (and (< $i45210 (- 100 1))
             ($main_inv15 $x39204 $temp40205 $ret41206 $ret242207 $ret543208 $i44209 $i45210))
        ($main_inv15 (store $x39204 $i45210 (select $x39204 (+ $i45210 1))) $temp40205 $ret41206 $ret242207 $ret543208 $i44209 (+ $i45210 1)))))

; mapsum precondition
(assert
  (forall (($ret242214 Int) ($i45217 Int) ($ret543215 Int) ($i44216 Int) ($temp40212 Int) ($x39211 (Array Int Int)) ($ret41213 Int))
    (=> (and ($main_sum15 $x39211 $temp40212 $ret41213 $ret242214 $ret543215 $i44216 $i45217))
        ($mapsum_pre (store $x39211 (- 100 1) $temp40212)))))

; error
(assert
  (forall (($ret242214 Int) ($i45217 Int) ($ret543215 Int) ($i44216 Int) ($temp40212 Int) ($x39211 (Array Int Int)) ($result218 Int) ($ret41213 Int))
    (=> (and (or (not (= $ret41213 $ret242214)) (not (= $ret41213 $result218)))
             (mapsum (store $x39211 (- 100 1) $temp40212) $result218)
             ($main_sum15 $x39211 $temp40212 $ret41213 $ret242214 $ret543215 $i44216 $i45217))
        false)))

; if then
(assert
  (forall (($ret242214 Int) ($i45217 Int) ($ret543215 Int) ($i44216 Int) ($temp40212 Int) ($x39211 (Array Int Int)) ($result218 Int) ($ret41213 Int))
    (=> (and (or (not (= $ret41213 $ret242214)) (not (= $ret41213 $result218)))
             (mapsum (store $x39211 (- 100 1) $temp40212) $result218)
             ($main_sum15 $x39211 $temp40212 $ret41213 $ret242214 $ret543215 $i44216 $i45217))
        ($main_if5 (store $x39211 (- 100 1) $temp40212) $temp40212 $ret41213 $ret242214 $result218 $i44216 $i45217))))

; if else
(assert
  (forall (($ret242214 Int) ($i45217 Int) ($ret543215 Int) ($i44216 Int) ($temp40212 Int) ($x39211 (Array Int Int)) ($result218 Int) ($ret41213 Int))
    (=> (and (not (or (not (= $ret41213 $ret242214)) (not (= $ret41213 $result218))))
             (mapsum (store $x39211 (- 100 1) $temp40212) $result218)
             ($main_sum15 $x39211 $temp40212 $ret41213 $ret242214 $ret543215 $i44216 $i45217))
        ($main_if5 (store $x39211 (- 100 1) $temp40212) $temp40212 $ret41213 $ret242214 $result218 $i44216 $i45217))))

(check-sat)
