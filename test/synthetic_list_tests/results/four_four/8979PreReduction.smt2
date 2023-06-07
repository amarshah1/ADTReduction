
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
(assert (not (= l2 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 l2) (is-Cons Nil) (= l0 l2)) )
(check-sat)
