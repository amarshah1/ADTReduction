
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
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l0) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l3 l2)) )
(assert (or (= l3 Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 l0) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 l3)) )
(check-sat)
