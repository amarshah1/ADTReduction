
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
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 l0) (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Nil l1) (= l1 l2) (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(check-sat)
