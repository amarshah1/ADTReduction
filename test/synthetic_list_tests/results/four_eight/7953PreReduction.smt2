
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
(assert (= l1 Nil) )
(assert (= l3 l3) )
(assert (and (= l1 Nil) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l3 l1) (= l1 Nil)) )
(assert (or (is-Nil l2) (= l2 l3) (= l2 Nil)) )
(assert (and (= l0 l0) (= l3 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(check-sat)