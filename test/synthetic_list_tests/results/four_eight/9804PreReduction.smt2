
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
(assert (is-Cons Nil) )
(assert (or (= l2 l2) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(assert (= l1 l0) )
(check-sat)