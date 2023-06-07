
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
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l0 l3) )
(assert (= l0 Nil) )
(assert (not (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(check-sat)
