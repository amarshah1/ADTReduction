
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
(assert (= l2 l3) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (is-Nil l1) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (= l2 l1) )
(check-sat)
