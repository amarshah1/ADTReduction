
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
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 l3) (= l1 l1) (is-Cons Nil)) )
(check-sat)
