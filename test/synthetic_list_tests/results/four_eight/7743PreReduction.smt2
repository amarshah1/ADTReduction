
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
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l3 l0) )
(assert (and (= l3 l2) (= l2 Nil) (= l3 l2)) )
(assert (or (= l3 l0) (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(check-sat)
