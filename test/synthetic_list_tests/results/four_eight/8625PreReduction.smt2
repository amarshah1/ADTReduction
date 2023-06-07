
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
(assert (= l2 l2) )
(assert (= l3 Nil) )
(assert (is-Cons l1) )
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 l1) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l0)) )
(check-sat)
