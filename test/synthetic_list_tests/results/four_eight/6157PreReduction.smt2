
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
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l1) )
(assert (or (= l1 Nil) (= l2 Nil) (= l1 l3)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l2 l2)) )
(check-sat)
