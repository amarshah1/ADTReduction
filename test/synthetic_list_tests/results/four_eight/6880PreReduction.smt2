
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
(assert (= l3 l0) )
(assert (not (= l3 l1)) )
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 l1) (= l2 Nil) (= l2 Nil) (= l3 l2)) )
(check-sat)