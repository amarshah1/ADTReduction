
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
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l0 l3) (= l0 Nil)) )
(assert (not (= l1 l2)) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(check-sat)
