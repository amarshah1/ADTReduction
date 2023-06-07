
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
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(check-sat)
