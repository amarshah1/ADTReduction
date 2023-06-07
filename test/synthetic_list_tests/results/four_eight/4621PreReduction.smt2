
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
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 l3) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l3 l1) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
