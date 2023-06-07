
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
(assert (= l0 l1) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (is-Nil l2) )
(assert (or (= l2 l3) (= l1 l2) (= l3 l0) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
