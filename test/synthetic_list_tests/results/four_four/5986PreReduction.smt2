
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
(assert (or (is-Nil l2) (= l1 l3) (= l0 l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l1 l3) )
(check-sat)
