
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
(assert (or (= l1 Nil) (= l1 Nil) (= l2 l0)) )
(assert (or (= l2 l1) (= l3 l1) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 l2)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l1 l2) (= l1 l3)) )
(assert (and (is-Nil l1) (= l1 l0) (= l1 Nil) (= l0 l2)) )
(check-sat)
