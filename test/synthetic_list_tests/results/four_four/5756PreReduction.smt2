
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
(assert (or (= l1 l3) (= l1 l1) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons Nil) (= l0 l2)) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
