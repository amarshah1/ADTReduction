
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
(assert (or (is-Nil Nil) (= l0 Nil) (= l1 l2) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil) (= l3 l1)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l0 l3) (= l1 l3)) )
(check-sat)
