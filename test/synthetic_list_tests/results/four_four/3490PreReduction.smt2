
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
(assert (or (= l3 l3) (= l0 l3)) )
(assert (and (= l2 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (is-Nil l1)) )
(check-sat)
