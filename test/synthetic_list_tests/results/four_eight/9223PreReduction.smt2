
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
(assert (and (is-Nil Nil) (= l0 l1) (= l2 Nil) (is-Cons Nil)) )
(assert (= l0 l3) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (= l1 l2) )
(check-sat)
