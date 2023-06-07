
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
(assert (= l1 Nil) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l3 l2)) )
(assert (and (is-Nil Nil) (= l0 l2) (= l1 l3) (= l1 l1)) )
(assert (= l0 Nil) )
(assert (or (= l2 l3) (= l1 l3) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
