
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
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Nil l0) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l0 l1) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
