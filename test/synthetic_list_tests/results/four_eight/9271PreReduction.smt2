
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
(assert (not (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l3 l2) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (and (= l2 l0) (is-Nil Nil) (= l2 Nil) (is-Nil l3)) )
(check-sat)
