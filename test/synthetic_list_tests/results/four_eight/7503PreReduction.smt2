
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
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (not (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
