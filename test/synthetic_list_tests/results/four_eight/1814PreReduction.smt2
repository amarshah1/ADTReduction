
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
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(assert (= l1 l0) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (or (is-Nil Nil) (= l3 l2) (= l2 l1)) )
(assert (or (= l3 Nil) (= l3 l0) (= l2 Nil)) )
(assert (= l3 Nil) )
(check-sat)
