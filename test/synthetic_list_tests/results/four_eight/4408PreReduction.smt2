
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
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil l2) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(assert (and (= l3 l1) (= l3 Nil)) )
(check-sat)
