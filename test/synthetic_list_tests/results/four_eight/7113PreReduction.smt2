
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
(assert (or (is-Nil Nil) (= l0 l3) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l2) (= l0 l1)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
