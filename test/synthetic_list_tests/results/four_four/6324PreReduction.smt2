
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
(assert (not (= l0 l3)) )
(assert (or (is-Nil l3) (= l2 Nil) (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
