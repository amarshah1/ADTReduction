
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
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 l2) (= l1 l3)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
