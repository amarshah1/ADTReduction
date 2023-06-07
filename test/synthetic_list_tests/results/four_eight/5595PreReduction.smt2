
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (= l1 l2) )
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (= l1 l0) (= l2 l2)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
