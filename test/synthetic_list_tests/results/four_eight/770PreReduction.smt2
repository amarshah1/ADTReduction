
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
(assert (or (= l2 l1) (is-Cons Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
