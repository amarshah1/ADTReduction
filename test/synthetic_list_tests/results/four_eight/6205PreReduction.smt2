
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
(assert (or (= l2 Nil) (= l3 l3)) )
(assert (and (= l2 l2) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (and (= l1 l2) (= l3 l2)) )
(assert (or (= l1 l2) (= l1 Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
