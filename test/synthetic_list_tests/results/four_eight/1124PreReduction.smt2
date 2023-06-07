
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
(assert (or (= l3 Nil) (is-Nil Nil) (= l0 l2) (= l2 l3)) )
(assert (or (is-Cons l3) (is-Nil Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l1 l2)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (is-Cons Nil) )
(check-sat)
