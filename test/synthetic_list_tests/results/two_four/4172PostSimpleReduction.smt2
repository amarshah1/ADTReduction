
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
(declare-fun cv4 () MyList) 
(declare-fun cv5 () MyList) 
(declare-fun cv6 () MyList) 
(declare-fun cv7 () MyList) 
(declare-fun cv8 () MyList) 
(declare-fun cv9 () MyList) 
(declare-fun cv10 () MyList) 
(declare-fun cv11 () MyList) 
(assert (and (is-Cons Nil) (= Nil (Cons cv0 cv1)) (= cv0 (Head Nil)) (= cv1 (Tail Nil))) )
(assert (and (and (and (is-Cons l1) (= l1 (Cons cv2 cv3)) (= cv2 (Head l1)) (= cv3 (Tail l1))) (and (= l0 Nil) (is-Nil l0)) (and (= l1 Nil) (is-Nil l1)) (and (= l1 Nil) (is-Nil l1)))) )
(assert (and (not (is-Nil Nil))) )
(assert (and (or (and (= l1 Nil) (is-Nil l1)) (and (= l1 l0)) (and (= l0 Nil) (is-Nil l0)))) )
(assert (or (is-Cons l0) (is-Nil l0)) )
(assert (or (not (is-Cons l0)) (not (is-Nil l0))) )
(assert (or (not (is-Nil l0)) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Nil l1)) )
(assert (or (not (is-Cons l1)) (not (is-Nil l1))) )
(assert (or (not (is-Nil l1)) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (or (not (is-Cons Nil)) (not (is-Nil Nil))) )
(assert (or (not (is-Nil Nil)) (= Nil Nil)) )
(assert (and (= cv4 (Tail l0)) (not (= cv4 l0)) (= cv5 (Tail cv4)) (not (= cv5 l0)) (not (= cv5 l0)) (= cv6 (Tail cv5)) (not (= cv6 l0)) (not (= cv6 l0)) (not (= cv6 cv4)) (= cv7 (Tail cv6)) (not (= cv7 l0)) (not (= cv7 l0)) (not (= cv7 cv4)) (not (= cv7 cv5))) )
(assert (and (= cv8 (Tail l1)) (not (= cv8 l1)) (= cv9 (Tail cv8)) (not (= cv9 l1)) (not (= cv9 l1)) (= cv10 (Tail cv9)) (not (= cv10 l1)) (not (= cv10 l1)) (not (= cv10 cv8)) (= cv11 (Tail cv10)) (not (= cv11 l1)) (not (= cv11 l1)) (not (= cv11 cv8)) (not (= cv11 cv9))) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
