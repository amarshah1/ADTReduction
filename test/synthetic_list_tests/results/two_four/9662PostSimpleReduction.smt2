
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
(declare-fun cv0 () MyList) 
(declare-fun cv1 () MyList) 
(declare-fun cv2 () MyList) 
(declare-fun cv3 () MyList) 
(declare-fun cv4 () MyList) 
(declare-fun cv5 () MyList) 
(declare-fun cv6 () MyList) 
(declare-fun cv7 () MyList) 
(assert (and (= l1 l0)) )
(assert (and (is-Nil Nil) (= Nil Nil)) )
(assert (and (not (= l0 Nil))) )
(assert (and (not (is-Nil l1))) )
(assert (or (is-Cons l0) (is-Nil l0)) )
(assert (or (not (is-Cons l0)) (not (is-Nil l0))) )
(assert (or (not (is-Nil l0)) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Nil l1)) )
(assert (or (not (is-Cons l1)) (not (is-Nil l1))) )
(assert (or (not (is-Nil l1)) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (or (not (is-Cons Nil)) (not (is-Nil Nil))) )
(assert (or (not (is-Nil Nil)) (= Nil Nil)) )
(assert (and (= cv0 (Tail l0)) (not (= cv0 l0)) (= cv1 (Tail cv0)) (not (= cv1 l0)) (not (= cv1 l0)) (= cv2 (Tail cv1)) (not (= cv2 l0)) (not (= cv2 l0)) (not (= cv2 cv0)) (= cv3 (Tail cv2)) (not (= cv3 l0)) (not (= cv3 l0)) (not (= cv3 cv0)) (not (= cv3 cv1))) )
(assert (and (= cv4 (Tail l1)) (not (= cv4 l1)) (= cv5 (Tail cv4)) (not (= cv5 l1)) (not (= cv5 l1)) (= cv6 (Tail cv5)) (not (= cv6 l1)) (not (= cv6 l1)) (not (= cv6 cv4)) (= cv7 (Tail cv6)) (not (= cv7 l1)) (not (= cv7 l1)) (not (= cv7 cv4)) (not (= cv7 cv5))) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
