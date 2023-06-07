
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
(assert (= l2 l1) )
(assert (or (= l3 l0) (is-Nil l1) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (not (= l2 Nil)) )
(assert (= l1 l2) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
