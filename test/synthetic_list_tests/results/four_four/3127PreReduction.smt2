
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
(assert (and (= l1 l3) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 l2) (= l0 Nil)) )
(assert (or (= l3 Nil) (= l0 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(check-sat)
