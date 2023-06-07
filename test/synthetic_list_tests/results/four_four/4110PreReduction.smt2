
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
(assert (not (= l0 Nil)) )
(assert (or (= l3 l3) (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l2 l1)) )
(assert (= l0 l3) )
(check-sat)
