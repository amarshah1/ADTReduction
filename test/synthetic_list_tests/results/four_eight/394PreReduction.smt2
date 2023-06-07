
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
(assert (not (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 l0) (is-Nil l0) (is-Cons l3) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
