
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l1 l2)) )
(assert (or (= l3 l0) (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l2)) )
(assert (= l0 l2) )
(check-sat)
