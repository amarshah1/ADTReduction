
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
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 l1) (= l1 Nil) (= l2 l0)) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 l0)) )
(check-sat)
