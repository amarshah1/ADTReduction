
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
(assert (and (= l2 l3) (is-Nil l2) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Nil l0) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (= l0 l3)) )
(assert (or (= l2 Nil) (= l1 l0) (= l2 l3)) )
(check-sat)
