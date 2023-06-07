
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
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l0 l1) )
(assert (and (= l3 l2) (= l0 l1) (is-Nil Nil) (= l2 l3)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 l1)) )
(check-sat)
