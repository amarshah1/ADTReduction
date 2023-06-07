
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
(assert (and (is-Cons l0) (= l3 l3) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 l0)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l1) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
