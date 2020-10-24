(set-logic HORN)

(declare-fun $sep_sum562 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum564 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if411 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_if412 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv563 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum563 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv562 ((Array Int Int) Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)
(declare-fun $main_inv564 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sep_inv562
(assert
  (forall ((x (Array Int Int)) ($ret857 Int) ($i858 Int))
    (=> (and (= $i858 0)
             (= $ret857 0)
             ($sep_pre x))
        ($sep_inv562 x $ret857 $i858))))

; loop term $sep_sum562
(assert
  (forall ((x10843 (Array Int Int)) ($ret85710844 Int) ($i85810845 Int))
    (=> (and (not (< $i85810845 60)))
        ($sep_sum562 x10843 $ret85710844 $i85810845 x10843 $ret85710844 $i85810845))))

; if then
(assert
  (forall ((x10843 (Array Int Int)) ($ret85710844 Int) ($i85810845 Int))
    (=> (and (= (mod (select x10843 $i85810845) 2) 0)
             (< $i85810845 60)
             ($sep_inv562 x10843 $ret85710844 $i85810845))
        ($sep_if411 x10843 $ret85710844 $i85810845 x10843 (+ $ret85710844 1) $i85810845))))

; if else
(assert
  (forall ((x10843 (Array Int Int)) ($ret85710844 Int) ($i85810845 Int))
    (=> (and (not (= (mod (select x10843 $i85810845) 2) 0))
             (< $i85810845 60)
             ($sep_inv562 x10843 $ret85710844 $i85810845))
        ($sep_if411 x10843 $ret85710844 $i85810845 x10843 (- $ret85710844 1) $i85810845))))

; forwards $sep_inv562
(assert
  (forall (($i85810845 Int) (x10843 (Array Int Int)) ($ret85710844 Int) ($i85810848 Int) ($ret85710847 Int) (x10846 (Array Int Int)))
    (=> (and ($sep_if411 x10843 $ret85710844 $i85810845 x10846 $ret85710847 $i85810848))
        ($sep_inv562 x10846 $ret85710847 (+ $i85810848 1)))))

; backwards $sep_sum562
(assert
  (forall (($i85810845 Int) (x10843 (Array Int Int)) ($ret85710850 Int) ($ret85710844 Int) ($i85810851 Int) (x10849 (Array Int Int)) ($i85810848 Int) ($ret85710847 Int) (x10846 (Array Int Int)))
    (=> (and ($sep_sum562 x10846 $ret85710847 (+ $i85810848 1) x10849 $ret85710850 $i85810851)
             ($sep_if411 x10843 $ret85710844 $i85810845 x10846 $ret85710847 $i85810848))
        ($sep_sum562 x10843 $ret85710844 $i85810845 x10849 $ret85710850 $i85810851))))

; post sep
(assert
  (forall (($ret857 Int) (x (Array Int Int)) (x10852 (Array Int Int)) ($i85810854 Int) ($ret85710853 Int) ($i858 Int))
    (=> (and ($sep_sum562 x $ret857 $i858 x10852 $ret85710853 $i85810854)
             (= $i858 0)
             (= $ret857 0)
             ($sep_pre x))
        (sep x10852 $ret85710853))))

; loop entry $main_inv563
(assert
  (forall (($ret861 Int) ($ret5863 Int) ($ret2862 Int) ($x859 (Array Int Int)) ($temp860 Int) ($i865 Int) ($i864 Int))
    (=> (and (= $i864 0))
        ($main_inv563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865))))

; loop term $main_sum563
(assert
  (forall (($ret86110857 Int) ($i86510861 Int) ($i86410860 Int) ($x85910855 (Array Int Int)) ($temp86010856 Int) ($ret586310859 Int) ($ret286210858 Int))
    (=> (and (not (< $i86410860 60)))
        ($main_sum563 $x85910855 $temp86010856 $ret86110857 $ret286210858 $ret586310859 $i86410860 $i86510861 $x85910855 $temp86010856 $ret86110857 $ret286210858 $ret586310859 $i86410860 $i86510861))))

; forwards $main_inv563
(assert
  (forall (($ret86110857 Int) ($i86510861 Int) ($i86410860 Int) ($int10862 Int) ($x85910855 (Array Int Int)) ($temp86010856 Int) ($ret586310859 Int) ($ret286210858 Int))
    (=> (and (<= (- 2147483648) $int10862)
             (<= $int10862 2147483647)
             (< $i86410860 60)
             ($main_inv563 $x85910855 $temp86010856 $ret86110857 $ret286210858 $ret586310859 $i86410860 $i86510861))
        ($main_inv563 (store $x85910855 $i86410860 $int10862) $temp86010856 $ret86110857 $ret286210858 $ret586310859 (+ $i86410860 1) $i86510861))))

; backwards $main_sum563
(assert
  (forall (($ret86110857 Int) ($ret586310867 Int) ($i86410868 Int) ($ret86110865 Int) ($ret286210866 Int) ($i86510861 Int) ($i86410860 Int) ($i86510869 Int) ($int10862 Int) ($x85910855 (Array Int Int)) ($temp86010856 Int) ($ret586310859 Int) ($temp86010864 Int) ($x85910863 (Array Int Int)) ($ret286210858 Int))
    (=> (and ($main_sum563 (store $x85910855 $i86410860 $int10862) $temp86010856 $ret86110857 $ret286210858 $ret586310859 (+ $i86410860 1) $i86510861 $x85910863 $temp86010864 $ret86110865 $ret286210866 $ret586310867 $i86410868 $i86510869)
             (<= (- 2147483648) $int10862)
             (<= $int10862 2147483647)
             (< $i86410860 60))
        ($main_sum563 $x85910855 $temp86010856 $ret86110857 $ret286210858 $ret586310859 $i86410860 $i86510861 $x85910863 $temp86010864 $ret86110865 $ret286210866 $ret586310867 $i86410868 $i86510869))))

; sep precondition
(assert
  (forall (($ret86110872 Int) ($x85910870 (Array Int Int)) ($ret861 Int) ($ret586310874 Int) ($ret2862 Int) ($temp86010871 Int) ($i86410875 Int) ($temp860 Int) ($i865 Int) ($i864 Int) ($i86510876 Int) ($ret5863 Int) ($x859 (Array Int Int)) ($ret286210873 Int))
    (=> (and ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($sep_pre $x85910870))))

; sep precondition
(assert
  (forall (($ret86110872 Int) ($ret861 Int) ($ret586310874 Int) ($ret2862 Int) ($temp86010871 Int) ($i86410875 Int) ($temp860 Int) ($i865 Int) ($i864 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($i86510876 Int) ($ret5863 Int) ($x859 (Array Int Int)) ($ret286210873 Int))
    (=> (and (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($sep_pre (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0))))))

; loop entry $main_inv564
(assert
  (forall (($ret86110872 Int) ($ret861 Int) ($ret586310874 Int) ($ret2862 Int) ($temp86010871 Int) ($i86410875 Int) ($temp860 Int) ($i865 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($i86510876 Int) ($ret5863 Int) ($x859 (Array Int Int)) ($ret286210873 Int) ($i864 Int) ($result10878 Int))
    (=> (and (= $i86510876 0)
             (sep (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) $result10878)
             (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($main_inv564 (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) (select (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) 0) $result10877 $result10878 $ret586310874 $i86410875 $i86510876))))

; loop term $main_sum564
(assert
  (forall (($ret86110881 Int) ($i86510885 Int) ($i86410884 Int) ($temp86010880 Int) ($ret286210882 Int) ($ret586310883 Int) ($x85910879 (Array Int Int)))
    (=> (and (not (< $i86510885 (- 60 1))))
        ($main_sum564 $x85910879 $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 $i86510885 $x85910879 $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 $i86510885))))

; forwards $main_inv564
(assert
  (forall (($ret86110881 Int) ($i86510885 Int) ($i86410884 Int) ($temp86010880 Int) ($ret286210882 Int) ($ret586310883 Int) ($x85910879 (Array Int Int)))
    (=> (and (< $i86510885 (- 60 1))
             ($main_inv564 $x85910879 $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 $i86510885))
        ($main_inv564 (store $x85910879 $i86510885 (select $x85910879 (+ $i86510885 1))) $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 (+ $i86510885 1)))))

; backwards $main_sum564
(assert
  (forall (($x85910886 (Array Int Int)) ($i86510892 Int) ($ret86110881 Int) ($i86510885 Int) ($i86410884 Int) ($temp86010887 Int) ($ret86110888 Int) ($temp86010880 Int) ($ret286210882 Int) ($ret286210889 Int) ($ret586310883 Int) ($ret586310890 Int) ($x85910879 (Array Int Int)) ($i86410891 Int))
    (=> (and ($main_sum564 (store $x85910879 $i86510885 (select $x85910879 (+ $i86510885 1))) $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 (+ $i86510885 1) $x85910886 $temp86010887 $ret86110888 $ret286210889 $ret586310890 $i86410891 $i86510892)
             (< $i86510885 (- 60 1)))
        ($main_sum564 $x85910879 $temp86010880 $ret86110881 $ret286210882 $ret586310883 $i86410884 $i86510885 $x85910886 $temp86010887 $ret86110888 $ret286210889 $ret586310890 $i86410891 $i86510892))))

; sep precondition
(assert
  (forall (($ret86110872 Int) ($ret586310874 Int) ($temp86010871 Int) ($i86410875 Int) ($ret286210896 Int) ($temp860 Int) ($ret86110895 Int) ($i865 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($ret586310897 Int) ($ret861 Int) ($i86510899 Int) ($i86510876 Int) ($ret5863 Int) ($ret2862 Int) ($temp86010894 Int) ($x859 (Array Int Int)) ($ret286210873 Int) ($i864 Int) ($result10878 Int) ($x85910893 (Array Int Int)) ($i86410898 Int))
    (=> (and ($main_sum564 (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) (select (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) 0) $result10877 $result10878 $ret586310874 $i86410875 $i86510876 $x85910893 $temp86010894 $ret86110895 $ret286210896 $ret586310897 $i86410898 $i86510899)
             (= $i86510876 0)
             (sep (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) $result10878)
             (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($sep_pre (store $x85910893 (- 60 1) $temp86010894)))))

; error
(assert
  (forall (($ret86110872 Int) ($ret586310874 Int) ($result10900 Int) ($temp86010871 Int) ($i86410875 Int) ($ret286210896 Int) ($temp860 Int) ($ret86110895 Int) ($i865 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($ret586310897 Int) ($ret861 Int) ($i86510899 Int) ($i86510876 Int) ($ret5863 Int) ($ret2862 Int) ($temp86010894 Int) ($x859 (Array Int Int)) ($ret286210873 Int) ($i864 Int) ($result10878 Int) ($x85910893 (Array Int Int)) ($i86410898 Int))
    (=> (and (or (not (= $ret86110895 $ret286210896)) (not (= $ret86110895 $result10900)))
             (sep (store $x85910893 (- 60 1) $temp86010894) $result10900)
             ($main_sum564 (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) (select (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) 0) $result10877 $result10878 $ret586310874 $i86410875 $i86510876 $x85910893 $temp86010894 $ret86110895 $ret286210896 $ret586310897 $i86410898 $i86510899)
             (= $i86510876 0)
             (sep (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) $result10878)
             (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        false)))

; if then
(assert
  (forall (($ret86110872 Int) ($ret586310874 Int) ($result10900 Int) ($temp86010871 Int) ($i86410875 Int) ($ret286210896 Int) ($temp860 Int) ($ret86110895 Int) ($i865 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($ret586310897 Int) ($ret861 Int) ($i86510899 Int) ($i86510876 Int) ($ret5863 Int) ($ret2862 Int) ($temp86010894 Int) ($x859 (Array Int Int)) ($ret286210873 Int) ($i864 Int) ($result10878 Int) ($x85910893 (Array Int Int)) ($i86410898 Int))
    (=> (and (or (not (= $ret86110895 $ret286210896)) (not (= $ret86110895 $result10900)))
             (sep (store $x85910893 (- 60 1) $temp86010894) $result10900)
             ($main_sum564 (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) (select (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) 0) $result10877 $result10878 $ret586310874 $i86410875 $i86510876 $x85910893 $temp86010894 $ret86110895 $ret286210896 $ret586310897 $i86410898 $i86510899)
             (= $i86510876 0)
             (sep (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) $result10878)
             (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($main_if412 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 (store $x85910893 (- 60 1) $temp86010894) $temp86010894 $ret86110895 $ret286210896 $result10900 $i86410898 $i86510899))))

; if else
(assert
  (forall (($ret86110872 Int) ($ret586310874 Int) ($result10900 Int) ($temp86010871 Int) ($i86410875 Int) ($ret286210896 Int) ($temp860 Int) ($ret86110895 Int) ($i865 Int) ($result10877 Int) ($x85910870 (Array Int Int)) ($ret586310897 Int) ($ret861 Int) ($i86510899 Int) ($i86510876 Int) ($ret5863 Int) ($ret2862 Int) ($temp86010894 Int) ($x859 (Array Int Int)) ($ret286210873 Int) ($i864 Int) ($result10878 Int) ($x85910893 (Array Int Int)) ($i86410898 Int))
    (=> (and (not (or (not (= $ret86110895 $ret286210896)) (not (= $ret86110895 $result10900))))
             (sep (store $x85910893 (- 60 1) $temp86010894) $result10900)
             ($main_sum564 (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) (select (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) 0) $result10877 $result10878 $ret586310874 $i86410875 $i86510876 $x85910893 $temp86010894 $ret86110895 $ret286210896 $ret586310897 $i86410898 $i86510899)
             (= $i86510876 0)
             (sep (store (store $x85910870 0 (select $x85910870 1)) 1 (select $x85910870 0)) $result10878)
             (sep $x85910870 $result10877)
             ($main_sum563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 $x85910870 $temp86010871 $ret86110872 $ret286210873 $ret586310874 $i86410875 $i86510876)
             (= $i864 0))
        ($main_if412 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865 (store $x85910893 (- 60 1) $temp86010894) $temp86010894 $ret86110895 $ret286210896 $result10900 $i86410898 $i86510899))))

(check-sat)
