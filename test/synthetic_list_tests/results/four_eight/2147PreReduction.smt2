
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
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons Nil) (= l0 l3)) )
(assert (= l0 Nil) )
(assert (and (= l1 l2) (= l1 l3)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l0 l1)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(check-sat)
