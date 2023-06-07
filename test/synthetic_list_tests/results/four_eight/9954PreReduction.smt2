
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
(assert (or (= l2 l0) (= l2 Nil)) )
(assert (= l3 l0) )
(assert (or (= l3 Nil) (= l2 Nil)) )
(assert (and (= l3 l1) (= l2 Nil) (= l3 l3) (is-Nil l0)) )
(assert (or (= l0 Nil) (= l0 l3) (= l1 l2)) )
(assert (and (= l1 l0) (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(check-sat)
