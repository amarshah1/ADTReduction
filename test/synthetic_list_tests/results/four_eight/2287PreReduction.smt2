
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
(assert (and (= l2 l1) (= l3 Nil) (= l2 Nil) (is-Nil l3)) )
(assert (= l3 l1) )
(assert (and (= l2 Nil) (= l2 l0) (is-Nil Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (not (= l2 l0)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(check-sat)
