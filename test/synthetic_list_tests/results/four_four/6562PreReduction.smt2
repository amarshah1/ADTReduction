
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
(assert (or (= l1 l0) (= l3 l0) (= l3 l1)) )
(assert (is-Nil l3) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
