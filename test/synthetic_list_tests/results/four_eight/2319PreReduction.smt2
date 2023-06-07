
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
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (or (= l1 l0) (= l1 l2)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (or (= l1 l1) (is-Cons Nil)) )
(check-sat)
