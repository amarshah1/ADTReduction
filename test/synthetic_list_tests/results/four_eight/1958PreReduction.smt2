
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l3 Nil) (= l3 Nil) (= l3 Nil) (= l0 l3)) )
(assert (is-Cons l2) )
(assert (= l3 Nil) )
(assert (= l3 l2) )
(assert (or (is-Cons Nil) (= l2 l2) (is-Nil Nil) (is-Nil l3)) )
(assert (or (= l0 Nil) (is-Cons l1) (= l3 l2) (= l1 l0)) )
(assert (or (= l2 Nil) (= l3 l2)) )
(assert (= l2 l3) )
(check-sat)
