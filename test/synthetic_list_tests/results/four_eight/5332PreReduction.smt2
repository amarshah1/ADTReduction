
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Nil l0)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 l1) (= l1 Nil) (is-Cons Nil) (= l2 l3)) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
