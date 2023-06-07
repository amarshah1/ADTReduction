
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
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (= l1 l1)) )
(assert (and (= l0 Nil) (= l0 l3)) )
(assert (or (= l3 Nil) (= l2 Nil)) )
(assert (not (= l2 l0)) )
(check-sat)
