
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
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l2 l2) (= l3 l3) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l0 l2) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Cons l2) (is-Nil Nil) (= l0 l1)) )
(check-sat)
