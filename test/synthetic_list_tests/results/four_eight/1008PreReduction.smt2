
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
(assert (and (= l3 Nil) (= l2 l1) (= l1 Nil) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l3 l2)) )
(assert (and (= l1 Nil) (= l1 l3)) )
(check-sat)
