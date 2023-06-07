
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
(assert (not (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (or (= l2 Nil) (= l0 l2) (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (= l0 l2)) )
(assert (or (is-Nil Nil) (= l2 l1) (= l3 l3)) )
(check-sat)
