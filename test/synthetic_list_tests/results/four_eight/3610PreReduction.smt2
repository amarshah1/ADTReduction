
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
(assert (or (= l3 l0) (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (= l2 l1) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 l2) (= l2 Nil) (= l3 l1)) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 l1) )
(check-sat)
