
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
(assert (= l1 l0) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l1 l3)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (or (= l1 l3) (= l2 Nil) (= l1 l1)) )
(check-sat)
