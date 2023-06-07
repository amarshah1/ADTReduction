
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
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l3 l0) (= l3 Nil)) )
(assert (or (= l3 l2) (= l3 l0) (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l0 l2)) )
(assert (= l2 Nil) )
(assert (is-Nil l0) )
(check-sat)
