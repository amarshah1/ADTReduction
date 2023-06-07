
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
(assert (and (= l0 Nil) (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil l2) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l0 l1) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(check-sat)
