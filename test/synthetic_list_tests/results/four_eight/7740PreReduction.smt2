
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
(assert (or (is-Nil l0) (= l3 Nil)) )
(assert (and (is-Nil l0) (= l1 l2) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l1 l0) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(check-sat)
