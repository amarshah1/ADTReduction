
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
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 l0) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons l0) (is-Cons Nil) (= l1 l2)) )
(assert (= l0 Nil) )
(assert (not (is-Nil l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
