
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
(assert (or (= l1 Nil) (= l2 l3) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (= l3 l1)) )
(assert (not (= l0 Nil)) )
(assert (= l1 l0) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
