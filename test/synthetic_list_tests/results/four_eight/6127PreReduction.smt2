
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
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l3) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l3 l0) (= l2 Nil)) )
(assert (= l2 Nil) )
(check-sat)
