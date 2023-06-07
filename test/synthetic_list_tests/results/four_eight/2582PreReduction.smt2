
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
(assert (is-Nil l2) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil) (= l2 l3)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 l1) (= l3 l2)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l2 l0)) )
(assert (is-Cons l1) )
(assert (is-Nil l2) )
(check-sat)
