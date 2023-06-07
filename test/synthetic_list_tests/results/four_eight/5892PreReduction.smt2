
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
(assert (or (is-Nil Nil) (is-Nil l3)) )
(assert (= l0 Nil) )
(assert (or (= l1 l3) (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 l2) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (= l0 l0) (= l3 Nil) (= l0 l0)) )
(check-sat)
