
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
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l0 l3) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 l1) (= l0 Nil)) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(check-sat)
