(set-logic HORN)

(declare-fun $mapavg_pre ((Array Int Int)) Bool)
(declare-fun $main_sum8 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun mapavg ((Array Int Int) Int) Bool)
(declare-fun $main_sum9 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_sum7 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv9 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv8 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if3 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapavg_inv7 ((Array Int Int) Int Int) Bool)

; loop entry $mapavg_inv7
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapavg_pre x))
        ($mapavg_inv7 x 0 0))))

; loop term $mapavg_sum7
(assert
  (forall ((x125 (Array Int Int)) ($i19126 Int) ($ret20127 Int))
    (=> (and (not (< $i19126 10000)))
        ($mapavg_sum7 x125 $i19126 $ret20127 x125 $i19126 $ret20127))))

; forwards $mapavg_inv7
(assert
  (forall ((x125 (Array Int Int)) ($i19126 Int) ($ret20127 Int))
    (=> (and (< $i19126 10000)
             ($mapavg_inv7 x125 $i19126 $ret20127))
        ($mapavg_inv7 x125 (+ $i19126 1) (+ (+ $ret20127 $i19126) (select x125 $i19126))))))

; backwards $mapavg_sum7
(assert
  (forall (($ret20130 Int) ($i19129 Int) ($i19126 Int) (x125 (Array Int Int)) ($ret20127 Int) (x128 (Array Int Int)))
    (=> (and ($mapavg_sum7 x125 (+ $i19126 1) (+ (+ $ret20127 $i19126) (select x125 $i19126)) x128 $i19129 $ret20130)
             (< $i19126 10000))
        ($mapavg_sum7 x125 $i19126 $ret20127 x128 $i19129 $ret20130))))

; post mapavg
(assert
  (forall ((x131 (Array Int Int)) ($ret20133 Int) (x (Array Int Int)) ($i19132 Int))
    (=> (and ($mapavg_sum7 x 0 0 x131 $i19132 $ret20133)
             ($mapavg_pre x))
        (mapavg x131 (div $ret20133 10000)))))

; loop entry $main_inv8
(assert
  (forall (($ret23 Int) ($x21 (Array Int Int)) ($i27 Int) ($i26 Int) ($ret224 Int) ($ret525 Int) ($temp22 Int))
    (=> (and (= $i26 0))
        ($main_inv8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27))))

; loop term $main_sum8
(assert
  (forall (($ret224137 Int) ($ret525138 Int) ($ret23136 Int) ($i27140 Int) ($x21134 (Array Int Int)) ($temp22135 Int) ($i26139 Int))
    (=> (and (not (< $i26139 10000)))
        ($main_sum8 $x21134 $temp22135 $ret23136 $ret224137 $ret525138 $i26139 $i27140 $x21134 $temp22135 $ret23136 $ret224137 $ret525138 $i26139 $i27140))))

; forwards $main_inv8
(assert
  (forall (($ret224137 Int) ($ret525138 Int) ($ret23136 Int) ($i27140 Int) ($x21134 (Array Int Int)) ($temp22135 Int) ($int141 Int) ($i26139 Int))
    (=> (and (<= (- 2147483648) $int141)
             (<= $int141 2147483647)
             (< $i26139 10000)
             ($main_inv8 $x21134 $temp22135 $ret23136 $ret224137 $ret525138 $i26139 $i27140))
        ($main_inv8 (store $x21134 $i26139 $int141) $temp22135 $ret23136 $ret224137 $ret525138 (+ $i26139 1) $i27140))))

; backwards $main_sum8
(assert
  (forall (($x21142 (Array Int Int)) ($ret224137 Int) ($ret23136 Int) ($i27140 Int) ($temp22143 Int) ($ret23144 Int) ($ret525146 Int) ($x21134 (Array Int Int)) ($temp22135 Int) ($i26147 Int) ($i26139 Int) ($ret525138 Int) ($ret224145 Int) ($int141 Int) ($i27148 Int))
    (=> (and ($main_sum8 (store $x21134 $i26139 $int141) $temp22135 $ret23136 $ret224137 $ret525138 (+ $i26139 1) $i27140 $x21142 $temp22143 $ret23144 $ret224145 $ret525146 $i26147 $i27148)
             (<= (- 2147483648) $int141)
             (<= $int141 2147483647)
             (< $i26139 10000))
        ($main_sum8 $x21134 $temp22135 $ret23136 $ret224137 $ret525138 $i26139 $i27140 $x21142 $temp22143 $ret23144 $ret224145 $ret525146 $i26147 $i27148))))

; mapavg precondition
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i27155 Int) ($x21 (Array Int Int)) ($ret23151 Int) ($ret525153 Int) ($temp22150 Int) ($ret224152 Int) ($i26 Int) ($ret224 Int) ($ret525 Int) ($temp22 Int) ($i26154 Int) ($i27 Int))
    (=> (and ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($mapavg_pre $x21149))))

; mapavg precondition
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i27155 Int) ($x21 (Array Int Int)) ($ret23151 Int) ($ret525153 Int) ($ret224152 Int) ($i26 Int) ($ret224 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($i26154 Int) ($i27 Int))
    (=> (and (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($mapavg_pre (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0))))))

; loop entry $main_inv9
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i27155 Int) ($x21 (Array Int Int)) ($ret23151 Int) ($ret525153 Int) ($ret224152 Int) ($result157 Int) ($i26 Int) ($ret224 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($i26154 Int) ($i27 Int))
    (=> (and (= $i27155 0)
             (mapavg (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) $result157)
             (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($main_inv9 (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) (select (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) 0) $result156 $result157 $ret525153 $i26154 $i27155))))

; loop term $main_sum9
(assert
  (forall (($i26163 Int) ($x21158 (Array Int Int)) ($ret525162 Int) ($temp22159 Int) ($ret23160 Int) ($i27164 Int) ($ret224161 Int))
    (=> (and (not (< $i27164 (- 10000 1))))
        ($main_sum9 $x21158 $temp22159 $ret23160 $ret224161 $ret525162 $i26163 $i27164 $x21158 $temp22159 $ret23160 $ret224161 $ret525162 $i26163 $i27164))))

; forwards $main_inv9
(assert
  (forall (($i26163 Int) ($x21158 (Array Int Int)) ($ret525162 Int) ($temp22159 Int) ($ret23160 Int) ($i27164 Int) ($ret224161 Int))
    (=> (and (< $i27164 (- 10000 1))
             ($main_inv9 $x21158 $temp22159 $ret23160 $ret224161 $ret525162 $i26163 $i27164))
        ($main_inv9 (store $x21158 $i27164 (select $x21158 (+ $i27164 1))) $temp22159 $ret23160 $ret224161 $ret525162 $i26163 (+ $i27164 1)))))

; backwards $main_sum9
(assert
  (forall (($i26163 Int) ($x21158 (Array Int Int)) ($i26170 Int) ($x21165 (Array Int Int)) ($ret525162 Int) ($i27171 Int) ($temp22159 Int) ($ret525169 Int) ($ret23167 Int) ($temp22166 Int) ($i27164 Int) ($ret224161 Int) ($ret23160 Int) ($ret224168 Int))
    (=> (and ($main_sum9 (store $x21158 $i27164 (select $x21158 (+ $i27164 1))) $temp22159 $ret23160 $ret224161 $ret525162 $i26163 (+ $i27164 1) $x21165 $temp22166 $ret23167 $ret224168 $ret525169 $i26170 $i27171)
             (< $i27164 (- 10000 1)))
        ($main_sum9 $x21158 $temp22159 $ret23160 $ret224161 $ret525162 $i26163 $i27164 $x21165 $temp22166 $ret23167 $ret224168 $ret525169 $i26170 $i27171))))

; mapavg precondition
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i26177 Int) ($x21 (Array Int Int)) ($ret525153 Int) ($x21172 (Array Int Int)) ($ret224152 Int) ($result157 Int) ($i26 Int) ($ret224175 Int) ($ret525176 Int) ($i27155 Int) ($i27178 Int) ($ret23151 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($ret23174 Int) ($i26154 Int) ($i27 Int) ($temp22173 Int) ($ret224 Int))
    (=> (and ($main_sum9 (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) (select (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) 0) $result156 $result157 $ret525153 $i26154 $i27155 $x21172 $temp22173 $ret23174 $ret224175 $ret525176 $i26177 $i27178)
             (= $i27155 0)
             (mapavg (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) $result157)
             (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($mapavg_pre (store $x21172 (- 10000 1) $temp22173)))))

; error
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i26177 Int) ($x21 (Array Int Int)) ($ret525153 Int) ($x21172 (Array Int Int)) ($ret224152 Int) ($result157 Int) ($i26 Int) ($ret224175 Int) ($ret525176 Int) ($i27155 Int) ($i27178 Int) ($ret23151 Int) ($result179 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($ret23174 Int) ($i26154 Int) ($i27 Int) ($temp22173 Int) ($ret224 Int))
    (=> (and (or (not (= $ret23174 $ret224175)) (not (= $ret23174 $result179)))
             (mapavg (store $x21172 (- 10000 1) $temp22173) $result179)
             ($main_sum9 (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) (select (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) 0) $result156 $result157 $ret525153 $i26154 $i27155 $x21172 $temp22173 $ret23174 $ret224175 $ret525176 $i26177 $i27178)
             (= $i27155 0)
             (mapavg (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) $result157)
             (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        false)))

; if then
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i26177 Int) ($x21 (Array Int Int)) ($ret525153 Int) ($x21172 (Array Int Int)) ($ret224152 Int) ($result157 Int) ($i26 Int) ($ret224175 Int) ($ret525176 Int) ($i27155 Int) ($i27178 Int) ($ret23151 Int) ($result179 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($ret23174 Int) ($i26154 Int) ($i27 Int) ($temp22173 Int) ($ret224 Int))
    (=> (and (or (not (= $ret23174 $ret224175)) (not (= $ret23174 $result179)))
             (mapavg (store $x21172 (- 10000 1) $temp22173) $result179)
             ($main_sum9 (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) (select (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) 0) $result156 $result157 $ret525153 $i26154 $i27155 $x21172 $temp22173 $ret23174 $ret224175 $ret525176 $i26177 $i27178)
             (= $i27155 0)
             (mapavg (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) $result157)
             (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($main_if3 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 (store $x21172 (- 10000 1) $temp22173) $temp22173 $ret23174 $ret224175 $result179 $i26177 $i27178))))

; if else
(assert
  (forall (($x21149 (Array Int Int)) ($ret23 Int) ($i26177 Int) ($x21 (Array Int Int)) ($ret525153 Int) ($x21172 (Array Int Int)) ($ret224152 Int) ($result157 Int) ($i26 Int) ($ret224175 Int) ($ret525176 Int) ($i27155 Int) ($i27178 Int) ($ret23151 Int) ($result179 Int) ($ret525 Int) ($temp22 Int) ($result156 Int) ($temp22150 Int) ($ret23174 Int) ($i26154 Int) ($i27 Int) ($temp22173 Int) ($ret224 Int))
    (=> (and (not (or (not (= $ret23174 $ret224175)) (not (= $ret23174 $result179))))
             (mapavg (store $x21172 (- 10000 1) $temp22173) $result179)
             ($main_sum9 (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) (select (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) 0) $result156 $result157 $ret525153 $i26154 $i27155 $x21172 $temp22173 $ret23174 $ret224175 $ret525176 $i26177 $i27178)
             (= $i27155 0)
             (mapavg (store (store $x21149 0 (select $x21149 1)) 1 (select $x21149 0)) $result157)
             (mapavg $x21149 $result156)
             ($main_sum8 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 $x21149 $temp22150 $ret23151 $ret224152 $ret525153 $i26154 $i27155)
             (= $i26 0))
        ($main_if3 $x21 $temp22 $ret23 $ret224 $ret525 $i26 $i27 (store $x21172 (- 10000 1) $temp22173) $temp22173 $ret23174 $ret224175 $result179 $i26177 $i27178))))

(check-sat)
