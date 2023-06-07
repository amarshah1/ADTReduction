
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
(assert (is-Nil l3) )
(assert (or (= l1 Nil) (is-Nil l1)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l1) (= l1 l0) (is-Nil l0)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 Nil) (= l0 l3)) )
(assert (= l3 Nil) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(check-sat)
