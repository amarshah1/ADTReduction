
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
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons l2)) )
(assert (not (= l1 l1)) )
(assert (or (= l3 Nil) (= l0 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil l1) (is-Nil l2)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 l0) (= l0 l0)) )
(assert (is-Cons Nil) )
(check-sat)
