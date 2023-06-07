
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
(assert (= l1 l2) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil l2) (is-Nil l0)) )
(check-sat)
