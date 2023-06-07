
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
(assert (or (= l2 Nil) (= l3 l1)) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (= l3 l2) (is-Cons Nil)) )
(assert (and (= l3 l1) (= l2 Nil)) )
(assert (or (= l2 Nil) (= l0 l1) (= l3 l0)) )
(check-sat)
