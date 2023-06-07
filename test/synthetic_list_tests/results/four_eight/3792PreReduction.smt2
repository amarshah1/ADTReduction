
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
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 l2) (is-Cons l3)) )
(assert (and (= l0 Nil) (= l3 l2)) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
