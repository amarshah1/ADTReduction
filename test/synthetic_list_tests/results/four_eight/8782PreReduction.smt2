
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
(assert (not (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (is-Cons l1) )
(assert (= l3 Nil) )
(assert (and (= l1 l1) (is-Nil l0)) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
