
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
(assert (or (= l3 Nil) (= l0 Nil) (is-Nil Nil) (= l3 l2)) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 l1) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil l1) )
(assert (and (= l1 l0) (is-Cons Nil) (= l0 Nil) (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Nil l3)) )
(check-sat)
