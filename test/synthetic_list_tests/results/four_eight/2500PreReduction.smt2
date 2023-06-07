
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
(assert (= l1 l3) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (= l0 l1) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l3 l0) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
