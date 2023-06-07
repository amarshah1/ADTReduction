
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
(assert (and (= l3 Nil) (= l1 l2) (is-Cons Nil) (= l3 l0)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 l1) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (= l3 l3) )
(check-sat)
