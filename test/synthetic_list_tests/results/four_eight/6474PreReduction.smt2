
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
(assert (not (= l0 l1)) )
(assert (and (= l2 l1) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (or (is-Nil l1) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (not (= l1 l2)) )
(check-sat)
