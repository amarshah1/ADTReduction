
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
(assert (and (= l3 l0) (= l1 l1) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l1) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l2)) )
(assert (is-Cons Nil) )
(check-sat)