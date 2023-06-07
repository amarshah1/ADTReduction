
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
(assert (or (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l2 l3)) )
(assert (= l0 Nil) )
(assert (and (= l2 l2) (is-Cons l0) (= l0 l3) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons l2) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l0 l3) (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
