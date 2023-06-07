
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
(assert (and (= l0 Nil) (is-Nil Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Nil l0) (is-Cons l1)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l2) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l3 Nil) (= l0 l3) (= l1 l3)) )
(check-sat)
