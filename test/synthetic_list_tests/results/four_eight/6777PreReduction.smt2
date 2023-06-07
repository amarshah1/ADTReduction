
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
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (= l3 l0) )
(assert (and (is-Nil l2) (= l0 Nil) (is-Nil Nil) (= l2 l1)) )
(check-sat)
