
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
(assert (not (is-Nil l2)) )
(assert (and (= l3 l3) (= l1 Nil) (is-Nil l1)) )
(assert (and (= l2 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (= l0 Nil) )
(assert (= l2 l0) )
(check-sat)