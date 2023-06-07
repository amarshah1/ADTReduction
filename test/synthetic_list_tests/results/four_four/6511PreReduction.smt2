
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
(assert (or (is-Nil Nil) (= l1 l0) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Nil l2) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
