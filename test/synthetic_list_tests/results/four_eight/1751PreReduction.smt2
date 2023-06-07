
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
(assert (= l2 l3) )
(assert (or (= l3 l1) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 l2) (= l2 l3)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons l3) (= l0 l2)) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
