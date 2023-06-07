
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
(assert (or (is-Nil Nil) (= l0 l0) (= l3 Nil) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 l2) (= l1 Nil) (= l0 l0)) )
(assert (is-Cons l2) )
(assert (= l3 Nil) )
(check-sat)
