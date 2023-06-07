
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
(assert (or (is-Nil Nil) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l2 l2)) )
(assert (= l0 l0) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 l3) (= l2 Nil) (= l0 l1) (= l2 l1)) )
(assert (not (= l3 l2)) )
(assert (not (= l3 Nil)) )
(check-sat)
