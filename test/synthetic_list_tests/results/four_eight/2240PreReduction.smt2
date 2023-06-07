
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
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (= l1 l3) (is-Cons Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l2 l0) (is-Nil l3) (= l3 l2)) )
(check-sat)
