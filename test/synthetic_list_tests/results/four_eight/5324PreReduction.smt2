
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
(assert (= l0 l2) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l3 l1)) )
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(check-sat)
