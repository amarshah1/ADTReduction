
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
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (and (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l3 l1) )
(assert (or (= l1 l3) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
