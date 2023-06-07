
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
(assert (is-Nil Nil) )
(assert (not (= l2 l2)) )
(assert (= l3 l3) )
(assert (= l0 l1) )
(assert (or (= l0 Nil) (= l2 Nil) (= l2 l1) (is-Cons Nil)) )
(assert (not (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
