
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
(assert (and (= l3 l3) (is-Nil l0) (= l3 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (= l1 l1) )
(check-sat)
