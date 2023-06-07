
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (= l0 l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
