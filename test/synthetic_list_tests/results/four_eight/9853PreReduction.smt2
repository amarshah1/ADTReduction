
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
(assert (and (= l2 Nil) (= l1 Nil) (= l1 l3)) )
(assert (and (is-Cons Nil) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (= l0 l1) (is-Nil Nil)) )
(assert (or (is-Nil l3) (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l2 l0) (= l3 Nil) (= l2 l3) (= l2 l3)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
