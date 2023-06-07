
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
(assert (or (= l2 Nil) (= l0 l3) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (= l2 l0) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(check-sat)
