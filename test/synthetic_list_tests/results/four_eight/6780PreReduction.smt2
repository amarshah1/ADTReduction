
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
(assert (not (= l3 Nil)) )
(assert (or (= l1 l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l2 l2) (= l2 Nil) (= l1 l1)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)