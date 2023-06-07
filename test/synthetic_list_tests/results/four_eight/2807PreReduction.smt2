
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
(assert (= l0 l2) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Cons Nil) (= l3 l2)) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l3 l0) (is-Cons Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)