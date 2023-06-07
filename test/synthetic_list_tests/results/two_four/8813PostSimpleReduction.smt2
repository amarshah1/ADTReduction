
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
(declare-fun cv2 () MyList) 
(declare-fun cv3 () MyList) 
(declare-fun cv4 () MyList) 
(declare-fun cv5 () MyList) 
(declare-fun cv6 () MyList) 
(declare-fun cv7 () MyList) 
(declare-fun cv8 () MyList) 
(declare-fun cv9 () MyList) 
(assert (and (or (and (= l0 Nil) (is-Nil l0)) (and (= l1 Nil) (is-Nil l1)) (and (= l0 Nil) (is-Nil l0)) (and (= l0 Nil) (is-Nil l0)))) )
(assert (and (= l1 Nil) (is-Nil l1)) )
(assert (and (is-Cons l1) (= l1 (Cons cv0 cv1)) (= cv0 (Head l1)) (= cv1 (Tail l1))) )
(assert (and (or (and (= l1 Nil) (is-Nil l1)) (and (= l1 Nil) (is-Nil l1)))) )
(assert (or (is-Cons l0) (is-Nil l0)) )
(assert (or (not (is-Cons l0)) (not (is-Nil l0))) )
(assert (or (not (is-Nil l0)) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Nil l1)) )
(assert (or (not (is-Cons l1)) (not (is-Nil l1))) )
(assert (or (not (is-Nil l1)) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (or (not (is-Cons Nil)) (not (is-Nil Nil))) )
(assert (or (not (is-Nil Nil)) (= Nil Nil)) )
(assert (and (= cv2 (Tail l0)) (not (= cv2 l0)) (= cv3 (Tail cv2)) (not (= cv3 l0)) (not (= cv3 l0)) (= cv4 (Tail cv3)) (not (= cv4 l0)) (not (= cv4 l0)) (not (= cv4 cv2)) (= cv5 (Tail cv4)) (not (= cv5 l0)) (not (= cv5 l0)) (not (= cv5 cv2)) (not (= cv5 cv3))) )
(assert (and (= cv6 (Tail l1)) (not (= cv6 l1)) (= cv7 (Tail cv6)) (not (= cv7 l1)) (not (= cv7 l1)) (= cv8 (Tail cv7)) (not (= cv8 l1)) (not (= cv8 l1)) (not (= cv8 cv6)) (= cv9 (Tail cv8)) (not (= cv9 l1)) (not (= cv9 l1)) (not (= cv9 cv6)) (not (= cv9 cv7))) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
