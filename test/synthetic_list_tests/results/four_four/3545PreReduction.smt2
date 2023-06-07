
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
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 l1) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
