
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
(assert (or (is-Nil l3) (= l3 l1) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(check-sat)
