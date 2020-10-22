(set-logic HORN)

(declare-fun $sum_pre ((Array Int Int)) Bool)
(declare-fun $main_inv578 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum579 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if417 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sum ((Array Int Int) Int) Bool)
(declare-fun $main_sum578 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_inv577 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv579 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sum_sum577 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; loop entry $sum_inv577
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($sum_pre x))
        ($sum_inv577 x 0 0))))

; loop term $sum_sum577
(assert
  (forall ((x11156 (Array Int Int)) ($i90211157 Int) ($ret90311158 Int))
    (=> (and (not (< $i90211157 60)))
        ($sum_sum577 x11156 $i90211157 $ret90311158 x11156 $i90211157 $ret90311158))))

; forwards $sum_inv577
(assert
  (forall ((x11156 (Array Int Int)) ($i90211157 Int) ($ret90311158 Int))
    (=> (and (< $i90211157 60)
             ($sum_inv577 x11156 $i90211157 $ret90311158))
        ($sum_inv577 x11156 (+ $i90211157 1) (+ $ret90311158 (select x11156 $i90211157))))))

; backwards $sum_sum577
(assert
  (forall (($i90211157 Int) ($i90211160 Int) ($ret90311158 Int) ($ret90311161 Int) (x11156 (Array Int Int)) (x11159 (Array Int Int)))
    (=> (and ($sum_sum577 x11156 (+ $i90211157 1) (+ $ret90311158 (select x11156 $i90211157)) x11159 $i90211160 $ret90311161)
             (< $i90211157 60))
        ($sum_sum577 x11156 $i90211157 $ret90311158 x11159 $i90211160 $ret90311161))))

; post sum
(assert
  (forall ((x11162 (Array Int Int)) ($ret90311164 Int) (x (Array Int Int)) ($i90211163 Int))
    (=> (and ($sum_sum577 x 0 0 x11162 $i90211163 $ret90311164)
             ($sum_pre x))
        (sum x11162 $ret90311164))))

; loop entry $main_inv578
(assert
  (forall (($ret5908 Int) ($i910 Int) ($temp905 Int) ($i909 Int) ($ret2907 Int) ($ret906 Int) ($x904 (Array Int Int)))
    (=> (and (= $i909 0))
        ($main_inv578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910))))

; loop term $main_sum578
(assert
  (forall (($x90411165 (Array Int Int)) ($ret590811169 Int) ($ret290711168 Int) ($temp90511166 Int) ($i91011171 Int) ($ret90611167 Int) ($i90911170 Int))
    (=> (and (not (< $i90911170 60)))
        ($main_sum578 $x90411165 $temp90511166 $ret90611167 $ret290711168 $ret590811169 $i90911170 $i91011171 $x90411165 $temp90511166 $ret90611167 $ret290711168 $ret590811169 $i90911170 $i91011171))))

; forwards $main_inv578
(assert
  (forall (($x90411165 (Array Int Int)) ($ret590811169 Int) ($ret290711168 Int) ($i91011171 Int) ($ret90611167 Int) ($i90911170 Int) ($temp90511166 Int) ($int11172 Int))
    (=> (and (<= (- 2147483648) $int11172)
             (<= $int11172 2147483647)
             (< $i90911170 60)
             ($main_inv578 $x90411165 $temp90511166 $ret90611167 $ret290711168 $ret590811169 $i90911170 $i91011171))
        ($main_inv578 (store $x90411165 $i90911170 $int11172) $temp90511166 $ret90611167 $ret290711168 $ret590811169 (+ $i90911170 1) $i91011171))))

; backwards $main_sum578
(assert
  (forall (($temp90511174 Int) ($x90411165 (Array Int Int)) ($ret590811169 Int) ($i90911178 Int) ($i91011179 Int) ($ret290711176 Int) ($ret290711168 Int) ($ret90611175 Int) ($i91011171 Int) ($ret90611167 Int) ($i90911170 Int) ($temp90511166 Int) ($int11172 Int) ($x90411173 (Array Int Int)) ($ret590811177 Int))
    (=> (and ($main_sum578 (store $x90411165 $i90911170 $int11172) $temp90511166 $ret90611167 $ret290711168 $ret590811169 (+ $i90911170 1) $i91011171 $x90411173 $temp90511174 $ret90611175 $ret290711176 $ret590811177 $i90911178 $i91011179)
             (<= (- 2147483648) $int11172)
             (<= $int11172 2147483647)
             (< $i90911170 60))
        ($main_sum578 $x90411165 $temp90511166 $ret90611167 $ret290711168 $ret590811169 $i90911170 $i91011171 $x90411173 $temp90511174 $ret90611175 $ret290711176 $ret590811177 $i90911178 $i91011179))))

; sum precondition
(assert
  (forall (($i91011186 Int) ($ret5908 Int) ($ret290711183 Int) ($i910 Int) ($ret2907 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int))
    (=> (and ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($sum_pre $x90411180))))

; sum precondition
(assert
  (forall (($i91011186 Int) ($ret290711183 Int) ($i910 Int) ($ret2907 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($result11187 Int) ($ret5908 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int))
    (=> (and (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($sum_pre (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0))))))

; loop entry $main_inv579
(assert
  (forall (($i91011186 Int) ($ret290711183 Int) ($i910 Int) ($result11188 Int) ($ret2907 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($result11187 Int) ($ret5908 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int))
    (=> (and (= $i91011186 0)
             (sum (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) $result11188)
             (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($main_inv579 (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) (select (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) 0) $result11187 $result11188 $ret590811184 $i90911185 $i91011186))))

; loop term $main_sum579
(assert
  (forall (($ret290711192 Int) ($i91011195 Int) ($i90911194 Int) ($x90411189 (Array Int Int)) ($ret590811193 Int) ($ret90611191 Int) ($temp90511190 Int))
    (=> (and (not (< $i91011195 (- 60 1))))
        ($main_sum579 $x90411189 $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 $i91011195 $x90411189 $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 $i91011195))))

; forwards $main_inv579
(assert
  (forall (($ret290711192 Int) ($i91011195 Int) ($i90911194 Int) ($x90411189 (Array Int Int)) ($ret590811193 Int) ($ret90611191 Int) ($temp90511190 Int))
    (=> (and (< $i91011195 (- 60 1))
             ($main_inv579 $x90411189 $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 $i91011195))
        ($main_inv579 (store $x90411189 $i91011195 (select $x90411189 (+ $i91011195 1))) $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 (+ $i91011195 1)))))

; backwards $main_sum579
(assert
  (forall (($i91011195 Int) ($x90411189 (Array Int Int)) ($ret590811193 Int) ($ret590811200 Int) ($temp90511190 Int) ($ret290711199 Int) ($i90911201 Int) ($x90411196 (Array Int Int)) ($ret290711192 Int) ($i91011202 Int) ($i90911194 Int) ($ret90611198 Int) ($temp90511197 Int) ($ret90611191 Int))
    (=> (and ($main_sum579 (store $x90411189 $i91011195 (select $x90411189 (+ $i91011195 1))) $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 (+ $i91011195 1) $x90411196 $temp90511197 $ret90611198 $ret290711199 $ret590811200 $i90911201 $i91011202)
             (< $i91011195 (- 60 1)))
        ($main_sum579 $x90411189 $temp90511190 $ret90611191 $ret290711192 $ret590811193 $i90911194 $i91011195 $x90411196 $temp90511197 $ret90611198 $ret290711199 $ret590811200 $i90911201 $i91011202))))

; sum precondition
(assert
  (forall (($ret290711183 Int) ($temp90511204 Int) ($result11188 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($x90411203 (Array Int Int)) ($i91011186 Int) ($i91011209 Int) ($result11187 Int) ($ret290711206 Int) ($ret5908 Int) ($ret90611205 Int) ($ret590811207 Int) ($i910 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int) ($i90911208 Int) ($ret2907 Int))
    (=> (and ($main_sum579 (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) (select (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) 0) $result11187 $result11188 $ret590811184 $i90911185 $i91011186 $x90411203 $temp90511204 $ret90611205 $ret290711206 $ret590811207 $i90911208 $i91011209)
             (= $i91011186 0)
             (sum (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) $result11188)
             (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($sum_pre (store $x90411203 (- 60 1) $temp90511204)))))

; error
(assert
  (forall (($ret290711183 Int) ($result11210 Int) ($temp90511204 Int) ($result11188 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($x90411203 (Array Int Int)) ($i91011186 Int) ($i91011209 Int) ($result11187 Int) ($ret290711206 Int) ($ret5908 Int) ($ret90611205 Int) ($ret590811207 Int) ($i910 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int) ($i90911208 Int) ($ret2907 Int))
    (=> (and (or (not (= $ret90611205 $ret290711206)) (not (= $ret90611205 $result11210)))
             (sum (store $x90411203 (- 60 1) $temp90511204) $result11210)
             ($main_sum579 (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) (select (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) 0) $result11187 $result11188 $ret590811184 $i90911185 $i91011186 $x90411203 $temp90511204 $ret90611205 $ret290711206 $ret590811207 $i90911208 $i91011209)
             (= $i91011186 0)
             (sum (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) $result11188)
             (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        false)))

; if then
(assert
  (forall (($ret290711183 Int) ($result11210 Int) ($temp90511204 Int) ($result11188 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($x90411203 (Array Int Int)) ($i91011186 Int) ($i91011209 Int) ($result11187 Int) ($ret290711206 Int) ($ret5908 Int) ($ret90611205 Int) ($ret590811207 Int) ($i910 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int) ($i90911208 Int) ($ret2907 Int))
    (=> (and (or (not (= $ret90611205 $ret290711206)) (not (= $ret90611205 $result11210)))
             (sum (store $x90411203 (- 60 1) $temp90511204) $result11210)
             ($main_sum579 (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) (select (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) 0) $result11187 $result11188 $ret590811184 $i90911185 $i91011186 $x90411203 $temp90511204 $ret90611205 $ret290711206 $ret590811207 $i90911208 $i91011209)
             (= $i91011186 0)
             (sum (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) $result11188)
             (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($main_if417 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 (store $x90411203 (- 60 1) $temp90511204) $temp90511204 $ret90611205 $ret290711206 $result11210 $i90911208 $i91011209))))

; if else
(assert
  (forall (($ret290711183 Int) ($result11210 Int) ($temp90511204 Int) ($result11188 Int) ($temp90511181 Int) ($ret906 Int) ($x904 (Array Int Int)) ($x90411203 (Array Int Int)) ($i91011186 Int) ($i91011209 Int) ($result11187 Int) ($ret290711206 Int) ($ret5908 Int) ($ret90611205 Int) ($ret590811207 Int) ($i910 Int) ($ret590811184 Int) ($i90911185 Int) ($temp905 Int) ($x90411180 (Array Int Int)) ($ret90611182 Int) ($i909 Int) ($i90911208 Int) ($ret2907 Int))
    (=> (and (not (or (not (= $ret90611205 $ret290711206)) (not (= $ret90611205 $result11210))))
             (sum (store $x90411203 (- 60 1) $temp90511204) $result11210)
             ($main_sum579 (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) (select (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) 0) $result11187 $result11188 $ret590811184 $i90911185 $i91011186 $x90411203 $temp90511204 $ret90611205 $ret290711206 $ret590811207 $i90911208 $i91011209)
             (= $i91011186 0)
             (sum (store (store $x90411180 0 (select $x90411180 1)) 1 (select $x90411180 0)) $result11188)
             (sum $x90411180 $result11187)
             ($main_sum578 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 $x90411180 $temp90511181 $ret90611182 $ret290711183 $ret590811184 $i90911185 $i91011186)
             (= $i909 0))
        ($main_if417 $x904 $temp905 $ret906 $ret2907 $ret5908 $i909 $i910 (store $x90411203 (- 60 1) $temp90511204) $temp90511204 $ret90611205 $ret290711206 $result11210 $i90911208 $i91011209))))

(check-sat)
