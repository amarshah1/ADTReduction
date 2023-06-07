
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
(assert (is-Cons Nil) )
(assert (not (is-Nil l3)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l3 l0) (= l2 Nil) (is-Nil l3) (= l1 Nil)) )
(check-sat)
