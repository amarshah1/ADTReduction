
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
(assert (or (= l0 l2) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l1) (= l2 Nil)) )
(assert (= l0 l0) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(check-sat)
