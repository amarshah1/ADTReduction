
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
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l3 l0) )
(check-sat)
