
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
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (= l2 l1) (= l3 l1)) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l0 l0) (is-Nil l2) (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)
