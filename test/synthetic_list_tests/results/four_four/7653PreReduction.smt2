
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
(assert (and (= l1 l1) (is-Cons Nil) (= l0 l2)) )
(assert (= l2 l3) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
