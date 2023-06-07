
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
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (= l3 l0) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
