
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
(assert (or (= l0 Nil) (is-Nil l1) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l3 l0) (= l2 Nil) (= l2 l2)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l0) (= l1 Nil)) )
(check-sat)