
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
(assert (or (= l0 Nil) (= l3 l0) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l2 Nil) (= l3 l2)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (= l2 l2) (= l0 Nil)) )
(check-sat)
