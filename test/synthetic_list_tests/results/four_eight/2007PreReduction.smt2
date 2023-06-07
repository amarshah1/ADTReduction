
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
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 l3) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)