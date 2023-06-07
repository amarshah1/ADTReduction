
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
(assert (and (= l1 l1) (= l2 Nil) (= l2 l0) (is-Nil l3)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l3 l1) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
