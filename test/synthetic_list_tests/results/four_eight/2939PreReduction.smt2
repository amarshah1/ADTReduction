
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
(assert (= l2 Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l0 Nil) (= l3 l0) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 l0) (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)