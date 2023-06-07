
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
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l0 l0) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
