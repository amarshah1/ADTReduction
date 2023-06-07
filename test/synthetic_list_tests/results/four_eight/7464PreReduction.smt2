
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
(assert (is-Cons Nil) )
(assert (or (is-Nil l3) (= l2 Nil) (= l1 Nil)) )
(assert (and (= l2 l1) (= l1 l2)) )
(assert (not (= l1 l3)) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (and (is-Nil l3) (is-Nil Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(check-sat)
