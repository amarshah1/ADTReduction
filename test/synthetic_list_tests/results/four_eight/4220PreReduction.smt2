
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
(assert (or (is-Cons l2) (= l1 l2) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (= l1 l1) (= l3 Nil) (= l1 Nil) (= l2 l3)) )
(check-sat)
