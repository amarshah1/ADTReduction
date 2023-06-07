
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
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (not (= l2 l3)) )
(assert (= l1 l0) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (= l2 l1)) )
(check-sat)