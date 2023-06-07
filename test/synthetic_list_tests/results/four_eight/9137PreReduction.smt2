
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
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l2 l1) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
