
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
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 Nil) (= l2 l1) (= l0 l0)) )
(assert (is-Cons l1) )
(assert (is-Cons l3) )
(assert (or (= l1 l2) (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(check-sat)
