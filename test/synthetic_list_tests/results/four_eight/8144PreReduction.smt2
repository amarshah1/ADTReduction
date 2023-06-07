
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
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 l3) (= l0 l1)) )
(assert (is-Nil Nil) )
(check-sat)
