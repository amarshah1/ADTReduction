
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
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l3 l2) (= l1 l0) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
