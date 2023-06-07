
(set-logic UF) 

(declare-sort MyList 0) 

(declare-fun Nil () MyList) 

(declare-fun Cons (Real MyList) MyList) 

(declare-fun Head (MyList) Real) 

(declare-fun Tail (MyList) MyList) 

(declare-fun is-Nil (MyList) Bool) 

(declare-fun is-Cons (MyList) Bool) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(declare-fun cv0 () Real) 
(declare-fun cv1 () MyList) 
(declare-fun cv2 () Real) 
(declare-fun cv3 () MyList) 
(declare-fun cv4 () Real) 
(declare-fun cv5 () MyList) 
(declare-fun cv6 () Real) 
(declare-fun cv7 () MyList) 
(declare-fun cv8 () MyList) 
(declare-fun cv9 () MyList) 
(declare-fun cv10 () MyList) 
(declare-fun cv11 () MyList) 
(declare-fun cv12 () MyList) 
(declare-fun cv13 () MyList) 
(declare-fun cv14 () MyList) 
(declare-fun cv15 () MyList) 
(assert (and (or (and (is-Cons l0) (= l0 (Cons cv0 cv1)) (= cv0 (Head l0)) (= cv1 (Tail l0))) (and (= l1 Nil) (is-Nil l1)) (and (is-Nil Nil) (= Nil Nil)) (and (is-Cons Nil) (= Nil (Cons cv2 cv3)) (= cv2 (Head Nil)) (= cv3 (Tail Nil))))) )
(assert (and (or (and (= l0 Nil) (is-Nil l0)) (and (= l1 Nil) (is-Nil l1)) (and (is-Cons Nil) (= Nil (Cons cv4 cv5)) (= cv4 (Head Nil)) (= cv5 (Tail Nil))) (and (= l0 Nil) (is-Nil l0)))) )
(assert (and (= l1 Nil) (is-Nil l1)) )
(assert (and (is-Cons Nil) (= Nil (Cons cv6 cv7)) (= cv6 (Head Nil)) (= cv7 (Tail Nil))) )
(assert (or (is-Cons l0) (is-Nil l0)) )
(assert (or (not (is-Cons l0)) (not (is-Nil l0))) )
(assert (or (not (is-Nil l0)) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Nil l1)) )
(assert (or (not (is-Cons l1)) (not (is-Nil l1))) )
(assert (or (not (is-Nil l1)) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (or (not (is-Cons Nil)) (not (is-Nil Nil))) )
(assert (or (not (is-Nil Nil)) (= Nil Nil)) )
(assert (and (= cv8 (Tail l0)) (not (= cv8 l0)) (= cv9 (Tail cv8)) (not (= cv9 l0)) (not (= cv9 l0)) (= cv10 (Tail cv9)) (not (= cv10 l0)) (not (= cv10 l0)) (not (= cv10 cv8)) (= cv11 (Tail cv10)) (not (= cv11 l0)) (not (= cv11 l0)) (not (= cv11 cv8)) (not (= cv11 cv9))) )
(assert (and (= cv12 (Tail l1)) (not (= cv12 l1)) (= cv13 (Tail cv12)) (not (= cv13 l1)) (not (= cv13 l1)) (= cv14 (Tail cv13)) (not (= cv14 l1)) (not (= cv14 l1)) (not (= cv14 cv12)) (= cv15 (Tail cv14)) (not (= cv15 l1)) (not (= cv15 l1)) (not (= cv15 cv12)) (not (= cv15 cv13))) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
