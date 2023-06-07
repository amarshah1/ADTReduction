
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
(assert (and (is-Cons l3) (= l1 l0) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(check-sat)
