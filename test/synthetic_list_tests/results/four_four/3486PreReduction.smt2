
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
(assert (or (= l0 l3) (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 l1)) )
(assert (and (= l0 Nil) (= l1 l3) (= l0 Nil)) )
(assert (= l1 Nil) )
(check-sat)
