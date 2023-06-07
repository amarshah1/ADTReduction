
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
(assert (or (= l3 l1) (= l3 l1) (= l3 l0) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l3 Nil) (= l2 l0)) )
(assert (and (is-Nil l0) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil l3) )
(check-sat)
