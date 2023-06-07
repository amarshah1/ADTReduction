
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
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 Nil) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l0 l1) (is-Nil Nil) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (or (= l2 Nil) (is-Cons l3) (is-Cons Nil) (= l1 l3)) )
(check-sat)
