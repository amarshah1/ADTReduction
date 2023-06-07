
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
(assert (or (= l3 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l2 Nil)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
