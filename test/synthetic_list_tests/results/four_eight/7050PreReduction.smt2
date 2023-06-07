
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
(assert (and (= l0 l3) (= l0 Nil) (= l3 l1) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (= l0 l3) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (= l0 l2) )
(assert (= l0 l3) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
