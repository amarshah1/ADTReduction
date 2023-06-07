
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
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 l3) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l0 l2) (= l0 l2)) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(check-sat)