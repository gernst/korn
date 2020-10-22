(set-logic HORN)

(declare-fun $main_inv239 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv236 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv237 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum240 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum237 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum238 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum236 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum239 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if675 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv240 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv238 (Int Int Int Int Int Int) Bool)

; loop entry $main_inv236
(assert
  (forall (($b686 Int) ($c687 Int) ($d688 Int) ($e689 Int))
        ($main_inv236 0 $b686 $c687 $d688 $e689 4294967295)))

; loop term $main_sum236
(assert
  (forall (($uint32_max69016057 Int) ($c68716054 Int) ($a68516052 Int) ($d68816055 Int) ($b68616053 Int) ($e68916056 Int))
    (=> (and (not (< $a68516052 (- $uint32_max69016057 1))))
        ($main_sum236 $a68516052 $b68616053 $c68716054 $d68816055 $e68916056 $uint32_max69016057 $a68516052 $b68616053 $c68716054 $d68816055 $e68916056 $uint32_max69016057))))

; loop entry $main_inv237
(assert
  (forall (($uint32_max69016057 Int) ($c68716054 Int) ($a68516052 Int) ($d68816055 Int) ($b68616053 Int) ($e68916056 Int))
    (=> (and (< $a68516052 (- $uint32_max69016057 1))
             ($main_inv236 $a68516052 $b68616053 $c68716054 $d68816055 $e68916056 $uint32_max69016057))
        ($main_inv237 $a68516052 0 $c68716054 $d68816055 $e68916056 $uint32_max69016057))))

; loop term $main_sum237
(assert
  (forall (($d68816061 Int) ($b68616059 Int) ($c68716060 Int) ($a68516058 Int) ($e68916062 Int) ($uint32_max69016063 Int))
    (=> (and (not (< $b68616059 (- $uint32_max69016063 1))))
        ($main_sum237 $a68516058 $b68616059 $c68716060 $d68816061 $e68916062 $uint32_max69016063 $a68516058 $b68616059 $c68716060 $d68816061 $e68916062 $uint32_max69016063))))

; loop entry $main_inv238
(assert
  (forall (($d68816061 Int) ($b68616059 Int) ($c68716060 Int) ($a68516058 Int) ($e68916062 Int) ($uint32_max69016063 Int))
    (=> (and (< $b68616059 (- $uint32_max69016063 1))
             ($main_inv237 $a68516058 $b68616059 $c68716060 $d68816061 $e68916062 $uint32_max69016063))
        ($main_inv238 $a68516058 $b68616059 0 $d68816061 $e68916062 $uint32_max69016063))))

; loop term $main_sum238
(assert
  (forall (($a68516064 Int) ($d68816067 Int) ($c68716066 Int) ($e68916068 Int) ($uint32_max69016069 Int) ($b68616065 Int))
    (=> (and (not (< $c68716066 (- $uint32_max69016069 1))))
        ($main_sum238 $a68516064 $b68616065 $c68716066 $d68816067 $e68916068 $uint32_max69016069 $a68516064 $b68616065 $c68716066 $d68816067 $e68916068 $uint32_max69016069))))

; loop entry $main_inv239
(assert
  (forall (($a68516064 Int) ($d68816067 Int) ($c68716066 Int) ($e68916068 Int) ($uint32_max69016069 Int) ($b68616065 Int))
    (=> (and (< $c68716066 (- $uint32_max69016069 1))
             ($main_inv238 $a68516064 $b68616065 $c68716066 $d68816067 $e68916068 $uint32_max69016069))
        ($main_inv239 $a68516064 $b68616065 $c68716066 0 $e68916068 $uint32_max69016069))))

; loop term $main_sum239
(assert
  (forall (($c68716072 Int) ($a68516070 Int) ($b68616071 Int) ($d68816073 Int) ($uint32_max69016075 Int) ($e68916074 Int))
    (=> (and (not (< $d68816073 (- $uint32_max69016075 1))))
        ($main_sum239 $a68516070 $b68616071 $c68716072 $d68816073 $e68916074 $uint32_max69016075 $a68516070 $b68616071 $c68716072 $d68816073 $e68916074 $uint32_max69016075))))

; loop entry $main_inv240
(assert
  (forall (($c68716072 Int) ($a68516070 Int) ($b68616071 Int) ($d68816073 Int) ($uint32_max69016075 Int) ($e68916074 Int))
    (=> (and (< $d68816073 (- $uint32_max69016075 1))
             ($main_inv239 $a68516070 $b68616071 $c68716072 $d68816073 $e68916074 $uint32_max69016075))
        ($main_inv240 $a68516070 $b68616071 $c68716072 $d68816073 0 $uint32_max69016075))))

; loop term $main_sum240
(assert
  (forall (($e68916080 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($a68516076 Int) ($c68716078 Int))
    (=> (and (not (< $e68916080 (- $uint32_max69016081 1))))
        ($main_sum240 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))))

; error
(assert
  (forall (($e68916080 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($a68516076 Int) ($c68716078 Int))
    (=> (and (= $a68516076 $b68616077)
             (= $b68616077 $c68716078)
             (= $c68716078 $d68816079)
             (= $d68816079 $e68916080)
             (= $e68916080 (- $uint32_max69016081 2))
             (< $e68916080 (- $uint32_max69016081 1))
             ($main_inv240 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))
        false)))

; if then
(assert
  (forall (($e68916080 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($a68516076 Int) ($c68716078 Int))
    (=> (and (= $a68516076 $b68616077)
             (= $b68616077 $c68716078)
             (= $c68716078 $d68816079)
             (= $d68816079 $e68916080)
             (= $e68916080 (- $uint32_max69016081 2))
             (< $e68916080 (- $uint32_max69016081 1))
             ($main_inv240 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))
        ($main_if675 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))))

; if else
(assert
  (forall (($e68916080 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($a68516076 Int) ($c68716078 Int))
    (=> (and (not (and (and (and (and (= $a68516076 $b68616077) (= $b68616077 $c68716078)) (= $c68716078 $d68816079)) (= $d68816079 $e68916080)) (= $e68916080 (- $uint32_max69016081 2))))
             (< $e68916080 (- $uint32_max69016081 1))
             ($main_inv240 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))
        ($main_if675 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081))))

; forwards $main_inv240
(assert
  (forall (($b68616083 Int) ($e68916080 Int) ($e68916086 Int) ($a68516082 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($d68816085 Int) ($a68516076 Int) ($c68716078 Int) ($uint32_max69016087 Int) ($c68716084 Int))
    (=> (and ($main_if675 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516082 $b68616083 $c68716084 $d68816085 $e68916086 $uint32_max69016087))
        ($main_inv240 $a68516082 $b68616083 $c68716084 $d68816085 (+ $e68916086 1) $uint32_max69016087))))

; backwards $main_sum240
(assert
  (forall (($e68916092 Int) ($c68716090 Int) ($b68616083 Int) ($e68916080 Int) ($b68616089 Int) ($e68916086 Int) ($a68516082 Int) ($b68616077 Int) ($uint32_max69016081 Int) ($d68816079 Int) ($d68816085 Int) ($a68516076 Int) ($c68716078 Int) ($uint32_max69016087 Int) ($c68716084 Int) ($uint32_max69016093 Int) ($a68516088 Int) ($d68816091 Int))
    (=> (and ($main_sum240 $a68516082 $b68616083 $c68716084 $d68816085 (+ $e68916086 1) $uint32_max69016087 $a68516088 $b68616089 $c68716090 $d68816091 $e68916092 $uint32_max69016093)
             ($main_if675 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516082 $b68616083 $c68716084 $d68816085 $e68916086 $uint32_max69016087))
        ($main_sum240 $a68516076 $b68616077 $c68716078 $d68816079 $e68916080 $uint32_max69016081 $a68516088 $b68616089 $c68716090 $d68816091 $e68916092 $uint32_max69016093))))

; forwards $main_inv239
(assert
  (forall (($c68716072 Int) ($a68516070 Int) ($c68716096 Int) ($b68616071 Int) ($d68816073 Int) ($uint32_max69016075 Int) ($b68616095 Int) ($uint32_max69016099 Int) ($a68516094 Int) ($e68916074 Int) ($d68816097 Int) ($e68916098 Int))
    (=> (and ($main_sum240 $a68516070 $b68616071 $c68716072 $d68816073 0 $uint32_max69016075 $a68516094 $b68616095 $c68716096 $d68816097 $e68916098 $uint32_max69016099)
             (< $d68816073 (- $uint32_max69016075 1))
             ($main_inv239 $a68516070 $b68616071 $c68716072 $d68816073 $e68916074 $uint32_max69016075))
        ($main_inv239 $a68516094 $b68616095 $c68716096 (+ $d68816097 1) $e68916098 $uint32_max69016099))))

; backwards $main_sum239
(assert
  (forall (($c68716072 Int) ($a68516070 Int) ($c68716096 Int) ($b68616071 Int) ($d68816073 Int) ($uint32_max69016075 Int) ($d68816103 Int) ($b68616095 Int) ($uint32_max69016099 Int) ($a68516094 Int) ($uint32_max69016105 Int) ($e68916074 Int) ($e68916104 Int) ($b68616101 Int) ($d68816097 Int) ($e68916098 Int) ($c68716102 Int) ($a68516100 Int))
    (=> (and ($main_sum239 $a68516094 $b68616095 $c68716096 (+ $d68816097 1) $e68916098 $uint32_max69016099 $a68516100 $b68616101 $c68716102 $d68816103 $e68916104 $uint32_max69016105)
             ($main_sum240 $a68516070 $b68616071 $c68716072 $d68816073 0 $uint32_max69016075 $a68516094 $b68616095 $c68716096 $d68816097 $e68916098 $uint32_max69016099)
             (< $d68816073 (- $uint32_max69016075 1)))
        ($main_sum239 $a68516070 $b68616071 $c68716072 $d68816073 $e68916074 $uint32_max69016075 $a68516100 $b68616101 $c68716102 $d68816103 $e68916104 $uint32_max69016105))))

; forwards $main_inv238
(assert
  (forall (($a68516106 Int) ($c68716108 Int) ($a68516064 Int) ($b68616107 Int) ($uint32_max69016111 Int) ($d68816067 Int) ($c68716066 Int) ($d68816109 Int) ($e68916110 Int) ($e68916068 Int) ($uint32_max69016069 Int) ($b68616065 Int))
    (=> (and ($main_sum239 $a68516064 $b68616065 $c68716066 0 $e68916068 $uint32_max69016069 $a68516106 $b68616107 $c68716108 $d68816109 $e68916110 $uint32_max69016111)
             (< $c68716066 (- $uint32_max69016069 1))
             ($main_inv238 $a68516064 $b68616065 $c68716066 $d68816067 $e68916068 $uint32_max69016069))
        ($main_inv238 $a68516106 $b68616107 (+ $c68716108 1) $d68816109 $e68916110 $uint32_max69016111))))

; backwards $main_sum238
(assert
  (forall (($a68516106 Int) ($d68816115 Int) ($c68716108 Int) ($a68516064 Int) ($b68616107 Int) ($uint32_max69016117 Int) ($e68916116 Int) ($d68816067 Int) ($c68716066 Int) ($b68616113 Int) ($d68816109 Int) ($c68716114 Int) ($e68916110 Int) ($a68516112 Int) ($uint32_max69016111 Int) ($e68916068 Int) ($uint32_max69016069 Int) ($b68616065 Int))
    (=> (and ($main_sum238 $a68516106 $b68616107 (+ $c68716108 1) $d68816109 $e68916110 $uint32_max69016111 $a68516112 $b68616113 $c68716114 $d68816115 $e68916116 $uint32_max69016117)
             ($main_sum239 $a68516064 $b68616065 $c68716066 0 $e68916068 $uint32_max69016069 $a68516106 $b68616107 $c68716108 $d68816109 $e68916110 $uint32_max69016111)
             (< $c68716066 (- $uint32_max69016069 1)))
        ($main_sum238 $a68516064 $b68616065 $c68716066 $d68816067 $e68916068 $uint32_max69016069 $a68516112 $b68616113 $c68716114 $d68816115 $e68916116 $uint32_max69016117))))

; forwards $main_inv237
(assert
  (forall (($d68816121 Int) ($d68816061 Int) ($b68616059 Int) ($b68616119 Int) ($a68516118 Int) ($c68716060 Int) ($uint32_max69016123 Int) ($c68716120 Int) ($a68516058 Int) ($e68916122 Int) ($e68916062 Int) ($uint32_max69016063 Int))
    (=> (and ($main_sum238 $a68516058 $b68616059 0 $d68816061 $e68916062 $uint32_max69016063 $a68516118 $b68616119 $c68716120 $d68816121 $e68916122 $uint32_max69016123)
             (< $b68616059 (- $uint32_max69016063 1))
             ($main_inv237 $a68516058 $b68616059 $c68716060 $d68816061 $e68916062 $uint32_max69016063))
        ($main_inv237 $a68516118 (+ $b68616119 1) $c68716120 $d68816121 $e68916122 $uint32_max69016123))))

; backwards $main_sum237
(assert
  (forall (($d68816121 Int) ($d68816061 Int) ($b68616059 Int) ($d68816127 Int) ($b68616119 Int) ($a68516118 Int) ($uint32_max69016123 Int) ($c68716120 Int) ($a68516058 Int) ($e68916122 Int) ($uint32_max69016129 Int) ($c68716126 Int) ($e68916128 Int) ($a68516124 Int) ($c68716060 Int) ($b68616125 Int) ($e68916062 Int) ($uint32_max69016063 Int))
    (=> (and ($main_sum237 $a68516118 (+ $b68616119 1) $c68716120 $d68816121 $e68916122 $uint32_max69016123 $a68516124 $b68616125 $c68716126 $d68816127 $e68916128 $uint32_max69016129)
             ($main_sum238 $a68516058 $b68616059 0 $d68816061 $e68916062 $uint32_max69016063 $a68516118 $b68616119 $c68716120 $d68816121 $e68916122 $uint32_max69016123)
             (< $b68616059 (- $uint32_max69016063 1)))
        ($main_sum237 $a68516058 $b68616059 $c68716060 $d68816061 $e68916062 $uint32_max69016063 $a68516124 $b68616125 $c68716126 $d68816127 $e68916128 $uint32_max69016129))))

; forwards $main_inv236
(assert
  (forall (($e68916134 Int) ($c68716132 Int) ($uint32_max69016057 Int) ($c68716054 Int) ($a68516052 Int) ($d68816055 Int) ($e68916056 Int) ($uint32_max69016135 Int) ($a68516130 Int) ($d68816133 Int) ($b68616053 Int) ($b68616131 Int))
    (=> (and ($main_sum237 $a68516052 0 $c68716054 $d68816055 $e68916056 $uint32_max69016057 $a68516130 $b68616131 $c68716132 $d68816133 $e68916134 $uint32_max69016135)
             (< $a68516052 (- $uint32_max69016057 1))
             ($main_inv236 $a68516052 $b68616053 $c68716054 $d68816055 $e68916056 $uint32_max69016057))
        ($main_inv236 (+ $a68516130 1) $b68616131 $c68716132 $d68816133 $e68916134 $uint32_max69016135))))

; backwards $main_sum236
(assert
  (forall (($e68916134 Int) ($d68816139 Int) ($c68716132 Int) ($uint32_max69016057 Int) ($c68716138 Int) ($a68516052 Int) ($d68816055 Int) ($b68616137 Int) ($e68916056 Int) ($e68916140 Int) ($c68716054 Int) ($a68516136 Int) ($a68516130 Int) ($d68816133 Int) ($b68616053 Int) ($b68616131 Int) ($uint32_max69016135 Int) ($uint32_max69016141 Int))
    (=> (and ($main_sum236 (+ $a68516130 1) $b68616131 $c68716132 $d68816133 $e68916134 $uint32_max69016135 $a68516136 $b68616137 $c68716138 $d68816139 $e68916140 $uint32_max69016141)
             ($main_sum237 $a68516052 0 $c68716054 $d68816055 $e68916056 $uint32_max69016057 $a68516130 $b68616131 $c68716132 $d68816133 $e68916134 $uint32_max69016135)
             (< $a68516052 (- $uint32_max69016057 1)))
        ($main_sum236 $a68516052 $b68616053 $c68716054 $d68816055 $e68916056 $uint32_max69016057 $a68516136 $b68616137 $c68716138 $d68816139 $e68916140 $uint32_max69016141))))

(check-sat)
