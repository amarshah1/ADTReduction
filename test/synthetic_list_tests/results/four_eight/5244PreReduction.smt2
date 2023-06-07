
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
(assert (not (= l1 l0)) )
(assert (and (= l2 l1) (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l1 l0) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
