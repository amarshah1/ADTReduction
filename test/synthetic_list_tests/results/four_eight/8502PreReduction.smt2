
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
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (not (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (is-Cons Nil) (= l0 l2) (= l0 Nil)) )
(check-sat)
