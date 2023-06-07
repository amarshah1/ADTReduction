
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
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l0 l2) (= l0 l2)) )
(assert (and (= l0 l2) (= l1 l0)) )
(assert (= l2 l2) )
(assert (or (= l3 Nil) (= l1 l1) (= l3 Nil)) )
(check-sat)
