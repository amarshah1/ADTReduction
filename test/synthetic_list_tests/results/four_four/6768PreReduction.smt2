
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
(assert (and (= l2 l2) (= l0 l0) (is-Cons Nil) (= l3 l2)) )
(assert (or (= l1 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(check-sat)
