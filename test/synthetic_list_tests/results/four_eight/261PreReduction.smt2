
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
(assert (= l1 Nil) )
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(check-sat)
