
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
(assert (and (= l2 Nil) (= l0 l2)) )
(assert (is-Nil l3) )
(assert (or (= l1 Nil) (= l2 l1) (= l3 l0)) )
(assert (not (= l3 l3)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
