
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
(assert (not (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 l0) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l1 l1) )
(assert (and (= l3 l1) (= l1 Nil) (= l0 Nil) (is-Nil l2)) )
(check-sat)
