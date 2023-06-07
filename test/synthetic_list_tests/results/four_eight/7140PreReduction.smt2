
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
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l1 l0) (= l3 Nil) (= l2 l3)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)
