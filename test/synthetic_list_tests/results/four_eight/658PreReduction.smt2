
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
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l1 l0) (= l1 Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)
