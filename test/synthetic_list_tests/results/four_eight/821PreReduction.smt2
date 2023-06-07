
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
(assert (not (= l2 l2)) )
(assert (or (= l2 l2) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(check-sat)
