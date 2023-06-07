
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
(assert (= l2 Nil) )
(assert (not (= l2 l2)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 l3) (= l2 l3)) )
(assert (is-Nil l0) )
(check-sat)
