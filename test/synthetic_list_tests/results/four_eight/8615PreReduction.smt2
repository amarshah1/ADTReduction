
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
(assert (= l0 l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l0 l2)) )
(assert (or (= l0 l2) (is-Cons l1)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(check-sat)
