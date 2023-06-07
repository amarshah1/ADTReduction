
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
(assert (and (is-Cons Nil) (= l0 Nil) (is-Cons l1) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (is-Nil l0) (is-Nil Nil)) )
(assert (and (is-Cons l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(check-sat)
