
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
(assert (is-Nil l3) )
(assert (is-Nil l2) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil) (is-Cons l3)) )
(check-sat)
