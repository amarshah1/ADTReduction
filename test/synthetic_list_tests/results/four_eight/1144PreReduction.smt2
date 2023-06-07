
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
(assert (or (is-Nil Nil) (= l2 l1) (is-Cons Nil) (= l3 l0)) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l3 l2) (= l0 Nil)) )
(assert (= l1 l3) )
(assert (not (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(check-sat)
