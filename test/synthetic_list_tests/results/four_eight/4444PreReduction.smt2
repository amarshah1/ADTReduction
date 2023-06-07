
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
(assert (and (is-Cons l1) (= l1 l2)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Nil l1) (is-Cons Nil) (= l0 l2)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (= l1 l2) )
(check-sat)
